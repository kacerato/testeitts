package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Queries.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
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

/** Historico leve por target/action mantido no InteractionRegistry. */
public final class InteractionHistoryNodes {
    private InteractionHistoryNodes() {}

    public static class GetInteractionCountNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.GetCount";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Action",H.TEXT).c("Action")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("Out",H.BRANCH).c("Out"),new NoCodeSlot("Count",H.NUMBER).c("Count")};
        public static class Factory implements p {public NoCodeNode a(){return new GetInteractionCountNode();}public Class<? extends NoCodeNode>b(){return GetInteractionCountNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,GetInteractionCountNode.class);}public String e(){return"Queries/Interaction";}public String f(){return"Get Interaction Count";}public boolean g(){return true;}}
        static{o.a(new Factory());}public GetInteractionCountNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();String action=m.Y(Q(inputs[1]));String key="interaction_count_"+(action==null?"interact":action.trim().toLowerCase());Object v=InteractionRegistry.getAttribute(go,key);int count=v instanceof Number?((Number)v).intValue():0;y0(outputs[1],Float.valueOf(count));u(outputs[0]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Get Interaction Count";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"interact";return"";}public H t0(int i,D r){return i==1?H.NUMBER:H.BRANCH;}
    }

    public static class InteractionUsedBeforeNode extends NoCodeNode implements F {
        public static final String SERIALIZED_NAME="Interaction.UsedBefore";
        public final NoCodeSlot[] inputs={new NoCodeSlot("Target",H.GAME_OBJECT).c("Target"),new NoCodeSlot("Action",H.TEXT).c("Action")};
        public final NoCodeSlot[] outputs={new NoCodeSlot("True",H.BRANCH).c("True"),new NoCodeSlot("False",H.BRANCH).c("False"),new NoCodeSlot("Used",H.BOOLEAN).c("Used")};
        public static class Factory implements p {public NoCodeNode a(){return new InteractionUsedBeforeNode();}public Class<? extends NoCodeNode>b(){return InteractionUsedBeforeNode.class;}public String c(){return SERIALIZED_NAME;}public NoCodeNode d(JsonObject j){return(NoCodeNode)X7.a.m().fromJson((JsonElement)j,InteractionUsedBeforeNode.class);}public String e(){return"Conditions/Interaction";}public String f(){return"Interaction Used Before?";}public boolean g(){return true;}}
        static{o.a(new Factory());}public InteractionUsedBeforeNode(){this.serializedNodeType=SERIALIZED_NAME;}public NoCodeSlot[]F(){return inputs;}public NoCodeSlot[]J(){return outputs;}
        public void m0(){GameObject go=Aa.b.b(this,this.f79021a,inputs[0]);if(!C13317e.J(go)&&this.f79021a!=null)go=this.f79021a.h0();String action=m.Y(Q(inputs[1]));String key="interaction_count_"+(action==null?"interact":action.trim().toLowerCase());Object v=InteractionRegistry.getAttribute(go,key);boolean used=v instanceof Number&&((Number)v).intValue()>0;y0(outputs[2],Boolean.valueOf(used));u(used?outputs[0]:outputs[1]);}
        public EnumC13304B M(){return EnumC13304B.BOTH;}public String N(NoCodeData d){return"Interaction Used Before?";}public String x(NoCodeData d){return N(d);}public String a(int i,H t){if(i==0)return"owner";if(i==1)return"interact";return"";}public H t0(int i,D r){return i==2?H.BOOLEAN:H.BRANCH;}
    }
}
