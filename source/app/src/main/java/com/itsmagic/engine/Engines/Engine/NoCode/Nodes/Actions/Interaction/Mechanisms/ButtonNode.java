package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Mechanisms;

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
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

/**
 * Controlador de botoes mecanicos (Momentary, Toggle, One-Shot).
 */
public class ButtonNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.Button";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new ButtonNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return ButtonNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, ButtonNode.class);
        }

        @Override
        public String e() {
            return "Actions/Mechanisms";
        }

        @Override
        public String f() {
            return "Button Controller";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public ButtonNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Button Object", H.GAME_OBJECT).c("Button Object"),
            new NoCodeSlot("Type", H.TEXT).c("Type")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Pressed", H.BRANCH).c("Pressed"),
            new NoCodeSlot("Released", H.BRANCH).c("Released"),
            new NoCodeSlot("Is Active", H.BOOLEAN).c("Is Active")
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
        GameObject btn = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(btn) && this.f79021a != null) {
            btn = this.f79021a.h0();
        }

        if (!C13317e.J(btn)) {
            u(this.outputs[1]);
            return;
        }

        String type = m.Y(Q(this.inputs[1]));
        if (type == null || type.trim().isEmpty()) {
            type = "Toggle";
        }

        InteractionState state = InteractionRegistry.getState(btn);
        boolean isActive = false;

        if ("OneShot".equalsIgnoreCase(type)) {
            if (state == InteractionState.On) {
                u(this.outputs[1]);
                return;
            }
            isActive = true;
            InteractionRegistry.setState(btn, InteractionState.On);
        } else if ("Toggle".equalsIgnoreCase(type)) {
            isActive = (state != InteractionState.On);
            InteractionRegistry.setState(btn, isActive ? InteractionState.On : InteractionState.Off);
        } else { // Momentary
            isActive = true;
            InteractionRegistry.setState(btn, InteractionState.On);
        }

        y0(this.outputs[2], Boolean.valueOf(isActive));
        u(isActive ? this.outputs[0] : this.outputs[1]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Button Controller";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        if (inputIndex == 1) return "Toggle";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 2) return H.BOOLEAN;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Button Controller";
    }
}
