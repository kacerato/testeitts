package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionDispatcher;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionHoldSession;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionRuntime;
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

/** Evento hold ligado apenas a acao logica "interact". */
public class OnInteractHeldNode extends Fa.a implements F, InteractionDispatcher.InteractionEventListener, InteractionHoldSession.HoldListener {

    public static final String SERIALIZED_NAME = "Interaction.OnInteractHeld";
    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        public NoCodeNode a() { return new OnInteractHeldNode(); }
        public Class<? extends NoCodeNode> b() { return OnInteractHeldNode.class; }
        public String c() { return SERIALIZED_NAME; }
        public NoCodeNode d(JsonObject json) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, OnInteractHeldNode.class); }
        public String e() { return "Events/Interaction"; }
        public String f() { return "On Interact Held"; }
        public boolean g() { return true; }
    }

    static { o.a(new NodeFactory()); }

    public OnInteractHeldNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Target Object", H.GAME_OBJECT).c("Target Object"),
            new NoCodeSlot("Required Time (s)", H.NUMBER).c("Required Time")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Started", H.BRANCH).c("Started"),
            new NoCodeSlot("Progress", H.BRANCH).c("Progress"),
            new NoCodeSlot("Completed", H.BRANCH).c("Completed"),
            new NoCodeSlot("Cancelled", H.BRANCH).c("Cancelled"),
            new NoCodeSlot("Progress 0-1", H.NUMBER01).c("Progress 0-1"),
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor")
        };
        this.serializedNodeType = SERIALIZED_NAME;
    }

    public NoCodeSlot[] F() { return inputs; }
    public NoCodeSlot[] J() { return outputs; }

    public void l0() {
        super.l0();
        GameObject target = getTargetObject();
        if (C13317e.J(target)) {
            InteractionRegistry.register(target);
            InteractionDispatcher.addObjectListener(target, this);
        }
    }

    public void k0() {
        GameObject target = getTargetObject();
        if (target != null) InteractionDispatcher.removeObjectListener(target, this);
        super.k0();
    }

    private GameObject getTargetObject() {
        GameObject obj = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(obj) && this.f79021a != null) obj = this.f79021a.h0();
        return obj;
    }

    public void onInteract(InteractionContext context) {
        if (context == null || this.f79021a == null || !"interact".equalsIgnoreCase(context.action)) return;
        float duration = m.V(Q(inputs[1]));
        InteractionRuntime.getInstance().getHoldSession().startHold(context.interactor, context.target, duration > 0f ? duration : 2.0f, this);
    }

    public void onHoldStarted(InteractionContext context) {
        if (context == null || this.f79021a == null) return;
        y0(outputs[4], Float.valueOf(0.0f));
        y0(outputs[5], context.interactor);
        if (this.f79021a.o0(this, outputs[0])) u(outputs[0]);
    }

    public void onHoldProgress(InteractionContext context, float progress01) {
        if (context == null || this.f79021a == null) return;
        y0(outputs[4], Float.valueOf(progress01));
        y0(outputs[5], context.interactor);
        if (this.f79021a.o0(this, outputs[1])) u(outputs[1]);
    }

    public void onHoldCompleted(InteractionContext context) {
        if (context == null || this.f79021a == null) return;
        y0(outputs[4], Float.valueOf(1.0f));
        y0(outputs[5], context.interactor);
        if (this.f79021a.o0(this, outputs[2])) u(outputs[2]);
    }

    public void onHoldCancelled(InteractionContext context) {
        if (context == null || this.f79021a == null) return;
        y0(outputs[5], context.interactor);
        if (this.f79021a.o0(this, outputs[3])) u(outputs[3]);
    }

    public void onFocusEnter(InteractionContext context) {}
    public void onFocusStay(InteractionContext context) {}
    public void onFocusExit(InteractionContext context) {}
    public void onCustomEvent(String eventName, GameObject target, Object payload) {}
    public EnumC13304B M() { return EnumC13304B.BOTH; }
    public String N(NoCodeData graphData) { return "On Interact Held"; }
    public String x(NoCodeData graphData) { return "On Interact Held"; }
    public String a(int inputIndex, H desiredType) { if (inputIndex == 0) return "owner"; if (inputIndex == 1) return "2.0"; return ""; }
    public H t0(int index, D resolver) { if (index == 4) return H.NUMBER01; if (index == 5) return H.GAME_OBJECT; return H.BRANCH; }
}
