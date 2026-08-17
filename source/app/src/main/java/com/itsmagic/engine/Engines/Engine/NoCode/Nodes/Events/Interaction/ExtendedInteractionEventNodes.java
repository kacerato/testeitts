package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionDispatcher;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

/** Agrupa eventos adicionais da camada Interaction sem criar runtimes paralelos. */
public final class ExtendedInteractionEventNodes {
    private ExtendedInteractionEventNodes() {}

    public static class OnFocusStayNode extends Fa.a implements F, InteractionDispatcher.InteractionEventListener {
        public static final String SERIALIZED_NAME = "Interaction.OnFocusStay";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target Object", H.GAME_OBJECT).c("Target Object") };
        public final NoCodeSlot[] outputs = {
            new NoCodeSlot("Stay", H.BRANCH).c("Stay"),
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Distance", H.NUMBER).c("Distance")
        };
        public static class Factory implements p {
            public NoCodeNode a() { return new OnFocusStayNode(); }
            public Class<? extends NoCodeNode> b() { return OnFocusStayNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject json) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, OnFocusStayNode.class); }
            public String e() { return "Events/Interaction"; }
            public String f() { return "On Focus Stay"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public OnFocusStayNode() { this.serializedNodeType = SERIALIZED_NAME; }
        private GameObject getTarget() { GameObject obj = Aa.b.b(this, this.f79021a, inputs[0]); if (!C13317e.J(obj) && this.f79021a != null) obj = this.f79021a.h0(); return obj; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void l0() { super.l0(); GameObject go = getTarget(); if (C13317e.J(go)) { InteractionRegistry.register(go); InteractionDispatcher.addObjectListener(go, this); } }
        public void k0() { GameObject go = getTarget(); if (go != null) InteractionDispatcher.removeObjectListener(go, this); super.k0(); }
        public void onFocusStay(InteractionContext c) { if (c == null || this.f79021a == null) return; y0(outputs[1], c.interactor); y0(outputs[2], Float.valueOf(c.distance)); if (this.f79021a.o0(this, outputs[0])) u(outputs[0]); }
        public void onFocusEnter(InteractionContext c) {}
        public void onFocusExit(InteractionContext c) {}
        public void onInteract(InteractionContext c) {}
        public void onCustomEvent(String n, GameObject t, Object payload) {}
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "On Focus Stay"; }
        public String x(NoCodeData d) { return "On Focus Stay"; }
        public String a(int i, H t) { return i == 0 ? "owner" : ""; }
        public H t0(int i, D r) { if (i == 1) return H.GAME_OBJECT; if (i == 2) return H.NUMBER; return H.BRANCH; }
    }

    public static class OnInteractReleasedNode extends Fa.a implements F, InteractionDispatcher.InteractionEventListener {
        public static final String SERIALIZED_NAME = "Interaction.OnInteractReleased";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target Object", H.GAME_OBJECT).c("Target Object") };
        public final NoCodeSlot[] outputs = {
            new NoCodeSlot("Released", H.BRANCH).c("Released"),
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Action", H.TEXT).c("Action")
        };
        public static class Factory implements p {
            public NoCodeNode a() { return new OnInteractReleasedNode(); }
            public Class<? extends NoCodeNode> b() { return OnInteractReleasedNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject json) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, OnInteractReleasedNode.class); }
            public String e() { return "Events/Interaction"; }
            public String f() { return "On Interact Released"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public OnInteractReleasedNode() { this.serializedNodeType = SERIALIZED_NAME; }
        private GameObject getTarget() { GameObject obj = Aa.b.b(this, this.f79021a, inputs[0]); if (!C13317e.J(obj) && this.f79021a != null) obj = this.f79021a.h0(); return obj; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void l0() { super.l0(); GameObject go = getTarget(); if (C13317e.J(go)) { InteractionRegistry.register(go); InteractionDispatcher.addObjectListener(go, this); } }
        public void k0() { GameObject go = getTarget(); if (go != null) InteractionDispatcher.removeObjectListener(go, this); super.k0(); }
        public void onInteractReleased(InteractionContext c) { if (c == null || this.f79021a == null || !"interact".equalsIgnoreCase(c.action)) return; y0(outputs[1], c.interactor); y0(outputs[2], c.action); if (this.f79021a.o0(this, outputs[0])) u(outputs[0]); }
        public void onFocusEnter(InteractionContext c) {}
        public void onFocusStay(InteractionContext c) {}
        public void onFocusExit(InteractionContext c) {}
        public void onInteract(InteractionContext c) {}
        public void onCustomEvent(String n, GameObject t, Object payload) {}
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "On Interact Released"; }
        public String x(NoCodeData d) { return "On Interact Released"; }
        public String a(int i, H t) { return i == 0 ? "owner" : ""; }
        public H t0(int i, D r) { if (i == 1) return H.GAME_OBJECT; if (i == 2) return H.TEXT; return H.BRANCH; }
    }

