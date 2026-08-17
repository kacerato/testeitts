package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Conditions.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
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
 * Valida se um objeto esta habilitado e disponivel para interacao.
 */
public class CanInteractNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.CanInteract";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new CanInteractNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return CanInteractNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, CanInteractNode.class);
        }

        @Override
        public String e() {
            return "Conditions/Interaction";
        }

        @Override
        public String f() {
            return "Can Interact";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public CanInteractNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Target", H.GAME_OBJECT).c("Target")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("True", H.BRANCH).c("True"),
            new NoCodeSlot("False", H.BRANCH).c("False"),
            new NoCodeSlot("Can Interact", H.BOOLEAN).c("Can Interact")
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

        boolean canInteract = false;
        if (C13317e.J(target)) {
            InteractionRegistry.InteractableData data = InteractionRegistry.get(target);
            canInteract = (data != null && data.enabled && !data.isBusy);
        }

        y0(this.outputs[2], Boolean.valueOf(canInteract));
        u(canInteract ? this.outputs[0] : this.outputs[1]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Can Interact";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "owner" : "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 2) return H.BOOLEAN;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Can Interact";
    }
}
