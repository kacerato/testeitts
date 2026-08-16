package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import org.apache.commons.math3.geometry.VectorFormat;

public final class C10249xO extends OO {

    public static final boolean f53748f = true;

    public final AbstractC10198x40 f53749b;

    public final C9748uO f53750c;

    public final C9915vO f53751d;

    public final AbstractC10583zO f53752e;

    public C10249xO(AbstractC10198x40 abstractC10198x40, C9748uO c9748uO, C9915vO c9915vO, AbstractC10583zO abstractC10583zO) {
        boolean z10 = f53748f;
        if (!z10 && c9748uO == null) {
            throw new AssertionError();
        }
        if (!z10 && c9915vO == null) {
            throw new AssertionError();
        }
        if (!z10 && abstractC10583zO == null) {
            throw new AssertionError();
        }
        this.f53749b = abstractC10198x40;
        this.f53750c = c9748uO;
        this.f53751d = c9915vO;
        this.f53752e = abstractC10583zO;
    }

    @Override
    public final C10249xO a() {
        return this;
    }

    @Override
    public final IO d() {
        return this.f53750c;
    }

    @Override
    public final AbstractC10198x40 e() {
        return this.f53749b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C10249xO)) {
            return false;
        }
        C10249xO c10249xO = (C10249xO) obj;
        return this.f53749b.equals(c10249xO.f53749b) && this.f53750c.equals(c10249xO.f53750c) && this.f53751d.equals(c10249xO.f53751d) && this.f53752e.equals(c10249xO.f53752e);
    }

    public final int hashCode() {
        return Objects.hash(this.f53749b, this.f53750c, this.f53751d, this.f53752e);
    }

    public final KeepSpecProtos.MemberPatternField.Builder i() {
        final KeepSpecProtos.MemberPatternField.Builder fieldType = KeepSpecProtos.MemberPatternField.newBuilder().setName(this.f53751d.f53088a.a()).setFieldType(((C10416yO) this.f53752e).f54006a.a());
        C9748uO c9748uO = this.f53750c;
        Objects.requireNonNull(fieldType);
        c9748uO.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberPatternField.Builder.this.setAccess((KeepSpecProtos.MemberAccessField.Builder) obj);
            }
        });
        AbstractC9416sP.a(this.f53749b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberPatternField.Builder.this.setAnnotatedBy((KeepSpecProtos.AnnotatedByPattern.Builder) obj);
            }
        });
        return fieldType;
    }

    public final String toString() {
        return "KeepFieldPattern{" + ((String) this.f53749b.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10249xO.a((C8415mP) obj);
            }
        })) + "access=" + ((Object) this.f53750c) + ", name=" + ((Object) this.f53751d) + ", type=" + ((Object) this.f53752e) + VectorFormat.DEFAULT_SUFFIX;
    }

    public static String a(C8415mP c8415mP) {
        return "@" + ((Object) c8415mP) + ", ";
    }
}
