;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;;; META.scm — doit-ssg

(define-module (doit-ssg meta)
  #:export (architecture-decisions development-practices design-rationale component-status))

;; ============================================================================
;; ARCHITECTURE DECISION RECORDS
;; ============================================================================

(define architecture-decisions
  '((adr-001
     (title . "RSR Compliance")
     (status . "accepted")
     (date . "2025-12-15")
     (context . "Satellite SSG in the hyperpolymath ecosystem integrating with poly-ssg-mcp hub")
     (decision . "Follow Rhodium Standard Repository guidelines")
     (consequences . ("RSR Gold target" "SHA-pinned actions" "SPDX headers" "Multi-platform CI")))

    (adr-002
     (title . "Hub-Satellite Architecture")
     (status . "accepted")
     (date . "2025-12-17")
     (context . "Need unified interface for 28 SSGs without code duplication")
     (decision . "Use poly-ssg-mcp as hub, this project as satellite implementation")
     (consequences . ("Adapter synchronization" "Deno runtime" "MCP protocol compliance")))

    (adr-003
     (title . "Just + Mustfile Task System")
     (status . "accepted")
     (date . "2025-12-22")
     (context . "Need standardized task automation with mandatory quality gates")
     (decision . "Use justfile for tasks, Mustfile for mandatory gates")
     (consequences . ("Consistent developer experience" "Enforced quality standards" "CI/CD integration")))

    (adr-004
     (title . "Neurosymbolic Configuration")
     (status . "accepted")
     (date . "2025-12-22")
     (context . "AI agents need structured guidance for project interaction")
     (decision . "Implement AGENTIC.scm and NEUROSYM.scm for AI behavior configuration")
     (consequences . ("Safer AI operations" "Consistent agent behavior" "Knowledge-guided reasoning")))

    (adr-005
     (title . "Nix-based Development Environment")
     (status . "accepted")
     (date . "2025-12-22")
     (context . "Need reproducible development environment across all platforms")
     (decision . "Use Nix flakes for development shell and package definition")
     (consequences . ("Reproducible builds" "Easy onboarding" "Consistent tooling")))))

;; ============================================================================
;; DEVELOPMENT PRACTICES
;; ============================================================================

(define development-practices
  '((code-style
     (languages . ("javascript" "typescript"))
     (formatter . "deno fmt")
     (linter . "deno lint")
     (config . "deno.json"))

    (security
     (sast . "CodeQL")
     (credentials . "env vars only")
     (input-validation . "required")
     (sha-pinned-actions . #t)
     (secret-detection . "just check-secrets"))

    (testing
     (coverage-minimum . 70)
     (framework . "deno test")
     (e2e . "tests/e2e/")
     (unit . "tests/adapters/"))

    (versioning
     (scheme . "SemVer 2.0.0")
     (changelog . "required"))

    (documentation
     (format . "asciidoc")
     (api-docs . "docs/api/")
     (cookbook . "cookbook.adoc")
     (examples . "examples/"))))

;; ============================================================================
;; DESIGN RATIONALE
;; ============================================================================

(define design-rationale
  '((why-rsr
     "RSR ensures consistency, security, and maintainability across the hyperpolymath ecosystem.")

    (why-deno
     "Deno provides secure-by-default runtime with built-in TypeScript support and no node_modules.")

    (why-hub-satellite
     "Centralizes adapter maintenance while enabling project-specific customization.")

    (why-justfile
     "Just provides cross-platform task automation with better ergonomics than Make.")

    (why-neurosym
     "Hybrid neural-symbolic approach provides both flexibility and safety guarantees.")

    (why-scm-files
     "Scheme provides homoiconic representation for project metadata, enabling programmatic access.")

    (why-nix
     "Nix ensures reproducible builds and consistent development environments across platforms.")))

;; ============================================================================
;; COMPONENT STATUS - 44/44 COMPLETE
;; ============================================================================

(define component-status
  '((summary
     (total-components . 44)
     (completed . 44)
     (in-progress . 0)
     (pending . 0)
     (completion-percentage . 100))

    (categories
     ((build-system . ((total . 4) (complete . 4)
        (items . ("justfile" "Mustfile" "cookbook.adoc" "CI/CD"))))

      (adapters . ((total . 3) (complete . 3)
        (items . ("28 SSG adapters" "interface contract" "sync mechanism"))))

      (scm-files . ((total . 6) (complete . 6)
        (items . ("META" "ECOSYSTEM" "STATE" "PLAYBOOK" "AGENTIC" "NEUROSYM"))))

      (documentation . ((total . 8) (complete . 8)
        (items . ("README" "CONTRIBUTING" "SECURITY" "CODE_OF_CONDUCT" "cookbook" "copilot-instructions" "API docs" "tests README"))))

      (configuration . ((total . 3) (complete . 3)
        (items . ("justfile" "Mustfile" "deno.json"))))

      (testing . ((total . 4) (complete . 4)
        (items . ("syntax-check" "adapter-verify" "unit-tests" "e2e-tests"))))

      (security . ((total . 4) (complete . 4)
        (items . ("CodeQL" "secret-detection" "SHA-pinned" "audit"))))

      (tooling . ((total . 6) (complete . 6)
        (items . ("linter" "formatter" "LSP" "compile" "hooks" "watch"))))

      (examples . ((total . 3) (complete . 3)
        (items . ("config examples" "template examples" "content examples"))))

      (nix . ((total . 3) (complete . 3)
        (items . ("flake.nix" "devShell" "packages"))))))))
