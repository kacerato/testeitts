package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionCapability;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionState;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionCooldownManager;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionDispatcher;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionInputBridge;
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

/** Acoes genericas que operam sobre os servicos centrais do Interaction Core. */
public final class ExtendedInteractionActionNodes {
    private ExtendedInteractionActionNodes() {}

    private abstract static class SimpleAction extends NoCodeNode implements F {
        protected final NoCodeSlot[] out = { new NoCodeSlot("Out", H.BRANCH).c("Out") };
        public NoCodeSlot[] J() { return out; }
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public H t0(int i, D r) { return H.BRANCH; }
        protected void done() { u(out[0]); }
    }

    public static class SetPriorityNode extends SimpleAction {
        public static final String SERIALIZED_NAME = "Interaction.SetPriority";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"), new NoCodeSlot("Priority", H.NUMBER).c("Priority") };
        public static class Factory implements p { public NoCodeNode a(){return new SetPriorityNode();} public Class<? extends NoCodeNode>b(){return SetPriorityNode.class;} public String c(){return SERIALIZED_NAME;} public NoCodeNode d(JsonObject j){return (NoCodeNode)X7.a.m().fromJson((JsonElement)j,SetPriorityNode.class);} public String e(){return "Actions/Interaction";} public String f(){return "Set Interaction Priority";} public boolean g(){return true;} }
        static { o.a(new Factory()); }
        public SetPriorityNode(){this.serializedNodeType=SERIALIZED_NAME;} public NoCodeSlot[] F(){return inputs;}
        public void m0(){GameObject go=target(inputs[0]); InteractionRegistry.setPriority(go,(int)m.V(Q(inputs[1]))); done();}
        public String N(NoCodeData d){return "Set Interaction Priority";} public String x(NoCodeData d){return N(d);} public String a(int i,H t){if(i==0)return "owner"; if(i==1)return "0"; return "";}
        private GameObject target(NoCodeSlot s){GameObject go=Aa.b.b(this,this.f79021a,s);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();return go;}
    }

