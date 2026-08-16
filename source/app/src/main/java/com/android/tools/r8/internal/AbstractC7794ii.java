package com.android.tools.r8.internal;

import java.util.function.Consumer;
import java.util.function.Function;

public abstract class AbstractC7794ii implements InterfaceC10210x80 {

    public final AbstractC10377y80 f49023a;

    public final Function f49024b;

    public AbstractC7794ii(AbstractC10377y80 abstractC10377y80, Function function) {
        this.f49023a = abstractC10377y80;
        this.f49024b = function;
    }

    public final void a(Consumer consumer, Object obj) {
        consumer.accept(this.f49024b.apply(obj));
    }

    @Override
    public final Object getValue() {
        return this.f49024b.apply(this.f49023a.getValue());
    }

    public final Consumer a(final Consumer consumer) {
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC7794ii.this.a(consumer, obj);
            }
        };
    }

    @Override
    public final void a(String str, Object obj) {
        this.f49023a.a(str, obj);
    }

    @Override
    public final boolean a() {
        return this.f49023a.a();
    }

    @Override
    public final boolean a(String str, Consumer consumer, Object obj) {
        return this.f49023a.a(str, a(consumer), obj);
    }

    @Override
    public final boolean a(String str, String str2, String str3, Consumer consumer) {
        return this.f49023a.a(str, str2, str3, a(consumer));
    }

    @Override
    public final Q2 a(Consumer consumer, String str) {
        return this.f49023a.a(a(consumer), str);
    }

    @Override
    public final Q2 a(String str, Consumer consumer, String str2) {
        return this.f49023a.a(str, a(consumer), str2);
    }
}
