package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.Set;
import java.util.function.Consumer;

public abstract class AbstractC9245rN {

    public static final boolean f52031a = true;

    public abstract KeepSpecProtos.ConstraintElement a();

    public abstract void a(C6415aP c6415aP);

    public abstract void a(AbstractC9579tN abstractC9579tN);

    public void a(Set set) {
    }

    public KeepSpecProtos.Constraint.Builder b() {
        return KeepSpecProtos.Constraint.newBuilder().setElement(a());
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    public int hashCode() {
        return System.identityHashCode(this);
    }

    public final String toString() {
        String typeName = getClass().getTypeName();
        return typeName.substring(typeName.lastIndexOf(36) + 1);
    }

    public static void a(KeepSpecProtos.Constraint constraint, Consumer consumer) {
        C6911dN c6911dN;
        Object obj;
        if (constraint.hasElement()) {
            KeepSpecProtos.ConstraintElement element = constraint.getElement();
            switch (element.getNumber()) {
                case 1:
                    obj = C8077kN.f49603b;
                    break;
                case 2:
                    obj = C8578nN.f50939b;
                    break;
                case 3:
                    obj = C8912pN.f51508b;
                    break;
                case 4:
                    obj = C9079qN.f51766b;
                    break;
                case 5:
                    obj = C8745oN.f51227b;
                    break;
                case 6:
                    obj = C7077eN.f47662b;
                    break;
                case 7:
                    obj = C7244fN.f47949b;
                    break;
                case 8:
                    obj = C8244lN.f49960b;
                    break;
                case 9:
                    obj = C8411mN.f50280b;
                    break;
                case 10:
                    obj = C7411gN.f48248b;
                    break;
                case 11:
                    obj = C7745iN.f48927b;
                    break;
                case 12:
                    obj = C7578hN.f48540b;
                    break;
                case 13:
                    obj = C7910jN.f49217b;
                    break;
                default:
                    if (!f52031a && element != KeepSpecProtos.ConstraintElement.CONSTRAINT_UNSPECIFIED) {
                        throw new AssertionError();
                    }
                    obj = null;
                    break;
            }
            if (obj != null) {
                consumer.accept(obj);
                return;
            }
            return;
        }
        if (constraint.hasAnnotation()) {
            KeepSpecProtos.AnnotationPattern annotation = constraint.getAnnotation();
            IM im2 = IM.f41061c;
            HM hm2 = new HM();
            boolean z10 = HM.f40738c;
            if (!z10 && !hm2.f40739a.c()) {
                throw new AssertionError();
            }
            if (annotation.hasName()) {
                hm2.f40739a = C8415mP.a(annotation.getName());
            }
            if (!z10 && hm2.f40740b == 3) {
                throw new AssertionError();
            }
            hm2.f40740b = 3;
            if (annotation.hasRetention()) {
                int number = annotation.getRetention().getNumber();
                if (number == 1) {
                    hm2.f40740b = 1;
                } else if (number != 2) {
                    if (!z10 && hm2.f40740b != 3) {
                        throw new AssertionError();
                    }
                } else {
                    hm2.f40740b = 2;
                }
            }
            IM a10 = hm2.a();
            a10.getClass();
            if (a10 == im2) {
                c6911dN = C6911dN.f47384c;
            } else if (a10 == IM.f41062d) {
                c6911dN = C6911dN.f47385d;
            } else if (a10 == IM.f41063e) {
                c6911dN = C6911dN.f47386e;
            } else {
                c6911dN = new C6911dN(a10);
            }
            consumer.accept(c6911dN);
        }
    }
}
