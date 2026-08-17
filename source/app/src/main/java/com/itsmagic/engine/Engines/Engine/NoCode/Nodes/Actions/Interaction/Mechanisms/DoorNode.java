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

/** Controlador generico de portas hinged/sliding/vertical/drawer/garage. */
public class DoorNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.Door";
    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        public NoCodeNode a() { return new DoorNode(); }
        public Class<? extends NoCodeNode> b() { return DoorNode.class; }
        public String c() { return SERIALIZED_NAME; }
        public NoCodeNode d(JsonObject json) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, DoorNode.class); }
        public String e() { return "Actions/Mechanisms"; }
        public String f() { return "Door Controller"; }
        public boolean g() { return true; }
    }

    static { o.a(new NodeFactory()); }

    public DoorNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Door Object", H.GAME_OBJECT).c("Door Object"),
            new NoCodeSlot("Action", H.TEXT).c("Action"),
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Auto Direction", H.BOOLEAN).c("Auto Direction"),
            new NoCodeSlot("Mode", H.TEXT).c("Mode"),
            new NoCodeSlot("Speed", H.NUMBER).c("Speed"),
            new NoCodeSlot("Max Angle", H.NUMBER).c("Max Angle"),
            new NoCodeSlot("Travel Distance", H.NUMBER).c("Travel Distance"),
            new NoCodeSlot("Open Amount", H.NUMBER01).c("Open Amount")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Opened", H.BRANCH).c("Opened"),
            new NoCodeSlot("Closed", H.BRANCH).c("Closed"),
            new NoCodeSlot("Failed", H.BRANCH).c("Failed"),
            new NoCodeSlot("Open Amount", H.NUMBER01).c("Open Amount"),
            new NoCodeSlot("Failure Reason", H.TEXT).c("Failure Reason")
        };
        this.serializedNodeType = SERIALIZED_NAME;
    }

    public NoCodeSlot[] F() { return inputs; }
    public NoCodeSlot[] J() { return outputs; }

    @Override
    public void m0() {
        GameObject door = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(door) && this.f79021a != null) door = this.f79021a.h0();
        if (!C13317e.J(door)) {
            y0(outputs[4], InteractionResult.FailureReason.InvalidTarget.name());
            u(outputs[2]);
            return;
        }

        String action = m.Y(Q(inputs[1]));
        if (action == null || action.trim().isEmpty()) action = "Toggle";
        GameObject interactor = Aa.b.b(this, this.f79021a, inputs[2]);
        boolean autoDirection = m.S(Q(inputs[3]));
        String mode = m.Y(Q(inputs[4]));
        float speed = m.V(Q(inputs[5]));
        float maxAngle = m.V(Q(inputs[6]));
        float travel = m.V(Q(inputs[7]));
        float amountInput = m.V(Q(inputs[8]));

        DoorService.configure(door, mode, speed, maxAngle, travel);

        InteractionResult result;
        float targetAmount;
        if ("Open".equalsIgnoreCase(action)) {
            targetAmount = 1f;
            result = DoorService.setDoorOpen(door, interactor, true, autoDirection);
        } else if ("Close".equalsIgnoreCase(action)) {
            targetAmount = 0f;
            result = DoorService.setDoorOpen(door, interactor, false, autoDirection);
        } else if ("SetAmount".equalsIgnoreCase(action) || "Set Amount".equalsIgnoreCase(action)) {
            targetAmount = Math.max(0f, Math.min(1f, amountInput));
            result = DoorService.setDoorOpenAmount(door, interactor, targetAmount, autoDirection);
        } else {
            targetAmount = InteractionRegistry.isOpen(door) ? 0f : 1f;
            result = DoorService.toggleDoor(door, interactor, autoDirection);
        }

        if (!result.success) {
            y0(outputs[3], Float.valueOf(InteractionRegistry.getOpenAmount(door)));
            y0(outputs[4], result.failureReason.name());
            u(outputs[2]);
            return;
        }

        y0(outputs[3], Float.valueOf(targetAmount));
        y0(outputs[4], InteractionResult.FailureReason.None.name());
        u(targetAmount > 0.001f ? outputs[0] : outputs[1]);
    }

    public EnumC13304B M() { return EnumC13304B.BOTH; }
    public String N(NoCodeData graphData) { return "Door Controller"; }
    public String x(NoCodeData graphData) { return "Door Controller"; }

    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        if (inputIndex == 1) return "Toggle";
        if (inputIndex == 3) return "true";
        if (inputIndex == 4) return "Hinged";
        if (inputIndex == 5) return "3.5";
        if (inputIndex == 6) return "90.0";
        if (inputIndex == 7) return "2.0";
        if (inputIndex == 8) return "1.0";
        return "";
    }

    public H t0(int index, D resolver) {
        if (index == 3) return H.NUMBER01;
        if (index == 4) return H.TEXT;
        return H.BRANCH;
    }
}
