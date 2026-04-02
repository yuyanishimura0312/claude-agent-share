Review the specified app's UI/UX quality using the full UX team. Launch the ux-lead agent to orchestrate the improvement process.

## Target App
$ARGUMENTS

## Instructions
1. First, understand the target app by reading its code and structure
2. Launch the ux-lead agent with the app information
3. The ux-lead will orchestrate the specialist agents (ux-visual-designer, ux-interaction-designer, ux-accessibility-expert, ux-content-reviewer)
4. Present the final UX improvement report to the user

If a URL is provided, also analyze the app visually using Playwright screenshots at multiple viewport sizes (375px, 768px, 1280px).
If only a directory path is provided, analyze the code for UX patterns and issues.

The final report should include:
- UX score (out of 100) across 5 categories
- Prioritized list of improvements with concrete code fixes
- Design token recommendations
- Accessibility compliance status
- Content/microcopy improvements for Japanese UI
