package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Conditions.Interaction;

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
 * Verifica se um GameObject possui uma determinada capability (ex: Grabbable, Openable).
 */
public class TargetHasCapabilityNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.HasCapability";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new TargetHasCapabilityNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return TargetHasCapabilityNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, TargetHasCapabilityNode.class);
        }

        @Override
        public String e() {
            return "Conditions/Interaction";
        }

        @Override
        public String f() {
            return "Target Has Capability";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public TargetHasCapabilityNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"),
            new NoCodeSlot("Capability", H.TEXT).c("Capability")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Has", H.BRANCH).c("Has"),
            new NoCodeSlot("Missing", H.BRANCH).c("Missing"),
            new NoCodeSlot("Result", H.BOOLEAN).c("Result")
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

        String capStr = m.i0(Q(this.inputs[1]));
        InteractionCapability cap = InteractionCapability.fromString(capStr);

        boolean has = false;
        if (C13317e.J(target) && cap != null) {
            has = InteractionRegistry.hasCapability(target, cap);
        }

        y0(this.outputs[2], Boolean.valueOf(has));
        u(has ? this.outputs[0] : this.outputs[1]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Target Has Capability";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        if (inputIndex == 1) return "Grabbable";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 2) return H.BOOLEAN;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Target Has Capability";
    }
}
