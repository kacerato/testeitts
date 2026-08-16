package com.android.tools.r8.internal;

public abstract class AbstractC10076wL {

    public static final XY[] f53476a;

    public static final Y6 f53477b;

    public static final Y6 f53478c;

    public static final Y6 f53479d;

    static {
        XY xy = new XY(AbstractC10076wL.class, "isMovedFromInterfaceCompanion", "isMovedFromInterfaceCompanion(Lkotlin/metadata/KmProperty;)Z", 1);
        AbstractC9618te0.f52649a.getClass();
        f53476a = new XY[]{xy, new XY(AbstractC10076wL.class, "hasMethodBodiesInInterface", "getHasMethodBodiesInInterface(Lkotlin/metadata/KmClass;)Z", 1), new XY(AbstractC10076wL.class, "isCompiledInCompatibilityMode", "isCompiledInCompatibilityMode(Lkotlin/metadata/KmClass;)Z", 1)};
        f53477b = new Y6(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                int intValue = num.intValue();
                XY[] xyArr = AbstractC10076wL.f53476a;
                AL.a((C9919vQ) obj).f45664a = intValue;
            }

            @Override
            public final Object b(Object obj) {
                XY[] xyArr = AbstractC10076wL.f53476a;
                return Integer.valueOf(AL.a((C9919vQ) obj).f45664a);
            }
        }, new C9841ux(0, 1));
        f53478c = new Y6(new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                int intValue = num.intValue();
                XY[] xyArr = AbstractC10076wL.f53476a;
                AL.a((C6417aQ) obj).f53740d = intValue;
            }

            @Override
            public final Object b(Object obj) {
                XY[] xyArr = AbstractC10076wL.f53476a;
                return Integer.valueOf(AL.a((C6417aQ) obj).f53740d);
            }
        }, new C9841ux(0, 1));
        C9742uL c9742uL = new XY() {
            @Override
            public final void a(Integer num, Object obj) {
                int intValue = num.intValue();
                XY[] xyArr = AbstractC10076wL.f53476a;
                AL.a((C6417aQ) obj).f53740d = intValue;
            }

            @Override
            public final Object b(Object obj) {
                XY[] xyArr = AbstractC10076wL.f53476a;
                return Integer.valueOf(AL.a((C6417aQ) obj).f53740d);
            }
        };
        C10008vx c10008vx = DL.f39502a;
        GJ.b(c10008vx, "<get-IS_COMPILED_IN_COMPATIBILITY_MODE>(...)");
        f53479d = new Y6(c9742uL, new C9841ux(c10008vx.f53898a, c10008vx.f53899b));
    }
}
