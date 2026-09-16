---
name: frontend-quality
description: Audit frontend changes for responsive behavior, accessibility, semantic HTML, interaction states, UX consistency, and practical performance issues. Use for UI implementation, visual polish, frontend review, or before shipping a web interface.
---

# Frontend Quality

## Goal

Evaluate whether a frontend change is usable, accessible, responsive, consistent, and technically sound.

## Process

1. Read the requested UX/UI outcome.
2. Inspect the relevant components, styles, routes, and design-system guidance.
3. Check only the states relevant to the feature.

## Review checklist

### Responsive behavior
- Works at narrow, medium, and wide layouts where relevant.
- No unintended clipping, overlap, horizontal scroll, or unusable fixed sizing.
- Touch targets and spacing remain practical on small screens.

### Accessibility
- Prefer semantic HTML.
- Interactive elements are keyboard reachable and usable.
- Focus states remain visible.
- Inputs have accessible labels.
- Images/icons have appropriate accessible treatment.
- State is not communicated by color alone.
- Motion respects reduced-motion preferences when relevant.
- Dialogs/menus/popovers manage focus reasonably.

### Interaction states
Check applicable:
- default;
- hover;
- focus;
- active;
- disabled;
- loading;
- empty;
- error;
- success.

### Content and UX
- Labels/actions are understandable.
- Destructive actions are clearly distinguishable.
- Errors explain what happened and what the user can do next.
- Important information is not hidden behind unnecessary interaction.

### Visual consistency
- Reuse project tokens/components before inventing new variants.
- Follow spacing, typography, color, and component conventions.
- Avoid one-off styles when an existing pattern already solves the problem.

### Performance
Look for concrete issues such as:
- unnecessarily heavy client components;
- avoidable rerenders in hot paths;
- unoptimized large assets;
- obvious layout shift;
- expensive animation;
- unnecessary network requests.

Do not perform speculative micro-optimization.

## Output

Report:
1. blocking issues;
2. important improvements;
3. optional polish.

For each issue include location, impact, and a practical fix.

If the UI is already solid, say so instead of inventing criticism.

## Safety

Do not redesign the product, replace the styling system, or introduce foundational frontend technology without approval. Follow `WORKFLOW.md`.
