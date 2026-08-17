package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Mechanisms;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.ButtonService;
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

/** Controlador de botoes Momentary, Toggle, OneShot, Hold e Timed. */
public class ButtonNode extends NoCodeNode implements F {
    public static final String SERIALIZED_NAME = "Interaction.Button";
    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        public NoCodeNode a() { return new ButtonNode(); }
        public Class<? extends NoCodeNode> b() { return ButtonNode.class; }
        public String c() { return SERIALIZED_NAME; }
        public NoCodeNode d(JsonObject json) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, ButtonNode.class); }
        public String e() { return "Actions/Mechanisms"; }
        public String f() { return "Button Controller"; }
        public boolean g() { return true; }
    }

    static { o.a(new NodeFactory()); }

    public ButtonNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Button Object", H.GAME_OBJECT).c("Button Object"),
            new NoCodeSlot("Type", H.TEXT).c("Type"),
            new NoCodeSlot("Action", H.TEXT).c("Action"),
            new NoCodeSlot("Timed Duration", H.NUMBER).c("Timed Duration"),
            new NoCodeSlot("Reset OneShot", H.BOOLEAN).c("Reset OneShot")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Pressed", H.BRANCH).c("Pressed"),
            new NoCodeSlot("Released", H.BRANCH).c("Released"),
            new NoCodeSlot("Failed", H.BRANCH).c("Failed"),
            new NoCodeSlot("Is Active", H.BOOLEAN).c("Is Active"),
            new NoCodeSlot("Failure Reason", H.TEXT).c("Failure Reason")
        };
        this.serializedNodeType = SERIALIZED_NAME;
    }

    public NoCodeSlot[] F() { return inputs; }
    public NoCodeSlot[] J() { return outputs; }

    public void m0() {
        GameObject button = Aa.b.b(this, this.f79021a, inputs[0]);
        if (!C13317e.J(button) && this.f79021a != null) button = this.f79021a.h0();
        if (!C13317e.J(button)) {
            y0(outputs[4], InteractionResult.FailureReason.InvalidTarget.name());
            u(outputs[2]);
            return;
        }

        if (m.S(Q(inputs[4]))) {
            ButtonService.resetOneShot(button);
            y0(outputs[3], Boolean.FALSE);
            y0(outputs[4], InteractionResult.FailureReason.None.name());
            u(outputs[1]);
            return;
        }

        String type = m.Y(Q(inputs[1]));
        if (type == null || type.trim().isEmpty()) type = "Toggle";
        String action = m.Y(Q(inputs[2]));
        if (action == null || action.trim().isEmpty()) action = "Press";

        InteractionResult result;
        boolean released = "Release".equalsIgnoreCase(action);
        if (released) result = ButtonService.release(button, type);
        else result = ButtonService.press(button, type, m.V(Q(inputs[3])));

        y0(outputs[3], Boolean.valueOf(InteractionRegistry.isOn(button)));
        y0(outputs[4], result.failureReason.name());
        if (!result.success) u(outputs[2]);
        else u(released ? outputs[1] : outputs[0]);
    }

    public EnumC13304B M() { return EnumC13304B.BOTH; }
    public String N(NoCodeData d) { return "Button Controller"; }
    public String x(NoCodeData d) { return N(d); }
    public String a(int i, H t) {
        if (i == 0) return "owner";
        if (i == 1) return "Toggle";
        if (i == 2) return "Press";
        if (i == 3) return "1.0";
        if (i == 4) return "false";
        return "";
    }
    public H t0(int i, D r) {
        if (i == 3) return H.BOOLEAN;
        if (i == 4) return H.TEXT;
        return H.BRANCH;
    }
}
