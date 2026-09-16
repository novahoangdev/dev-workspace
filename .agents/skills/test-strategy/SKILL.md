---
name: test-strategy
description: Choose a risk-based testing approach for a code change using the repository's existing test stack. Use for meaningful behavior changes, regressions, or deciding between unit, integration, component, and E2E tests.
---
# Test Strategy
Test behavior according to risk, not every line. Inspect existing tooling and conventions first; reuse them and do not add a new framework without approval.

Choose the smallest useful mix of unit, integration, component, regression, and E2E tests. Prefer tests that fail for the broken behavior and pass for the correct behavior. Run relevant tests and report exactly what ran. For visual-only changes, recommend browser/visual verification when automated tests add little value.
