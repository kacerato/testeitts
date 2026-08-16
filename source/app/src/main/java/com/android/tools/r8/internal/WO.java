package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import org.apache.commons.math3.geometry.VectorFormat;

public final class WO extends OO {

    public static final boolean f45383g = true;

    public final AbstractC10198x40 f45384b;

    public final QO f45385c;

    public final RO f45386d;

    public final ZO f45387e;

    public final UO f45388f;

    public WO(AbstractC10198x40 abstractC10198x40, QO qo, RO ro, ZO zo, UO uo) {
        boolean z10 = f45383g;
        if (!z10 && qo == null) {
            throw new AssertionError();
        }
        if (!z10 && ro == null) {
            throw new AssertionError();
        }
        if (!z10 && zo == null) {
            throw new AssertionError();
        }
        if (!z10 && uo == null) {
            throw new AssertionError();
        }
        this.f45384b = abstractC10198x40;
        this.f45385c = qo;
        this.f45386d = ro;
        this.f45387e = zo;
        this.f45388f = uo;
    }

    public static WO a(KeepSpecProtos.MemberPatternMethod memberPatternMethod) {
        ZO zo;
        AbstractC10198x40 abstractC10198x40 = C9864v40.f53012b;
        QO qo = QO.f43567k;
        RO ro = RO.f43886b;
        ZO zo2 = XO.f45678b;
        UO uo = SO.f44199a;
        boolean z10 = VO.f45037f;
        if (!z10) {
            ro.getClass();
        }
        if (memberPatternMethod.hasName()) {
            ro = RO.a(C9917vP.a(memberPatternMethod.getName()));
        }
        RO ro2 = ro;
        if (!z10 && !zo2.b()) {
            throw new AssertionError();
        }
        if (memberPatternMethod.hasReturnType()) {
            KeepSpecProtos.MethodReturnTypePattern returnType = memberPatternMethod.getReturnType();
            if (returnType.hasVoidType()) {
                zo2 = YO.f45982a;
            } else if (returnType.hasSomeType()) {
                DP a10 = DP.a(returnType.getSomeType());
                a10.getClass();
                if (!(a10 instanceof C10585zP)) {
                    zo2 = new XO(a10);
                }
            }
        }
        if (memberPatternMethod.hasParameterTypes()) {
            KeepSpecProtos.MethodParameterTypesPattern parameterTypes = memberPatternMethod.getParameterTypes();
            int i10 = AbstractC7552hC.f48487c;
            Object[] objArr = new Object[4];
            Iterator<KeepSpecProtos.TypePattern> it = parameterTypes.getTypesList().iterator();
            int i11 = 0;
            while (it.hasNext()) {
                DP a11 = DP.a(it.next());
                a11.getClass();
                int i12 = i11 + 1;
                if (objArr.length < i12) {
                    objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
                }
                objArr[i11] = a11;
                i11 = i12;
            }
            AbstractC7552hC b10 = AbstractC7552hC.b(i11, objArr);
            if (b10.isEmpty()) {
                uo = TO.f44459b;
            } else {
                uo = new TO(b10);
            }
        }
        UO uo2 = uo;
        if (!VO.f45037f && !qo.a()) {
            throw new AssertionError();
        }
        if (memberPatternMethod.hasAccess()) {
            KeepSpecProtos.MemberAccessMethod access = memberPatternMethod.getAccess();
            QO qo2 = QO.f43567k;
            PO po = new PO();
            if (access.hasGeneralAccess()) {
                po.a(access.getGeneralAccess());
            }
            boolean z11 = PO.f43193l;
            if (!z11) {
                LX lx = po.f43194g;
                lx.getClass();
                if (!(lx instanceof IX)) {
                    throw new AssertionError();
                }
            }
            if (access.hasSynchronizedPattern()) {
                po.f43194g = access.getSynchronizedPattern().getValue() ? LX.f41974b : LX.f41975c;
            }
            if (!z11) {
                LX lx2 = po.f43195h;
                lx2.getClass();
                if (!(lx2 instanceof IX)) {
                    throw new AssertionError();
                }
            }
            if (access.hasBridgePattern()) {
                po.f43195h = access.getBridgePattern().getValue() ? LX.f41974b : LX.f41975c;
            }
            if (!z11) {
                LX lx3 = po.f43196i;
                lx3.getClass();
                if (!(lx3 instanceof IX)) {
                    throw new AssertionError();
                }
            }
            if (access.hasNativePattern()) {
                po.f43196i = access.getNativePattern().getValue() ? LX.f41974b : LX.f41975c;
            }
            if (!z11) {
                LX lx4 = po.f43197j;
                lx4.getClass();
                if (!(lx4 instanceof IX)) {
                    throw new AssertionError();
                }
            }
            if (access.hasAbstractPattern()) {
                po.f43197j = access.getAbstractPattern().getValue() ? LX.f41974b : LX.f41975c;
            }
            if (!z11) {
                LX lx5 = po.f43198k;
                lx5.getClass();
                if (!(lx5 instanceof IX)) {
                    throw new AssertionError();
                }
            }
            if (access.hasStrictFpPattern()) {
                po.f43198k = access.getStrictFpPattern().getValue() ? LX.f41974b : LX.f41975c;
            }
            qo = po.c();
        }
        QO qo3 = qo;
        if (memberPatternMethod.hasAnnotatedBy()) {
            KeepSpecProtos.AnnotatedByPattern annotatedBy = memberPatternMethod.getAnnotatedBy();
            if (!annotatedBy.hasName()) {
                abstractC10198x40 = AbstractC10198x40.a(C8415mP.a());
            } else {
                abstractC10198x40 = AbstractC10198x40.a(C8415mP.a(annotatedBy.getName()));
            }
        }
        AbstractC10198x40 abstractC10198x402 = abstractC10198x40;
        ro2.getClass();
        if (RO.f43887c != ro2 && RO.f43888d != ro2) {
            zo = zo2;
        } else {
            if (!zo2.b() && !(zo2 instanceof YO)) {
                throw new FN("Method constructor pattern must match 'void' type.");
            }
            zo = YO.f45982a;
        }
        return new WO(abstractC10198x402, qo3, ro2, zo, uo2);
    }

