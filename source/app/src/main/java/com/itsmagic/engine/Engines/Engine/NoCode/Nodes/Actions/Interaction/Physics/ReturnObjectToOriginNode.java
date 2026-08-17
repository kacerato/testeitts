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
import ga.o;
import ga.p;
import gb.C13317e;

/**
 * Retorna um objeto a sua posicao e orientacao de origem armazenadas no momento em que foi pego.
 */
public class ReturnObjectToOriginNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.ReturnToOrigin";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new ReturnObjectToOriginNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return ReturnObjectToOriginNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, ReturnObjectToOriginNode.class);
        }

        @Override
        public String e() {
            return "Actions/Physics";
        }

        @Override
        public String f() {
            return "Return Object To Origin";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public ReturnObjectToOriginNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Object", H.GAME_OBJECT).c("Object")
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
            Object originObj = InteractionRegistry.getAttribute(object, "origin_pos");
            if (originObj instanceof Vector3) {
                Transform t = object.J0();
                if (t != null) {
                    t.f79337l.f((Vector3) originObj);
                }
            }
            InteractionRegistry.setState(object, InteractionState.Idle);
            InteractionRegistry.setAttribute(object, "held_by", null);
        }

        u(this.outputs[0]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Return Object To Origin";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "owner" : "";
    }

    @Override
    public H t0(int index, D resolver) {
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Return Object To Origin";
    }
}
