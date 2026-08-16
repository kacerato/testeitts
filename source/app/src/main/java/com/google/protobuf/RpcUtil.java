package com.google.protobuf;

public final class RpcUtil {

    public static final class AlreadyCalledException extends RuntimeException {
        private static final long serialVersionUID = 5469741279507848266L;

        public AlreadyCalledException() {
            super("This RpcCallback was already called and cannot be called multiple times.");
        }
    }

    public class a implements I1<Y0> {

        public final Class f68886a;

        public final Y0 f68887b;

        public final I1 f68888c;

        public a(final Class val$originalClass, final Y0 val$defaultInstance, final I1 val$originalCallback) {
            this.f68886a = val$originalClass;
            this.f68887b = val$defaultInstance;
            this.f68888c = val$originalCallback;
        }

        @Override
        public void a(final Y0 parameter) {
            Y0 b10;
            try {
                b10 = (Y0) this.f68886a.cast(parameter);
            } catch (ClassCastException unused) {
                b10 = RpcUtil.b(this.f68887b, parameter);
            }
            this.f68888c.a(b10);
        }
    }

    public class b<ParameterType> implements I1<ParameterType> {

        public boolean f68889a = false;

        public final I1 f68890b;

        public b(final I1 val$originalCallback) {
            this.f68890b = val$originalCallback;
        }

        @Override
        public void a(final ParameterType parameter) {
            synchronized (this) {
                if (this.f68889a) {
                    throw new AlreadyCalledException();
                }
                this.f68889a = true;
            }
            this.f68890b.a(parameter);
        }
    }

    public static <Type extends Y0> Type b(Type type, Y0 y02) {
        return (Type) type.newBuilderForType().mergeFrom(y02).build();
    }

    public static <Type extends Y0> I1<Y0> c(final I1<Type> originalCallback, final Class<Type> originalClass, final Type defaultInstance) {
        return new a(originalClass, defaultInstance, originalCallback);
    }

    public static <ParameterType> I1<ParameterType> d(final I1<ParameterType> originalCallback) {
        return new b(originalCallback);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <Type extends Y0> I1<Type> e(final I1<Y0> originalCallback) {
        return originalCallback;
    }
}
