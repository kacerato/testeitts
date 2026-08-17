package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback.InteractionPromptController;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import ga.D;
import ga.EnumC13304B;
import ga.F;
import ga.H;
import ga.m;
import ga.o;
import ga.p;

/**
 * Exibe um prompt de interacao na UI sem necessidade de instanciar componentes visuais manualmente.
 */
public class ShowInteractionPromptNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.ShowPrompt";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new ShowInteractionPromptNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return ShowInteractionPromptNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, ShowInteractionPromptNode.class);
        }

        @Override
        public String e() {
            return "Actions/Interaction";
        }

        @Override
        public String f() {
            return "Show Interaction Prompt";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public ShowInteractionPromptNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Text", H.TEXT).c("Text"),
            new NoCodeSlot("Icon", H.TEXT).c("Icon"),
            new NoCodeSlot("Action Key", H.TEXT).c("Action Key"),
            new NoCodeSlot("Duration (s)", H.NUMBER).c("Duration")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Out", H.BRANCH).c("Out")
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
        String text = m.Y(Q(this.inputs[0]));
        String icon = m.Y(Q(this.inputs[1]));
        String actionKey = m.Y(Q(this.inputs[2]));
        float duration = m.V(Q(this.inputs[3]));

        InteractionPromptController.showPrompt(text, icon, actionKey, duration, 0);
        u(this.outputs[0]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Show Interaction Prompt";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "Interagir";
        if (inputIndex == 1) return "hand_icon";
        if (inputIndex == 2) return "interact";
        if (inputIndex == 3) return "0.0";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Show Interaction Prompt";
    }
}
