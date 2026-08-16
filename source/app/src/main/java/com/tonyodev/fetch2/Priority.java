package com.tonyodev.fetch2;

import Cf.a;
import Cf.c;
import Lf.o;
import kotlin.jvm.internal.C14026x;
import org.eclipse.jdt.core.JavaCore;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class Priority {
    private static final a $ENTRIES;
    private static final Priority[] $VALUES;

    @NotNull
    public static final Companion Companion;
    private final int value;
    public static final Priority HIGH = new Priority(JavaCore.COMPILER_TASK_PRIORITY_HIGH, 0, 1);
    public static final Priority NORMAL = new Priority("NORMAL", 1, 0);
    public static final Priority LOW = new Priority(JavaCore.COMPILER_TASK_PRIORITY_LOW, 2, -1);

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        @NotNull
        public final Priority valueOf(int i10) {
            if (i10 == -1) {
                return Priority.LOW;
            }
            if (i10 != 0 && i10 == 1) {
                return Priority.HIGH;
            }
            return Priority.NORMAL;
        }

        private Companion() {
        }
    }

    private static final Priority[] $values() {
        return new Priority[]{HIGH, NORMAL, LOW};
    }

    static {
        Priority[] $values = $values();
        $VALUES = $values;
        $ENTRIES = c.c($values);
        Companion = new Companion(null);
    }

    private Priority(String str, int i10, int i11) {
        this.value = i11;
    }

    @NotNull
    public static a<Priority> getEntries() {
        return $ENTRIES;
    }

    @o
    @NotNull
    public static final Priority valueOf(int i10) {
        return Companion.valueOf(i10);
    }

    public static Priority[] values() {
        return (Priority[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }

    public static Priority valueOf(String str) {
        return (Priority) Enum.valueOf(Priority.class, str);
    }
}
