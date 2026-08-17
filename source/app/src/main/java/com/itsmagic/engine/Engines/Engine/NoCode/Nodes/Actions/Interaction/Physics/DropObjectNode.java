package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Physics;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.GrabService;
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
 * Solta o objeto atualmente segurado via GrabService.
 */
public class DropObjectNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.DropObject";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new DropObjectNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return DropObjectNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, DropObjectNode.class);
        }

        @Override
        public String e() {
            return "Actions/Physics";
        }

        @Override
        public String f() {
            return "Drop Object";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public DropObjectNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor")
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
        GameObject interactor = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(interactor) && this.f79021a != null) {
            interactor = this.f79021a.h0();
        }

        GrabService.drop(interactor);
        u(this.outputs[0]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Drop Object";
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
        return "Drop Object";
    }
}
