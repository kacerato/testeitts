package com.google.protobuf;

@B
public final class C12678h0 {

    public static final AbstractC12669e0<?> f69154a = new C12675g0();

    public static final AbstractC12669e0<?> f69155b = c();

    public static AbstractC12669e0<?> a() {
        AbstractC12669e0<?> abstractC12669e0 = f69155b;
        if (abstractC12669e0 != null) {
            return abstractC12669e0;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    public static AbstractC12669e0<?> b() {
        return f69154a;
    }

    public static AbstractC12669e0<?> c() {
        try {
            return (AbstractC12669e0) Class.forName("com.google.protobuf.f0").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
