package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
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

/**
 * Escuta eventos customizados desacoplados enviados atraves do barramento de interacao com suporte a lifecycle.
 */
public class OnInteractionEventNode extends Fa.a implements F, InteractionDispatcher.InteractionEventListener {

    public static final String SERIALIZED_NAME = "Interaction.OnCustomEvent";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new OnInteractionEventNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return OnInteractionEventNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, OnInteractionEventNode.class);
        }

        @Override
        public String e() {
            return "Events/Interaction";
        }

        @Override
        public String f() {
            return "On Interaction Event";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public OnInteractionEventNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Event Name", H.TEXT).c("Event Name")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Received", H.BRANCH).c("Received"),
            new NoCodeSlot("Sender", H.GAME_OBJECT).c("Sender"),
            new NoCodeSlot("Payload", H.DYNAMIC).c("Payload")
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
        String expected = m.i0(Q(this.inputs[0]));
        if (expected != null && !expected.trim().isEmpty()) {
            InteractionDispatcher.addCustomEventListener(expected, this);
        } else {
            InteractionDispatcher.addGlobalListener(this);
        }
    }

    @Override
    public void k0() {
        super.k0();
        String expected = m.i0(Q(this.inputs[0]));
        if (expected != null && !expected.trim().isEmpty()) {
            InteractionDispatcher.removeCustomEventListener(expected, this);
        } else {
            InteractionDispatcher.removeGlobalListener(this);
        }
    }

    @Override
    public void onCustomEvent(String eventName, GameObject sender, Object payload) {
        if (this.f79021a == null) return;
        String expected = m.i0(Q(this.inputs[0]));
        if (expected != null && !expected.trim().isEmpty()) {
            if (!expected.trim().equalsIgnoreCase(eventName != null ? eventName.trim() : "")) {
                return;
            }
        }
        y0(this.outputs[1], sender);
        y0(this.outputs[2], payload);
        if (this.f79021a.o0(this, this.outputs[0])) {
            u(this.outputs[0]);
        }
    }

    @Override
    public void onFocusEnter(InteractionContext context) {}

    @Override
    public void onFocusStay(InteractionContext context) {}

    @Override
    public void onFocusExit(InteractionContext context) {}

    @Override
    public void onInteract(InteractionContext context) {}

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On Interaction Event";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "InteractEvent" : "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 1) return H.GAME_OBJECT;
        if (index == 2) return H.DYNAMIC;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "On Interaction Event";
    }
}
