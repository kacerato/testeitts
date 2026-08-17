package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Conditions.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionState;
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
 * Verifica se um objeto (porta, bau, cofre) esta trancado.
 */
public class IsLockedNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.IsLocked";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new IsLockedNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return IsLockedNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, IsLockedNode.class);
        }

        @Override
        public String e() {
            return "Conditions/Interaction";
        }

        @Override
        public String f() {
            return "Is Locked";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public IsLockedNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Target", H.GAME_OBJECT).c("Target")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Locked", H.BRANCH).c("Locked"),
            new NoCodeSlot("Unlocked", H.BRANCH).c("Unlocked"),
            new NoCodeSlot("Is Locked", H.BOOLEAN).c("Is Locked")
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

        boolean isLocked = false;
        if (C13317e.J(target)) {
            InteractionState state = InteractionRegistry.getState(target);
            isLocked = (state == InteractionState.Locked);
        }

        y0(this.outputs[2], Boolean.valueOf(isLocked));
        u(isLocked ? this.outputs[0] : this.outputs[1]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Is Locked";
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
        return "Is Locked";
    }
}
