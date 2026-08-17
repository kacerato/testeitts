package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCapability;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
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

/**
 * Configura propriedades de interacao de um GameObject (Habilitado, Prioridade, Capability).
 */
public class SetInteractableNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.SetInteractable";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new SetInteractableNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return SetInteractableNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, SetInteractableNode.class);
        }

        @Override
        public String e() {
            return "Actions/Interaction";
        }

        @Override
        public String f() {
            return "Set Interactable";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public SetInteractableNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"),
            new NoCodeSlot("Enabled", H.BOOLEAN).c("Enabled"),
            new NoCodeSlot("Priority", H.NUMBER).c("Priority"),
            new NoCodeSlot("Add Capability", H.TEXT).c("Add Capability")
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
        GameObject target = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(target) && this.f79021a != null) {
            target = this.f79021a.h0();
        }

        if (C13317e.J(target)) {
            boolean enabled = m.O(Q(this.inputs[1]));
            int priority = (int) m.V(Q(this.inputs[2]));
            String capStr = m.i0(Q(this.inputs[3]));

            InteractionRegistry.setEnabled(target, enabled);
            InteractionRegistry.setPriority(target, priority);

            if (capStr != null && !capStr.trim().isEmpty()) {
                InteractionCapability cap = InteractionCapability.fromString(capStr);
                if (cap != null) {
                    InteractionRegistry.addCapability(target, cap);
                }
            }
        }

        u(this.outputs[0]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Set Interactable";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        if (inputIndex == 1) return "true";
        if (inputIndex == 2) return "0";
        if (inputIndex == 3) return "Interactable";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Set Interactable";
    }
}