    @Override
    public final WO b() {
        return this;
    }

    @Override
    public final IO d() {
        return this.f45385c;
    }

    @Override
    public final AbstractC10198x40 e() {
        return this.f45384b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WO)) {
            return false;
        }
        WO wo = (WO) obj;
        return this.f45384b.equals(wo.f45384b) && this.f45385c.equals(wo.f45385c) && this.f45386d.equals(wo.f45386d) && this.f45387e.equals(wo.f45387e) && this.f45388f.equals(wo.f45388f);
    }

    public final int hashCode() {
        return Objects.hash(this.f45384b, this.f45385c, this.f45386d, this.f45387e, this.f45388f);
    }

    public final KeepSpecProtos.MemberPatternMethod.Builder i() {
        KeepSpecProtos.MemberPatternMethod.Builder name = KeepSpecProtos.MemberPatternMethod.newBuilder().setName(this.f45386d.f43890a.a());
        ZO zo = this.f45387e;
        zo.getClass();
        KeepSpecProtos.MethodReturnTypePattern.Builder newBuilder = KeepSpecProtos.MethodReturnTypePattern.newBuilder();
        if (!zo.b()) {
            newBuilder = zo instanceof YO ? newBuilder.setVoidType(KeepSpecProtos.TypeVoid.getDefaultInstance()) : newBuilder.setSomeType(zo.a().a());
        }
        final KeepSpecProtos.MemberPatternMethod.Builder returnType = name.setReturnType(newBuilder);
        UO uo = this.f45388f;
        uo.getClass();
        if (!(uo instanceof SO)) {
            returnType.setParameterTypes(this.f45388f.b());
        }
        QO qo = this.f45385c;
        Objects.requireNonNull(returnType);
        qo.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberPatternMethod.Builder.this.setAccess((KeepSpecProtos.MemberAccessMethod.Builder) obj);
            }
        });
        AbstractC9416sP.a(this.f45384b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                KeepSpecProtos.MemberPatternMethod.Builder.this.setAnnotatedBy((KeepSpecProtos.AnnotatedByPattern.Builder) obj);
            }
        });
        return returnType;
    }

    public final String toString() {
        return "KeepMethodPattern{" + ((String) this.f45384b.a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return WO.a((C8415mP) obj);
            }
        })) + "access=" + ((Object) this.f45385c) + ", name=" + ((Object) this.f45386d) + ", returnType=" + ((Object) this.f45387e) + ", parameters=" + ((Object) this.f45388f) + VectorFormat.DEFAULT_SUFFIX;
    }

    public static String a(C8415mP c8415mP) {
        return "@" + ((Object) c8415mP) + ", ";
    }
}
