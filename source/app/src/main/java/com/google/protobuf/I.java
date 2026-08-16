package com.google.protobuf;

public final class I {

    public class a<T> extends AbstractC12661c<T> {

        public final InterfaceC12723w1 f68761a;

        public a(final InterfaceC12723w1 val$parser) {
            this.f68761a = val$parser;
        }

        /* JADX WARN: Incorrect return type in method signature: (Lcom/google/protobuf/C;Lcom/google/protobuf/d0;)TT; */
        @Override
        public Y0 parsePartialFrom(C input, C12666d0 extensionRegistry) throws InvalidProtocolBufferException {
            try {
                input.e();
                return (Y0) this.f68761a.parsePartialFrom(input, extensionRegistry);
            } finally {
                input.m0();
            }
        }
    }

    public static final <T extends Y0> InterfaceC12723w1<T> a(final InterfaceC12723w1<T> parser) {
        return new a(parser);
    }
}
