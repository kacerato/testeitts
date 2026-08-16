package com.android.tools.r8.retrace;

@FunctionalInterface
public interface RegisterMappingPartitionCallback {
    public static final RegisterMappingPartitionCallback EMPTY_INSTANCE = new RegisterMappingPartitionCallback() {
        @Override
        public final void register(String str) {
            RegisterMappingPartitionCallback.a(str);
        }
    };

    static void a(String str) {
    }

    static RegisterMappingPartitionCallback empty() {
        return EMPTY_INSTANCE;
    }

    void register(String str);
}
