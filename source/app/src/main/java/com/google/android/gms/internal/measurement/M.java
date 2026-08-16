package com.google.android.gms.internal.measurement;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.util.Iterator;
import java.util.List;

public final class M extends AbstractC12219x {
    public M() {
        this.f62478a.add(N.ASSIGN);
        this.f62478a.add(N.CONST);
        this.f62478a.add(N.CREATE_ARRAY);
        this.f62478a.add(N.CREATE_OBJECT);
        this.f62478a.add(N.EXPRESSION_LIST);
        this.f62478a.add(N.GET);
        this.f62478a.add(N.GET_INDEX);
        this.f62478a.add(N.GET_PROPERTY);
        this.f62478a.add(N.NULL);
        this.f62478a.add(N.SET_PROPERTY);
        this.f62478a.add(N.TYPEOF);
        this.f62478a.add(N.UNDEFINED);
        this.f62478a.add(N.VAR);
    }

    @Override
    public final InterfaceC12157q a(String str, C12079h2 c12079h2, List list) {
        InterfaceC12157q a10;
        InterfaceC12157q a11;
        String str2;
        N n10 = N.ADD;
        int ordinal = I2.e(str).ordinal();
        int i10 = 0;
        if (ordinal != 3) {
            if (ordinal == 14) {
                I2.b(N.CONST.name(), 2, list);
                if (list.size() % 2 != 0) {
                    throw new IllegalArgumentException(String.format("CONST requires an even number of arguments, found %s", Integer.valueOf(list.size())));
                }
                while (i10 < list.size() - 1) {
                    InterfaceC12157q a12 = c12079h2.a((InterfaceC12157q) list.get(i10));
                    if (!(a12 instanceof C12192u)) {
                        throw new IllegalArgumentException(String.format("Expected string for const name. got %s", a12.getClass().getCanonicalName()));
                    }
                    c12079h2.g(a12.P1(), c12079h2.a((InterfaceC12157q) list.get(i10 + 1)));
                    i10 += 2;
                }
                return InterfaceC12157q.f62394o4;
            }
            if (ordinal == 24) {
                I2.b(N.EXPRESSION_LIST.name(), 1, list);
                InterfaceC12157q interfaceC12157q = InterfaceC12157q.f62394o4;
                while (i10 < list.size()) {
                    interfaceC12157q = c12079h2.a((InterfaceC12157q) list.get(i10));
                    if (interfaceC12157q instanceof C12076h) {
                        throw new IllegalStateException("ControlValue cannot be in an expression list");
                    }
                    i10++;
                }
                return interfaceC12157q;
            }
            if (ordinal == 33) {
                I2.a(N.GET.name(), 1, list);
                InterfaceC12157q a13 = c12079h2.a((InterfaceC12157q) list.get(0));
                if (a13 instanceof C12192u) {
                    return c12079h2.h(a13.P1());
                }
                throw new IllegalArgumentException(String.format("Expected string for get var. got %s", a13.getClass().getCanonicalName()));
            }
            if (ordinal == 49) {
                I2.a(N.NULL.name(), 0, list);
                return InterfaceC12157q.f62395p4;
            }
            if (ordinal == 58) {
                I2.a(N.SET_PROPERTY.name(), 3, list);
                InterfaceC12157q a14 = c12079h2.a((InterfaceC12157q) list.get(0));
                InterfaceC12157q a15 = c12079h2.a((InterfaceC12157q) list.get(1));
                a11 = c12079h2.a((InterfaceC12157q) list.get(2));
                if (a14 == InterfaceC12157q.f62394o4 || a14 == InterfaceC12157q.f62395p4) {
                    throw new IllegalStateException(String.format("Can't set property %s of %s", a15.P1(), a14.P1()));
                }
                if ((a14 instanceof C12058f) && (a15 instanceof C12094j)) {
                    ((C12058f) a14).n(a15.Q1().intValue(), a11);
                } else if (a14 instanceof InterfaceC12121m) {
                    ((InterfaceC12121m) a14).f(a15.P1(), a11);
                    return a11;
                }
            } else {
                if (ordinal == 17) {
                    if (list.isEmpty()) {
                        return new C12058f();
                    }
                    C12058f c12058f = new C12058f();
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        InterfaceC12157q a16 = c12079h2.a((InterfaceC12157q) it.next());
                        if (a16 instanceof C12076h) {
                            throw new IllegalStateException("Failed to evaluate array element");
                        }
                        c12058f.n(i10, a16);
                        i10++;
                    }
                    return c12058f;
                }
                if (ordinal == 18) {
                    if (list.isEmpty()) {
                        return new C12130n();
                    }
                    if (list.size() % 2 != 0) {
                        throw new IllegalArgumentException(String.format("CREATE_OBJECT requires an even number of arguments, found %s", Integer.valueOf(list.size())));
                    }
                    C12130n c12130n = new C12130n();
                    while (i10 < list.size() - 1) {
                        InterfaceC12157q a17 = c12079h2.a((InterfaceC12157q) list.get(i10));
                        InterfaceC12157q a18 = c12079h2.a((InterfaceC12157q) list.get(i10 + 1));
                        if ((a17 instanceof C12076h) || (a18 instanceof C12076h)) {
                            throw new IllegalStateException("Failed to evaluate map entry");
                        }
                        c12130n.f(a17.P1(), a18);
                        i10 += 2;
                    }
                    return c12130n;
                }
                if (ordinal == 35 || ordinal == 36) {
                    I2.a(N.GET_PROPERTY.name(), 2, list);
                    InterfaceC12157q a19 = c12079h2.a((InterfaceC12157q) list.get(0));
                    InterfaceC12157q a20 = c12079h2.a((InterfaceC12157q) list.get(1));
                    if ((a19 instanceof C12058f) && I2.d(a20)) {
                        return ((C12058f) a19).m(a20.Q1().intValue());
                    }
                    if (a19 instanceof InterfaceC12121m) {
                        return ((InterfaceC12121m) a19).c(a20.P1());
                    }
                    if (a19 instanceof C12192u) {
                        if ("length".equals(a20.P1())) {
                            a11 = new C12094j(Double.valueOf(a19.P1().length()));
                        } else if (I2.d(a20) && a20.Q1().doubleValue() < a19.P1().length()) {
                            a10 = new C12192u(String.valueOf(a19.P1().charAt(a20.Q1().intValue())));
                        }
                    }
                    return InterfaceC12157q.f62394o4;
                }
                switch (ordinal) {
                    case 62:
                        I2.a(N.TYPEOF.name(), 1, list);
                        InterfaceC12157q a21 = c12079h2.a((InterfaceC12157q) list.get(0));
                        if (a21 instanceof C12201v) {
                            str2 = "undefined";
                        } else if (a21 instanceof C12067g) {
                            str2 = TypedValues.Custom.S_BOOLEAN;
                        } else if (a21 instanceof C12094j) {
                            str2 = "number";
                        } else if (a21 instanceof C12192u) {
                            str2 = TypedValues.Custom.S_STRING;
                        } else if (a21 instanceof C12148p) {
                            str2 = "function";
                        } else {
                            if ((a21 instanceof r) || (a21 instanceof C12076h)) {
                                throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", a21));
                            }
                            str2 = "object";
                        }
                        a11 = new C12192u(str2);
                        break;
                    case 63:
                        I2.a(N.UNDEFINED.name(), 0, list);
                        return InterfaceC12157q.f62394o4;
                    case 64:
                        I2.b(N.VAR.name(), 1, list);
                        Iterator it2 = list.iterator();
                        while (it2.hasNext()) {
                            InterfaceC12157q a22 = c12079h2.a((InterfaceC12157q) it2.next());
                            if (!(a22 instanceof C12192u)) {
                                throw new IllegalArgumentException(String.format("Expected string for var name. got %s", a22.getClass().getCanonicalName()));
                            }
                            c12079h2.f(a22.P1(), InterfaceC12157q.f62394o4);
                        }
                        return InterfaceC12157q.f62394o4;
                    default:
                        return super.b(str);
                }
            }
            return a11;
        }
        I2.a(N.ASSIGN.name(), 2, list);
        InterfaceC12157q a23 = c12079h2.a((InterfaceC12157q) list.get(0));
        if (!(a23 instanceof C12192u)) {
            throw new IllegalArgumentException(String.format("Expected string for assign var. got %s", a23.getClass().getCanonicalName()));
        }
        if (!c12079h2.d(a23.P1())) {
            throw new IllegalArgumentException(String.format("Attempting to assign undefined value %s", a23.P1()));
        }
        a10 = c12079h2.a((InterfaceC12157q) list.get(1));
        c12079h2.e(a23.P1(), a10);
        return a10;
    }
}
