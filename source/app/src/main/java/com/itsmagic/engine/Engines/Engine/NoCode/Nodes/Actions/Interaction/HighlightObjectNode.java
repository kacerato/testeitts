package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Feedback.InteractionHighlightController;
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

/**
 * Ativa ou remove o realce (highlight) visual de um GameObject.
 */
public class HighlightObjectNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.Highlight";

    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        @Override
        public NoCodeNode a() {
            return new HighlightObjectNode();
        }

        @Override
        public Class<? extends NoCodeNode> b() {
            return HighlightObjectNode.class;
        }

        @Override
        public String c() {
            return SERIALIZED_NAME;
        }

        @Override
        public NoCodeNode d(JsonObject json) {
            return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, HighlightObjectNode.class);
        }

        @Override
        public String e() {
            return "Actions/Interaction";
        }

        @Override
        public String f() {
            return "Highlight Object";
        }

        @Override
        public boolean g() {
            return true;
        }
    }

    static {
        o.a(new NodeFactory());
    }

    public HighlightObjectNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"),
            new NoCodeSlot("Active", H.BOOLEAN).c("Active"),
            new NoCodeSlot("Mode", H.TEXT).c("Mode"),
            new NoCodeSlot("Intensity", H.NUMBER).c("Intensity")
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
        GameObject target = Aa.b.b(this, this.f79021a, this.inputs[0]);
        if (!C13317e.J(target) && this.f79021a != null) {
            target = this.f79021a.h0();
        }

        if (C13317e.J(target)) {
            boolean active = m.S(Q(this.inputs[1]));
            if (active) {
                String modeStr = m.Y(Q(this.inputs[2]));
                float intensity = m.V(Q(this.inputs[3]));
                InteractionHighlightController.HighlightMode mode = InteractionHighlightController.HighlightMode.MaterialTint;
                if ("Outline".equalsIgnoreCase(modeStr)) {
                    mode = InteractionHighlightController.HighlightMode.Outline;
                } else if ("IndicatorIcon".equalsIgnoreCase(modeStr)) {
                    mode = InteractionHighlightController.HighlightMode.IndicatorIcon;
                }
                InteractionHighlightController.highlight(target, mode, intensity > 0f ? intensity : 1.0f, 0xFFFFFF);
            } else {
                InteractionHighlightController.removeHighlight(target);
            }
        }

        u(this.outputs[0]);
    }

    @Override
    public EnumC13304B M() {
        return EnumC13304B.BOTH;
    }

    @Override
    public String N(NoCodeData graphData) {
        return "Highlight Object";
    }

    @Override
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 0) return "owner";
        if (inputIndex == 1) return "true";
        if (inputIndex == 2) return "MaterialTint";
        if (inputIndex == 3) return "1.0";
        return "";
    }

    @Override
    public H t0(int index, D resolver) {
        return H.BRANCH;
    }

    @Override
    public String x(NoCodeData graphData) {
        return "Highlight Object";
    }
}
