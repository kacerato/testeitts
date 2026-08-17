package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Physics;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.GrabService;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

/**
 * Pega um objeto no mundo (Grab) delegando a fisica e cinemática ao GrabService.
 */
public class GrabObjectNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.GrabObject";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new GrabObjectNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return GrabObjectNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, GrabObjectNode.class);
        }

        @Override
        public String e() {
            return "Actions/Physics";
        }

        @Override
        public String f() {
            return "Grab Object";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public GrabObjectNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Object", H.GAME_OBJECT).c("Object"),
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Hold Distance", H.NUMBER).c("Hold Distance"),
            new NoCodeSlot("Follow Speed", H.NUMBER).c("Follow Speed"),
            new NoCodeSlot("Use Physics", H.BOOLEAN).c("Use Physics")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Success", H.BRANCH).c("Success"),
            new NoCodeSlot("Failed", H.BRANCH).c("Failed"),
            new NoCodeSlot("Held Object", H.GAME_OBJECT).c("Held Object"),
            new NoCodeSlot("Failure Reason", H.TEXT).c("Failure Reason")
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
        GameObject interactor = Aa.b.b(this, this.f79021a, this.inputs[1]);

        if (!C13317e.J(object) && this.f79021a != null) {
            object = this.f79021a.h0();
        }

        float holdDist = m.V(Q(this.inputs[2]));
        float speed = m.V(Q(this.inputs[3]));
        boolean usePhysics = m.S(Q(this.inputs[4]));

        Transform camTransform = (interactor != null) ? interactor.J0() : null;
        InteractionResult result = GrabService.grab(interactor, object, camTransform, holdDist, speed, usePhysics);

        if (result.success) {
            y0(this.outputs[2], object);
            y0(this.outputs[3], InteractionResult.FailureReason.None.name());
            u(this.outputs[0]);
        } else {
            y0(this.outputs[3], result.failureReason.name());
            u(this.outputs[1]);
        }
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Grab Object";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        if (inputIndex == 1) return "";
        if (inputIndex == 2) return "2.0";
        if (inputIndex == 3) return "15.0";
        if (inputIndex == 4) return "false";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        if (index == 2) return H.GAME_OBJECT;
        if (index == 3) return H.TEXT;
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Grab Object";
    }
}
