package com.google.protobuf;

@B
public final class P0 implements M1 {

    public static final InterfaceC12655a1 f68828b = new a();

    public final InterfaceC12655a1 f68829a;

    public class a implements InterfaceC12655a1 {
        @Override
        public Z0 a(Class<?> clazz) {
            throw new IllegalStateException("This should never be called.");
        }

        @Override
        public boolean b(Class<?> clazz) {
            return false;
        }
    }

    public static class b implements InterfaceC12655a1 {

        public InterfaceC12655a1[] f68830a;

        public b(InterfaceC12655a1... factories) {
            this.f68830a = factories;
        }

        @Override
        public Z0 a(Class<?> clazz) {
            for (InterfaceC12655a1 interfaceC12655a1 : this.f68830a) {
                if (interfaceC12655a1.b(clazz)) {
                    return interfaceC12655a1.a(clazz);
                }
            }
            throw new UnsupportedOperationException("No factory is available for message type: " + clazz.getName());
        }

        @Override
        public boolean b(Class<?> clazz) {
            for (InterfaceC12655a1 interfaceC12655a1 : this.f68830a) {
                if (interfaceC12655a1.b(clazz)) {
                    return true;
                }
            }
            return false;
        }
    }

    public P0() {
        this(b());
    }

    public static InterfaceC12655a1 b() {
        return new b(C12716u0.c(), c());
    }

    public static InterfaceC12655a1 c() {
        try {
            return (InterfaceC12655a1) Class.forName("com.google.protobuf.G").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            return f68828b;
        }
    }

    public static boolean d(Z0 messageInfo) {
        return messageInfo.m() == EnumC12729y1.PROTO2;
    }

    public static <T> L1<T> e(Class<T> messageType, Z0 messageInfo) {
        return AbstractC12719v0.class.isAssignableFrom(messageType) ? d(messageInfo) ? C12676g1.O(messageType, messageInfo, C12706q1.b(), L0.b(), N1.S(), C12678h0.b(), X0.b()) : C12676g1.O(messageType, messageInfo, C12706q1.b(), L0.b(), N1.S(), null, X0.b()) : d(messageInfo) ? C12676g1.O(messageType, messageInfo, C12706q1.a(), L0.a(), N1.K(), C12678h0.a(), X0.a()) : C12676g1.O(messageType, messageInfo, C12706q1.a(), L0.a(), N1.L(), null, X0.a());
    }

    @Override
    public <T> L1<T> a(Class<T> messageType) {
        N1.M(messageType);
        Z0 a10 = this.f68829a.a(messageType);
        return a10.a() ? AbstractC12719v0.class.isAssignableFrom(messageType) ? C12679h1.e(N1.S(), C12678h0.b(), a10.b()) : C12679h1.e(N1.K(), C12678h0.a(), a10.b()) : e(messageType, a10);
    }

    public P0(InterfaceC12655a1 messageInfoFactory) {
        this.f68829a = (InterfaceC12655a1) D0.e(messageInfoFactory, "messageInfoFactory");
    }
}
