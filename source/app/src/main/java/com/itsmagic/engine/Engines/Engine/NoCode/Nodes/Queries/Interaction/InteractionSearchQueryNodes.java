package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCapability;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionQueryService;
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
import ga.m;
import ga.o;
import ga.p;
import gb.C13317e;

/** Search nodes centralizados para ray/sphere/nearest. */
public final class InteractionSearchQueryNodes {
    private InteractionSearchQueryNodes() {}

    private abstract static class BaseSearchNode extends NoCodeNode implements F {
        protected final NoCodeSlot[] outputs={
            new NoCodeSlot("Found",H.BRANCH).c("Found"),
            new NoCodeSlot("Not Found",H.BRANCH).c("Not Found"),
            new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),
            new NoCodeSlot("Distance",H.NUMBER).c("Distance"),
            new NoCodeSlot("Hit Position",H.FLOAT3).c("Hit Position")
        };
        protected void emit(InteractionCandidate c){boolean found=c!=null&&C13317e.J(c.target);y0(outputs[2],found?c.target:null);y0(outputs[3],Float.valueOf(found?c.distance:0f));y0(outputs[4],found?new Vector3(c.hitPosition):new Vector3());u(found?outputs[0]:outputs[1]);}
        protected GameObject actor(NoCodeSlot slot){GameObject a=Aa.b.b(this,this.f79021a,slot);return C13317e.J(a)?a:InteractionRuntime.getInstance().getInteractor();}
        protected InteractionCapability cap(NoCodeSlot slot){return InteractionCapability.fromString(m.Y(Q(slot)));}
        protected String tag(NoCodeSlot slot){String v=m.Y(Q(slot));return v==null||v.trim().isEmpty()?null:v.trim();}
        public NoCodeSlot[]J(){return outputs;}public EnumC13304B M(){return EnumC13304B.BOTH;}public H t0(int i,D r){if(i==2)return H.GAME_OBJECT;if(i==3)return H.NUMBER;if(i==4)return H.FLOAT3;return H.BRANCH;}
    }

    public static class FindInRayNode extends BaseSearchNode {
        public static final String SERIALIZED_NAME="Interaction.FindInRay";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Distance",H.NUMBER).c("Distance"),new NoCodeSlot("Angle",H.NUMBER).c("Angle"),new NoCodeSlot("Capability",H.TEXT).c("Capability"),new NoCodeSlot("Tag",H.TEXT).c("Tag")};
        public static class Factory implements p {public NoCodeNode a(){return new FindInRayNode();}public Class<? extends NoCodeNode>b(){return FindInRayNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,FindInRayNode.class);}public String e(){return"Queries/Interaction";}public String f(){return"Find Interactable In Ray";}public boolean g(){return true;}}
        static{o.a(new Factory());}public FindInRayNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject a=actor(inputs[0]);emit(InteractionQueryService.findBestInRay(a,InteractionRuntime.getInstance().getCameraTransform(),m.V(Q(inputs[1])),m.V(Q(inputs[2])),cap(inputs[3]),tag(inputs[4])));}
        public String N(NoCodeData d){return"Find Interactable In Ray";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==1)return"4.0";if(i==2)return"45.0";return"";}
    }

    public static class FindInSphereNode extends BaseSearchNode {
        public static final String SERIALIZED_NAME="Interaction.FindInSphere";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Radius",H.NUMBER).c("Radius"),new NoCodeSlot("Capability",H.TEXT).c("Capability"),new NoCodeSlot("Tag",H.TEXT).c("Tag")};
        public static class Factory implements p {public NoCodeNode a(){return new FindInSphereNode();}public Class<? extends NoCodeNode>b(){return FindInSphereNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,FindInSphereNode.class);}public String e(){return"Queries/Interaction";}public String f(){return"Find Interactable In Sphere";}public boolean g(){return true;}}
        static{o.a(new Factory());}public FindInSphereNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){emit(InteractionQueryService.findBestInSphere(actor(inputs[0]),m.V(Q(inputs[1])),cap(inputs[2]),tag(inputs[3])));}
        public String N(NoCodeData d){return"Find Interactable In Sphere";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return i==1?"3.0":"";}
    }

    public static class FindNearestNode extends BaseSearchNode {
        public static final String SERIALIZED_NAME="Interaction.FindNearest";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Radius",H.NUMBER).c("Radius"),new NoCodeSlot("Capability",H.TEXT).c("Capability"),new NoCodeSlot("Tag",H.TEXT).c("Tag")};
        public static class Factory implements p {public NoCodeNode a(){return new FindNearestNode();}public Class<? extends NoCodeNode>b(){return FindNearestNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,FindNearestNode.class);}public String e(){return"Queries/Interaction";}public String f(){return"Find Nearest Interactable";}public boolean g(){return true;}}
        static{o.a(new Factory());}public FindNearestNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){emit(InteractionQueryService.findNearest(actor(inputs[0]),m.V(Q(inputs[1])),cap(inputs[2]),tag(inputs[3])));}
        public String N(NoCodeData d){return"Find Nearest Interactable";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return i==1?"5.0":"";}
    }
}
