package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Conditions.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionState;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionCooldownManager;
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

/** Condicoes reutilizaveis da camada Interaction. */
public final class ExtendedInteractionConditionNodes {
    private ExtendedInteractionConditionNodes() {}

    private abstract static class BaseCondition extends NoCodeNode implements F {
        protected final NoCodeSlot[] boolOutputs = {
            new NoCodeSlot("True", H.BRANCH).c("True"),
            new NoCodeSlot("False", H.BRANCH).c("False"),
            new NoCodeSlot("Value", H.BOOLEAN).c("Value")
        };
        protected void emit(boolean value) { y0(boolOutputs[2], Boolean.valueOf(value)); u(value ? boolOutputs[0] : boolOutputs[1]); }
        protected GameObject resolveTarget(NoCodeSlot input) {
            GameObject go = Aa.b.b(this, this.f79021a, input);
            if (!C13317e.J(go) && this.f79021a != null) go = this.f79021a.h0();
            return go;
        }
        public NoCodeSlot[] J() { return boolOutputs; }
        public EnumC13304B M() { return EnumC13304B.BOTH; }
        public H t0(int index, D resolver) { return index == 2 ? H.BOOLEAN : H.BRANCH; }
    }

    public static class IsEnabledNode extends BaseCondition {
        public static final String SERIALIZED_NAME = "Interaction.IsEnabled";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target") };
        public static class Factory implements p {
            public NoCodeNode a(){return new IsEnabledNode();} public Class<? extends NoCodeNode>b(){return IsEnabledNode.class;} public String c(){return SERIALIZED_NAME;}
            public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,IsEnabledNode.class);} public String e(){return"Conditions/Interaction";} public String f(){return"Interaction Enabled?";} public boolean g(){return true;}
        }
        static{o.a(new Factory());} public IsEnabledNode(){this.serializedNodeType=SERIALIZED_NAME;} public NoCodeSlot[]F(){return inputs;}
        public void m0(){emit(InteractionRegistry.isEnabled(resolveTarget(inputs[0])));} public String N(NoCodeData d){return"Interaction Enabled?";} public String x(NoCodeData d){return N(d);} public String a(int i,H t){return i==0?"owner":"";}
    }

    public static class HasTagNode extends BaseCondition {
        public static final String SERIALIZED_NAME = "Interaction.HasTag";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"), new NoCodeSlot("Tag", H.TEXT).c("Tag") };
        public static class Factory implements p {
            public NoCodeNode a(){return new HasTagNode();} public Class<? extends NoCodeNode>b(){return HasTagNode.class;} public String c(){return SERIALIZED_NAME;}
            public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,HasTagNode.class);} public String e(){return"Conditions/Interaction";} public String f(){return"Target Has Interaction Tag";} public boolean g(){return true;}
        }
        static{o.a(new Factory());} public HasTagNode(){this.serializedNodeType=SERIALIZED_NAME;} public NoCodeSlot[]F(){return inputs;}
        public void m0(){emit(InteractionRegistry.hasTag(resolveTarget(inputs[0]),m.i0(Q(inputs[1]))));} public String N(NoCodeData d){return"Target Has Interaction Tag";} public String x(NoCodeData d){return N(d);} public String a(int i,H t){if(i==0)return"owner";if(i==1)return"tag";return"";}
    }

    public static class IsBusyNode extends BaseCondition {
        public static final String SERIALIZED_NAME = "Interaction.IsBusy";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target") };
        public static class Factory implements p {
            public NoCodeNode a(){return new IsBusyNode();} public Class<? extends NoCodeNode>b(){return IsBusyNode.class;} public String c(){return SERIALIZED_NAME;}
            public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,IsBusyNode.class);} public String e(){return"Conditions/Interaction";} public String f(){return"Is Interaction Busy";} public boolean g(){return true;}
        }
        static{o.a(new Factory());} public IsBusyNode(){this.serializedNodeType=SERIALIZED_NAME;} public NoCodeSlot[]F(){return inputs;}
        public void m0(){emit(InteractionRegistry.isBusy(resolveTarget(inputs[0])));} public String N(NoCodeData d){return"Is Interaction Busy";} public String x(NoCodeData d){return N(d);} public String a(int i,H t){return i==0?"owner":"";}
    }

    public static class IsHeldNode extends BaseCondition {
        public static final String SERIALIZED_NAME = "Interaction.IsHeld";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target") };
        public static class Factory implements p {
            public NoCodeNode a(){return new IsHeldNode();} public Class<? extends NoCodeNode>b(){return IsHeldNode.class;} public String c(){return SERIALIZED_NAME;}
            public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,IsHeldNode.class);} public String e(){return"Conditions/Interaction";} public String f(){return"Is Held";} public boolean g(){return true;}
        }
        static{o.a(new Factory());} public IsHeldNode(){this.serializedNodeType=SERIALIZED_NAME;} public NoCodeSlot[]F(){return inputs;}
        public void m0(){emit(InteractionRegistry.isHeld(resolveTarget(inputs[0])));} public String N(NoCodeData d){return"Is Held";} public String x(NoCodeData d){return N(d);} public String a(int i,H t){return i==0?"owner":"";}
    }

    public static class IsPoweredNode extends BaseCondition {
        public static final String SERIALIZED_NAME = "Interaction.IsPowered";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target") };
        public static class Factory implements p {
            public NoCodeNode a(){return new IsPoweredNode();} public Class<? extends NoCodeNode>b(){return IsPoweredNode.class;} public String c(){return SERIALIZED_NAME;}
            public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,IsPoweredNode.class);} public String e(){return"Conditions/Interaction";} public String f(){return"Is Powered";} public boolean g(){return true;}
        }
        static{o.a(new Factory());} public IsPoweredNode(){this.serializedNodeType=SERIALIZED_NAME;} public NoCodeSlot[]F(){return inputs;}
        public void m0(){emit(InteractionRegistry.isPowered(resolveTarget(inputs[0])));} public String N(NoCodeData d){return"Is Powered";} public String x(NoCodeData d){return N(d);} public String a(int i,H t){return i==0?"owner":"";}
    }

    public static class CompareStateNode extends BaseCondition {
        public static final String SERIALIZED_NAME = "Interaction.CompareState";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"), new NoCodeSlot("State", H.TEXT).c("State") };
        public static class Factory implements p {
            public NoCodeNode a(){return new CompareStateNode();} public Class<? extends NoCodeNode>b(){return CompareStateNode.class;} public String c(){return SERIALIZED_NAME;}
            public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,CompareStateNode.class);} public String e(){return"Conditions/Interaction";} public String f(){return"Compare Interaction State";} public boolean g(){return true;}
        }
        static{o.a(new Factory());} public CompareStateNode(){this.serializedNodeType=SERIALIZED_NAME;} public NoCodeSlot[]F(){return inputs;}
        public void m0(){
            GameObject go=resolveTarget(inputs[0]);
            InteractionState desired=InteractionState.fromString(m.i0(Q(inputs[1])));
            InteractionRegistry.InteractableData data=InteractionRegistry.get(go);
            boolean value=false;
            if(desired!=null&&data!=null){
                switch(desired){
                    case Enabled:value=data.enabled;break;
                    case Disabled:value=!data.enabled;break;
                    case Focused:value=data.isFocused;break;
                    case Interacting:case Busy:value=data.isBusy;break;
                    case Locked:value=data.isLocked;break;
                    case Unlocked:value=!data.isLocked;break;
                    case Open:value=data.isOpen;break;
                    case Closed:value=!data.isOpen;break;
                    case Held:value=data.isHeld;break;
                    case Dropped:value=!data.isHeld;break;
                    case On:value=data.hasOnOffState&&data.isOn;break;
                    case Off:value=data.hasOnOffState&&!data.isOn;break;
                    case Powered:value=data.isPowered;break;
                    case Unpowered:value=!data.isPowered;break;
                    case Idle:value=data.enabled&&!data.isFocused&&!data.isBusy&&!data.isHeld;break;
                    default:value=InteractionRegistry.getState(go)==desired;break;
                }
            }
            emit(value);
        }
        public String N(NoCodeData d){return"Compare Interaction State";} public String x(NoCodeData d){return N(d);} public String a(int i,H t){if(i==0)return"owner";if(i==1)return"Idle";return"";}
    }

    public static class CooldownReadyNode extends BaseCondition {
        public static final String SERIALIZED_NAME = "Interaction.CooldownReady";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"), new NoCodeSlot("Action", H.TEXT).c("Action") };
        public static class Factory implements p {
            public NoCodeNode a(){return new CooldownReadyNode();} public Class<? extends NoCodeNode>b(){return CooldownReadyNode.class;} public String c(){return SERIALIZED_NAME;}
            public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,CooldownReadyNode.class);} public String e(){return"Conditions/Interaction";} public String f(){return"Interaction Cooldown Ready";} public boolean g(){return true;}
        }
        static{o.a(new Factory());} public CooldownReadyNode(){this.serializedNodeType=SERIALIZED_NAME;} public NoCodeSlot[]F(){return inputs;}
        public void m0(){emit(InteractionCooldownManager.isReady(resolveTarget(inputs[0]),m.i0(Q(inputs[1]))));} public String N(NoCodeData d){return"Interaction Cooldown Ready";} public String x(NoCodeData d){return N(d);} public String a(int i,H t){if(i==0)return"owner";if(i==1)return"interact";return"";}
    }

    public static class IsTargetInRangeNode extends BaseCondition {
        public static final String SERIALIZED_NAME = "Interaction.IsTargetInRange";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor"), new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"), new NoCodeSlot("Max Distance", H.NUMBER).c("Max Distance") };
        public static class Factory implements p {
            public NoCodeNode a(){return new IsTargetInRangeNode();} public Class<? extends NoCodeNode>b(){return IsTargetInRangeNode.class;} public String c(){return SERIALIZED_NAME;}
            public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,IsTargetInRangeNode.class);} public String e(){return"Conditions/Interaction";} public String f(){return"Is Target In Range";} public boolean g(){return true;}
        }
        static{o.a(new Factory());} public IsTargetInRangeNode(){this.serializedNodeType=SERIALIZED_NAME;} public NoCodeSlot[]F(){return inputs;}
        public void m0(){
            GameObject actor=Aa.b.b(this,this.f79021a,inputs[0]);
            GameObject target=Aa.b.b(this,this.f79021a,inputs[1]);
            if(!C13317e.J(actor))actor=InteractionRuntime.getInstance().getInteractor();
            if(!C13317e.J(target)&&this.f79021a!=null)target=this.f79021a.h0();
            float max=Math.max(0f,m.V(Q(inputs[2])));
            boolean value=false;
            if(C13317e.J(actor)&&C13317e.J(target)&&actor.J0()!=null&&target.J0()!=null){
                Vector3 a=actor.J0().J0(),b=target.J0().J0();
                if(a!=null&&b!=null){float dx=b.getX()-a.getX(),dy=b.getY()-a.getY(),dz=b.getZ()-a.getZ();value=dx*dx+dy*dy+dz*dz<=max*max;}
            }
            emit(value);
        }
        public String N(NoCodeData d){return"Is Target In Range";} public String x(NoCodeData d){return N(d);} public String a(int i,H t){if(i==2)return"4.0";return"";}
    }

    public static class HasRequiredItemNode extends BaseCondition {
        public static final String SERIALIZED_NAME = "Interaction.HasRequiredItem";
        public final NoCodeSlot[] inputs = { new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor"), new NoCodeSlot("Item Tag", H.TEXT).c("Item Tag") };
        public static class Factory implements p {
            public NoCodeNode a(){return new HasRequiredItemNode();} public Class<? extends NoCodeNode>b(){return HasRequiredItemNode.class;} public String c(){return SERIALIZED_NAME;}
            public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,HasRequiredItemNode.class);} public String e(){return"Conditions/Interaction";} public String f(){return"Has Required Item";} public boolean g(){return true;}
        }
        static{o.a(new Factory());} public HasRequiredItemNode(){this.serializedNodeType=SERIALIZED_NAME;} public NoCodeSlot[]F(){return inputs;}
        public void m0(){
            GameObject actor=Aa.b.b(this,this.f79021a,inputs[0]);
            if(!C13317e.J(actor))actor=InteractionRuntime.getInstance().getInteractor();
            String tag=m.i0(Q(inputs[1]));
            boolean has=false;
            if(C13317e.J(actor)&&tag!=null&&!tag.trim().isEmpty()){
                String clean=tag.trim().toLowerCase();
                Object count=InteractionRegistry.getAttribute(actor,"inventory_count_"+clean);
                has=(count instanceof Number&&((Number)count).intValue()>0)||InteractionRegistry.hasTag(actor,clean)||InteractionRegistry.getAttribute(actor,"has_item_"+clean)!=null;
            }
            emit(has);
        }
        public String N(NoCodeData d){return"Has Required Item";} public String x(NoCodeData d){return N(d);} public String a(int i,H t){if(i==1)return"key";return"";}
    }
}
