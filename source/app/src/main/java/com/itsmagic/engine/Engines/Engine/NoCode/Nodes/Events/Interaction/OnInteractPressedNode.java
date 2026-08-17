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
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;

/** Disparado apenas quando a acao logica "interact" e pressionada sobre o objeto. */
public class OnInteractPressedNode extends Fa.a implements F, InteractionDispatcher.InteractionEventListener {

    public static final String SERIALIZED_NAME = "Interaction.OnInteractPressed";
    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        public NoCodeNode a() { return new OnInteractPressedNode(); }
        public Class<? extends NoCodeNode> b() { return OnInteractPressedNode.class; }
        public String c() { return SERIALIZED_NAME; }
        public NoCodeNode d(JsonObject json) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, OnInteractPressedNode.class); }
        public String e() { return "Events/Interaction"; }
        public String f() { return "On Interact Pressed"; }
        public boolean g() { return true; }
    }

    static { o.a(new NodeFactory()); }

    public OnInteractPressedNode() {
        this.inputs = new NoCodeSlot[]{ new NoCodeSlot("Target Object", H.GAME_OBJECT).c("Target Object") };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Pressed", H.BRANCH).c("Pressed"),
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Hit Position", H.FLOAT3).c("Hit Position")
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
        y0(outputs[1], context.interactor);
        y0(outputs[2], new Vector3(context.hitPosition));
        if (this.f79021a.o0(this, outputs[0])) u(outputs[0]);
    }

    public void onFocusEnter(InteractionContext context) {}
    public void onFocusStay(InteractionContext context) {}
    public void onFocusExit(InteractionContext context) {}
    public void onCustomEvent(String eventName, GameObject target, Object payload) {}
    public EnumC13304B M() { return EnumC13304B.BOTH; }
    public String N(NoCodeData graphData) { return "On Interact Pressed"; }
    public String x(NoCodeData graphData) { return "On Interact Pressed"; }
    public String a(int inputIndex, H desiredType) { return inputIndex == 0 ? "owner" : ""; }
    public H t0(int index, D resolver) { if (index == 1) return H.GAME_OBJECT; if (index == 2) return H.FLOAT3; return H.BRANCH; }
}
