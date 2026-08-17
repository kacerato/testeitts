package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
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
 * Envia um evento desacoplado de interacao para outro objeto ou globalmente.
 */
public class SendInteractionEventNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.SendEvent";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new SendInteractionEventNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return SendInteractionEventNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, SendInteractionEventNode.class);
        }

        @Override
        public String e() {
            return "Actions/Interaction";
        }

        @Override
        public String f() {
            return "Send Interaction Event";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public SendInteractionEventNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Event Name", H.TEXT).c("Event Name"),
            new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"),
            new NoCodeSlot("Payload", H.DYNAMIC).c("Payload")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Out", H.BRANCH).c("Out")
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
    public void m0() {
        String eventName = m.i0(Q(this.inputs[0]));
        GameObject target = Aa.b.b(this, this.f79021a, this.inputs[1]);
        Object payload = Q(this.inputs[2]);

        if (eventName != null && !eventName.trim().isEmpty()) {
            InteractionDispatcher.dispatchCustomEvent(eventName, target, payload);
        }

        u(this.outputs[0]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Send Interaction Event";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "PressureChanged";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Send Interaction Event";
    }
}
