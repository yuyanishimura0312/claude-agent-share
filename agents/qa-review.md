Review the specified app using the full QA team. Launch the qa-lead agent to orchestrate the review process.

## Target App
$ARGUMENTS

## Instructions
1. First, understand the target app by reading its code and structure
2. Launch the qa-lead agent with the app information
3. The qa-lead will orchestrate the specialist agents (qa-ui-tester, qa-func-tester, qa-code-reviewer, qa-bug-fixer)
4. Present the final quality report to the user

If a URL is provided, also test the app via browser using Playwright.
If only a directory path is provided, analyze the code statically.

The final report should include:
- Quality score (out of 100)
- Release judgment (Go / Conditional Go / No-Go)
- Issues categorized by severity (Critical / Major / Minor)
- Concrete fix suggestions for each issue
- Action plan for the development team
