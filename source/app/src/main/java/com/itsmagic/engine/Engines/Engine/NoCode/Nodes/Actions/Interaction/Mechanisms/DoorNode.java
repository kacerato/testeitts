package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Mechanisms;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.DoorService;
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
 * Controlador de portas e compartimentos integrado ao DoorService
 * para animacao angular suave em tempo real e abertura inteligente (Away from player).
 */
public class DoorNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.Door";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new DoorNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return DoorNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, DoorNode.class);
        }

        @Override
        public String e() {
            return "Actions/Mechanisms";
        }

        @Override
        public String f() {
            return "Door Controller";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public DoorNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Door Object", H.GAME_OBJECT).c("Door Object"),
            new NoCodeSlot("Action", H.TEXT).c("Action"),
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Auto Direction", H.BOOLEAN).c("Auto Direction")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Opened", H.BRANCH).c("Opened"),
            new NoCodeSlot("Closed", H.BRANCH).c("Closed"),
            new NoCodeSlot("Locked", H.BRANCH).c("Locked"),
            new NoCodeSlot("Open Amount", H.NUMBER01).c("Open Amount")
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
        GameObject door = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(door) && this.f79021a != null) {
            door = this.f79021a.h0();
        }

        if (!C13317e.J(door)) {
            u(this.outputs[1]);
            return;
        }

        if (InteractionRegistry.isLocked(door)) {
            u(this.outputs[2]);
            return;
        }

        String action = m.Y(Q(this.inputs[1]));
        if (action == null || action.trim().isEmpty()) {
            action = "Toggle";
        }

        GameObject interactor = Aa.b.b(this, this.f79021a, this.inputs[2]);
        boolean autoDirection = m.S(Q(this.inputs[3]));

        boolean targetOpen = false;
        if ("Open".equalsIgnoreCase(action)) {
            DoorService.setDoorOpen(door, interactor, true, autoDirection);
            targetOpen = true;
        } else if ("Close".equalsIgnoreCase(action)) {
            DoorService.setDoorOpen(door, interactor, false, autoDirection);
            targetOpen = false;
        } else { // Toggle
            boolean currentlyOpen = InteractionRegistry.isOpen(door);
            DoorService.toggleDoor(door, interactor, autoDirection);
            targetOpen = !currentlyOpen;
        }

        float amount = targetOpen ? 1.0f : 0.0f;
        y0(this.outputs[3], Float.valueOf(amount));
        u(targetOpen ? this.outputs[0] : this.outputs[1]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Door Controller";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        if (inputIndex == 1) return "Toggle";
        if (inputIndex == 3) return "true";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 3) return H.NUMBER01;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Door Controller";
    }
}
