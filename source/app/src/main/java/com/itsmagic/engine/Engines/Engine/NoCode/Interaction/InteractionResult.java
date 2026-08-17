package com.itsmagic.engine.Engines.Engine.NoCode.Interaction;

import java.io.Serializable;

/**
 * Resultado estruturado de uma acao de interacao com suporte a motivo de falha tipado.
 */
public class InteractionResult implements Serializable {

    public enum FailureReason {
        None,
        OutOfRange,
        OutOfView,
        Blocked,
        Disabled,
        Busy,
        Locked,
        MissingItem,
        WrongItem,
        TooHeavy,
        Occupied,
        Cooldown,
        InvalidTarget,
        Cancelled,
        Unknown;

        public static FailureReason fromString(String name) {
            if (name == null || name.trim().isEmpty()) {
                return None;
            }
            for (FailureReason r : values()) {
                if (r.name().equalsIgnoreCase(name.trim())) {
                    return r;
                }
            }
            return Unknown;
        }
    }

    public boolean success;
    public FailureReason failureReason = FailureReason.None;
    public String message;
    public Object payload;

    public static final InteractionResult SUCCESS = new InteractionResult(true, FailureReason.None, null, null);

    public InteractionResult() {
        this(true, FailureReason.None, null, null);
    }

    public InteractionResult(boolean success, FailureReason failureReason, String message, Object payload) {
        this.success = success;
        this.failureReason = failureReason != null ? failureReason : FailureReason.None;
        this.message = message;
        this.payload = payload;
    }

    public static InteractionResult success() {
        return new InteractionResult(true, FailureReason.None, null, null);
    }

    public static InteractionResult success(Object payload) {
        return new InteractionResult(true, FailureReason.None, null, payload);
    }

    public static InteractionResult failure(FailureReason reason, String message) {
        return new InteractionResult(false, reason, message, null);
    }

    public static InteractionResult failure(FailureReason reason) {
        return new InteractionResult(false, reason, null, null);
    }
}
