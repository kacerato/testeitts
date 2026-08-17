package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Physics;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionState;
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
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

/**
 * Arremessa um objeto segurado aplicando impulso direcional.
 */
public class ThrowObjectNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.ThrowObject";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new ThrowObjectNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return ThrowObjectNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, ThrowObjectNode.class);
        }

        @Override
        public String e() {
            return "Actions/Physics";
        }

        @Override
        public String f() {
            return "Throw Object";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public ThrowObjectNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Object", H.GAME_OBJECT).c("Object"),
            new NoCodeSlot("Direction", H.DIRECTION).c("Direction"),
            new NoCodeSlot("Force", H.NUMBER).c("Force"),
            new NoCodeSlot("Use Forward", H.BOOLEAN).c("Use Forward")
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
        GameObject object = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(object) && this.f79021a != null) {
            object = this.f79021a.h0();
        }

        if (C13317e.J(object)) {
            InteractionRegistry.setState(object, InteractionState.Dropped);
            InteractionRegistry.setAttribute(object, "held_by", null);

            float force = m.V(Q(this.inputs[2]));
            if (force <= 0f) force = 10f;

            boolean useForward = m.S(Q(this.inputs[3]));
            Vector3 throwDir = new Vector3(0f, 0f, 1f);

            if (useForward && this.f79021a != null && this.f79021a.h0() != null) {
                Transform ownerTransform = this.f79021a.h0().J0();
                if (ownerTransform != null && ownerTransform.forward() != null) {
                    throwDir.set(ownerTransform.forward());
                }
            } else {
                Object dirObj = Q(this.inputs[1]);
                if (dirObj instanceof Vector3) {
                    throwDir.set((Vector3) dirObj);
                }
            }

            InteractionRegistry.setAttribute(object, "throw_force", Float.valueOf(force));
            InteractionRegistry.setAttribute(object, "throw_dir", throwDir);
        }

        u(this.outputs[0]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Throw Object";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        if (inputIndex == 2) return "10.0";
        if (inputIndex == 3) return "true";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Throw Object";
    }
}
