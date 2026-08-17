package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionRuntime;
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
 * Consulta o alvo de interacao unificado atualmente focado pelo InteractionRuntime.
 */
public class GetInteractionTargetNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.GetTarget";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new GetInteractionTargetNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return GetInteractionTargetNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, GetInteractionTargetNode.class);
        }

        @Override
        public String e() {
            return "Queries/Interaction";
        }

        @Override
        public String f() {
            return "Get Interaction Target";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public GetInteractionTargetNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Found", H.BRANCH).c("Found"),
            new NoCodeSlot("Not Found", H.BRANCH).c("Not Found"),
            new NoCodeSlot("Target", H.GAME_OBJECT).c("Target")
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
        GameObject interactor = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(interactor) && this.f79021a != null) {
            interactor = this.f79021a.h0();
        }

        InteractionRuntime runtime = InteractionRuntime.getInstance();
        GameObject target = runtime.getCurrentTarget();

        // Se ainda nao estiver setado no runtime, consulta o resolver central
        if (!C13317e.J(target) && C13317e.J(interactor)) {
            target = runtime.getResolver().resolveTarget(interactor, null, null, null);
        }

        boolean found = C13317e.J(target);
        y0(this.outputs[2], target);
        u(found ? this.outputs[0] : this.outputs[1]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Interaction Target";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "owner" : "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 2) return H.GAME_OBJECT;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Get Interaction Target";
    }
}
