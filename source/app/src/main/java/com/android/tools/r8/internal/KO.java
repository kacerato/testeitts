package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.function.Function;

public final class KO {

    public static final boolean f41661c = true;

    public UM f41662a = null;

    public OO f41663b = NO.f42575d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.android.tools.r8.internal.zO] */
    public final KO a(KeepSpecProtos.MemberItemPattern memberItemPattern, Function function) {
        OO a10;
        if (!memberItemPattern.hasClassReference()) {
            throw new FN("Invalid MemberItemPattern, must have a valid class reference");
        }
        String name = memberItemPattern.getClassReference().getName();
        PM pm2 = (PM) function.apply(name);
        if (pm2 == null) {
            throw new FN("Invalid MemberItemPattern, reference to unbound binding: '" + name + "'");
        }
        this.f41662a = new UM(pm2);
        if (!f41661c) {
            OO oo = this.f41663b;
            oo.getClass();
            if (oo != NO.f42575d) {
                throw new AssertionError();
            }
        }
        if (memberItemPattern.hasMemberPattern()) {
            KeepSpecProtos.MemberPattern memberPattern = memberItemPattern.getMemberPattern();
            if (memberPattern.hasGeneralMember()) {
                KeepSpecProtos.MemberPatternGeneral generalMember = memberPattern.getGeneralMember();
                a10 = NO.f42575d;
                AbstractC10198x40 abstractC10198x40 = C9864v40.f53012b;
                IO io2 = IO.f41072e;
                boolean z10 = MO.f42288a;
                if (generalMember.hasAnnotatedBy()) {
                    KeepSpecProtos.AnnotatedByPattern annotatedBy = generalMember.getAnnotatedBy();
                    abstractC10198x40 = !annotatedBy.hasName() ? AbstractC10198x40.a(C8415mP.a()) : AbstractC10198x40.a(C8415mP.a(annotatedBy.getName()));
                }
                if (!z10 && !io2.a()) {
                    throw new AssertionError();
                }
                if (generalMember.hasAccess()) {
                    io2 = ((GO) new GO().a(generalMember.getAccess())).c();
                }
                if (!abstractC10198x40.b() || !io2.a()) {
                    a10 = new NO(abstractC10198x40, io2);
                }
            } else if (memberPattern.hasFieldMember()) {
                KeepSpecProtos.MemberPatternField fieldMember = memberPattern.getFieldMember();
                AbstractC10198x40 abstractC10198x402 = C9864v40.f53012b;
                C9748uO c9748uO = C9748uO.f52842h;
                C9915vO c9915vO = C9915vO.f53087b;
                C10416yO c10416yO = C10416yO.f54005b;
                boolean z11 = C10082wO.f53489e;
                if (fieldMember.hasName()) {
                    C9917vP a11 = C9917vP.a(fieldMember.getName());
                    if (!a11.b()) {
                        c9915vO = new C9915vO(a11);
                    }
                }
                if (!z11) {
                    c10416yO.getClass();
                    if (!(c10416yO.f54006a instanceof C10585zP)) {
                        throw new AssertionError();
                    }
                }
                C10416yO c10416yO2 = c10416yO;
                if (fieldMember.hasFieldType()) {
                    c10416yO2 = AbstractC10583zO.a(DP.a(fieldMember.getFieldType()));
                }
                if (!z11 && !c9748uO.a()) {
                    throw new AssertionError();
                }
                if (fieldMember.hasAccess()) {
                    KeepSpecProtos.MemberAccessField access = fieldMember.getAccess();
                    C9581tO c9581tO = new C9581tO();
                    if (access.hasGeneralAccess()) {
                        c9581tO.a(access.getGeneralAccess());
                    }
                    boolean z12 = C9581tO.f52591i;
                    if (!z12) {
                        LX lx = c9581tO.f52592g;
                        lx.getClass();
                        if (!(lx instanceof IX)) {
                            throw new AssertionError();
                        }
                    }
                    if (access.hasVolatilePattern()) {
                        c9581tO.f52592g = access.getVolatilePattern().getValue() ? LX.f41974b : LX.f41975c;
                    }
                    if (!z12) {
                        LX lx2 = c9581tO.f52593h;
                        lx2.getClass();
                        if (!(lx2 instanceof IX)) {
                            throw new AssertionError();
                        }
                    }
                    if (access.hasTransientPattern()) {
                        c9581tO.f52593h = access.getTransientPattern().getValue() ? LX.f41974b : LX.f41975c;
                    }
                    c9748uO = c9581tO.c();
                }
                if (fieldMember.hasAnnotatedBy()) {
                    KeepSpecProtos.AnnotatedByPattern annotatedBy2 = fieldMember.getAnnotatedBy();
                    abstractC10198x402 = !annotatedBy2.hasName() ? AbstractC10198x40.a(C8415mP.a()) : AbstractC10198x40.a(C8415mP.a(annotatedBy2.getName()));
                }
                a10 = new C10249xO(abstractC10198x402, c9748uO, c9915vO, c10416yO2);
            } else {
                a10 = memberPattern.hasMethodMember() ? WO.a(memberPattern.getMethodMember()) : NO.f42575d;
            }
            this.f41663b = a10;
        }
        return this;
    }
}
