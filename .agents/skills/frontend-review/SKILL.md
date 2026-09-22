---
name: frontend-review
description: Review an existing web UI for visual hierarchy, usability, responsive behavior, accessibility, interaction feedback, consistency, and polish. Use for UI audits or post-implementation review, not as a default prerequisite for building UI.
---
# Frontend Review

## Goal
Find concrete UI/UX problems without redesigning a solid interface or inventing subjective criticism.

## Review
Inspect only what is relevant to the requested surface:
- first-scan clarity and CTA priority;
- typography, spacing, density, alignment, and visual hierarchy;
- navigation, discoverability, labels, and cognitive load;
- responsive layout, clipping, overflow, touch sizing, and mobile usability;
- semantic HTML, keyboard access, visible focus, labels, contrast, and reduced motion where relevant;
- applicable interaction states: hover, focus, active, disabled, loading, empty, error, success;
- consistency with existing components/tokens and the product's visual identity.

Prefer rendered evidence when available. Do not claim visual/browser inspection if it did not occur.

## Output
Prioritize findings as:
1. blocking;
2. important;
3. optional polish.

For each meaningful issue give location, impact, and the smallest practical fix. If the interface is already solid, say so.

## Scope
Do not perform a performance, SEO, code, or release audit unless separately requested. Do not replace the design system or foundational frontend technology without approval.
