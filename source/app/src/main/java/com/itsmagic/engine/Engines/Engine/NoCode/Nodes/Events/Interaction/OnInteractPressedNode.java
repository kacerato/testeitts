package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Events.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;

/**
 * Disparado quando o botao ou acao logica 'interact' e pressionada sobre o objeto.
 */
public class OnInteractPressedNode extends Fa.a implements F {

    public static final String SERIALIZED_NAME = "Interaction.OnInteractPressed";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new OnInteractPressedNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return OnInteractPressedNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, OnInteractPressedNode.class);
        }

        @Override
        public String e() {
            return "Events/Interaction";
        }

        @Override
        public String f() {
            return "On Interact Pressed";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public OnInteractPressedNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Target Object", H.GAME_OBJECT).c("Target Object")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Pressed", H.BRANCH).c("Pressed"),
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Hit Position", H.FLOAT3).c("Hit Position")
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

    public void trigger(InteractionContext context) {
        if (context == null || this.f79021a == null) return;
        y0(this.outputs[1], context.interactor);
        y0(this.outputs[2], new Vector3(context.hitPosition));
        if (this.f79021a.o0(this, this.outputs[0])) {
            u(this.outputs[0]);
        }
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "On Interact Pressed";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        return inputIndex == 0 ? "owner" : "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 1) return H.GAME_OBJECT;
        if (index == 2) return H.FLOAT3;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "On Interact Pressed";
    }
}
