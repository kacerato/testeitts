package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Physics;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Rigidbody;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InspectService;
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

/** Nodes de inspect e bounce sobre servicos centrais. */
public final class InspectInteractionNodes {
    private InspectInteractionNodes() {}

    public static class InspectObjectNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.InspectObject";
        public final NoCodeSlot[] inputs={
            new NoCodeSlot("Object",H.GAME_OBJECT).c("Object"),
            new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Start",H.BOOLEAN).c("Start"),
            new NoCodeSlot("Distance",H.NUMBER).c("Distance"),
            new NoCodeSlot("Return On Stop",H.BOOLEAN).c("Return On Stop")
        };
        public final NoCodeSlot[] outputs={
            new NoCodeSlot("Started",H.BRANCH).c("Started"),
            new NoCodeSlot("Stopped",H.BRANCH).c("Stopped"),
            new NoCodeSlot("Failed",H.BRANCH).c("Failed"),
            new NoCodeSlot("Failure Reason",H.TEXT).c("Failure Reason")
        };
        public static class Factory implements p { public NoCodeNode a(){return new InspectObjectNode();} public Class<? extends NoCodeNode>b(){return InspectObjectNode.class;} public String c(){return SERIALIZED_NAME;} public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,InspectObjectNode.class);} public String e(){return"Actions/Physics";} public String f(){return"Inspect Object";} public boolean g(){return true;} }
        static{o.a(new Factory());}
        public InspectObjectNode(){this.serializedNodeType=SERIALIZED_NAME;}
        public NoCodeSlot[]F(){return inputs;} public NoCodeSlot[]J(){return outputs;}
        public void m0(){
            GameObject object=Aa.b.b(this,this.f79021a,inputs[0]);
            GameObject actor=Aa.b.b(this,this.f79021a,inputs[1]);
            InteractionRuntime rt=InteractionRuntime.getInstance();
            if(!C13317e.J(actor))actor=rt.getInteractor();
            if(m.S(Q(inputs[2]))){
                InteractionResult r=InspectService.start(actor,object,rt.getCameraTransform(),m.V(Q(inputs[3])),m.S(Q(inputs[4])));
                y0(outputs[3],r.failureReason.name());
                u(r.success?outputs[0]:outputs[2]);
            }else{
                InspectService.stop(actor);
                y0(outputs[3],InteractionResult.FailureReason.None.name());
                u(outputs[1]);
            }
        }
        public EnumC13304B M(){return EnumC13304B.BOTH;} public String N(NoCodeData d){return"Inspect Object";} public String x(NoCodeData d){return N(d);} public String a(int i,H t){if(i==2)return"true";if(i==3)return"1.5";if(i==4)return"true";return"";} public H t0(int i,D r){return i==3?H.TEXT:H.BRANCH;}
    }

    public static class RotateInspectedObjectNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.RotateInspectedObject";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Pitch Delta",H.NUMBER).c("Pitch Delta"),new NoCodeSlot("Yaw Delta",H.NUMBER).c("Yaw Delta")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Out",H.BRANCH).c("Out")};
        public static class Factory implements p {public NoCodeNode a(){return new RotateInspectedObjectNode();}public Class<? extends NoCodeNode>b(){return RotateInspectedObjectNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,RotateInspectedObjectNode.class);}public String e(){return"Actions/Physics";}public String f(){return"Rotate Inspected Object";}public boolean g(){return true;}}
        static{o.a(new Factory());}public RotateInspectedObjectNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject actor=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(actor))actor=InteractionRuntime.getInstance().getInteractor();InspectService.rotate(actor,m.V(Q(inputs[1])),m.V(Q(inputs[2])));u(outputs[0]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Rotate Inspected Object";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return"0";}public H t0(int i,D r){return H.BRANCH;}
    }

    public static class ZoomInspectObjectNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.ZoomInspectObject";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Delta",H.NUMBER).c("Delta"),new NoCodeSlot("Min Distance",H.NUMBER).c("Min Distance"),new NoCodeSlot("Max Distance",H.NUMBER).c("Max Distance")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Out",H.BRANCH).c("Out")};
        public static class Factory implements p {public NoCodeNode a(){return new ZoomInspectObjectNode();}public Class<? extends NoCodeNode>b(){return ZoomInspectObjectNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,ZoomInspectObjectNode.class);}public String e(){return"Actions/Physics";}public String f(){return"Zoom Inspect Object";}public boolean g(){return true;}}
        static{o.a(new Factory());}public ZoomInspectObjectNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject actor=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(actor))actor=InteractionRuntime.getInstance().getInteractor();InspectService.zoom(actor,m.V(Q(inputs[1])),m.V(Q(inputs[2])),m.V(Q(inputs[3])));u(outputs[0]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Zoom Inspect Object";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==1)return"0.1";if(i==2)return"0.5";if(i==3)return"3.0";return"";}public H t0(int i,D r){return H.BRANCH;}
    }

    public static class BounceObjectNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.BounceObject";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Object",H.GAME_OBJECT).c("Object"),new NoCodeSlot("Surface Normal",H.DIRECTION).c("Surface Normal"),new NoCodeSlot("Multiplier",H.NUMBER).c("Multiplier")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Success",H.BRANCH).c("Success"),new NoCodeSlot("Failed",H.BRANCH).c("Failed")};
        public static class Factory implements p {public NoCodeNode a(){return new BounceObjectNode();}public Class<? extends NoCodeNode>b(){return BounceObjectNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,BounceObjectNode.class);}public String e(){return"Actions/Physics";}public String f(){return"Bounce Object";}public boolean g(){return true;}}
        static{o.a(new Factory());}public BounceObjectNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject obj=Aa.b.b(this,this.f79021a,inputs[0]);Rigidbody rb=find(obj);Object nObj=Q(inputs[1]);Vector3 n=nObj instanceof Vector3?(Vector3)nObj:new Vector3(0f,1f,0f);if(rb==null){u(outputs[1]);return;}Vector3 v=rb.getVelocity();if(v==null){u(outputs[1]);return;}float nx=n.getX(),ny=n.getY(),nz=n.getZ();float mag=(float)Math.sqrt(nx*nx+ny*ny+nz*nz);if(mag<0.0001f){nx=0;ny=1;nz=0;}else{nx/=mag;ny/=mag;nz/=mag;}float dot=v.getX()*nx+v.getY()*ny+v.getZ()*nz;float mult=Math.max(0f,m.V(Q(inputs[2])));rb.setVelocity(new Vector3((v.getX()-2f*dot*nx)*mult,(v.getY()-2f*dot*ny)*mult,(v.getZ()-2f*dot*nz)*mult));u(outputs[0]);}
        private Rigidbody find(GameObject obj){if(C13317e.J(obj)&&obj.f79286b!=null)for(int i=0;i<obj.f79286b.size();i++){Object c=obj.f79286b.get(i);if(c instanceof Rigidbody)return(Rigidbody)c;}return null;}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Bounce Object";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==2)return"1.2";return"";}public H t0(int i,D r){return H.BRANCH;}
    }
}