    public static class OnInteractionActionNode extends Fa.a implements F, InteractionDispatcher.InteractionEventListener {
        public static final String SERIALIZED_NAME = "Interaction.OnAction";
        public final NoCodeSlot[] inputs = {
            new NoCodeSlot("Target Object", H.GAME_OBJECT).c("Target Object"),
            new NoCodeSlot("Action", H.TEXT).c("Action"),
            new NoCodeSlot("Phase", H.TEXT).c("Phase")
        };
        public final NoCodeSlot[] outputs = {
            new NoCodeSlot("Triggered", H.BRANCH).c("Triggered"),
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"),
            new NoCodeSlot("Action", H.TEXT).c("Action"),
            new NoCodeSlot("Phase", H.TEXT).c("Phase")
        };
        public static class Factory implements p {
            public NoCodeNode a() { return new OnInteractionActionNode(); }
            public Class<? extends NoCodeNode> b() { return OnInteractionActionNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject json) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, OnInteractionActionNode.class); }
            public String e() { return "Events/Interaction"; }
            public String f() { return "On Interaction Action"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public OnInteractionActionNode() { this.serializedNodeType = SERIALIZED_NAME; }
        private GameObject getTarget() { GameObject obj = Aa.b.b(this, this.f79021a, inputs[0]); if (!C13317e.J(obj) && this.f79021a != null) obj = this.f79021a.h0(); return obj; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void l0() { super.l0(); GameObject go = getTarget(); if (C13317e.J(go)) { InteractionRegistry.register(go); InteractionDispatcher.addObjectListener(go, this); } }
        public void k0() { GameObject go = getTarget(); if (go != null) InteractionDispatcher.removeObjectListener(go, this); super.k0(); }
        private boolean actionMatches(InteractionContext c) { String expected = m.i0(Q(inputs[1])); return expected == null || expected.trim().isEmpty() || expected.trim().equalsIgnoreCase(c.action); }
        private boolean phaseMatches(String phase) { String expected = m.i0(Q(inputs[2])); return expected == null || expected.trim().isEmpty() || "Any".equalsIgnoreCase(expected.trim()) || expected.trim().equalsIgnoreCase(phase); }
        private void fire(InteractionContext c, String phase) { if (c == null || this.f79021a == null || !actionMatches(c) || !phaseMatches(phase)) return; y0(outputs[1], c.interactor); y0(outputs[2], c.target); y0(outputs[3], c.action); y0(outputs[4], phase); if (this.f79021a.o0(this, outputs[0])) u(outputs[0]); }
        public void onInteract(InteractionContext c) { fire(c, "Pressed"); }
        public void onInteractReleased(InteractionContext c) { fire(c, "Released"); }
        public void onFocusEnter(InteractionContext c) {}
        public void onFocusStay(InteractionContext c) {}
        public void onFocusExit(InteractionContext c) {}
        public void onCustomEvent(String n, GameObject t, Object payload) {}
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "On Interaction Action"; }
        public String x(NoCodeData d) { return "On Interaction Action"; }
        public String a(int i, H t) { if (i == 0) return "owner"; if (i == 1) return "interact"; if (i == 2) return "Any"; return ""; }
        public H t0(int i, D r) { if (i == 1 || i == 2) return H.GAME_OBJECT; if (i == 3 || i == 4) return H.TEXT; return H.BRANCH; }
    }
}
