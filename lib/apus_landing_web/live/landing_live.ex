defmodule ApusLandingWeb.LandingLive do
  use ApusLandingWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok,
     assign(socket,
       page_title: "Runtime visibility for coding agents"
     )}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <Layouts.app flash={@flash} show_header={false} main_class="p-0" content_class="w-full">
      <div
        id="landing-shell"
        class="bg-[#0A0F1C] text-white font-[Inter,system-ui,sans-serif] leading-relaxed overflow-x-hidden"
      >
        <%!-- HEADER --%>
        <nav class="fixed top-0 left-0 right-0 z-50 px-6 lg:px-20 py-5 backdrop-blur-md bg-[#0A0F1C]/80 border-b border-white/5">
          <div class="max-w-[1400px] mx-auto flex justify-between items-center">
            <div class="flex items-center gap-3">
              <div class="w-8 h-8 rounded bg-[#22D3EE]/20 flex items-center justify-center">
                <svg
                  class="w-5 h-5 text-[#22D3EE]"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <polyline points="4 17 10 11 4 5" /><line x1="12" x2="20" y1="19" y2="19" />
                </svg>
              </div>
              <span class="font-['JetBrains_Mono'] text-xl font-bold tracking-wide">Apus</span>
            </div>
            <div class="flex items-center gap-2 sm:gap-6">
              <a
                href="#features"
                class="hidden md:block text-sm text-[#94A3B8] hover:text-white transition-colors"
              >
                Features
              </a>
              <a
                href="#setup"
                class="hidden md:block text-sm text-[#94A3B8] hover:text-white transition-colors"
              >
                Setup
              </a>
              <a
                id="landing-header-cta"
                href="#setup"
                class="inline-flex items-center gap-2 py-2.5 px-5 bg-[#22D3EE] text-[#0A0F1C] text-sm font-['JetBrains_Mono'] font-semibold rounded-lg hover:bg-[#22D3EE]/90 transition-colors"
              >
                <svg class="w-4 h-4" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z" />
                </svg>
                Get Started
              </a>
            </div>
          </div>
        </nav>

        <%!-- HERO --%>
        <section
          id="landing-hero"
          class="relative min-h-screen flex flex-col items-center justify-center px-6 lg:px-20 pt-24 pb-16"
        >
          <%!-- Background glow --%>
          <div class="absolute inset-0 overflow-hidden pointer-events-none">
            <div class="absolute w-[600px] h-[600px] rounded-full blur-[120px] opacity-20 bg-[#22D3EE] -top-[200px] left-1/2 -translate-x-1/2">
            </div>
          </div>

          <div class="relative z-10 flex flex-col items-center gap-8 max-w-[900px]">
            <%!-- Badge --%>
            <div class="inline-flex items-center gap-2 py-2 px-4 rounded-full border border-[#1E293B] bg-white/5 backdrop-blur-sm">
              <span class="w-2 h-2 bg-[#22D3EE] rounded-full animate-pulse"></span>
              <span class="font-['JetBrains_Mono'] text-xs text-[#94A3B8]">
                MCP-powered iOS runtime inspector
              </span>
            </div>

            <%!-- Headline --%>
            <h1 class="text-5xl md:text-7xl font-bold text-center leading-[1.1] tracking-tight">
              Give your AI agent<br />
              <span class="text-[#22D3EE]">eyes</span> on your iOS app
            </h1>

            <%!-- Subheadline --%>
            <p class="text-lg text-[#94A3B8] text-center max-w-[700px] leading-relaxed">
              Your AI can write Swift. But it's flying blind. Apus gives coding agents
              real-time access to logs, network traffic, screenshots, and UI hierarchy —
              so they inspect, debug, and hot-reload without leaving the editor.
            </p>

            <%!-- CTAs --%>
            <div class="flex flex-wrap items-center justify-center gap-4">
              <a
                id="landing-primary-cta"
                href="#setup"
                class="inline-flex items-center gap-2.5 py-4 px-8 bg-[#22D3EE] text-[#0A0F1C] font-['JetBrains_Mono'] font-semibold rounded-lg hover:bg-[#22D3EE]/90 transition-all hover:-translate-y-0.5 shadow-[0_4px_20px_rgba(34,211,238,0.3)]"
              >
                <svg class="w-5 h-5" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z" />
                </svg>
                Get Started
              </a>
              <a
                href="#setup"
                class="inline-flex items-center gap-2.5 py-4 px-8 border border-[#1E293B] rounded-lg text-white hover:border-[#94A3B8] transition-all hover:-translate-y-0.5"
              >
                <svg
                  class="w-5 h-5 text-[#22D3EE]"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <polygon points="6 3 20 12 6 21 6 3" />
                </svg>
                See setup
              </a>
            </div>

            <%!-- Context badges --%>
            <div class="flex flex-wrap items-center justify-center gap-3 mt-4">
              <.context_badge icon="scroll-text" label="Logs" />
              <.context_badge icon="wifi" label="Network" />
              <.context_badge icon="camera" label="Screenshots" />
              <.context_badge icon="layers" label="UI Hierarchy" />
              <.context_badge icon="zap" label="Hot Reload" />
            </div>
          </div>

          <%!-- Product Mockup --%>
          <div class="relative z-10 w-full max-w-[1100px] mt-16 rounded-xl border border-[#1E293B] bg-[#0F172A] overflow-hidden shadow-2xl shadow-black/50">
            <div class="flex">
              <%!-- Editor Panel --%>
              <div class="flex-1 min-w-0">
                <div class="flex items-center px-4 h-9 bg-[#1E293B] border-b border-[#1E293B]">
                  <span class="font-['JetBrains_Mono'] text-xs text-[#94A3B8]">
                    ContentView.swift
                  </span>
                </div>
                <pre class="p-5 font-['JetBrains_Mono'] text-xs leading-6 text-[#94A3B8] whitespace-pre m-0 overflow-hidden"><code>{raw(code_sample())}</code></pre>
              </div>

              <%!-- Simulator Panel --%>
              <div class="w-[260px] border-l border-[#1E293B] hidden lg:block">
                <div class="flex items-center px-4 h-9 bg-[#1E293B] border-b border-[#1E293B]">
                  <span class="font-['JetBrains_Mono'] text-xs text-[#94A3B8]">iPhone 15 Pro</span>
                </div>
                <div class="p-4 flex flex-col gap-3 bg-[#0A0F1C]">
                  <div class="text-center py-2 font-semibold text-white">Feed</div>
                  <div class="flex items-center gap-3 p-3 bg-[#1E293B] rounded-lg">
                    <div class="w-8 h-8 rounded-full bg-[#22D3EE]"></div>
                    <div>
                      <div class="text-sm font-semibold">Alice Chen</div>
                      <div class="text-xs text-[#94A3B8]">Just deployed v2.0!</div>
                    </div>
                  </div>
                  <div class="flex items-center gap-3 p-3 bg-[#1E293B] rounded-lg">
                    <div class="w-8 h-8 rounded-full bg-[#64748B]"></div>
                    <div>
                      <div class="text-sm font-semibold">Bob Torres</div>
                      <div class="text-xs text-[#94A3B8]">SwiftUI animations are…</div>
                    </div>
                  </div>
                </div>
              </div>

              <%!-- Chat Panel --%>
              <div class="w-[300px] border-l border-[#1E293B] hidden lg:block">
                <div class="flex items-center gap-2 px-4 h-9 bg-[#1E293B] border-b border-[#1E293B]">
                  <svg
                    class="w-3.5 h-3.5 text-[#22D3EE]"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    stroke-width="2"
                  >
                    <rect width="18" height="10" x="3" y="11" rx="2" /><circle cx="12" cy="5" r="2" /><path d="M12 7v4" />
                  </svg>
                  <span class="font-['JetBrains_Mono'] text-xs text-[#94A3B8]">Claude</span>
                </div>
                <div class="p-4 flex flex-col gap-3 bg-[#0A0F1C]">
                  <div class="p-3 bg-[#1E293B] rounded-lg">
                    <div class="font-['JetBrains_Mono'] text-[10px] font-semibold text-[#22D3EE] mb-1">
                      You
                    </div>
                    <div class="text-xs text-white leading-relaxed">
                      The feed isn't showing user avatars. Can you fix it?
                    </div>
                  </div>
                  <div class="p-3 rounded-lg">
                    <div class="font-['JetBrains_Mono'] text-[10px] font-semibold text-[#94A3B8] mb-1">
                      Claude
                    </div>
                    <div class="text-xs text-[#94A3B8] leading-relaxed">
                      I can see the issue. The PostRow view is missing the avatar image. Let me inspect the UI hierarchy and fix it…
                    </div>
                  </div>
                  <div class="flex items-center gap-2 p-2 rounded-md border border-[#22D3EE]/20">
                    <svg
                      class="w-3.5 h-3.5 text-[#22D3EE]"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      stroke-width="2"
                    >
                      <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14" /><path d="m9 11 3 3L22 4" />
                    </svg>
                    <span class="font-['JetBrains_Mono'] text-[11px] text-[#22D3EE]">
                      Hot reload applied successfully
                    </span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        <%!-- PROBLEM / SOLUTION --%>
        <section class="px-6 lg:px-20 py-24">
          <div class="max-w-[1200px] mx-auto flex flex-col items-center gap-12">
            <div class="text-center flex flex-col gap-4">
              <span class="font-['JetBrains_Mono'] text-xs font-semibold text-[#22D3EE] tracking-[0.15em] uppercase">
                The Problem
              </span>
              <h2 class="text-4xl md:text-5xl font-bold">Your AI agent is coding blind</h2>
              <p class="text-lg text-[#94A3B8] max-w-[600px] mx-auto leading-relaxed">
                Without runtime context, AI agents guess instead of seeing. Apus closes the feedback loop.
              </p>
            </div>

            <div class="grid md:grid-cols-2 gap-6 w-full">
              <%!-- Before card --%>
              <div class="p-8 bg-[#1E293B] rounded-xl flex flex-col gap-5">
                <div class="flex items-center gap-2.5">
                  <span class="w-2.5 h-2.5 rounded-full bg-[#F43F5E]"></span>
                  <span class="font-['JetBrains_Mono'] text-sm font-semibold text-[#F43F5E]">
                    Without Apus
                  </span>
                </div>
                <.pain_point text="Copy-paste logs manually from Xcode" />
                <.pain_point text="2–3 minute rebuild cycles for every change" />
                <.pain_point text="Constant context-switching between tools" />
                <.pain_point text="AI guesses at runtime behavior" />
              </div>

              <%!-- After card --%>
              <div class="p-8 bg-[#0F172A] rounded-xl border border-[#22D3EE]/25 flex flex-col gap-5">
                <div class="flex items-center gap-2.5">
                  <span class="w-2.5 h-2.5 rounded-full bg-[#22D3EE]"></span>
                  <span class="font-['JetBrains_Mono'] text-sm font-semibold text-[#22D3EE]">
                    With Apus
                  </span>
                </div>
                <.benefit text="Full runtime visibility from your editor" />
                <.benefit text="Instant hot-reload without rebuilding" />
                <.benefit text="AI sees what's happening in real time" />
                <.benefit text="Closed-loop debugging in seconds" />
              </div>
            </div>
          </div>
        </section>

        <%!-- FEATURES --%>
        <section id="features" class="px-6 lg:px-20 py-24 bg-[#0F172A]">
          <div class="max-w-[1200px] mx-auto flex flex-col items-center gap-12">
            <div class="text-center flex flex-col gap-4">
              <span class="font-['JetBrains_Mono'] text-xs font-semibold text-[#22D3EE] tracking-[0.15em] uppercase">
                Runtime Visibility
              </span>
              <h2 class="text-4xl md:text-5xl font-bold">Everything your agent needs to see</h2>
            </div>

            <div class="grid md:grid-cols-2 gap-5 w-full">
              <.feature_card
                icon="scroll-text"
                title="Real-time Logs"
                desc="Stream app logs directly to your agent. No more copy-pasting from Xcode console."
              />
              <.feature_card
                icon="wifi"
                title="Network Traffic"
                desc="Inspect every API call — requests, responses, headers, and status codes in real time."
              />
              <.feature_card
                icon="camera"
                title="Live Screenshot"
                desc="Capture what the user sees at any moment. Your agent gets the visual context it needs."
              />
              <.feature_card
                icon="layers"
                title="UI Hierarchy"
                desc="Inspect the full SwiftUI view tree. Know exactly which view to modify."
              />
              <.feature_card
                icon="database"
                title="App Storage"
                desc="Read and write UserDefaults, Keychain, and app documents on the fly."
              />
              <.feature_card
                icon="cpu"
                title="Memory Inspector"
                desc="Monitor memory usage and detect leaks before they become real problems."
              />
              <.feature_card
                icon="zap"
                title="Hot Reload"
                desc="Inject Swift code changes instantly. See results in seconds, not minutes."
              />
              <.feature_card
                icon="activity"
                title="Diagnostics"
                desc="Device info, OS version, battery, connectivity — all the context your agent needs."
              />
            </div>
          </div>
        </section>

        <%!-- SETUP --%>
        <section id="setup" class="px-6 lg:px-20 py-24">
          <div class="max-w-[1200px] mx-auto flex flex-col items-center gap-12">
            <div class="text-center flex flex-col gap-4">
              <span class="font-['JetBrains_Mono'] text-xs font-semibold text-[#22D3EE] tracking-[0.15em] uppercase">
                Get Started
              </span>
              <h2 class="text-4xl md:text-5xl font-bold">Up and running in 3 steps</h2>
            </div>

            <div class="grid md:grid-cols-3 gap-6 w-full">
              <.setup_step
                num="1"
                title="Bootstrap your project"
                code="$ apus new MyApp"
                desc="Initializes your iOS project with the Apus SDK and sets up hot-reload support."
              />
              <.setup_step
                num="2"
                title="Connect your MCP client"
                code={~s|{ "apus": { ... } }|}
                desc="Add Apus to your MCP configuration. Works with Claude, Cursor, and any MCP client."
              />
              <.setup_step
                num="3"
                title="Ask your agent to build"
                code={~s|"Add a profile photo to the feed"|}
                desc="Your agent inspects, edits, and hot-reloads — all autonomously, in a closed loop."
              />
            </div>
          </div>
        </section>

        <%!-- THE LOOP --%>
        <section class="px-6 lg:px-20 py-24 bg-[#0F172A]">
          <div class="max-w-[1200px] mx-auto flex flex-col items-center gap-12">
            <div class="text-center flex flex-col gap-4">
              <span class="font-['JetBrains_Mono'] text-xs font-semibold text-[#22D3EE] tracking-[0.15em] uppercase">
                The Loop
              </span>
              <h2 class="text-4xl md:text-5xl font-bold">A closed feedback loop for AI coding</h2>
              <p class="text-lg text-[#94A3B8] max-w-[650px] mx-auto leading-relaxed">
                Apus turns your AI agent from a one-shot code generator into an iterative developer with real-time feedback.
              </p>
            </div>

            <div class="flex flex-wrap items-center justify-center gap-3">
              <.loop_step icon="rocket" title="Bootstrap" desc="Init project with SDK" active={false} />
              <.loop_arrow />
              <.loop_step icon="search" title="Inspect" desc="Logs, network, UI tree" active={false} />
              <.loop_arrow />
              <.loop_step icon="pencil" title="Edit" desc="AI modifies Swift code" active={false} />
              <.loop_arrow />
              <.loop_step
                icon="zap"
                title="Hot Reload"
                desc="Inject changes instantly"
                active={false}
              />
              <.loop_arrow />
              <.loop_step icon="check" title="Confirm" desc="Verify via screenshot" active={true} />
            </div>
          </div>
        </section>

        <%!-- FINAL CTA --%>
        <section class="px-6 lg:px-20 py-24 bg-gradient-to-b from-[#0A0F1C] to-[#0F172A]">
          <div class="max-w-[700px] mx-auto flex flex-col items-center gap-8 text-center">
            <h2 class="text-4xl md:text-5xl font-bold leading-tight">
              Give your AI eyes<br />on your iOS app.
            </h2>
            <p class="text-lg text-[#94A3B8]">
              Install the MCP server. Connect your client. Start building.
            </p>
            <div class="flex flex-wrap items-center justify-center gap-4">
              <a
                href="#setup"
                class="inline-flex items-center gap-2.5 py-4 px-8 bg-[#22D3EE] text-[#0A0F1C] font-['JetBrains_Mono'] font-semibold rounded-lg hover:bg-[#22D3EE]/90 transition-all hover:-translate-y-0.5 shadow-[0_4px_20px_rgba(34,211,238,0.3)]"
              >
                <svg class="w-5 h-5" viewBox="0 0 24 24" fill="currentColor">
                  <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z" />
                </svg>
                Get Started
              </a>
              <a
                href="#features"
                class="inline-flex items-center gap-2.5 py-4 px-8 border border-[#94A3B8] rounded-lg text-white hover:bg-white/5 transition-all"
              >
                <svg
                  class="w-5 h-5 text-[#22D3EE]"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <path d="M2 3h6a4 4 0 0 1 4 4v14a3 3 0 0 0-3-3H2z" /><path d="M22 3h-6a4 4 0 0 0-4 4v14a3 3 0 0 1 3-3h7z" />
                </svg>
                Explore features
              </a>
            </div>
          </div>
        </section>

        <%!-- FOOTER --%>
        <footer class="border-t border-[#1E293B]">
          <div class="max-w-[1400px] mx-auto px-6 lg:px-20 py-10 flex flex-col md:flex-row justify-between items-center gap-6">
            <div class="flex items-center gap-3">
              <div class="w-6 h-6 rounded bg-[#22D3EE]/20 flex items-center justify-center">
                <svg
                  class="w-3.5 h-3.5 text-[#22D3EE]"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <polyline points="4 17 10 11 4 5" /><line x1="12" x2="20" y1="19" y2="19" />
                </svg>
              </div>
              <span class="font-['JetBrains_Mono'] font-bold">Apus</span>
              <span class="text-sm text-[#64748B]">Runtime visibility for coding agents</span>
            </div>
            <div class="flex items-center gap-8 text-sm text-[#94A3B8]">
              <a href="#features" class="hover:text-white transition-colors">Features</a>
              <a id="landing-footer-docs" href="#features" class="hover:text-white transition-colors">
                Docs
              </a>
              <a href="#setup" class="hover:text-white transition-colors">Setup</a>
            </div>
          </div>
          <div class="text-center py-6 text-xs text-[#475569]">
            © {Date.utc_today().year} Apus. Open source under Apache 2.0 License.
          </div>
        </footer>
      </div>
    </Layouts.app>
    """
  end

  # -- Helpers --

  defp code_sample do
    """
    <span style="color:#64748B">struct</span> <span style="color:#94A3B8">ContentView</span>: <span style="color:#94A3B8">View</span> {
      <span style="color:#64748B">var</span> body: <span style="color:#94A3B8">some View</span> {
        <span style="color:#94A3B8">NavigationStack</span> {
          <span style="color:#94A3B8">List</span>(posts) { post <span style="color:#64748B">in</span>
            <span style="color:#22D3EE">PostRow(post: post)</span>
          }
          .<span style="color:#94A3B8">navigationTitle</span>(<span style="color:#22D3EE">&quot;Feed&quot;</span>)
        }
      }
    }
    """
  end

  # -- Component functions --

  attr :icon, :string, required: true
  attr :label, :string, required: true

  defp context_badge(assigns) do
    ~H"""
    <div class="flex items-center gap-1.5 py-2 px-3.5 bg-[#1E293B] rounded-md font-['JetBrains_Mono'] text-xs text-white">
      <.lucide_icon name={@icon} class="w-3.5 h-3.5 text-[#22D3EE]" />
      {@label}
    </div>
    """
  end

  attr :text, :string, required: true

  defp pain_point(assigns) do
    ~H"""
    <div class="flex items-center gap-3">
      <svg
        class="w-4 h-4 text-[#64748B] shrink-0"
        viewBox="0 0 24 24"
        fill="none"
        stroke="currentColor"
        stroke-width="2"
        stroke-linecap="round"
        stroke-linejoin="round"
      >
        <path d="M18 6 6 18" /><path d="m6 6 12 12" />
      </svg>
      <span class="text-sm text-[#94A3B8]">{@text}</span>
    </div>
    """
  end

  attr :text, :string, required: true

  defp benefit(assigns) do
    ~H"""
    <div class="flex items-center gap-3">
      <svg
        class="w-4 h-4 text-[#22D3EE] shrink-0"
        viewBox="0 0 24 24"
        fill="none"
        stroke="currentColor"
        stroke-width="2"
        stroke-linecap="round"
        stroke-linejoin="round"
      >
        <path d="M20 6 9 17l-5-5" />
      </svg>
      <span class="text-sm text-white">{@text}</span>
    </div>
    """
  end

  attr :icon, :string, required: true
  attr :title, :string, required: true
  attr :desc, :string, required: true

  defp feature_card(assigns) do
    ~H"""
    <div class="p-6 bg-[#1E293B] rounded-xl flex flex-col gap-3 hover:bg-[#1E293B]/80 transition-colors">
      <.lucide_icon name={@icon} class="w-6 h-6 text-[#22D3EE]" />
      <h3 class="text-base font-semibold">{@title}</h3>
      <p class="text-sm text-[#94A3B8] leading-relaxed">{@desc}</p>
    </div>
    """
  end

  attr :num, :string, required: true
  attr :title, :string, required: true
  attr :code, :string, required: true
  attr :desc, :string, required: true

  defp setup_step(assigns) do
    ~H"""
    <div class="p-8 bg-[#1E293B] rounded-xl flex flex-col gap-4">
      <div class="w-10 h-10 rounded-lg bg-[#22D3EE] flex items-center justify-center">
        <span class="font-['JetBrains_Mono'] text-lg font-bold text-[#0A0F1C]">{@num}</span>
      </div>
      <h3 class="text-lg font-semibold">{@title}</h3>
      <div class="py-3 px-4 bg-[#0A0F1C] rounded-md font-['JetBrains_Mono'] text-sm text-[#22D3EE]">
        {@code}
      </div>
      <p class="text-sm text-[#94A3B8] leading-relaxed">{@desc}</p>
    </div>
    """
  end

  attr :icon, :string, required: true
  attr :title, :string, required: true
  attr :desc, :string, required: true
  attr :active, :boolean, default: false

  defp loop_step(assigns) do
    ~H"""
    <div class={[
      "w-[180px] p-5 rounded-xl flex flex-col items-center gap-3 text-center",
      if(@active, do: "bg-[#0A0F1C] border border-[#22D3EE]/25", else: "bg-[#1E293B]")
    ]}>
      <.lucide_icon
        name={@icon}
        class={["w-7 h-7", if(@active, do: "text-[#22D3EE]", else: "text-[#22D3EE]")]}
      />
      <span class={[
        "font-['JetBrains_Mono'] text-sm font-semibold",
        if(@active, do: "text-[#22D3EE]", else: "text-white")
      ]}>
        {@title}
      </span>
      <span class="text-xs text-[#94A3B8]">{@desc}</span>
    </div>
    """
  end

  defp loop_arrow(assigns) do
    ~H"""
    <svg
      class="w-6 h-6 text-[#22D3EE] hidden sm:block"
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <path d="m9 18 6-6-6-6" />
    </svg>
    """
  end

  attr :name, :string, required: true
  attr :class, :any, default: nil

  defp lucide_icon(%{name: "scroll-text"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <path d="M15 12h-5" /><path d="M15 8h-5" /><path d="M19 17V5a2 2 0 0 0-2-2H4" />
      <path d="M8 21h12a2 2 0 0 0 2-2v-1a1 1 0 0 0-1-1H11a1 1 0 0 0-1 1v1a2 2 0 1 1-4 0V5a2 2 0 1 0-4 0v2" />
    </svg>
    """
  end

  defp lucide_icon(%{name: "wifi"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <path d="M12 20h.01" /><path d="M2 8.82a15 15 0 0 1 20 0" /><path d="M5 12.859a10 10 0 0 1 14 0" /><path d="M8.5 16.429a5 5 0 0 1 7 0" />
    </svg>
    """
  end

  defp lucide_icon(%{name: "camera"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <path d="M14.5 4h-5L7 7H4a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h16a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2h-3l-2.5-3z" /><circle
        cx="12"
        cy="13"
        r="3"
      />
    </svg>
    """
  end

  defp lucide_icon(%{name: "layers"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <path d="m12.83 2.18a2 2 0 0 0-1.66 0L2.6 6.08a1 1 0 0 0 0 1.83l8.58 3.91a2 2 0 0 0 1.66 0l8.58-3.9a1 1 0 0 0 0-1.83Z" />
      <path d="m22 17.65-9.17 4.16a2 2 0 0 1-1.66 0L2 17.65" /><path d="m22 12.65-9.17 4.16a2 2 0 0 1-1.66 0L2 12.65" />
    </svg>
    """
  end

  defp lucide_icon(%{name: "zap"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <path d="M4 14a1 1 0 0 1-.78-1.63l9.9-10.2a.5.5 0 0 1 .86.46l-1.92 6.02A1 1 0 0 0 13 10h7a1 1 0 0 1 .78 1.63l-9.9 10.2a.5.5 0 0 1-.86-.46l1.92-6.02A1 1 0 0 0 11 14z" />
    </svg>
    """
  end

  defp lucide_icon(%{name: "database"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <ellipse cx="12" cy="5" rx="9" ry="3" /><path d="M3 5V19A9 3 0 0 0 21 19V5" /><path d="M3 12A9 3 0 0 0 21 12" />
    </svg>
    """
  end

  defp lucide_icon(%{name: "cpu"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <rect width="16" height="16" x="4" y="4" rx="2" /><rect width="6" height="6" x="9" y="9" rx="1" />
      <path d="M15 2v2" /><path d="M15 20v2" /><path d="M2 15h2" /><path d="M2 9h2" /><path d="M20 15h2" /><path d="M20 9h2" /><path d="M9 2v2" /><path d="M9 20v2" />
    </svg>
    """
  end

  defp lucide_icon(%{name: "activity"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <path d="M22 12h-2.48a2 2 0 0 0-1.93 1.46l-2.35 8.36a.25.25 0 0 1-.48 0L9.24 2.18a.25.25 0 0 0-.48 0l-2.35 8.36A2 2 0 0 1 4.49 12H2" />
    </svg>
    """
  end

  defp lucide_icon(%{name: "rocket"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <path d="M4.5 16.5c-1.5 1.26-2 5-2 5s3.74-.5 5-2c.71-.84.7-2.13-.09-2.91a2.18 2.18 0 0 0-2.91-.09z" />
      <path d="m12 15-3-3a22 22 0 0 1 2-3.95A12.88 12.88 0 0 1 22 2c0 2.72-.78 7.5-6 11a22.35 22.35 0 0 1-4 2z" />
      <path d="M9 12H4s.55-3.03 2-4c1.62-1.08 5 0 5 0" /><path d="M12 15v5s3.03-.55 4-2c1.08-1.62 0-5 0-5" />
    </svg>
    """
  end

  defp lucide_icon(%{name: "search"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <circle cx="11" cy="11" r="8" /><path d="m21 21-4.3-4.3" />
    </svg>
    """
  end

  defp lucide_icon(%{name: "pencil"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <path d="M21.174 6.812a1 1 0 0 0-3.986-3.987L3.842 16.174a2 2 0 0 0-.5.83l-1.321 4.352a.5.5 0 0 0 .623.622l4.353-1.32a2 2 0 0 0 .83-.497z" />
    </svg>
    """
  end

  defp lucide_icon(%{name: "check"} = assigns) do
    ~H"""
    <svg
      class={@class}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      stroke-width="2"
      stroke-linecap="round"
      stroke-linejoin="round"
    >
      <path d="M20 6 9 17l-5-5" />
    </svg>
    """
  end

  defp lucide_icon(assigns) do
    ~H"""
    <svg class={@class} viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
      <circle cx="12" cy="12" r="10" />
    </svg>
    """
  end
end
