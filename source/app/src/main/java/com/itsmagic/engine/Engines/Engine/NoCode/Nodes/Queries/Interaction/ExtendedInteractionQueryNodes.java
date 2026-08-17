package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionContext;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.GrabService;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionRuntime;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.o;
import ga.p;
import gb.C13317e;

/** Queries adicionais sobre o contexto central de interacao. */
public final class ExtendedInteractionQueryNodes {
    private ExtendedInteractionQueryNodes() {}

    public static class GetInteractorNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME = "Interaction.GetInteractor";
        public final NoCodeSlot[] inputs = new NoCodeSlot[0];
        public final NoCodeSlot[] outputs = {
            new NoCodeSlot("Found", H.BRANCH).c("Found"),
            new NoCodeSlot("Not Found", H.BRANCH).c("Not Found"),
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor")
        };
        public static class Factory implements p {
            public NoCodeNode a() { return new GetInteractorNode(); }
            public Class<? extends NoCodeNode> b() { return GetInteractorNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject j) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) j, GetInteractorNode.class); }
            public String e() { return "Queries/Interaction"; }
            public String f() { return "Get Interactor"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public GetInteractorNode() { this.serializedNodeType = SERIALIZED_NAME; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void m0() { GameObject value = InteractionRuntime.getInstance().getInteractor(); y0(outputs[2], value); u(C13317e.J(value) ? outputs[0] : outputs[1]); }
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "Get Interactor"; }
        public String x(NoCodeData d) { return "Get Interactor"; }
        public String a(int i, H t) { return ""; }
        public H t0(int i, D r) { return i == 2 ? H.GAME_OBJECT : H.BRANCH; }
    }

    public static class GetHitPositionNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME = "Interaction.GetHitPosition";
        public final NoCodeSlot[] inputs = new NoCodeSlot[0];
        public final NoCodeSlot[] outputs = { new NoCodeSlot("Valid", H.BRANCH).c("Valid"), new NoCodeSlot("Missing", H.BRANCH).c("Missing"), new NoCodeSlot("Position", H.FLOAT3).c("Position") };
        public static class Factory implements p {
            public NoCodeNode a() { return new GetHitPositionNode(); }
            public Class<? extends NoCodeNode> b() { return GetHitPositionNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject j) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) j, GetHitPositionNode.class); }
            public String e() { return "Queries/Interaction"; }
            public String f() { return "Get Interaction Hit Position"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public GetHitPositionNode() { this.serializedNodeType = SERIALIZED_NAME; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void m0() { InteractionContext c = InteractionRuntime.getInstance().getCurrentContext(); boolean valid = c != null && C13317e.J(c.target); y0(outputs[2], valid ? new Vector3(c.hitPosition) : new Vector3()); u(valid ? outputs[0] : outputs[1]); }
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "Get Interaction Hit Position"; }
        public String x(NoCodeData d) { return "Get Interaction Hit Position"; }
        public String a(int i, H t) { return ""; }
        public H t0(int i, D r) { return i == 2 ? H.FLOAT3 : H.BRANCH; }
    }

    public static class GetHitNormalNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME = "Interaction.GetHitNormal";
        public final NoCodeSlot[] inputs = new NoCodeSlot[0];
        public final NoCodeSlot[] outputs = { new NoCodeSlot("Valid", H.BRANCH).c("Valid"), new NoCodeSlot("Missing", H.BRANCH).c("Missing"), new NoCodeSlot("Normal", H.FLOAT3).c("Normal") };
        public static class Factory implements p {
            public NoCodeNode a() { return new GetHitNormalNode(); }
            public Class<? extends NoCodeNode> b() { return GetHitNormalNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject j) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) j, GetHitNormalNode.class); }
            public String e() { return "Queries/Interaction"; }
            public String f() { return "Get Interaction Hit Normal"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public GetHitNormalNode() { this.serializedNodeType = SERIALIZED_NAME; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void m0() { InteractionContext c = InteractionRuntime.getInstance().getCurrentContext(); boolean valid = c != null && C13317e.J(c.target); y0(outputs[2], valid ? new Vector3(c.hitNormal) : new Vector3(0f, 1f, 0f)); u(valid ? outputs[0] : outputs[1]); }
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "Get Interaction Hit Normal"; }
        public String x(NoCodeData d) { return "Get Interaction Hit Normal"; }
        public String a(int i, H t) { return ""; }
        public H t0(int i, D r) { return i == 2 ? H.FLOAT3 : H.BRANCH; }
    }

    public static class GetInteractionPointNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME = "Interaction.GetPoint";
        public final NoCodeSlot[] inputs = new NoCodeSlot[0];
        public final NoCodeSlot[] outputs = { new NoCodeSlot("Valid", H.BRANCH).c("Valid"), new NoCodeSlot("Missing", H.BRANCH).c("Missing"), new NoCodeSlot("Point", H.FLOAT3).c("Point") };
        public static class Factory implements p {
            public NoCodeNode a() { return new GetInteractionPointNode(); }
            public Class<? extends NoCodeNode> b() { return GetInteractionPointNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject j) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) j, GetInteractionPointNode.class); }
            public String e() { return "Queries/Interaction"; }
            public String f() { return "Get Interaction Point"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public GetInteractionPointNode() { this.serializedNodeType = SERIALIZED_NAME; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void m0() { InteractionContext c = InteractionRuntime.getInstance().getCurrentContext(); boolean valid = c != null && C13317e.J(c.target); y0(outputs[2], valid ? new Vector3(c.interactionPoint) : new Vector3()); u(valid ? outputs[0] : outputs[1]); }
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "Get Interaction Point"; }
        public String x(NoCodeData d) { return "Get Interaction Point"; }
        public String a(int i, H t) { return ""; }
        public H t0(int i, D r) { return i == 2 ? H.FLOAT3 : H.BRANCH; }
    }

    public static class GetPriorityNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME = "Interaction.GetPriority";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target") };
        public final NoCodeSlot[] outputs = { new NoCodeSlot("Out", H.BRANCH).c("Out"), new NoCodeSlot("Priority", H.NUMBER).c("Priority") };
        public static class Factory implements p {
            public NoCodeNode a() { return new GetPriorityNode(); }
            public Class<? extends NoCodeNode> b() { return GetPriorityNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject j) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) j, GetPriorityNode.class); }
            public String e() { return "Queries/Interaction"; }
            public String f() { return "Get Interaction Priority"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public GetPriorityNode() { this.serializedNodeType = SERIALIZED_NAME; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void m0() { GameObject go = Aa.b.b(this, this.f79021a, inputs[0]); if (!C13317e.J(go) && this.f79021a != null) go = this.f79021a.h0(); y0(outputs[1], Float.valueOf(InteractionRegistry.getPriority(go))); u(outputs[0]); }
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "Get Interaction Priority"; }
        public String x(NoCodeData d) { return "Get Interaction Priority"; }
        public String a(int i, H t) { return i == 0 ? "owner" : ""; }
        public H t0(int i, D r) { return i == 1 ? H.NUMBER : H.BRANCH; }
    }

    public static class GetStateNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME = "Interaction.GetState";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target") };
        public final NoCodeSlot[] outputs = { new NoCodeSlot("Out", H.BRANCH).c("Out"), new NoCodeSlot("State", H.TEXT).c("State") };
        public static class Factory implements p {
            public NoCodeNode a() { return new GetStateNode(); }
            public Class<? extends NoCodeNode> b() { return GetStateNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject j) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) j, GetStateNode.class); }
            public String e() { return "Queries/Interaction"; }
            public String f() { return "Get Interaction State"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public GetStateNode() { this.serializedNodeType = SERIALIZED_NAME; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void m0() { GameObject go = Aa.b.b(this, this.f79021a, inputs[0]); if (!C13317e.J(go) && this.f79021a != null) go = this.f79021a.h0(); y0(outputs[1], InteractionRegistry.getState(go).name()); u(outputs[0]); }
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "Get Interaction State"; }
        public String x(NoCodeData d) { return "Get Interaction State"; }
        public String a(int i, H t) { return i == 0 ? "owner" : ""; }
        public H t0(int i, D r) { return i == 1 ? H.TEXT : H.BRANCH; }
    }

    public static class GetHeldObjectNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME = "Interaction.GetHeldObject";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor") };
        public final NoCodeSlot[] outputs = { new NoCodeSlot("Found", H.BRANCH).c("Found"), new NoCodeSlot("Not Found", H.BRANCH).c("Not Found"), new NoCodeSlot("Held Object", H.GAME_OBJECT).c("Held Object") };
        public static class Factory implements p {
            public NoCodeNode a() { return new GetHeldObjectNode(); }
            public Class<? extends NoCodeNode> b() { return GetHeldObjectNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject j) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) j, GetHeldObjectNode.class); }
            public String e() { return "Queries/Interaction"; }
            public String f() { return "Get Held Object"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public GetHeldObjectNode() { this.serializedNodeType = SERIALIZED_NAME; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void m0() { GameObject actor = Aa.b.b(this, this.f79021a, inputs[0]); if (!C13317e.J(actor)) actor = InteractionRuntime.getInstance().getInteractor(); GameObject held = GrabService.getHeldObject(actor); y0(outputs[2], held); u(C13317e.J(held) ? outputs[0] : outputs[1]); }
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "Get Held Object"; }
        public String x(NoCodeData d) { return "Get Held Object"; }
        public String a(int i, H t) { return ""; }
        public H t0(int i, D r) { return i == 2 ? H.GAME_OBJECT : H.BRANCH; }
    }

    public static class GetAnalogValueNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME = "Interaction.GetAnalogValue";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target") };
        public final NoCodeSlot[] outputs = { new NoCodeSlot("Out", H.BRANCH).c("Out"), new NoCodeSlot("Value 0-1", H.NUMBER01).c("Value 0-1") };
        public static class Factory implements p {
            public NoCodeNode a() { return new GetAnalogValueNode(); }
            public Class<? extends NoCodeNode> b() { return GetAnalogValueNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject j) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) j, GetAnalogValueNode.class); }
            public String e() { return "Queries/Interaction"; }
            public String f() { return "Get Interaction Value"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public GetAnalogValueNode() { this.serializedNodeType = SERIALIZED_NAME; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void m0() { GameObject go = Aa.b.b(this, this.f79021a, inputs[0]); if (!C13317e.J(go) && this.f79021a != null) go = this.f79021a.h0(); y0(outputs[1], Float.valueOf(InteractionRegistry.getAnalogValue(go))); u(outputs[0]); }
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "Get Interaction Value"; }
        public String x(NoCodeData d) { return "Get Interaction Value"; }
        public String a(int i, H t) { return i == 0 ? "owner" : ""; }
        public H t0(int i, D r) { return i == 1 ? H.NUMBER01 : H.BRANCH; }
    }

    public static class GetOpenAmountNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME = "Interaction.GetOpenAmount";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target") };
        public final NoCodeSlot[] outputs = { new NoCodeSlot("Out", H.BRANCH).c("Out"), new NoCodeSlot("Open Amount", H.NUMBER01).c("Open Amount") };
        public static class Factory implements p {
            public NoCodeNode a() { return new GetOpenAmountNode(); }
            public Class<? extends NoCodeNode> b() { return GetOpenAmountNode.class; }
            public String c() { return SERIALIZED_NAME; }
            public NoCodeNode d(JsonObject j) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) j, GetOpenAmountNode.class); }
            public String e() { return "Queries/Interaction"; }
            public String f() { return "Get Door Open Amount"; }
            public boolean g() { return true; }
        }
        static { o.a(new Factory()); }
        public GetOpenAmountNode() { this.serializedNodeType = SERIALIZED_NAME; }
        public NoCodeSlot[] F() { return inputs; }
        public NoCodeSlot[] J() { return outputs; }
        public void m0() { GameObject go = Aa.b.b(this, this.f79021a, inputs[0]); if (!C13317e.J(go) && this.f79021a != null) go = this.f79021a.h0(); y0(outputs[1], Float.valueOf(InteractionRegistry.getOpenAmount(go))); u(outputs[0]); }
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public String N(NoCodeData d) { return "Get Door Open Amount"; }
        public String x(NoCodeData d) { return "Get Door Open Amount"; }
        public String a(int i, H t) { return i == 0 ? "owner" : ""; }
        public H t0(int i, D r) { return i == 1 ? H.NUMBER01 : H.BRANCH; }
    }
}
