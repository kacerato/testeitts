package com.tonyodev.fetch2;

import Cf.a;
import Dd.c;
import Lf.o;
import android.security.keystore.KeyProperties;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
public final class Status {
    private static final a $ENTRIES;
    private static final Status[] $VALUES;

    @NotNull
    public static final Companion Companion;
    private final int value;
    public static final Status NONE = new Status(KeyProperties.DIGEST_NONE, 0, 0);
    public static final Status QUEUED = new Status("QUEUED", 1, 1);
    public static final Status DOWNLOADING = new Status("DOWNLOADING", 2, 2);
    public static final Status PAUSED = new Status(c.f5114f, 3, 3);
    public static final Status COMPLETED = new Status("COMPLETED", 4, 4);
    public static final Status CANCELLED = new Status("CANCELLED", 5, 5);
    public static final Status FAILED = new Status("FAILED", 6, 6);
    public static final Status REMOVED = new Status("REMOVED", 7, 7);
    public static final Status DELETED = new Status("DELETED", 8, 8);
    public static final Status ADDED = new Status("ADDED", 9, 9);

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        @NotNull
        public final Status valueOf(int i10) {
            switch (i10) {
                case 0:
                    return Status.NONE;
                case 1:
                    return Status.QUEUED;
                case 2:
                    return Status.DOWNLOADING;
                case 3:
                    return Status.PAUSED;
                case 4:
                    return Status.COMPLETED;
                case 5:
                    return Status.CANCELLED;
                case 6:
                    return Status.FAILED;
                case 7:
                    return Status.REMOVED;
                case 8:
                    return Status.DELETED;
                case 9:
                    return Status.ADDED;
                default:
                    return Status.NONE;
            }
        }

        private Companion() {
        }
    }

    private static final Status[] $values() {
        return new Status[]{NONE, QUEUED, DOWNLOADING, PAUSED, COMPLETED, CANCELLED, FAILED, REMOVED, DELETED, ADDED};
    }

    static {
        Status[] $values = $values();
        $VALUES = $values;
        $ENTRIES = Cf.c.c($values);
        Companion = new Companion(null);
    }

    private Status(String str, int i10, int i11) {
        this.value = i11;
    }

    @NotNull
    public static a<Status> getEntries() {
        return $ENTRIES;
    }

    @o
    @NotNull
    public static final Status valueOf(int i10) {
        return Companion.valueOf(i10);
    }

    public static Status[] values() {
        return (Status[]) $VALUES.clone();
    }

    public final int getValue() {
        return this.value;
    }

    public static Status valueOf(String str) {
        return (Status) Enum.valueOf(Status.class, str);
    }
}
