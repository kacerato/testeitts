package java.lang.constant;

import jdk.internal.vm.annotation.Stable;

public interface DirectMethodHandleDesc extends MethodHandleDesc {
    Kind kind();

    int refKind();

    boolean isOwnerInterface();

    ClassDesc owner();

    String methodName();

    String lookupDescriptor();

    public enum Kind {
        STATIC(6),
        INTERFACE_STATIC(6, true),
        VIRTUAL(5),
        INTERFACE_VIRTUAL(9, true),
        SPECIAL(7),
        INTERFACE_SPECIAL(7, true),
        CONSTRUCTOR(8),
        GETTER(1),
        SETTER(3),
        STATIC_GETTER(2),
        STATIC_SETTER(4);

        public final int refKind;
        public final boolean isInterface;

        @Stable
        private static final Kind[] TABLE;

        static {
            int max = 0;
            for (Kind k10 : values()) {
                max = Math.max(max, tableIndex(k10.refKind, true));
            }
            TABLE = new Kind[max + 1];
            for (Kind kind : values()) {
                int i10 = tableIndex(kind.refKind, kind.isInterface);
                if (i10 >= TABLE.length || TABLE[i10] != null) {
                    throw new AssertionError((Object) ("TABLE entry for " + ((Object) kind)));
                }
                TABLE[i10] = kind;
            }
            int ii2 = tableIndex(9, false);
            if (TABLE[ii2] != null) {
                throw new AssertionError((Object) ("TABLE entry for (invokeInterface, false) used by " + ((Object) TABLE[ii2])));
            }
            TABLE[ii2] = INTERFACE_VIRTUAL;
            for (Kind kind2 : values()) {
                if (!kind2.isInterface) {
                    int i11 = tableIndex(kind2.refKind, true);
                    if (TABLE[i11] == null) {
                        TABLE[i11] = kind2;
                    }
                }
            }
        }

        Kind(int refKind) {
            this.refKind = refKind;
            this.isInterface = false;
        }

        Kind(int refKind, boolean isInterface) {
            this.refKind = refKind;
            this.isInterface = isInterface;
        }

        public static Kind valueOf(int refKind) {
            return valueOf(refKind, refKind == 9);
        }

        public static Kind valueOf(int refKind, boolean isInterface) {
            int i10 = tableIndex(refKind, isInterface);
            if (i10 >= 2 && i10 < TABLE.length) {
                return TABLE[i10];
            }
            throw new IllegalArgumentException(String.format("refKind=%d isInterface=%s", Integer.valueOf(refKind), Boolean.valueOf(isInterface)));
        }

        private static int tableIndex(int refKind, boolean isInterface) {
            if (refKind < 0) {
                return refKind;
            }
            return (refKind * 2) + (isInterface ? 1 : 0);
        }
    }
}
