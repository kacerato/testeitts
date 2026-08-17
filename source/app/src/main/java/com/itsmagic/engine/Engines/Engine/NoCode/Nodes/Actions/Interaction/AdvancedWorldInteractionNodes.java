package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.GrabService;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionRuntime;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.LadderService;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.LockService;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.PowerService;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.SeatService;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.VehicleService;
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

/** Interacoes de mundo avancadas construidas sobre servicos centrais reutilizaveis. */
public final class AdvancedWorldInteractionNodes {
    private AdvancedWorldInteractionNodes() {}

    public static class DragObjectNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.DragObject";
        public final NoCodeSlot[] inputs={
            new NoCodeSlot("Object",H.GAME_OBJECT).c("Object"),
            new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Start",H.BOOLEAN).c("Start"),
            new NoCodeSlot("Hold Distance",H.NUMBER).c("Hold Distance"),
            new NoCodeSlot("Follow Speed",H.NUMBER).c("Follow Speed")
        };
        public final NoCodeSlot[] outputs={
            new NoCodeSlot("Started",H.BRANCH).c("Started"),
            new NoCodeSlot("Stopped",H.BRANCH).c("Stopped"),
            new NoCodeSlot("Failed",H.BRANCH).c("Failed"),
            new NoCodeSlot("Failure Reason",H.TEXT).c("Failure Reason")
        };
        public static class Factory implements p {public NoCodeNode a(){return new DragObjectNode();}public Class<? extends NoCodeNode>b(){return DragObjectNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,DragObjectNode.class);}public String e(){return"Actions/Physics";}public String f(){return"Start / Stop Drag Object";}public boolean g(){return true;}}
        static{o.a(new Factory());}public DragObjectNode(){serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){
            InteractionRuntime rt=InteractionRuntime.getInstance();
            GameObject actor=Aa.b.b(this,f79021a,inputs[1]);if(!C13317e.J(actor))actor=rt.getInteractor();
            if(!m.O(Q(inputs[2]))){GrabService.drop(actor);y0(outputs[3],InteractionResult.FailureReason.None.name());u(outputs[1]);return;}
            GameObject object=Aa.b.b(this,f79021a,inputs[0]);if(!C13317e.J(object)&&f79021a!=null)object=f79021a.h0();
            InteractionResult r=GrabService.grab(actor,object,rt.getCameraTransform(),m.V(Q(inputs[3])),m.V(Q(inputs[4])),true);
            y0(outputs[3],r.failureReason.name());u(r.success?outputs[0]:outputs[2]);
        }
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Start / Stop Drag Object";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==2)return"true";if(i==3)return"2.0";if(i==4)return"12.0";return"";}public H t0(int i,D r){return i==3?H.TEXT:H.BRANCH;}
    }

    public static class ConfigureLockNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.ConfigureLock";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Required Item",H.TEXT).c("Required Item"),new NoCodeSlot("Required Code",H.TEXT).c("Required Code")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Out",H.BRANCH).c("Out")};
        public static class Factory implements p {public NoCodeNode a(){return new ConfigureLockNode();}public Class<? extends NoCodeNode>b(){return ConfigureLockNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,ConfigureLockNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Configure Interaction Lock";}public boolean g(){return true;}}
        static{o.a(new Factory());}public ConfigureLockNode(){serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject target=target();LockService.configureKey(target,m.i0(Q(inputs[1])));LockService.configureCode(target,m.i0(Q(inputs[2])));u(outputs[0]);}
        private GameObject target(){GameObject go=Aa.b.b(this,f79021a,inputs[0]);if(!C13317e.J(go)&&f79021a!=null)go=f79021a.h0();return go;}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Configure Interaction Lock";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return i==0?"owner":"";}public H t0(int i,D r){return H.BRANCH;}
    }

    public static class TryUnlockNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.TryUnlock";
        public final NoCodeSlot[] inputs={
            new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Item Tag",H.TEXT).c("Item Tag"),new NoCodeSlot("Code",H.TEXT).c("Code"),new NoCodeSlot("Consume Item",H.BOOLEAN).c("Consume Item")
        };
        public final NoCodeSlot[] outputs={
            new NoCodeSlot("Unlocked",H.BRANCH).c("Unlocked"),new NoCodeSlot("Already Unlocked",H.BRANCH).c("Already Unlocked"),
            new NoCodeSlot("Missing Item",H.BRANCH).c("Missing Item"),new NoCodeSlot("Wrong Item / Code",H.BRANCH).c("Wrong Item / Code"),
            new NoCodeSlot("Failed",H.BRANCH).c("Failed"),new NoCodeSlot("Failure Reason",H.TEXT).c("Failure Reason")
        };
        public static class Factory implements p {public NoCodeNode a(){return new TryUnlockNode();}public Class<? extends NoCodeNode>b(){return TryUnlockNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,TryUnlockNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Try Unlock With Item / Code";}public boolean g(){return true;}}
        static{o.a(new Factory());}public TryUnlockNode(){serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){
            GameObject target=Aa.b.b(this,f79021a,inputs[0]);if(!C13317e.J(target)&&f79021a!=null)target=f79021a.h0();
            if(C13317e.J(target)&&!InteractionRegistry.isLocked(target)){y0(outputs[5],InteractionResult.FailureReason.None.name());u(outputs[1]);return;}
            GameObject actor=Aa.b.b(this,f79021a,inputs[1]);if(!C13317e.J(actor))actor=InteractionRuntime.getInstance().getInteractor();
            InteractionResult r=LockService.tryUnlock(target,actor,m.i0(Q(inputs[2])),m.i0(Q(inputs[3])),m.O(Q(inputs[4])));
            y0(outputs[5],r.failureReason.name());
            if(r.success)u(outputs[0]);else if(r.failureReason==InteractionResult.FailureReason.MissingItem)u(outputs[2]);else if(r.failureReason==InteractionResult.FailureReason.WrongItem)u(outputs[3]);else u(outputs[4]);
        }
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Try Unlock With Item / Code";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==4)return"false";return"";}public H t0(int i,D r){return i==5?H.TEXT:H.BRANCH;}
    }

    public static class SeatInteractionNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.Seat";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Seat",H.GAME_OBJECT).c("Seat"),new NoCodeSlot("Exit Point",H.GAME_OBJECT).c("Exit Point"),new NoCodeSlot("Action",H.TEXT).c("Action")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Success",H.BRANCH).c("Success"),new NoCodeSlot("Occupied",H.BRANCH).c("Occupied"),new NoCodeSlot("Failed",H.BRANCH).c("Failed"),new NoCodeSlot("Failure Reason",H.TEXT).c("Failure Reason")};
        public static class Factory implements p {public NoCodeNode a(){return new SeatInteractionNode();}public Class<? extends NoCodeNode>b(){return SeatInteractionNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,SeatInteractionNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Sit / Stand";}public boolean g(){return true;}}
        static{o.a(new Factory());}public SeatInteractionNode(){serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject actor=Aa.b.b(this,f79021a,inputs[0]);if(!C13317e.J(actor))actor=InteractionRuntime.getInstance().getInteractor();String action=m.i0(Q(inputs[3]));InteractionResult r;if("Stand".equalsIgnoreCase(action)||"Exit".equalsIgnoreCase(action))r=SeatService.stand(actor,Aa.b.b(this,f79021a,inputs[2]));else r=SeatService.sit(actor,Aa.b.b(this,f79021a,inputs[1]));y0(outputs[3],r.failureReason.name());if(r.success)u(outputs[0]);else if(r.failureReason==InteractionResult.FailureReason.Occupied)u(outputs[1]);else u(outputs[2]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Sit / Stand";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return i==3?"Sit":"";}public H t0(int i,D r){return i==3?H.TEXT:H.BRANCH;}
    }

    public static class LadderInteractionNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.Ladder";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Ladder",H.GAME_OBJECT).c("Ladder"),new NoCodeSlot("Exit Point",H.GAME_OBJECT).c("Exit Point"),new NoCodeSlot("Action",H.TEXT).c("Action"),new NoCodeSlot("Move Amount",H.NUMBER).c("Move Amount")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Success",H.BRANCH).c("Success"),new NoCodeSlot("Occupied",H.BRANCH).c("Occupied"),new NoCodeSlot("Failed",H.BRANCH).c("Failed"),new NoCodeSlot("Failure Reason",H.TEXT).c("Failure Reason")};
        public static class Factory implements p {public NoCodeNode a(){return new LadderInteractionNode();}public Class<? extends NoCodeNode>b(){return LadderInteractionNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,LadderInteractionNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Ladder Interaction";}public boolean g(){return true;}}
        static{o.a(new Factory());}public LadderInteractionNode(){serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject actor=Aa.b.b(this,f79021a,inputs[0]);if(!C13317e.J(actor))actor=InteractionRuntime.getInstance().getInteractor();String action=m.i0(Q(inputs[3]));InteractionResult r;if("Exit".equalsIgnoreCase(action))r=LadderService.exit(actor,Aa.b.b(this,f79021a,inputs[2]));else if("Climb".equalsIgnoreCase(action)||"Move".equalsIgnoreCase(action))r=LadderService.climb(actor,m.V(Q(inputs[4])));else r=LadderService.enter(actor,Aa.b.b(this,f79021a,inputs[1]));y0(outputs[3],r.failureReason.name());if(r.success)u(outputs[0]);else if(r.failureReason==InteractionResult.FailureReason.Occupied)u(outputs[1]);else u(outputs[2]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Ladder Interaction";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==3)return"Enter";if(i==4)return"0.1";return"";}public H t0(int i,D r){return i==3?H.TEXT:H.BRANCH;}
    }

    public static class VehicleInteractionNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.Vehicle";
        public final NoCodeSlot[] inputs={
            new NoCodeSlot("Interactor",H.GAME_OBJECT).c("Interactor"),new NoCodeSlot("Vehicle",H.GAME_OBJECT).c("Vehicle"),
            new NoCodeSlot("Seat",H.GAME_OBJECT).c("Seat"),new NoCodeSlot("Exit Point",H.GAME_OBJECT).c("Exit Point"),new NoCodeSlot("Action",H.TEXT).c("Action")
        };
        public final NoCodeSlot[] outputs={new NoCodeSlot("Success",H.BRANCH).c("Success"),new NoCodeSlot("Occupied",H.BRANCH).c("Occupied"),new NoCodeSlot("Failed",H.BRANCH).c("Failed"),new NoCodeSlot("Current Vehicle",H.GAME_OBJECT).c("Current Vehicle"),new NoCodeSlot("Failure Reason",H.TEXT).c("Failure Reason")};
        public static class Factory implements p {public NoCodeNode a(){return new VehicleInteractionNode();}public Class<? extends NoCodeNode>b(){return VehicleInteractionNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,VehicleInteractionNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Vehicle Interaction";}public boolean g(){return true;}}
        static{o.a(new Factory());}public VehicleInteractionNode(){serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){
            GameObject actor=Aa.b.b(this,f79021a,inputs[0]);if(!C13317e.J(actor))actor=InteractionRuntime.getInstance().getInteractor();
            GameObject vehicle=Aa.b.b(this,f79021a,inputs[1]);GameObject seat=Aa.b.b(this,f79021a,inputs[2]);String action=m.i0(Q(inputs[4]));InteractionResult r;
            if("Exit".equalsIgnoreCase(action))r=VehicleService.exit(actor,Aa.b.b(this,f79021a,inputs[3]));
            else if("SwitchSeat".equalsIgnoreCase(action)||"Switch Seat".equalsIgnoreCase(action))r=VehicleService.switchSeat(actor,seat);
            else if("StartEngine".equalsIgnoreCase(action)||"Start Engine".equalsIgnoreCase(action))r=VehicleService.setEngine(vehicle,true);
            else if("StopEngine".equalsIgnoreCase(action)||"Stop Engine".equalsIgnoreCase(action))r=VehicleService.setEngine(vehicle,false);
            else r=VehicleService.enter(actor,vehicle,seat);
            y0(outputs[3],VehicleService.getVehicle(actor));y0(outputs[4],r.failureReason.name());if(r.success)u(outputs[0]);else if(r.failureReason==InteractionResult.FailureReason.Occupied)u(outputs[1]);else u(outputs[2]);
        }
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Vehicle Interaction";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return i==4?"Enter":"";}public H t0(int i,D r){if(i==3)return H.GAME_OBJECT;if(i==4)return H.TEXT;return H.BRANCH;}
    }

    public static class PowerNetworkNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.PowerNetwork";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Source",H.GAME_OBJECT).c("Source"),new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Connected",H.BOOLEAN).c("Connected")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Out",H.BRANCH).c("Out"),new NoCodeSlot("Powered",H.BOOLEAN).c("Powered")};
        public static class Factory implements p {public NoCodeNode a(){return new PowerNetworkNode();}public Class<? extends NoCodeNode>b(){return PowerNetworkNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,PowerNetworkNode.class);}public String e(){return"Actions/Interaction";}public String f(){return"Connect Interaction Power";}public boolean g(){return true;}}
        static{o.a(new Factory());}public PowerNetworkNode(){serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject source=Aa.b.b(this,f79021a,inputs[0]);GameObject target=Aa.b.b(this,f79021a,inputs[1]);if(m.O(Q(inputs[2])))PowerService.connect(source,target);else PowerService.disconnect(target);y0(outputs[1],Boolean.valueOf(InteractionRegistry.isPowered(target)));u(outputs[0]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Connect Interaction Power";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){return i==2?"true":"";}public H t0(int i,D r){return i==1?H.BOOLEAN:H.BRANCH;}
    }
}
