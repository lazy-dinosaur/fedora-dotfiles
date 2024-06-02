#!/bin/bash

# 현재 활성화된 워크스페이스 ID를 가져옵니다.
current_workspace=$(hyprctl activeworkspace -j | gojq -r .id)

# 모든 모니터에서 사용 중인 워크스페이스 ID를 가져옵니다.
used_workspaces=$(hyprctl monitors -j | gojq -r '.[] | .activeWorkspace.id')

# 최대 워크스페이스 ID를 설정합니다. (필요에 따라 조정)
max_workspace_id=10

# 다음 워크스페이스로 이동하는 함수
next_workspace() {
	next_workspace=$((current_workspace + 1))
	while [[ $next_workspace -le $max_workspace_id ]]; do
		if ! echo "$used_workspaces" | grep -q "^$next_workspace$"; then
			hyprctl dispatch focusworkspaceoncurrentmonitor $next_workspace
			exit 0
		fi
		next_workspace=$((next_workspace + 1))
	done

	# 다음 워크스페이스가 최대 ID인데 다른 모니터에서 사용 중인 경우
	if [[ $next_workspace -gt $max_workspace_id ]]; then
		echo "Next workspace is the maximum ID and is already in use."
		hyprctl dispatch focusworkspaceoncurrentmonitor $max_workspace_id
		# 여기에 추가적인 코드를 넣으세요.
	fi
}

# 이전 워크스페이스로 이동하는 함수
prev_workspace() {
	prev_workspace=$((current_workspace - 1))
	while [[ $prev_workspace -ge 1 ]]; do
		if ! echo "$used_workspaces" | grep -q "^$prev_workspace$"; then
			hyprctl dispatch focusworkspaceoncurrentmonitor $prev_workspace
			exit 0
		fi
		prev_workspace=$((prev_workspace - 1))
	done

	# 이전 워크스페이스가 최소 ID인데 다른 모니터에서 사용 중인 경우
	if [[ $prev_workspace -lt 1 ]]; then
		echo "Previous workspace is the minimum ID and is already in use."
		hyprctl dispatch focusworkspaceoncurrentmonitor 1
		# 여기에 추가적인 코드를 넣으세요.
	fi
}

# 스크립트 인자에 따라 함수 호출
case "$1" in
'+')
	next_workspace
	;;
'-')
	prev_workspace
	;;
*)
	echo "Usage: $0 '+' | '-'"
	exit 1
	;;
esac
