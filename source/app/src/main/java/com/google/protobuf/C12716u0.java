package com.google.protobuf;

public class C12716u0 implements InterfaceC12655a1 {

    public static final C12716u0 f69569a = new C12716u0();

    public static C12716u0 c() {
        return f69569a;
    }

    @Override
    public Z0 a(Class<?> messageType) {
        if (!AbstractC12719v0.class.isAssignableFrom(messageType)) {
            throw new IllegalArgumentException("Unsupported message type: " + messageType.getName());
        }
        try {
            return (Z0) AbstractC12719v0.y6(messageType.asSubclass(AbstractC12719v0.class)).D2();
        } catch (Exception e10) {
            throw new RuntimeException("Unable to get message info for " + messageType.getName(), e10);
        }
    }

    @Override
    public boolean b(Class<?> messageType) {
        return AbstractC12719v0.class.isAssignableFrom(messageType);
    }
}
