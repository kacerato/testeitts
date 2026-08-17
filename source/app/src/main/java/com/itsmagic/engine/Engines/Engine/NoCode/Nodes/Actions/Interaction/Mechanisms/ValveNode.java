package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Mechanisms;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
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
 * Controlador de interacao analogica continua (Valvula, Manivela, Registro, Slider)
 * variando de 0.0 a 1.0.
 */
public class ValveNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.Valve";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new ValveNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return ValveNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, ValveNode.class);
        }

        @Override
        public String e() {
            return "Actions/Mechanisms";
        }

        @Override
        public String f() {
            return "Analog Valve Controller";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public ValveNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Valve Object", H.GAME_OBJECT).c("Valve Object"),
            new NoCodeSlot("Add Delta", H.NUMBER).c("Add Delta")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Changed", H.BRANCH).c("Changed"),
            new NoCodeSlot("At Min", H.BRANCH).c("At Min"),
            new NoCodeSlot("At Max", H.BRANCH).c("At Max"),
            new NoCodeSlot("Value 0-1", H.NUMBER01).c("Value 0-1")
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
        GameObject valve = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(valve) && this.f79021a != null) {
            valve = this.f79021a.h0();
        }

        if (!C13317e.J(valve)) {
            u(this.outputs[0]);
            return;
        }

        float delta = m.V(Q(this.inputs[1]));
        Object currentValObj = InteractionRegistry.getAttribute(valve, "analog_value");
        float currentVal = currentValObj instanceof Number ? ((Number) currentValObj).floatValue() : 0.0f;

        float newVal = Math.max(0.0f, Math.min(1.0f, currentVal + delta));
        InteractionRegistry.setAttribute(valve, "analog_value", Float.valueOf(newVal));

        y0(this.outputs[3], Float.valueOf(newVal));

        if (newVal <= 0.0f) {
            u(this.outputs[1]);
        } else if (newVal >= 1.0f) {
            u(this.outputs[2]);
        } else {
            u(this.outputs[0]);
        }
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Analog Valve Controller";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        if (inputIndex == 1) return "0.1";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 3) return H.NUMBER01;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Analog Valve Controller";
    }
}
