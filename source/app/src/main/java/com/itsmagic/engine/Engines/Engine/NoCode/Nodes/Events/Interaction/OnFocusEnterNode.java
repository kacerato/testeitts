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
import ga.o;
import ga.p;
import gb.C13317e;

/**
 * Disparado quando o jogador mira / foca no objeto dono deste grafo.
 * Conectado diretamente ao barramento de eventos InteractionDispatcher.
 */
public class OnFocusEnterNode extends Fa.a implements F, InteractionDispatcher.InteractionEventListener {

    public static final String SERIALIZED_NAME = "Interaction.OnFocusEnter";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new OnFocusEnterNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return OnFocusEnterNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, OnFocusEnterNode.class);
        }

        @Override
        public String e() {
            return "Events/Interaction";
        }

        @Override
        public String f() {
            return "On Focus Enter";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public OnFocusEnterNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Target Object", H.GAME_OBJECT).c("Target Object")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Enter", H.BRANCH).c("Enter"),
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor")
        };
        this.serializedNodeType = SERIALIZED_NAME;
    }

    @Override
    public NoCodeSlot[] F() {
        return this.inputs;
    }

    @Override
    public NoCodeSlot[] J() {
        return this.outputs;
    }

    @Override
    public void l0() {
        super.l0();
        GameObject target = getTargetObject();
        if (C13317e.J(target)) {
            InteractionRegistry.register(target);
            InteractionDispatcher.addObjectListener(target, this);
        }
    }

    private GameObject getTargetObject() {
        GameObject obj = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(obj) && this.f79021a != null) {
            obj = this.f79021a.h0();
        }
        return obj;
    }

    @Override
    public void onFocusEnter(InteractionContext context) {
        if (context == null || this.f79021a == null) return;
        y0(this.outputs[1], context.interactor);
        if (this.f79021a.o0(this, this.outputs[0])) {
            u(this.outputs[0]);
        }
    }

    @Override
    public void onFocusStay(InteractionContext context) {}

    @Override
    public void onFocusExit(InteractionContext context) {}

    @Override
    public void onInteract(InteractionContext context) {}

    @Override
    public void onCustomEvent(String eventName, GameObject target, Object payload) {}

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On Focus Enter";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "owner" : "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 1) return H.GAME_OBJECT;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "On Focus Enter";
    }
}
