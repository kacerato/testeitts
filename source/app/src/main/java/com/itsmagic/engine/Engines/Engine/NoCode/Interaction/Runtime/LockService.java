package com.itsmagic.engine.Engines.Engine.NoCode.Interaction.Runtime;

import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionRegistry;
import com.itsmagic.engine.Engines.Engine.NoCode.Interaction.InteractionResult;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import gb.C13317e;

/** Centraliza fechaduras por item/tag e codigo sem acoplar o node a uma porta especifica. */
public final class LockService {
    private LockService() {}

    public static InteractionResult tryUnlock(GameObject target, GameObject interactor, String itemTag, String code, boolean consumeItem) {
        if (!C13317e.J(target)) {
            return InteractionResult.failure(InteractionResult.FailureReason.InvalidTarget, "Alvo invalido");
        }
        if (!InteractionRegistry.isLocked(target)) {
            return InteractionResult.success(target);
        }

        Object requiredKeyObj = InteractionRegistry.getAttribute(target, "required_key");
        Object requiredCodeObj = InteractionRegistry.getAttribute(target, "required_code");
        String requiredKey = requiredKeyObj != null ? String.valueOf(requiredKeyObj).trim().toLowerCase() : null;
        String requiredCode = requiredCodeObj != null ? String.valueOf(requiredCodeObj) : null;

        if (requiredCode != null && !requiredCode.isEmpty()) {
            if (code == null || code.isEmpty() || !requiredCode.equals(code)) {
                InteractionDispatcher.dispatchCustomEvent("unlock_failed", target, "WrongCode");
                return InteractionResult.failure(InteractionResult.FailureReason.WrongItem, "Codigo incorreto");
            }
        }

        if (requiredKey != null && !requiredKey.isEmpty()) {
            if (!C13317e.J(interactor)) {
                InteractionDispatcher.dispatchCustomEvent("unlock_failed", target, "MissingItem");
                return InteractionResult.failure(InteractionResult.FailureReason.MissingItem, "Item necessario ausente");
            }

            String supplied = itemTag != null ? itemTag.trim().toLowerCase() : requiredKey;
            if (!requiredKey.equals(supplied)) {
                InteractionDispatcher.dispatchCustomEvent("unlock_failed", target, "WrongItem");
                return InteractionResult.failure(InteractionResult.FailureReason.WrongItem, "Item incorreto");
            }

            int count = getInventoryCount(interactor, requiredKey);
            boolean hasItem = count > 0
                || InteractionRegistry.hasTag(interactor, requiredKey)
                || InteractionRegistry.getAttribute(interactor, "has_item_" + requiredKey) != null;
            if (!hasItem) {
                InteractionDispatcher.dispatchCustomEvent("unlock_failed", target, "MissingItem");
                return InteractionResult.failure(InteractionResult.FailureReason.MissingItem, "Item necessario ausente");
            }

            if (consumeItem) consume(interactor, requiredKey, count);
        }

        InteractionRegistry.setLocked(target, false);
        InteractionDispatcher.dispatchCustomEvent("unlocked", target, interactor);
        return InteractionResult.success(target);
    }

    public static void configureKey(GameObject target, String requiredKey) {
        if (!C13317e.J(target)) return;
        String clean = requiredKey == null || requiredKey.trim().isEmpty() ? null : requiredKey.trim().toLowerCase();
        InteractionRegistry.setAttribute(target, "required_key", clean);
        InteractionRegistry.setLocked(target, clean != null || InteractionRegistry.getAttribute(target, "required_code") != null);
    }

    public static void configureCode(GameObject target, String requiredCode) {
        if (!C13317e.J(target)) return;
        String clean = requiredCode == null || requiredCode.isEmpty() ? null : requiredCode;
        InteractionRegistry.setAttribute(target, "required_code", clean);
        InteractionRegistry.setLocked(target, clean != null || InteractionRegistry.getAttribute(target, "required_key") != null);
    }

    private static int getInventoryCount(GameObject interactor, String tag) {
        Object countObj = InteractionRegistry.getAttribute(interactor, "inventory_count_" + tag);
        return countObj instanceof Number ? ((Number) countObj).intValue() : 0;
    }

    private static void consume(GameObject interactor, String tag, int knownCount) {
        if (knownCount > 0) {
            int next = knownCount - 1;
            InteractionRegistry.setAttribute(interactor, "inventory_count_" + tag, Integer.valueOf(next));
            InteractionRegistry.setAttribute(interactor, "has_item_" + tag, next > 0 ? Boolean.TRUE : null);
            if (next <= 0) InteractionRegistry.removeTag(interactor, tag);
        } else {
            InteractionRegistry.removeTag(interactor, tag);
            InteractionRegistry.setAttribute(interactor, "has_item_" + tag, null);
        }
    }
}
