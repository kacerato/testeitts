package com.tonyodev.fetch2;

import Cf.a;
import Cf.c;
import Lf.o;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class EnqueueAction {
    private static final a $ENTRIES;
    private static final EnqueueAction[] $VALUES;

    @NotNull
    public static final Companion Companion;
    private final int value;
    public static final EnqueueAction REPLACE_EXISTING = new EnqueueAction("REPLACE_EXISTING", 0, 0);
    public static final EnqueueAction INCREMENT_FILE_NAME = new EnqueueAction("INCREMENT_FILE_NAME", 1, 1);
    public static final EnqueueAction DO_NOT_ENQUEUE_IF_EXISTING = new EnqueueAction("DO_NOT_ENQUEUE_IF_EXISTING", 2, 2);
    public static final EnqueueAction UPDATE_ACCORDINGLY = new EnqueueAction("UPDATE_ACCORDINGLY", 3, 3);

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        @NotNull
        public final EnqueueAction valueOf(int i10) {
            return i10 != 1 ? i10 != 2 ? i10 != 3 ? EnqueueAction.REPLACE_EXISTING : EnqueueAction.UPDATE_ACCORDINGLY : EnqueueAction.DO_NOT_ENQUEUE_IF_EXISTING : EnqueueAction.INCREMENT_FILE_NAME;
        }

        private Companion() {
        }
    }

    private static final EnqueueAction[] $values() {
        return new EnqueueAction[]{REPLACE_EXISTING, INCREMENT_FILE_NAME, DO_NOT_ENQUEUE_IF_EXISTING, UPDATE_ACCORDINGLY};
    }

    static {
        EnqueueAction[] $values = $values();
        $VALUES = $values;
        $ENTRIES = c.c($values);
        Companion = new Companion(null);
    }

    private EnqueueAction(String str, int i10, int i11) {
        this.value = i11;
    }

    @NotNull
    public static a<EnqueueAction> getEntries() {
        return $ENTRIES;
    }

    @o
    @NotNull
    public static final EnqueueAction valueOf(int i10) {
        return Companion.valueOf(i10);
    }

    public static EnqueueAction[] values() {
        return (EnqueueAction[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }

    public static EnqueueAction valueOf(String str) {
        return (EnqueueAction) Enum.valueOf(EnqueueAction.class, str);
    }
}
