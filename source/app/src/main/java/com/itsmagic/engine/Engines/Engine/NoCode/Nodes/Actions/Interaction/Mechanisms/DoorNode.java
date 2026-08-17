package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Mechanisms;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
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
 * Controlador de portas e compartimentos (Hinged, Sliding, Gavetas)
 * com suporte a calculo automatico de direcao de abertura em relacao ao jogador (Dot Product)
 * e verificacao integrada de trancas.
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

        InteractionState state = InteractionRegistry.getState(door);
        if (state == InteractionState.Locked) {
            u(this.outputs[2]);
            return;
        }

        String action = m.Y(Q(this.inputs[1]));
        if (action == null || action.trim().isEmpty()) {
            action = "Toggle";
        }

        boolean shouldOpen = false;
        if ("Open".equalsIgnoreCase(action)) {
            shouldOpen = true;
        } else if ("Close".equalsIgnoreCase(action)) {
            shouldOpen = false;
        } else { // Toggle
            shouldOpen = (state != InteractionState.Open);
        }

        // Calculo de lado de abertura (Away from player) via Dot Product
        boolean autoDirection = m.S(Q(this.inputs[3]));
        int directionSign = 1;

        if (autoDirection) {
            GameObject interactor = Aa.b.b(this, this.f79021a, this.inputs[2]);
            if (C13317e.J(interactor)) {
                Transform doorT = door.J0();
                Transform playerT = interactor.J0();
                if (doorT != null && playerT != null) {
                    Vector3 doorPos = doorT.J0();
                    Vector3 playerPos = playerT.J0();
                    Vector3 doorForward = doorT.forward();

                    if (doorPos != null && playerPos != null && doorForward != null) {
                        float dx = playerPos.getX() - doorPos.getX();
                        float dy = playerPos.getY() - doorPos.getY();
                        float dz = playerPos.getZ() - doorPos.getZ();
                        float dot = dx * doorForward.getX() + dy * doorForward.getY() + dz * doorForward.getZ();
                        // Se o jogador esta na frente, abre para tras (negativo)
                        if (dot > 0f) {
                            directionSign = -1;
                        }
                    }
                }
            }
        }

        InteractionRegistry.setAttribute(door, "door_dir_sign", Integer.valueOf(directionSign));
        InteractionRegistry.setState(door, shouldOpen ? InteractionState.Open : InteractionState.Closed);
        float openAmount = shouldOpen ? 1.0f : 0.0f;
        InteractionRegistry.setAttribute(door, "open_amount", Float.valueOf(openAmount));

        y0(this.outputs[3], Float.valueOf(openAmount));
        u(shouldOpen ? this.outputs[0] : this.outputs[1]);
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
