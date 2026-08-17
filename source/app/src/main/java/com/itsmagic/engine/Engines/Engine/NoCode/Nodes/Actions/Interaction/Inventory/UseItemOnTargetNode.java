package com.itsmagic.engine.Engines.Engine.NoCode.Nodes.Actions.Interaction.Inventory;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime.InteractionDispatcher;
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

/** Usa um item do inventario/tag do interactor sobre um target receptor. */
public class UseItemOnTargetNode extends NoCodeNode implements F {

    public static final String SERIALIZED_NAME = "Interaction.UseItemOnTarget";
    public final NoCodeSlot[] inputs;
    public final NoCodeSlot[] outputs;

    public static class NodeFactory implements p {
        public NoCodeNode a() { return new UseItemOnTargetNode(); }
        public Class<? extends NoCodeNode> b() { return UseItemOnTargetNode.class; }
        public String c() { return SERIALIZED_NAME; }
        public NoCodeNode d(JsonObject json) { return (NoCodeNode) X7.a.m().fromJson((JsonElement) json, UseItemOnTargetNode.class); }
        public String e() { return "Actions/Inventory"; }
        public String f() { return "Use Item On Target"; }
        public boolean g() { return true; }
    }

    static { o.a(new NodeFactory()); }

    public UseItemOnTargetNode() {
        this.inputs = new NoCodeSlot[]{
            new NoCodeSlot("Interactor", H.GAME_OBJECT).c("Interactor"),
            new NoCodeSlot("Target", H.GAME_OBJECT).c("Target"),
            new NoCodeSlot("Required Item Tag", H.TEXT).c("Required Item Tag"),
            new NoCodeSlot("Consume Item", H.BOOLEAN).c("Consume Item")
        };
        this.outputs = new NoCodeSlot[]{
            new NoCodeSlot("Accepted", H.BRANCH).c("Accepted"),
            new NoCodeSlot("Rejected", H.BRANCH).c("Rejected"),
            new NoCodeSlot("Missing Item", H.BRANCH).c("Missing Item"),
            new NoCodeSlot("Was Consumed", H.BOOLEAN).c("Was Consumed")
        };
        this.serializedNodeType = SERIALIZED_NAME;
    }

    public NoCodeSlot[] F() { return inputs; }
    public NoCodeSlot[] J() { return outputs; }

    public void m0() {
        GameObject interactor = Aa.b.b(this, this.f79021a, inputs[0]);
        GameObject target = Aa.b.b(this, this.f79021a, inputs[1]);
        if (!C13317e.J(target) && this.f79021a != null) target = this.f79021a.h0();

        String itemTag = m.i0(Q(inputs[2]));
        boolean consume = m.O(Q(inputs[3]));
        if (itemTag == null || itemTag.trim().isEmpty() || !C13317e.J(target)) {
            y0(outputs[3], Boolean.FALSE);
            u(outputs[1]);
            return;
        }

        String cleanTag = itemTag.trim().toLowerCase();
        int inventoryCount = 0;
        boolean interactorHasItem = false;
        if (C13317e.J(interactor)) {
            Object countObj = InteractionRegistry.getAttribute(interactor, "inventory_count_" + cleanTag);
            inventoryCount = countObj instanceof Number ? ((Number) countObj).intValue() : 0;
            interactorHasItem = inventoryCount > 0
                || InteractionRegistry.hasTag(interactor, cleanTag)
                || InteractionRegistry.getAttribute(interactor, "has_item_" + cleanTag) != null;
        }

        if (!interactorHasItem) {
            y0(outputs[3], Boolean.FALSE);
            u(outputs[2]);
            return;
        }

        boolean accepted = true;
        Object requiredObj = InteractionRegistry.getAttribute(target, "required_key");
        if (requiredObj != null && !String.valueOf(requiredObj).equalsIgnoreCase(cleanTag)) accepted = false;

        Object acceptedTagObj = InteractionRegistry.getAttribute(target, "accepted_item_tag");
        if (acceptedTagObj != null && !String.valueOf(acceptedTagObj).equalsIgnoreCase(cleanTag)) accepted = false;

        if (!accepted) {
            y0(outputs[3], Boolean.FALSE);
            u(outputs[1]);
            return;
        }

        if (consume && C13317e.J(interactor)) {
            if (inventoryCount > 0) {
                int next = inventoryCount - 1;
                InteractionRegistry.setAttribute(interactor, "inventory_count_" + cleanTag, Integer.valueOf(next));
                InteractionRegistry.setAttribute(interactor, "has_item_" + cleanTag, next > 0 ? Boolean.TRUE : null);
                if (next <= 0) InteractionRegistry.removeTag(interactor, cleanTag);
            } else {
                InteractionRegistry.removeTag(interactor, cleanTag);
                InteractionRegistry.setAttribute(interactor, "has_item_" + cleanTag, null);
            }
        }

        InteractionRegistry.setLocked(target, false);
        InteractionDispatcher.dispatchCustomEvent("item_used_on_target", target, cleanTag);
        y0(outputs[3], Boolean.valueOf(consume));
        u(outputs[0]);
    }

    public EnumC13304B M() { return EnumC13304B.BOTH; }
    public String N(NoCodeData graphData) { return "Use Item On Target"; }
    public String x(NoCodeData graphData) { return "Use Item On Target"; }
    public String a(int inputIndex, H desiredType) {
        if (inputIndex == 1) return "owner";
        if (inputIndex == 2) return "key_bronze";
        if (inputIndex == 3) return "true";
        return "";
    }
    public H t0(int index, D resolver) { return index == 3 ? H.BOOLEAN : H.BRANCH; }
}
