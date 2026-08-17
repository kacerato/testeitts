package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Inventory;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
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
 * Encaixa perfeitamente um objeto dentro de um ponto de socket (ex: Bateria na maquina, chave na fechadura).
 */
public class SnapToSocketNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.SnapToSocket";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new SnapToSocketNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return SnapToSocketNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, SnapToSocketNode.class);
        }

        @Override
        public String e() {
            return "Actions/Mechanisms";
        }

        @Override
        public String f() {
            return "Snap Object To Socket";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

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
        GameObject object = Aa.b.b(this, this.f79021a, this.inputs[0]);
        GameObject socket = Aa.b.b(this, this.f79021a, this.inputs[1]);

        if (!C13317e.J(object) || !C13317e.J(socket)) {
            y0(this.outputs[2], Boolean.FALSE);
            u(this.outputs[1]);
            return;
        }

        String requiredTag = m.Y(Q(this.inputs[2]));
        if (requiredTag != null && !requiredTag.trim().isEmpty()) {
            if (!InteractionRegistry.hasTag(object, requiredTag)) {
                y0(this.outputs[2], Boolean.FALSE);
                u(this.outputs[1]);
                return;
            }
        }

        Transform objT = object.J0();
        Transform sockT = socket.J0();
        if (objT != null && sockT != null) {
            Vector3 sockPos = sockT.J0();
            if (sockPos != null) {
                objT.f79337l.f(sockPos);
            }
        }

        InteractionRegistry.setAttribute(socket, "socket_occupant", object);
        InteractionRegistry.setState(object, InteractionState.Idle);

        y0(this.outputs[2], Boolean.TRUE);
        u(this.outputs[0]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Snap Object To Socket";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 2) return H.BOOLEAN;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Snap Object To Socket";
    }
}
