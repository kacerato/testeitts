package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Mechanisms;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionDispatcher;
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

/** Controlador analogico continuo para valvula/manivela/registro/slider. */
public class ValveNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.Valve";
    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        public NoCodeNode a() { return new ValveNode(); }
        public Class<? extends NoCodeNode> b() { return ValveNode.class; }
        public String c() { return SERIALIZED_NAME; }
        public NoCodeNode d(JsonObject json) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, ValveNode.class); }
        public String e() { return "Actions/Mechanisms"; }
        public String f() { return "Analog Valve Controller"; }
        public boolean g() { return true; }
    }

    static { o.a(new NodeFactory()); }

    public ValveNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Valve Object", H.GAME_OBJECT).c("Valve Object"),
            new NoCodeSlot("Value / Delta", H.NUMBER).c("Value / Delta"),
            new NoCodeSlot("Mode", H.TEXT).c("Mode")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Changed", H.BRANCH).c("Changed"),
            new NoCodeSlot("At Min", H.BRANCH).c("At Min"),
            new NoCodeSlot("At Max", H.BRANCH).c("At Max"),
            new NoCodeSlot("Value 0-1", H.NUMBER01).c("Value 0-1")
        };
        this.serializedNodeType = SERIALIZED_NAME;
    }

    public NoCodeSlot[] F() { return inputs; }
    public NoCodeSlot[] J() { return outputs; }

    public void m0() {
        GameObject valve = Aa.b.b(this, this.f79021a, inputs[0]);
        if (!C13317e.J(valve) && this.f79021a != null) valve = this.f79021a.h0();
        if (!C13317e.J(valve)) { u(outputs[0]); return; }

        float input = m.V(Q(inputs[1]));
        String mode = m.Y(Q(inputs[2]));
        float next = "Set".equalsIgnoreCase(mode) ? input : InteractionRegistry.getAnalogValue(valve) + input;
        InteractionRegistry.setAnalogValue(valve, next);
        float value = InteractionRegistry.getAnalogValue(valve);
        InteractionRegistry.setAttribute(valve, "analog_value", Float.valueOf(value));
        InteractionDispatcher.dispatchCustomEvent("interaction_value_changed", valve, Float.valueOf(value));

        y0(outputs[3], Float.valueOf(value));
        if (value <= 0.0f) u(outputs[1]);
        else if (value >= 1.0f) u(outputs[2]);
        else u(outputs[0]);
    }

    public EnumC13304B M() { return EnumC13304B.BOTH; }
    public String N(NoCodeData graphData) { return "Analog Valve Controller"; }
    public String x(NoCodeData graphData) { return "Analog Valve Controller"; }
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        if (inputIndex == 1) return "0.1";
        if (inputIndex == 2) return "Add";
        return "";
    }
    public H t0(int index, D resolver) { return index == 3 ? H.NUMBER01 : H.BRANCH; }
}
