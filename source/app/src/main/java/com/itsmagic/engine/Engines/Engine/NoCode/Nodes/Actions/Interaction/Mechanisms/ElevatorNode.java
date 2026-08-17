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
 * Controlador de elevadores multinivel (Elevator Controller).
 */
public class ElevatorNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.Elevator";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new ElevatorNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return ElevatorNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, ElevatorNode.class);
        }

        @Override
        public String e() {
            return "Actions/Mechanisms";
        }

        @Override
        public String f() {
            return "Elevator Controller";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public ElevatorNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Elevator Object", H.GAME_OBJECT).c("Elevator Object"),
            new NoCodeSlot("Target Floor", H.NUMBER).c("Target Floor"),
            new NoCodeSlot("Speed", H.NUMBER).c("Speed")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Arrived", H.BRANCH).c("Arrived"),
            new NoCodeSlot("Moving", H.BRANCH).c("Moving"),
            new NoCodeSlot("Current Floor", H.NUMBER).c("Current Floor")
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
        GameObject elevator = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(elevator) && this.f79021a != null) {
            elevator = this.f79021a.h0();
        }

        if (!C13317e.J(elevator)) {
            u(this.outputs[1]);
            return;
        }

        int targetFloor = (int) m.V(Q(this.inputs[1]));
        Object currFloorObj = InteractionRegistry.getAttribute(elevator, "current_floor");
        int currentFloor = currFloorObj instanceof Number ? ((Number) currFloorObj).intValue() : 0;

        if (targetFloor == currentFloor) {
            y0(this.outputs[2], Float.valueOf(currentFloor));
            u(this.outputs[0]);
        } else {
            InteractionRegistry.setAttribute(elevator, "current_floor", Integer.valueOf(targetFloor));
            y0(this.outputs[2], Float.valueOf(targetFloor));
            u(this.outputs[1]);
        }
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Elevator Controller";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        if (inputIndex == 1) return "1";
        if (inputIndex == 2) return "3.0";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 2) return H.NUMBER;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Elevator Controller";
    }
}
