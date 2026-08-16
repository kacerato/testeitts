package com.android.tools.r8.internal;

import java.util.HashMap;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public abstract class AbstractC10377y80 implements InterfaceC10210x80 {

    public static final boolean f53950f = true;

    public final I50 f53951a;

    public final HashMap f53952b = new HashMap();

    public String f53953c = null;

    public Object f53954d = null;

    public BiConsumer f53955e = null;

    public AbstractC10377y80(I50 i50) {
        this.f53951a = i50;
    }

    public Q2 a(Object obj, String str, String str2, Consumer consumer) {
        return null;
    }

    public boolean b(Object obj, String str, String str2, Consumer consumer) {
        return false;
    }

    public Q2 c(String str, Consumer consumer, Object obj) {
        return null;
    }

    @Override
    public Object getValue() {
        if (!f53950f) {
            if ((this.f53953c != null) != (this.f53954d != null)) {
                throw new AssertionError();
            }
        }
        return this.f53954d;
    }

    public boolean a(Object obj, String str, Object obj2, Consumer consumer) {
        return false;
    }

    public final Consumer b(final Consumer consumer, final String str) {
        return new Consumer() {
            @Override
            public final void accept(Object obj) {
                AbstractC10377y80.this.b(str, consumer, obj);
            }
        };
    }

    public final void a(String str) {
        I50 i50 = this.f53951a;
        String str2 = "Multiple properties: '" + this.f53953c + "' and '" + str + "'";
        i50.getClass();
        throw new FM(i50, str2);
    }

    public final void b(String str, Consumer consumer, Object obj) {
        boolean z10 = f53950f;
        if (!z10 && obj == null) {
            throw new AssertionError();
        }
        BiConsumer biConsumer = this.f53955e;
        if (biConsumer != null) {
            biConsumer.accept(obj, this.f53951a.b(str));
        }
        if (this.f53953c != null) {
            if (!z10 && this.f53954d == null) {
                throw new AssertionError();
            }
            a(str);
            throw null;
        }
        this.f53953c = str;
        this.f53954d = obj;
        consumer.accept(obj);
    }

    @Override
    public final boolean a() {
        if (!f53950f) {
            if ((this.f53953c != null) != (this.f53954d != null)) {
                throw new AssertionError();
            }
        }
        return this.f53953c != null;
    }

    public final Object a(Object obj) {
        if (!f53950f) {
            if ((this.f53953c != null) != (this.f53954d != null)) {
                throw new AssertionError();
            }
        }
        return a() ? this.f53954d : obj;
    }

    @Override
    public final void a(String str, Object obj) {
        if (this.f53952b.put(str, obj) == null) {
            return;
        }
        throw new IllegalArgumentException("Unexpected attempt to redefine property " + str);
    }

    @Override
    public final boolean a(String str, Consumer consumer, Object obj) {
        Object obj2 = this.f53952b.get(str);
        if (obj2 == null) {
            return false;
        }
        try {
            return a(obj2, str, obj, b(consumer, str));
        } catch (RuntimeException e10) {
            I50 i50 = this.f53951a;
            i50.getClass();
            if (e10 instanceof FM) {
                throw e10;
            }
            throw new FM(i50, e10);
        }
    }

    @Override
    public final boolean a(String str, String str2, String str3, Consumer consumer) {
        Object obj = this.f53952b.get(str);
        if (obj == null) {
            return false;
        }
        try {
            return b(obj, str2, str3, b(consumer, str));
        } catch (RuntimeException e10) {
            I50 i50 = this.f53951a;
            i50.getClass();
            if (e10 instanceof FM) {
                throw e10;
            }
            throw new FM(i50, e10);
        }
    }

    @Override
    public final Q2 a(Consumer consumer, String str) {
        Object obj = this.f53952b.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return c(str, b(consumer, str), obj);
        } catch (RuntimeException e10) {
            I50 i50 = this.f53951a;
            i50.getClass();
            if (e10 instanceof FM) {
                throw e10;
            }
            throw new FM(i50, e10);
        }
    }

    @Override
    public final Q2 a(String str, Consumer consumer, String str2) {
        Object obj = this.f53952b.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return a(obj, str, str2, b(consumer, str));
        } catch (RuntimeException e10) {
            I50 i50 = this.f53951a;
            i50.getClass();
            if (e10 instanceof FM) {
                throw e10;
            }
            throw new FM(i50, e10);
        }
    }
}
