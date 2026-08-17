package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;

/**
 * Retorna a distancia linear exata entre dois GameObjects.
 */
public class GetInteractionDistanceNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.GetDistance";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new GetInteractionDistanceNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return GetInteractionDistanceNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, GetInteractionDistanceNode.class);
        }

        @Override
        public String e() {
            return "Queries/Interaction";
        }

        @Override
        public String f() {
            return "Get Interaction Distance";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public GetInteractionDistanceNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Object A", H.GAME_OBJECT).c("Object A"),
            new NoCodeSlot("Object B", H.GAME_OBJECT).c("Object B")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Out", H.BRANCH).c("Out"),
            new NoCodeSlot("Distance", H.NUMBER).c("Distance")
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
        GameObject objA = Aa.b.b(this, this.f79021a, this.inputs[0]);
        GameObject objB = Aa.b.b(this, this.f79021a, this.inputs[1]);

        if (!C13317e.J(objA) && this.f79021a != null) {
            objA = this.f79021a.h0();
        }

        float dist = 0f;
        if (C13317e.J(objA) && C13317e.J(objB)) {
            Transform tA = objA.J0();
            Transform tB = objB.J0();
            if (tA != null && tB != null) {
                Vector3 pA = tA.J0();
                Vector3 pB = tB.J0();
                if (pA != null && pB != null) {
                    float dx = pA.getX() - pB.getX();
                    float dy = pA.getY() - pB.getY();
                    float dz = pA.getZ() - pB.getZ();
                    dist = (float) Math.sqrt(dx * dx + dy * dy + dz * dz);
                }
            }
        }

        y0(this.outputs[1], Float.valueOf(dist));
        u(this.outputs[0]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Get Interaction Distance";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "owner" : "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 1) return H.NUMBER;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Get Interaction Distance";
    }
}
