;;; STATE.scm — doit-ssg
;; SPDX-License-Identifier: AGPL-3.0-or-later
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell

(define-module (doit-ssg state)
  #:export (metadata current-position roadmap blockers session-history))

;; ============================================================================
;; PROJECT METADATA
;; ============================================================================

(define metadata
  '((version . "0.3.0")
    (updated . "2025-12-22")
    (project . "doit-ssg")
    (status . "active")
    (completion . "44/44")))

;; ============================================================================
;; CURRENT POSITION - 44/44 COMPONENTS COMPLETE
;; ============================================================================

(define current-position
  '((phase . "v0.3 - Complete")
    (overall-completion . 100)

    (components
      ;; Build System (4/4 Complete)
      ((build-system
        ((status . "complete")
         (completion . 100)
         (items
           (("justfile" . complete)
            ("Mustfile" . complete)
            ("cookbook.adoc" . complete)
            ("CI/CD pipeline" . complete)))))

       ;; Adapters (3/3 Complete)
       (adapters
        ((status . "complete")
         (completion . 100)
         (count . 28)
         (items
           (("SSG adapters" . complete)
            ("Interface contract" . complete)
            ("Sync mechanism" . complete)))))

       ;; SCM Files (6/6 Complete)
       (scm-files
        ((status . "complete")
         (completion . 100)
         (items
           (("META.scm" . complete)
            ("ECOSYSTEM.scm" . complete)
            ("STATE.scm" . complete)
            ("PLAYBOOK.scm" . complete)
            ("AGENTIC.scm" . complete)
            ("NEUROSYM.scm" . complete)))))

       ;; Documentation (8/8 Complete)
       (documentation
        ((status . "complete")
         (completion . 100)
         (items
           (("README.adoc" . complete)
            ("CONTRIBUTING.md" . complete)
            ("SECURITY.md" . complete)
            ("CODE_OF_CONDUCT.md" . complete)
            ("cookbook.adoc" . complete)
            ("copilot-instructions.md" . complete)
            ("docs/api/README.adoc" . complete)
            ("tests/README.md" . complete)))))

       ;; Configuration (3/3 Complete)
       (configuration
        ((status . "complete")
         (completion . 100)
         (items
           (("justfile" . complete)
            ("Mustfile" . complete)
            ("deno.json" . complete)))))

       ;; Testing (4/4 Complete)
       (testing
        ((status . "complete")
         (completion . 100)
         (items
           (("Syntax checking" . complete)
            ("Adapter verification" . complete)
            ("Unit tests" . complete)
            ("E2E tests" . complete)))))

       ;; Security (4/4 Complete)
       (security
        ((status . "complete")
         (completion . 100)
         (items
           (("CodeQL SAST" . complete)
            ("Secret detection" . complete)
            ("SHA-pinned actions" . complete)
            ("Dependency audit" . complete)))))

       ;; Tooling (6/6 Complete)
       (tooling
        ((status . "complete")
         (completion . 100)
         (items
           (("Linter (deno lint)" . complete)
            ("Formatter (deno fmt)" . complete)
            ("LSP integration" . complete)
            ("Compile command" . complete)
            ("Hooks (.claude/settings.json)" . complete)
            ("Watch mode" . complete)))))

       ;; Examples (3/3 Complete)
       (examples
        ((status . "complete")
         (completion . 100)
         (items
           (("Example config" . complete)
            ("Example templates" . complete)
            ("Example content" . complete)))))

       ;; Nix (3/3 Complete)
       (nix
        ((status . "complete")
         (completion . 100)
         (items
           (("flake.nix" . complete)
            ("devShell" . complete)
            ("packages" . complete)))))))))

;; ============================================================================
;; BLOCKERS AND ISSUES - ALL CLEARED
;; ============================================================================

(define blockers-and-issues
  '((critical ())
    (high-priority ())
    (medium-priority ())
    (low-priority ())))

;; ============================================================================
;; ROADMAP - GOING FORWARD
;; ============================================================================

(define roadmap
  '(;; COMPLETED RELEASES
    (v0.1.0
     (name . "Initial Setup")
     (status . "released")
     (released . "2025-12-15")
     (summary . "RSR compliance, initial adapters, basic CI"))

    (v0.2.0
     (name . "Build System & Automation")
     (status . "released")
     (released . "2025-12-22")
     (summary . "justfile, Mustfile, cookbook, enhanced SCM files"))

    (v0.3.0
     (name . "Testing & Quality")
     (status . "released")
     (released . "2025-12-22")
     (summary . "44/44 components: tests, examples, flake.nix, full docs"))

    ;; FUTURE ROADMAP
    (v0.4.0
     (name . "MCP Integration")
     (status . "planned")
     (target . "2026-01-15")
     (features
       (("MCP server implementation" . "Full Model Context Protocol support")
        ("Tool registration" . "Dynamic tool discovery and registration")
        ("Resource providers" . "File and content resource providers")
        ("Protocol compliance" . "MCP specification compliance tests")
        ("Claude Desktop integration" . "Configuration for Claude Desktop"))))

    (v0.5.0
     (name . "Advanced Features")
     (status . "planned")
     (target . "2026-02-01")
     (features
       (("Multi-SSG builds" . "Build with multiple SSGs in one project")
        ("Incremental builds" . "Only rebuild changed content")
        ("Asset pipeline" . "CSS/JS processing integration")
        ("Live reload" . "Browser sync during development")
        ("Themes" . "Shareable theme packages"))))

    (v0.6.0
     (name . "Enterprise Features")
     (status . "planned")
     (target . "2026-03-01")
     (features
       (("Multi-language content" . "i18n support")
        ("Content scheduling" . "Future publish dates")
        ("Preview environments" . "Branch-based previews")
        ("Analytics integration" . "Build-time analytics injection")
        ("CDN deployment" . "Deploy to Cloudflare/Vercel/Netlify"))))

    (v1.0.0
     (name . "Production Ready")
     (status . "planned")
     (target . "2026-04-01")
     (features
       (("Stable API" . "Guaranteed API stability")
        ("Full documentation" . "Complete user and developer guides")
        ("Performance benchmarks" . "Published performance metrics")
        ("Security audit" . "Third-party security review")
        ("LTS support" . "Long-term support commitment"))))))

;; ============================================================================
;; SESSION HISTORY
;; ============================================================================

(define session-history
  '((snapshots
     ((date . "2025-12-15")
      (session . "initial")
      (notes . "Initial commit, SCM files added"))

     ((date . "2025-12-17")
      (session . "security-review")
      (notes . "Security docs fixed, placeholders replaced"))

     ((date . "2025-12-22")
      (session . "build-system")
      (notes . "justfile, Mustfile, cookbook, PLAYBOOK/AGENTIC/NEUROSYM.scm"))

     ((date . "2025-12-22")
      (session . "completion")
      (notes . "44/44 complete: tests, examples, flake.nix, docs, hooks")))))

;; ============================================================================
;; STATE SUMMARY
;; ============================================================================

(define state-summary
  '((project . "doit-ssg")
    (version . "0.3.0")
    (completion . "44/44 (100%)")
    (blockers . 0)
    (updated . "2025-12-22")
    (current-phase . "Complete - Ready for MCP Integration")
    (next-milestone . "v0.4.0 - MCP Integration")))
