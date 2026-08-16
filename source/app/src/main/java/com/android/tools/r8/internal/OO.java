package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.function.Consumer;
import java.util.function.Function;

public abstract class OO {

    public static final boolean f42871a = true;

    public C10249xO a() {
        return null;
    }

    public WO b() {
        return null;
    }

    public final KeepSpecProtos.MemberPattern.Builder c() {
        final KeepSpecProtos.MemberPattern.Builder newBuilder = KeepSpecProtos.MemberPattern.newBuilder();
        a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberPattern.Builder.this.setGeneralMember(((NO) ((OO) obj)).i());
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberPattern.Builder.this.setFieldMember(((C10249xO) obj).i());
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberPattern.Builder.this.setMethodMember(((WO) obj).i());
            }
        });
        return newBuilder;
    }

    public abstract IO d();

    public abstract AbstractC10198x40 e();

    public final boolean f() {
        return a() != null;
    }

    public final boolean g() {
        return (h() || f()) ? false : true;
    }

    public final boolean h() {
        return b() != null;
    }

    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3) {
        Function a10 = H4.a(consumer);
        Function a11 = H4.a(consumer2);
        Function a12 = H4.a(consumer3);
        if (g()) {
            a10.apply(this);
            return;
        }
        if (f()) {
            a11.apply(a());
        } else {
            if (!f42871a && !h()) {
                throw new AssertionError();
            }
            a12.apply(b());
        }
    }
}
