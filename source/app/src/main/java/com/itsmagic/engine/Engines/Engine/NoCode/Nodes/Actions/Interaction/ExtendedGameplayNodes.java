package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics.Rigidbody;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback.InteractionPromptController;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionProfile;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionDispatcher;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionSequenceService;
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

/** Blocos de gameplay compostos sobre Interaction Core; nao criam sistemas paralelos. */
public final class ExtendedGameplayNodes {
    private ExtendedGameplayNodes() {}

    private abstract static class SimpleAction extends NoCodeNode implements F {
        protected final NoCodeSlot[] out={new NoCodeSlot("Out",H.BRANCH).c("Out")};
        public NoCodeSlot[] J(){return out;} public EnumC13304B M(){return EnumC13304B.BOTH;} public H t0(int i,D r){return H.BRANCH;} protected void done(){u(out[0]);}
    }

    public static class ApplyProfileNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.ApplyProfile";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Profile",H.TEXT).c("Profile")};
        public static class Factory implements p {public NoCodeNode a(){return new ApplyProfileNode();}public Class<? extends NoCodeNode>b(){return ApplyProfileNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,ApplyProfileNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Apply Interaction Profile";}public boolean g(){return true;}}
        static{o.a(new Factory());}public ApplyProfileNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();String name=m.i0(Q(inputs[1]));if(name!=null){for(InteractionProfile.ProfileType p:InteractionProfile.ProfileType.values())if(p.name().equalsIgnoreCase(name.trim())){InteractionProfile.applyProfile(go,p);break;}}done();}
        public String N(NoCodeData d){return"Apply Interaction Profile";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"PickupObject";return"";}
    }

    public static class PushPullObjectNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.PushPull";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Object",H.GAME_OBJECT).c("Object"),new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Force",H.NUMBER).c("Force"),new NoCodeSlot("Pull",H.BOOLEAN).c("Pull")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Success",H.BRANCH).c("Success"),new NoCodeSlot("Failed",H.BRANCH).c("Failed")};
        public static class Factory implements p {public NoCodeNode a(){return new PushPullObjectNode();}public Class<? extends NoCodeNode>b(){return PushPullObjectNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,PushPullObjectNode.class);}public String e(){return"Actions/Physics";}public String f(){return"Push / Pull Object";}public boolean g(){return true;}}
        static{o.a(new Factory());}public PushPullObjectNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject obj=Aa.b.b(this,this.f79021a,inputs[0]);GameObject actor=Aa.b.b(this,this.f79021a,inputs[1]);if(!C13317e.J(obj)||!C13317e.J(actor)||obj.J0()==null||actor.J0()==null){u(outputs[1]);return;}Vector3 a=actor.J0().J0(),b=obj.J0().J0();if(a==null||b==null){u(outputs[1]);return;}float dx=b.getX()-a.getX(),dy=0f,dz=b.getZ()-a.getZ();float mag=(float)Math.sqrt(dx*dx+dz*dz);if(mag<0.0001f){u(outputs[1]);return;}dx/=mag;dz/=mag;if(m.O(Q(inputs[3]))){dx=-dx;dz=-dz;}float force=Math.max(0f,m.V(Q(inputs[2])));Rigidbody rb=findRigidbody(obj);if(rb!=null){Vector3 v=rb.getVelocity();float vy=v!=null?v.getY():0f;rb.setVelocity(new Vector3(dx*force,vy,dz*force));}else{obj.J0().p3(new Vector3(b.getX()+dx*force*0.05f,b.getY(),b.getZ()+dz*force*0.05f));}u(outputs[0]);}
        private Rigidbody findRigidbody(GameObject obj){if(obj.f79286b!=null)for(int i=0;i<obj.f79286b.size();i++){Object c=obj.f79286b.get(i);if(c instanceof Rigidbody)return(Rigidbody)c;}return null;}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Push / Pull Object";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==2)return"4.0";if(i==3)return"false";return"";}public H t0(int i,D r){return H.BRANCH;}
    }

    public static class TeleportObjectNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.Teleport";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Object",H.GAME_OBJECT).c("Object"),new NoCodeSlot("Destination",H.GAME_OBJECT).c("Destination"),new NoCodeSlot("Height Offset",H.NUMBER).c("Height Offset")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Success",H.BRANCH).c("Success"),new NoCodeSlot("Failed",H.BRANCH).c("Failed")};
        public static class Factory implements p {public NoCodeNode a(){return new TeleportObjectNode();}public Class<? extends NoCodeNode>b(){return TeleportObjectNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,TeleportObjectNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Teleport Object";}public boolean g(){return true;}}
        static{o.a(new Factory());}public TeleportObjectNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject obj=Aa.b.b(this,this.f79021a,inputs[0]);GameObject dest=Aa.b.b(this,this.f79021a,inputs[1]);if(!C13317e.J(obj)||!C13317e.J(dest)||obj.J0()==null||dest.J0()==null||dest.J0().J0()==null){u(outputs[1]);return;}Vector3 p=dest.J0().J0();obj.J0().p3(new Vector3(p.getX(),p.getY()+m.V(Q(inputs[2])),p.getZ()));InteractionDispatcher.dispatchCustomEvent("teleported",obj,dest);u(outputs[0]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Teleport Object";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==2)return"0.1";return"";}public H t0(int i,D r){return H.BRANCH;}
    }

    public static class CombineItemsNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.CombineItems";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Inventory Owner",H.GAME_OBJECT).c("Inventory Owner"),new NoCodeSlot("Item A",H.TEXT).c("Item A"),new NoCodeSlot("Item B",H.TEXT).c("Item B"),new NoCodeSlot("Result Item",H.TEXT).c("Result Item")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Combined",H.BRANCH).c("Combined"),new NoCodeSlot("Missing",H.BRANCH).c("Missing")};
        public static class Factory implements p {public NoCodeNode a(){return new CombineItemsNode();}public Class<? extends NoCodeNode>b(){return CombineItemsNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,CombineItemsNode.class);}public String e(){return"Actions/Inventory";}public String f(){return"Combine Items";}public boolean g(){return true;}}
        static{o.a(new Factory());}public CombineItemsNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject owner=Aa.b.b(this,this.f79021a,inputs[0]);String a=clean(m.i0(Q(inputs[1]))),b=clean(m.i0(Q(inputs[2]))),r=clean(m.i0(Q(inputs[3])));if(!C13317e.J(owner)||a==null||b==null||r==null||count(owner,a)<1||count(owner,b)<1){u(outputs[1]);return;}setCount(owner,a,count(owner,a)-1);setCount(owner,b,count(owner,b)-1);setCount(owner,r,count(owner,r)+1);InteractionDispatcher.dispatchCustomEvent("items_combined",owner,r);u(outputs[0]);}
        private String clean(String s){return s==null||s.trim().isEmpty()?null:s.trim().toLowerCase();}private int count(GameObject o,String s){Object v=InteractionRegistry.getAttribute(o,"inventory_count_"+s);return v instanceof Number?((Number)v).intValue():0;}private void setCount(GameObject o,String s,int n){InteractionRegistry.setAttribute(o,"inventory_count_"+s,Integer.valueOf(Math.max(0,n)));InteractionRegistry.setAttribute(o,"has_item_"+s,n>0?Boolean.TRUE:null);if(n>0)InteractionRegistry.addTag(o,s);else InteractionRegistry.removeTag(o,s);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Combine Items";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return"";}public H t0(int i,D r){return H.BRANCH;}
    }

    public static class EquipItemNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.EquipItem";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Inventory Owner",H.GAME_OBJECT).c("Inventory Owner"),new NoCodeSlot("Item",H.TEXT).c("Item"),new NoCodeSlot("Equip",H.BOOLEAN).c("Equip")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Success",H.BRANCH).c("Success"),new NoCodeSlot("Missing Item",H.BRANCH).c("Missing Item")};
        public static class Factory implements p {public NoCodeNode a(){return new EquipItemNode();}public Class<? extends NoCodeNode>b(){return EquipItemNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,EquipItemNode.class);}public String e(){return"Actions/Inventory";}public String f(){return"Equip / Unequip Item";}public boolean g(){return true;}}
        static{o.a(new Factory());}public EquipItemNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject owner=Aa.b.b(this,this.f79021a,inputs[0]);String item=m.i0(Q(inputs[1]));boolean equip=m.O(Q(inputs[2]));if(!C13317e.J(owner)){u(outputs[1]);return;}if(equip){String clean=item==null?"":item.trim().toLowerCase();Object c=InteractionRegistry.getAttribute(owner,"inventory_count_"+clean);if(!(c instanceof Number)||((Number)c).intValue()<1){u(outputs[1]);return;}InteractionRegistry.setAttribute(owner,"equipped_item",clean);InteractionDispatcher.dispatchCustomEvent("item_equipped",owner,clean);}else{Object old=InteractionRegistry.getAttribute(owner,"equipped_item");InteractionRegistry.setAttribute(owner,"equipped_item",null);InteractionDispatcher.dispatchCustomEvent("item_unequipped",owner,old);}u(outputs[0]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Equip / Unequip Item";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==2)return"true";return"";}public H t0(int i,D r){return H.BRANCH;}
    }

    public static class SequenceNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.Sequence";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Sequence Owner",H.GAME_OBJECT).c("Sequence Owner"),new NoCodeSlot("Expected",H.TEXT).c("Expected"),new NoCodeSlot("Step",H.TEXT).c("Step"),new NoCodeSlot("Reset On Wrong",H.BOOLEAN).c("Reset On Wrong"),new NoCodeSlot("Reset",H.BOOLEAN).c("Reset")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Correct Step",H.BRANCH).c("Correct Step"),new NoCodeSlot("Wrong Step",H.BRANCH).c("Wrong Step"),new NoCodeSlot("Completed",H.BRANCH).c("Completed"),new NoCodeSlot("Next Index",H.NUMBER).c("Next Index")};
        public static class Factory implements p {public NoCodeNode a(){return new SequenceNode();}public Class<? extends NoCodeNode>b(){return SequenceNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,SequenceNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Interaction Sequence";}public boolean g(){return true;}}
        static{o.a(new Factory());}public SequenceNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject owner=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(owner)&&this.f79021a!=null)owner=this.f79021a.h0();if(m.O(Q(inputs[4]))){InteractionSequenceService.reset(owner);y0(outputs[3],Float.valueOf(0));u(outputs[0]);return;}InteractionSequenceService.StepResult r=InteractionSequenceService.submit(owner,m.i0(Q(inputs[1])),m.i0(Q(inputs[2])),m.O(Q(inputs[3])));y0(outputs[3],Float.valueOf(r.nextIndex));if(r.completed)u(outputs[2]);else u(r.correct?outputs[0]:outputs[1]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Interaction Sequence";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"A > C > B > D";if(i==3)return"true";if(i==4)return"false";return"";}public H t0(int i,D r){return i==3?H.NUMBER:H.BRANCH;}
    }

    public static class InteractionGateNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.Gate";
        public final NoCodeSlot[] inputs={new NoCodeSlot("A",H.BOOLEAN).c("A"),new NoCodeSlot("B",H.BOOLEAN).c("B"),new NoCodeSlot("C",H.BOOLEAN).c("C"),new NoCodeSlot("D",H.BOOLEAN).c("D"),new NoCodeSlot("Mode",H.TEXT).c("Mode")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Open",H.BRANCH).c("Open"),new NoCodeSlot("Closed",H.BRANCH).c("Closed"),new NoCodeSlot("Result",H.BOOLEAN).c("Result")};
        public static class Factory implements p {public NoCodeNode a(){return new InteractionGateNode();}public Class<? extends NoCodeNode>b(){return InteractionGateNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,InteractionGateNode.class);}public String e(){return"Conditions/Interaction";}public String f(){return"Interaction Gate";}public boolean g(){return true;}}
        static{o.a(new Factory());}public InteractionGateNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){boolean a=m.O(Q(inputs[0])),b=m.O(Q(inputs[1])),c=m.O(Q(inputs[2])),d=m.O(Q(inputs[3]));String mode=m.i0(Q(inputs[4]));boolean result="Any".equalsIgnoreCase(mode)?a||b||c||d:a&&b&&c&&d;y0(outputs[2],Boolean.valueOf(result));u(result?outputs[0]:outputs[1]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Interaction Gate";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i<4)return"true";if(i==4)return"All";return"";}public H t0(int i,D r){return i==2?H.BOOLEAN:H.BRANCH;}
    }

    public static class ReversibleInteractionNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.Reversible";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Reverse",H.BOOLEAN).c("Reverse")};
        public static class Factory implements p {public NoCodeNode a(){return new ReversibleInteractionNode();}public Class<? extends NoCodeNode>b(){return ReversibleInteractionNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,ReversibleInteractionNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Reverse Interaction";}public boolean g(){return true;}}
        static{o.a(new Factory());}public ReversibleInteractionNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();boolean reverse=m.O(Q(inputs[1]));InteractionRegistry.setAttribute(go,"interaction_reversed",Boolean.valueOf(reverse));InteractionDispatcher.dispatchCustomEvent("interaction_reversed",go,Boolean.valueOf(reverse));done();}
        public String N(NoCodeData d){return"Reverse Interaction";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"true";return"";}
    }

    public static class FeedbackNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.Feedback";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Type",H.TEXT).c("Type"),new NoCodeSlot("Text / State",H.TEXT).c("Text / State"),new NoCodeSlot("Value",H.NUMBER01).c("Value")};
        public static class Factory implements p {public NoCodeNode a(){return new FeedbackNode();}public Class<? extends NoCodeNode>b(){return FeedbackNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,FeedbackNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Interaction Feedback";}public boolean g(){return true;}}
        static{o.a(new Factory());}public FeedbackNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject target=Aa.b.b(this,this.f79021a,inputs[0]);String type=m.i0(Q(inputs[1]));String text=m.i0(Q(inputs[2]));float value=m.V(Q(inputs[3]));if("Crosshair".equalsIgnoreCase(type))InteractionPromptController.setCrosshair(text);else if("Progress".equalsIgnoreCase(type))InteractionPromptController.setProgress(value);else InteractionDispatcher.dispatchCustomEvent("feedback_"+(type==null?"generic":type.trim().toLowerCase()),target,text!=null?text:Float.valueOf(value));done();}
        public String N(NoCodeData d){return"Interaction Feedback";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==1)return"Haptic";if(i==3)return"1.0";return"";}
    }

    public static class PressurePlateNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.PressurePlate";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Plate",H.GAME_OBJECT).c("Plate"),new NoCodeSlot("Current Weight",H.NUMBER).c("Current Weight"),new NoCodeSlot("Required Weight",H.NUMBER).c("Required Weight")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Activated",H.BRANCH).c("Activated"),new NoCodeSlot("Deactivated",H.BRANCH).c("Deactivated"),new NoCodeSlot("Active",H.BOOLEAN).c("Active")};
        public static class Factory implements p {public NoCodeNode a(){return new PressurePlateNode();}public Class<? extends NoCodeNode>b(){return PressurePlateNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,PressurePlateNode.class);}public String e(){return"Actions/Mechanisms";}public String f(){return"Pressure Plate";}public boolean g(){return true;}}
        static{o.a(new Factory());}public PressurePlateNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject plate=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(plate)&&this.f79021a!=null)plate=this.f79021a.h0();boolean active=m.V(Q(inputs[1]))>=m.V(Q(inputs[2]));Object prev=InteractionRegistry.getAttribute(plate,"pressure_active");boolean changed=!(prev instanceof Boolean)||((Boolean)prev).booleanValue()!=active;InteractionRegistry.setAttribute(plate,"pressure_active",Boolean.valueOf(active));y0(outputs[2],Boolean.valueOf(active));if(changed)InteractionDispatcher.dispatchCustomEvent(active?"pressure_plate_enter":"pressure_plate_exit",plate,Float.valueOf(m.V(Q(inputs[1]))));u(active?outputs[0]:outputs[1]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Pressure Plate";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==2)return"20.0";return"";}public H t0(int i,D r){return i==2?H.BOOLEAN:H.BRANCH;}
    }

    public static class PowerLinkNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.PowerLink";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Source",H.GAME_OBJECT).c("Source"),new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Connected",H.BOOLEAN).c("Connected")};
        public static class Factory implements p {public NoCodeNode a(){return new PowerLinkNode();}public Class<? extends NoCodeNode>b(){return PowerLinkNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,PowerLinkNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Connect / Disconnect Power";}public boolean g(){return true;}}
        static{o.a(new Factory());}public PowerLinkNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject source=Aa.b.b(this,this.f79021a,inputs[0]);GameObject target=Aa.b.b(this,this.f79021a,inputs[1]);boolean connected=m.O(Q(inputs[2]));if(C13317e.J(target)){InteractionRegistry.setAttribute(target,"power_source",connected?source:null);InteractionRegistry.setPowered(target,connected&&C13317e.J(source)&&InteractionRegistry.isPowered(source));InteractionDispatcher.dispatchCustomEvent(connected?"power_connected":"power_disconnected",target,source);}done();}
        public String N(NoCodeData d){return"Connect / Disconnect Power";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==2)return"true";return"";}
    }
}
