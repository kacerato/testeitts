package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Inventory;

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
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

/**
 * Aplica um item (por Tag ou Nome) sobre um alvo específico (ex: Chave -> Porta, Bateria -> Radio).
 */
public class UseItemOnTargetNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.UseItemOnTarget";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new UseItemOnTargetNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return UseItemOnTargetNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, UseItemOnTargetNode.class);
        }

        @Override
        public String e() {
            return "Actions/Inventory";
        }

        @Override
        public String f() {
            return "Use Item On Target";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public UseItemOnTargetNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Required Item Tag", H.TEXT).c("Required Item Tag"),
            new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"),
            new NoCodeSlot("Consume", H.BOOLEAN).c("Consume")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Accepted", H.BRANCH).c("Accepted"),
            new NoCodeSlot("Rejected", H.BRANCH).c("Rejected"),
            new NoCodeSlot("Was Consumed", H.BOOLEAN).c("Was Consumed")
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
        String itemTag = m.Y(Q(this.inputs[0]));
        GameObject target = Aa.b.b(this, this.f79021a, this.inputs[1]);
        if (!C13317e.J(target) && this.f79021a != null) {
            target = this.f79021a.h0();
        }

        boolean accepted = false;
        boolean consume = m.S(Q(this.inputs[2]));

        if (C13317e.J(target) && itemTag != null && !itemTag.trim().isEmpty()) {
            accepted = InteractionRegistry.hasTag(target, itemTag.trim().toLowerCase());
        }

        y0(this.outputs[2], Boolean.valueOf(accepted && consume));
        u(accepted ? this.outputs[0] : this.outputs[1]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Use Item On Target";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "key_bronze";
        if (inputIndex == 1) return "owner";
        if (inputIndex == 2) return "true";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 2) return H.BOOLEAN;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Use Item On Target";
    }
}
