package com.android.tools.r8.retrace;

@FunctionalInterface
public interface PrepareMappingPartitionsCallback {
    public static final PrepareMappingPartitionsCallback EMPTY_INSTANCE = new PrepareMappingPartitionsCallback() {
        @Override
        public final void prepare() {
            PrepareMappingPartitionsCallback.b();
        }
    };

    static void b() {
    }

    static PrepareMappingPartitionsCallback empty() {
        return EMPTY_INSTANCE;
    }

    void prepare();
}
