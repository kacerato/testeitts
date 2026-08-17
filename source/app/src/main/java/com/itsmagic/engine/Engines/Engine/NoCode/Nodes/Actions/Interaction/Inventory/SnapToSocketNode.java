package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Inventory;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionState;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionDispatcher;
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

/** Encaixa um objeto em um socket respeitando tag aceita e ocupacao. */
public class SnapToSocketNode extends NoCodeNode implements F {
    public static final String SERIALIZED_NAME = "Interaction.SnapToSocket";
    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        public NoCodeNode a() { return new SnapToSocketNode(); }
        public Class<? extends NoCodeNode> b() { return SnapToSocketNode.class; }
        public String c() { return SERIALIZED_NAME; }
        public NoCodeNode d(JsonObject json) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, SnapToSocketNode.class); }
        public String e() { return "Actions/Inventory"; }
        public String f() { return "Snap Object To Socket"; }
        public boolean g() { return true; }
    }

    static { o.a(new NodeFactory()); }

    public SnapToSocketNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Object", H.GAME_OBJECT).c("Object"),
            new NoCodeSlot("Socket", H.GAME_OBJECT).c("Socket"),
            new NoCodeSlot("Required Tag", H.TEXT).c("Required Tag")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Snapped", H.BRANCH).c("Snapped"),
            new NoCodeSlot("Failed", H.BRANCH).c("Failed"),
            new NoCodeSlot("Is Occupied", H.BOOLEAN).c("Is Occupied")
        };
        this.serializedNodeType = SERIALIZED_NAME;
    }

    public NoCodeSlot[] F() { return inputs; }
    public NoCodeSlot[] J() { return outputs; }

    public void m0() {
        GameObject object = Aa.b.b(this, this.f79021a, inputs[0]);
        GameObject socket = Aa.b.b(this, this.f79021a, inputs[1]);
        if (!C13317e.J(object) || !C13317e.J(socket)) {
            y0(outputs[2], Boolean.FALSE);
            u(outputs[1]);
            return;
        }

        Object occupant = InteractionRegistry.getAttribute(socket, "socket_occupant");
        if (occupant instanceof GameObject && C13317e.J((GameObject) occupant) && occupant != object) {
            y0(outputs[2], Boolean.TRUE);
            u(outputs[1]);
            return;
        }

        String requiredTag = m.Y(Q(inputs[2]));
        if (requiredTag != null && !requiredTag.trim().isEmpty() && !InteractionRegistry.hasTag(object, requiredTag)) {
            y0(outputs[2], Boolean.valueOf(occupant != null));
            u(outputs[1]);
            return;
        }

        Transform objT = object.J0();
        Transform sockT = socket.J0();
        if (objT == null || sockT == null || sockT.J0() == null) {
            y0(outputs[2], Boolean.FALSE);
            u(outputs[1]);
            return;
        }

        Vector3 sockPos = sockT.J0();
        objT.f79337l.f(new Vector3(sockPos));
        InteractionRegistry.setAttribute(socket, "socket_occupant", object);
        InteractionRegistry.setAttribute(object, "snapped_socket", socket);
        InteractionRegistry.setHeld(object, false, null);
        InteractionRegistry.setBusy(object, false);
        InteractionRegistry.setState(object, InteractionState.Idle);
        InteractionDispatcher.dispatchCustomEvent("socket_filled", socket, object);

        y0(outputs[2], Boolean.TRUE);
        u(outputs[0]);
    }

    public EnumC13304B M() { return EnumC13304B.BOTH; }
    public String N(NoCodeData graphData) { return "Snap Object To Socket"; }
    public String x(NoCodeData graphData) { return "Snap Object To Socket"; }
    public String a(int inputIndex, H desiredType) { return inputIndex == 0 ? "owner" : ""; }
    public H t0(int index, D resolver) { return index == 2 ? H.BOOLEAN : H.BRANCH; }
}
