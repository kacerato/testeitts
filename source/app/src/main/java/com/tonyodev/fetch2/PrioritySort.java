package com.tonyodev.fetch2;

import Cf.a;
import Cf.c;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class PrioritySort {
    private static final a $ENTRIES;
    private static final PrioritySort[] $VALUES;
    public static final PrioritySort ASC = new PrioritySort("ASC", 0);
    public static final PrioritySort DESC = new PrioritySort("DESC", 1);

    private static final PrioritySort[] $values() {
        return new PrioritySort[]{ASC, DESC};
    }

    static {
        PrioritySort[] $values = $values();
        $VALUES = $values;
        $ENTRIES = c.c($values);
    }

    private PrioritySort(String str, int i10) {
    }

    @NotNull
    public static a<PrioritySort> getEntries() {
        return $ENTRIES;
    }

    public static PrioritySort valueOf(String str) {
        return (PrioritySort) Enum.valueOf(PrioritySort.class, str);
    }

    public static PrioritySort[] values() {
        return (PrioritySort[]) $VALUES.clone();
    }
}
