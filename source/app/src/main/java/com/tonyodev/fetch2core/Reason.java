package com.tonyodev.fetch2core;

import Lf.o;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

public enum Reason {
    NOT_SPECIFIED(0),
    DOWNLOAD_ADDED(1),
    DOWNLOAD_QUEUED(2),
    DOWNLOAD_STARTED(3),
    DOWNLOAD_WAITING_ON_NETWORK(4),
    DOWNLOAD_PROGRESS_CHANGED(5),
    DOWNLOAD_COMPLETED(6),
    DOWNLOAD_ERROR(7),
    DOWNLOAD_PAUSED(8),
    DOWNLOAD_RESUMED(9),
    DOWNLOAD_CANCELLED(10),
    DOWNLOAD_REMOVED(11),
    DOWNLOAD_DELETED(12),
    DOWNLOAD_BLOCK_UPDATED(13),
    OBSERVER_ATTACHED(14),
    REPORTING(15);

    public static final Companion Companion = new Companion(null);
    private final int value;

    public static final class Companion {
        private Companion() {
        }

        @o
        @NotNull
        public final Reason valueOf(int i10) {
            switch (i10) {
                case 1:
                    return Reason.DOWNLOAD_ADDED;
                case 2:
                    return Reason.DOWNLOAD_QUEUED;
                case 3:
                    return Reason.DOWNLOAD_STARTED;
                case 4:
                    return Reason.DOWNLOAD_WAITING_ON_NETWORK;
                case 5:
                    return Reason.DOWNLOAD_PROGRESS_CHANGED;
                case 6:
                    return Reason.DOWNLOAD_COMPLETED;
                case 7:
                    return Reason.DOWNLOAD_ERROR;
                case 8:
                    return Reason.DOWNLOAD_PAUSED;
                case 9:
                    return Reason.DOWNLOAD_RESUMED;
                case 10:
                    return Reason.DOWNLOAD_CANCELLED;
                case 11:
                    return Reason.DOWNLOAD_REMOVED;
                case 12:
                    return Reason.DOWNLOAD_DELETED;
                case 13:
                    return Reason.DOWNLOAD_BLOCK_UPDATED;
                case 14:
                    return Reason.OBSERVER_ATTACHED;
                case 15:
                    return Reason.REPORTING;
                default:
                    return Reason.NOT_SPECIFIED;
            }
        }

        public Companion(C14026x c14026x) {
            this();
        }
    }

    Reason(int i10) {
        this.value = i10;
    }

    @o
    @NotNull
    public static final Reason valueOf(int i10) {
        return Companion.valueOf(i10);
    }

    public final int getValue() {
        return this.value;
    }
}
