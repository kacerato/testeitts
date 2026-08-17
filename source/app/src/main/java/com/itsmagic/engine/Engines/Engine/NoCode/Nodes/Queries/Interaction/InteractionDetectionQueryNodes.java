package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCandidate;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCapability;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionRuntime;
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

/** Queries que expoem o resolver central sem criar sensores/raycasts paralelos por node. */
public final class InteractionDetectionQueryNodes {
    private InteractionDetectionQueryNodes() {}

    public static class ResolveTargetNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.ResolveTarget";
        public final NoCodeSlot[] inputs={
            new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Required Capability",H.TEXT).c("Required Capability"),
            new NoCodeSlot("Required Tag",H.TEXT).c("Required Tag")
        };
        public final NoCodeSlot[] outputs={
            new NoCodeSlot("Found",H.BRANCH).c("Found"),
            new NoCodeSlot("Not Found",H.BRANCH).c("Not Found"),
            new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),
            new NoCodeSlot("Distance",H.NUMBER).c("Distance"),
            new NoCodeSlot("Hit Position",H.FLOAT3).c("Hit Position")
        };
        public static class Factory implements p {public NoCodeNode a(){return new ResolveTargetNode();}public Class<? extends NoCodeNode>b(){return ResolveTargetNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,ResolveTargetNode.class);}public String e(){return"Queries/Interaction";}public String f(){return"Resolve Interaction Target";}public boolean g(){return true;}}
        static{o.a(new Factory());}public ResolveTargetNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){
            InteractionRuntime rt=InteractionRuntime.getInstance();
            GameObject actor=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(actor))actor=rt.getInteractor();
            InteractionCapability cap=InteractionCapability.fromString(m.i0(Q(inputs[1])));
            String tag=m.i0(Q(inputs[2]));if(tag!=null&&tag.trim().isEmpty())tag=null;
            GameObject target=rt.getResolver().resolveTarget(actor,rt.getCameraTransform(),cap,tag);
            InteractionCandidate candidate=rt.getResolver().getCurrentResolvedCandidate();
            y0(outputs[2],target);
            y0(outputs[3],Float.valueOf(candidate!=null&&candidate.target==target?candidate.distance:0f));
            y0(outputs[4],candidate!=null&&candidate.target==target?new Vector3(candidate.hitPosition):new Vector3());
            u(C13317e.J(target)?outputs[0]:outputs[1]);
        }
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Resolve Interaction Target";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return"";}public H t0(int i,D r){if(i==2)return H.GAME_OBJECT;if(i==3)return H.NUMBER;if(i==4)return H.FLOAT3;return H.BRANCH;}
    }

    public static class IsTargetInViewNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.IsTargetInView";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Max Angle",H.NUMBER).c("Max Angle")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("True",H.BRANCH).c("True"),new NoCodeSlot("False",H.BRANCH).c("False"),new NoCodeSlot("In View",H.BOOLEAN).c("In View"),new NoCodeSlot("Angle",H.NUMBER).c("Angle")};
        public static class Factory implements p {public NoCodeNode a(){return new IsTargetInViewNode();}public Class<? extends NoCodeNode>b(){return IsTargetInViewNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,IsTargetInViewNode.class);}public String e(){return"Conditions/Interaction";}public String f(){return"Is Target In View";}public boolean g(){return true;}}
        static{o.a(new Factory());}public IsTargetInViewNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){
            GameObject target=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(target)&&this.f79021a!=null)target=this.f79021a.h0();
            Transform cam=InteractionRuntime.getInstance().getCameraTransform();float angle=180f;boolean inView=false;
            if(C13317e.J(target)&&target.J0()!=null&&cam!=null){Vector3 cp=cam.J0(),tp=target.J0().J0(),f=cam.forward();if(cp!=null&&tp!=null&&f!=null){float dx=tp.getX()-cp.getX(),dy=tp.getY()-cp.getY(),dz=tp.getZ()-cp.getZ();float mag=(float)Math.sqrt(dx*dx+dy*dy+dz*dz);float fm=(float)Math.sqrt(f.getX()*f.getX()+f.getY()*f.getY()+f.getZ()*f.getZ());if(mag>0.0001f&&fm>0.0001f){float dot=(dx*f.getX()+dy*f.getY()+dz*f.getZ())/(mag*fm);dot=Math.max(-1f,Math.min(1f,dot));angle=(float)Math.toDegrees(Math.acos(dot));inView=angle<=Math.max(0f,m.V(Q(inputs[1])));}}}
            y0(outputs[2],Boolean.valueOf(inView));y0(outputs[3],Float.valueOf(angle));u(inView?outputs[0]:outputs[1]);
        }
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Is Target In View";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"45.0";return"";}public H t0(int i,D r){if(i==2)return H.BOOLEAN;if(i==3)return H.NUMBER;return H.BRANCH;}
    }

    public static class HasLineOfSightNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.HasLineOfSight";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("True",H.BRANCH).c("True"),new NoCodeSlot("False",H.BRANCH).c("False"),new NoCodeSlot("Has LOS",H.BOOLEAN).c("Has LOS")};
        public static class Factory implements p {public NoCodeNode a(){return new HasLineOfSightNode();}public Class<? extends NoCodeNode>b(){return HasLineOfSightNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,HasLineOfSightNode.class);}public String e(){return"Conditions/Interaction";}public String f(){return"Has Line Of Sight";}public boolean g(){return true;}}
        static{o.a(new Factory());}public HasLineOfSightNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject target=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(target)&&this.f79021a!=null)target=this.f79021a.h0();InteractionCandidate c=InteractionRuntime.getInstance().getResolver().getCurrentResolvedCandidate();boolean value=c!=null&&c.target==target&&c.hasLineOfSight;y0(outputs[2],Boolean.valueOf(value));u(value?outputs[0]:outputs[1]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Has Line Of Sight";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return i==0?"owner":"";}public H t0(int i,D r){return i==2?H.BOOLEAN:H.BRANCH;}
    }

    public static class IsRegisteredInteractableNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.IsRegistered";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("True",H.BRANCH).c("True"),new NoCodeSlot("False",H.BRANCH).c("False"),new NoCodeSlot("Registered",H.BOOLEAN).c("Registered")};
        public static class Factory implements p {public NoCodeNode a(){return new IsRegisteredInteractableNode();}public Class<? extends NoCodeNode>b(){return IsRegisteredInteractableNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,IsRegisteredInteractableNode.class);}public String e(){return"Conditions/Interaction";}public String f(){return"Is Registered Interactable";}public boolean g(){return true;}}
        static{o.a(new Factory());}public IsRegisteredInteractableNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject target=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(target)&&this.f79021a!=null)target=this.f79021a.h0();boolean value=InteractionRegistry.isRegistered(target)&&InteractionRegistry.isEnabled(target);y0(outputs[2],Boolean.valueOf(value));u(value?outputs[0]:outputs[1]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Is Registered Interactable";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return i==0?"owner":"";}public H t0(int i,D r){return i==2?H.BOOLEAN:H.BRANCH;}
    }
}