    public static class SetStateNode extends SimpleAction {
        public static final String SERIALIZED_NAME = "Interaction.SetState";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("State",H.TEXT).c("State")};
        public static class Factory implements p { public NoCodeNode a(){return new SetStateNode();} public Class<? extends NoCodeNode>b(){return SetStateNode.class;} public String c(){return SERIALIZED_NAME;} public NoCodeNode d(JsonObject j){return (NoCodeNode)X7.a.m().fromJson((JsonElement)j,SetStateNode.class);} public String e(){return "Actions/Interaction";} public String f(){return "Set Interaction State";} public boolean g(){return true;} }
        static{o.a(new Factory());} public SetStateNode(){this.serializedNodeType=SERIALIZED_NAME;} public NoCodeSlot[] F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();InteractionState s=InteractionState.fromString(m.Y(Q(inputs[1])));if(s!=null){InteractionRegistry.setState(go,s);InteractionDispatcher.dispatchCustomEvent("interaction_state_changed",go,s.name());}done();}
        public String N(NoCodeData d){return "Set Interaction State";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return "owner";if(i==1)return "Idle";return "";}
    }

    public static class SetTagNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.SetTag";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Tag",H.TEXT).c("Tag"),new NoCodeSlot("Enabled",H.BOOLEAN).c("Enabled")};
        public static class Factory implements p {public NoCodeNode a(){return new SetTagNode();}public Class<? extends NoCodeNode>b(){return SetTagNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,SetTagNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Set Interaction Tag";}public boolean g(){return true;}}
        static{o.a(new Factory());}public SetTagNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();String tag=m.Y(Q(inputs[1]));if(m.S(Q(inputs[2])))InteractionRegistry.addTag(go,tag);else InteractionRegistry.removeTag(go,tag);done();}
        public String N(NoCodeData d){return"Set Interaction Tag";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"tag";if(i==2)return"true";return"";}
    }

    public static class SetCapabilityNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.SetCapability";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Capability",H.TEXT).c("Capability"),new NoCodeSlot("Enabled",H.BOOLEAN).c("Enabled")};
        public static class Factory implements p {public NoCodeNode a(){return new SetCapabilityNode();}public Class<? extends NoCodeNode>b(){return SetCapabilityNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,SetCapabilityNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Set Interaction Capability";}public boolean g(){return true;}}
        static{o.a(new Factory());}public SetCapabilityNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();InteractionCapability cap=InteractionCapability.fromString(m.Y(Q(inputs[1])));if(cap!=null){if(m.S(Q(inputs[2])))InteractionRegistry.addCapability(go,cap);else InteractionRegistry.removeCapability(go,cap);}done();}
        public String N(NoCodeData d){return"Set Interaction Capability";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"Interactable";if(i==2)return"true";return"";}
    }

    public static class SetBusyNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.SetBusy";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Busy",H.BOOLEAN).c("Busy")};
        public static class Factory implements p {public NoCodeNode a(){return new SetBusyNode();}public Class<? extends NoCodeNode>b(){return SetBusyNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,SetBusyNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Set Interaction Busy";}public boolean g(){return true;}}
        static{o.a(new Factory());}public SetBusyNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();InteractionRegistry.setBusy(go,m.S(Q(inputs[1])));done();}
        public String N(NoCodeData d){return"Set Interaction Busy";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"true";return"";}
    }

    public static class SetPoweredNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.SetPowered";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Powered",H.BOOLEAN).c("Powered")};
        public static class Factory implements p {public NoCodeNode a(){return new SetPoweredNode();}public Class<? extends NoCodeNode>b(){return SetPoweredNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,SetPoweredNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Set Powered";}public boolean g(){return true;}}
        static{o.a(new Factory());}public SetPoweredNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();boolean value=m.S(Q(inputs[1]));InteractionRegistry.setPowered(go,value);InteractionDispatcher.dispatchCustomEvent(value?"power_on":"power_off",go,null);done();}
        public String N(NoCodeData d){return"Set Powered";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"true";return"";}
    }

    public static class SetLockedNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.SetLocked";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Locked",H.BOOLEAN).c("Locked")};
        public static class Factory implements p {public NoCodeNode a(){return new SetLockedNode();}public Class<? extends NoCodeNode>b(){return SetLockedNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,SetLockedNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Set Locked";}public boolean g(){return true;}}
        static{o.a(new Factory());}public SetLockedNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();boolean value=m.S(Q(inputs[1]));InteractionRegistry.setLocked(go,value);InteractionDispatcher.dispatchCustomEvent(value?"locked":"unlocked",go,null);done();}
        public String N(NoCodeData d){return"Set Locked";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"true";return"";}
    }

    public static class SetCooldownNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.SetCooldown";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Action",H.TEXT).c("Action"),new NoCodeSlot("Duration",H.NUMBER).c("Duration"),new NoCodeSlot("Reset",H.BOOLEAN).c("Reset")};
        public static class Factory implements p {public NoCodeNode a(){return new SetCooldownNode();}public Class<? extends NoCodeNode>b(){return SetCooldownNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,SetCooldownNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Set Interaction Cooldown";}public boolean g(){return true;}}
        static{o.a(new Factory());}public SetCooldownNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();String action=m.Y(Q(inputs[1]));if(m.S(Q(inputs[3])))InteractionCooldownManager.resetCooldown(go,action);else InteractionCooldownManager.setCooldown(go,action,m.V(Q(inputs[2])));done();}
        public String N(NoCodeData d){return"Set Interaction Cooldown";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"interact";if(i==2)return"1.0";if(i==3)return"false";return"";}
    }

    public static class SetAnalogValueNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.SetAnalogValue";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Value",H.NUMBER).c("Value"),new NoCodeSlot("Mode",H.TEXT).c("Mode")};
        public static class Factory implements p {public NoCodeNode a(){return new SetAnalogValueNode();}public Class<? extends NoCodeNode>b(){return SetAnalogValueNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,SetAnalogValueNode.class);}public String e(){return"Actions/Mechanisms";}public String f(){return"Set Interaction Value";}public boolean g(){return true;}}
        static{o.a(new Factory());}public SetAnalogValueNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();float v=m.V(Q(inputs[1]));String mode=m.Y(Q(inputs[2]));if("Add".equalsIgnoreCase(mode))v=InteractionRegistry.getAnalogValue(go)+v;InteractionRegistry.setAnalogValue(go,v);InteractionRegistry.setAttribute(go,"analog_value",Float.valueOf(InteractionRegistry.getAnalogValue(go)));InteractionDispatcher.dispatchCustomEvent("interaction_value_changed",go,Float.valueOf(InteractionRegistry.getAnalogValue(go)));done();}
        public String N(NoCodeData d){return"Set Interaction Value";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"0.0";if(i==2)return"Set";return"";}
    }

    public static class ConfigurePromptNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.ConfigurePrompt";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Text",H.TEXT).c("Text"),new NoCodeSlot("Icon",H.TEXT).c("Icon")};
        public static class Factory implements p {public NoCodeNode a(){return new ConfigurePromptNode();}public Class<? extends NoCodeNode>b(){return ConfigurePromptNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,ConfigurePromptNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Configure Interaction Prompt";}public boolean g(){return true;}}
        static{o.a(new Factory());}public ConfigurePromptNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();InteractionRegistry.InteractableData data=InteractionRegistry.getOrCreate(go);if(data!=null){data.promptText=m.Y(Q(inputs[1]));data.promptIcon=m.Y(Q(inputs[2]));}done();}
        public String N(NoCodeData d){return"Configure Interaction Prompt";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"Interagir";return"";}
    }

    public static class SetInteractionLimitsNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.SetLimits";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Max Distance",H.NUMBER).c("Max Distance"),new NoCodeSlot("Max Angle",H.NUMBER).c("Max Angle"),new NoCodeSlot("Require LOS",H.BOOLEAN).c("Require LOS")};
        public static class Factory implements p {public NoCodeNode a(){return new SetInteractionLimitsNode();}public Class<? extends NoCodeNode>b(){return SetInteractionLimitsNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,SetInteractionLimitsNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Set Interaction Limits";}public boolean g(){return true;}}
        static{o.a(new Factory());}public SetInteractionLimitsNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();InteractionRegistry.InteractableData data=InteractionRegistry.getOrCreate(go);if(data!=null){data.maxInteractionDistance=Math.max(0.1f,m.V(Q(inputs[1])));data.maxInteractionAngle=Math.max(1f,Math.min(180f,m.V(Q(inputs[2]))));data.requireLineOfSight=m.S(Q(inputs[3]));}done();}
        public String N(NoCodeData d){return"Set Interaction Limits";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"4.0";if(i==2)return"60.0";if(i==3)return"true";return"";}
    }

    public static class SendInputActionNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.SendInputAction";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Action",H.TEXT).c("Action"),new NoCodeSlot("Pressed",H.BOOLEAN).c("Pressed")};
        public static class Factory implements p {public NoCodeNode a(){return new SendInputActionNode();}public Class<? extends NoCodeNode>b(){return SendInputActionNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,SendInputActionNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Send Input Action";}public boolean g(){return true;}}
        static{o.a(new Factory());}public SendInputActionNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject actor=Aa.b.b(this,this.f79021a,inputs[0]);InteractionRuntime rt=InteractionRuntime.getInstance();if(!C13317e.J(actor))actor=rt.getInteractor();String action=m.Y(Q(inputs[1]));if(m.S(Q(inputs[2])))InteractionInputBridge.onActionPressed(action,actor,rt.getCameraTransform());else InteractionInputBridge.onActionReleased(action,actor);done();}
        public String N(NoCodeData d){return"Send Input Action";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==1)return"interact";if(i==2)return"true";return"";}
    }

    public static class InventoryItemNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.InventoryItem";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Item Tag",H.TEXT).c("Item Tag"),new NoCodeSlot("Amount Delta",H.NUMBER).c("Amount Delta")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Success",H.BRANCH).c("Success"),new NoCodeSlot("Failed",H.BRANCH).c("Failed"),new NoCodeSlot("Amount",H.NUMBER).c("Amount")};
        public static class Factory implements p {public NoCodeNode a(){return new InventoryItemNode();}public Class<? extends NoCodeNode>b(){return InventoryItemNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,InventoryItemNode.class);}public String e(){return"Actions/Inventory";}public String f(){return"Add / Remove Inventory Item";}public boolean g(){return true;}}
        static{o.a(new Factory());}public InventoryItemNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject actor=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(actor))actor=InteractionRuntime.getInstance().getInteractor();String tag=m.Y(Q(inputs[1]));int delta=(int)m.V(Q(inputs[2]));if(!C13317e.J(actor)||tag==null||tag.trim().isEmpty()){u(outputs[1]);return;}String clean=tag.trim().toLowerCase();String key="inventory_count_"+clean;Object old=InteractionRegistry.getAttribute(actor,key);int amount=old instanceof Number?((Number)old).intValue():0;int next=amount+delta;if(next<0){y0(outputs[2],Float.valueOf(amount));u(outputs[1]);return;}InteractionRegistry.setAttribute(actor,key,Integer.valueOf(next));InteractionRegistry.setAttribute(actor,"has_item_"+clean,next>0?Boolean.TRUE:null);if(next>0)InteractionRegistry.addTag(actor,clean);else InteractionRegistry.removeTag(actor,clean);y0(outputs[2],Float.valueOf(next));u(outputs[0]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Add / Remove Inventory Item";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==1)return"item";if(i==2)return"1";return"";}public H t0(int i,D r){return i==2?H.NUMBER:H.BRANCH;}
    }

    public static class UnsnapSocketNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.UnsnapSocket";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Socket",H.GAME_OBJECT).c("Socket")};
        public static class Factory implements p {public NoCodeNode a(){return new UnsnapSocketNode();}public Class<? extends NoCodeNode>b(){return UnsnapSocketNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,UnsnapSocketNode.class);}public String e(){return"Actions/Inventory";}public String f(){return"Unsnap Object From Socket";}public boolean g(){return true;}}
        static{o.a(new Factory());}public UnsnapSocketNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject socket=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(socket)&&this.f79021a!=null)socket=this.f79021a.h0();Object occupant=InteractionRegistry.getAttribute(socket,"socket_occupant");InteractionRegistry.setAttribute(socket,"socket_occupant",null);if(occupant instanceof GameObject)InteractionDispatcher.dispatchCustomEvent("socket_emptied",socket,occupant);done();}
        public String N(NoCodeData d){return"Unsnap Object From Socket";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return i==0?"owner":"";}
    }

    public static class ReadableNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.Readable";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Readable",H.GAME_OBJECT).c("Readable"),new NoCodeSlot("Open",H.BOOLEAN).c("Open"),new NoCodeSlot("Title",H.TEXT).c("Title"),new NoCodeSlot("Text",H.TEXT).c("Text")};
        public static class Factory implements p {public NoCodeNode a(){return new ReadableNode();}public Class<? extends NoCodeNode>b(){return ReadableNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,ReadableNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Open / Close Readable";}public boolean g(){return true;}}
        static{o.a(new Factory());}public ReadableNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();boolean open=m.S(Q(inputs[1]));InteractionRegistry.setAttribute(go,"readable_title",m.Y(Q(inputs[2])));InteractionRegistry.setAttribute(go,"readable_text",m.Y(Q(inputs[3])));InteractionRegistry.setAttribute(go,"readable_open",Boolean.valueOf(open));InteractionDispatcher.dispatchCustomEvent(open?"readable_opened":"readable_closed",go,open?InteractionRegistry.getAttribute(go,"readable_text"):null);done();}
        public String N(NoCodeData d){return"Open / Close Readable";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"true";return"";}
    }

    public static class DialogueNode extends SimpleAction {
        public static final String SERIALIZED_NAME="Interaction.Dialogue";
        public final NoCodeSlot[] inputs={new NoCodeSlot("NPC",H.GAME_OBJECT).c("NPC"),new NoCodeSlot("Start",H.BOOLEAN).c("Start"),new NoCodeSlot("Dialogue Id",H.TEXT).c("Dialogue Id")};
        public static class Factory implements p {public NoCodeNode a(){return new DialogueNode();}public Class<? extends NoCodeNode>b(){return DialogueNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,DialogueNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Start / End Dialogue";}public boolean g(){return true;}}
        static{o.a(new Factory());}public DialogueNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}
        public void m0(){GameObject npc=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(npc)&&this.f79021a!=null)npc=this.f79021a.h0();boolean start=m.S(Q(inputs[1]));String id=m.Y(Q(inputs[2]));InteractionRegistry.setAttribute(npc,"dialogue_active",Boolean.valueOf(start));InteractionDispatcher.dispatchCustomEvent(start?"dialogue_started":"dialogue_finished",npc,id);done();}
        public String N(NoCodeData d){return"Start / End Dialogue";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"true";return"";}
    }

    public static class MoveInteractorToSocketNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.MoveInteractorToSocket";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Socket",H.GAME_OBJECT).c("Socket"),new NoCodeSlot("Enter",H.BOOLEAN).c("Enter")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Success",H.BRANCH).c("Success"),new NoCodeSlot("Occupied",H.BRANCH).c("Occupied"),new NoCodeSlot("Failed",H.BRANCH).c("Failed")};
        public static class Factory implements p {public NoCodeNode a(){return new MoveInteractorToSocketNode();}public Class<? extends NoCodeNode>b(){return MoveInteractorToSocketNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,MoveInteractorToSocketNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Enter / Exit Interaction Socket";}public boolean g(){return true;}}
        static{o.a(new Factory());}public MoveInteractorToSocketNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject actor=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(actor))actor=InteractionRuntime.getInstance().getInteractor();GameObject socket=Aa.b.b(this,this.f79021a,inputs[1]);if(!C13317e.J(actor)||!C13317e.J(socket)||actor.J0()==null||socket.J0()==null){u(outputs[2]);return;}boolean enter=m.S(Q(inputs[2]));if(enter){Object occupied=InteractionRegistry.getAttribute(socket,"occupied_by");if(occupied instanceof GameObject&&occupied!=actor){u(outputs[1]);return;}Vector3 pos=actor.J0().J0();if(pos!=null)InteractionRegistry.setAttribute(actor,"interaction_exit_origin",new Vector3(pos));Vector3 socketPos=socket.J0().J0();if(socketPos==null){u(outputs[2]);return;}actor.J0().p3(new Vector3(socketPos));InteractionRegistry.setAttribute(socket,"occupied_by",actor);InteractionRegistry.setAttribute(actor,"occupied_socket",socket);InteractionDispatcher.dispatchCustomEvent("interaction_socket_entered",socket,actor);}else{Object origin=InteractionRegistry.getAttribute(actor,"interaction_exit_origin");if(origin instanceof Vector3)actor.J0().p3((Vector3)origin);Object occupiedSocket=InteractionRegistry.getAttribute(actor,"occupied_socket");if(occupiedSocket instanceof GameObject)InteractionRegistry.setAttribute((GameObject)occupiedSocket,"occupied_by",null);InteractionRegistry.setAttribute(actor,"occupied_socket",null);InteractionDispatcher.dispatchCustomEvent("interaction_socket_exited",socket,actor);}u(outputs[0]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Enter / Exit Interaction Socket";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==2)return"true";return"";}public H t0(int i,D r){return H.BRANCH;}
    }
}
