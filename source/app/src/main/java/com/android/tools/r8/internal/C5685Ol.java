package com.android.tools.r8.internal;

import java.util.Arrays;
import java.util.Collections;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.luaj.vm2.LuaDouble;

public final class C5685Ol extends AbstractC5801Ql implements Comparable, InterfaceC5360Iw {

    public static final EnumC6000Tx0[] f43015n = (EnumC6000Tx0[]) EnumC6000Tx0.f44628f.clone();

    public final int f43016b;

    public final C5104Ek f43017c;

    public final String f43018d;

    public final C5743Pl f43019e;

    public final C4990Cl f43020f;

    public final boolean f43021g;

    public EnumC5627Nl f43022h;

    public C4990Cl f43023i;

    public C4990Cl f43024j;

    public final C5917Sl f43025k;

    public C5280Hl f43026l;

    public Object f43027m;

    static {
        if (EnumC5627Nl.f42688h.length != ((EnumC5046Dk[]) EnumC5046Dk.f39624u.clone()).length) {
            throw new RuntimeException("descriptor.proto has a new declared type but Descriptors.java wasn't updated.");
        }
    }

    public C5685Ol(C5104Ek c5104Ek, C5743Pl c5743Pl, C4990Cl c4990Cl, int i10, boolean z10) {
        this.f43016b = i10;
        this.f43017c = c5104Ek;
        this.f43018d = AbstractC6033Ul.a(c5743Pl, c4990Cl, c5104Ek.getName());
        this.f43019e = c5743Pl;
        if (c5104Ek.h()) {
            this.f43022h = EnumC5627Nl.f42688h[(EnumC5046Dk.a(c5104Ek.f39997f) == null ? EnumC5046Dk.TYPE_DOUBLE : r5).f39625b - 1];
        }
        this.f43021g = c5104Ek.f40004m;
        if (c5104Ek.f39995d <= 0) {
            throw new C5164Fl(this, "Field numbers must be positive integers.");
        }
        if (z10) {
            if (!c5104Ek.e()) {
                throw new C5164Fl(this, "FieldDescriptorProto.extendee not set for extension field.");
            }
            this.f43023i = null;
            if (c4990Cl != null) {
                this.f43020f = c4990Cl;
            } else {
                this.f43020f = null;
            }
            if (c5104Ek.f()) {
                throw new C5164Fl(this, "FieldDescriptorProto.oneof_index set for extension field.");
            }
            this.f43025k = null;
        } else {
            if (c5104Ek.e()) {
                throw new C5164Fl(this, "FieldDescriptorProto.extendee set for non-extension field.");
            }
            this.f43023i = c4990Cl;
            if (c5104Ek.f()) {
                int i11 = c5104Ek.f40001j;
                if (i11 < 0 || i11 >= c4990Cl.f39339b.f48698i.size()) {
                    throw new C5164Fl(this, "FieldDescriptorProto.oneof_index is out of range for type " + c4990Cl.f39339b.getName());
                }
                C5917Sl c5917Sl = (C5917Sl) Collections.unmodifiableList(Arrays.asList(c4990Cl.f39347j)).get(c5104Ek.f40001j);
                this.f43025k = c5917Sl;
                c5917Sl.f44307g++;
            } else {
                this.f43025k = null;
            }
            this.f43020f = null;
        }
        c5743Pl.f43363h.a(this);
    }

    @Override
    public final C5743Pl a() {
        return this.f43019e;
    }

    @Override
    public final String b() {
        return this.f43018d;
    }

    @Override
    public final String c() {
        return this.f43017c.getName();
    }

    @Override
    public final int compareTo(Object obj) {
        C5685Ol c5685Ol = (C5685Ol) obj;
        if (c5685Ol.f43023i == this.f43023i) {
            return this.f43017c.f39995d - c5685Ol.f43017c.f39995d;
        }
        throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
    }

    @Override
    public final InterfaceC7262fW d() {
        return this.f43017c;
    }

    public final Object e() {
        if (this.f43022h.f42689b != EnumC5569Ml.f42387k) {
            return this.f43027m;
        }
        throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
    }

    public final C5280Hl f() {
        if (this.f43022h.f42689b == EnumC5569Ml.f42386j) {
            return this.f43026l;
        }
        throw new UnsupportedOperationException("This field is not of enum type. (" + this.f43018d + ")");
    }

    public final EnumC6115Vx0 g() {
        return f43015n[this.f43022h.ordinal()].f44629b;
    }

    public final C4990Cl h() {
        if (this.f43022h.f42689b == EnumC5569Ml.f42387k) {
            return this.f43024j;
        }
        throw new UnsupportedOperationException("This field is not of message type. (" + this.f43018d + ")");
    }

    public final boolean i() {
        return this.f43022h == EnumC5627Nl.f42685e && k() && h().f().f44569g;
    }

    public final boolean j() {
        if (!k() || !f43015n[this.f43022h.ordinal()].a()) {
            return false;
        }
        if (this.f43019e.e() == 2) {
            C5394Jk c5394Jk = this.f43017c.f40003l;
            if (c5394Jk == null) {
                c5394Jk = C5394Jk.f41478l;
            }
            return c5394Jk.f41482e;
        }
        C5394Jk c5394Jk2 = this.f43017c.f40003l;
        if (c5394Jk2 == null) {
            c5394Jk2 = C5394Jk.f41478l;
        }
        if (!c5394Jk2.a()) {
            return true;
        }
        C5394Jk c5394Jk3 = this.f43017c.f40003l;
        if (c5394Jk3 == null) {
            c5394Jk3 = C5394Jk.f41478l;
        }
        return c5394Jk3.f41482e;
    }

    public final boolean k() {
        EnumC4988Ck a10 = EnumC4988Ck.a(this.f43017c.f39996e);
        if (a10 == null) {
            a10 = EnumC4988Ck.f39333c;
        }
        return a10 == EnumC4988Ck.f39335e;
    }

    public final boolean l() {
        if (this.f43022h != EnumC5627Nl.f42683c) {
            return false;
        }
        if (this.f43023i.f().f44569g || this.f43019e.e() == 3) {
            return true;
        }
        C5799Qk c5799Qk = this.f43019e.f43357b.f42372l;
        if (c5799Qk == null) {
            c5799Qk = C5799Qk.f43701z;
        }
        return c5799Qk.f43707h;
    }

    public final String toString() {
        return this.f43018d;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:55:0x0190. Please report as an issue. */
    public static void a(C5685Ol c5685Ol) {
        if (c5685Ol.f43017c.e()) {
            AbstractC5801Ql a10 = c5685Ol.f43019e.f43363h.a(c5685Ol, c5685Ol.f43017c.b());
            if (a10 instanceof C4990Cl) {
                C4990Cl c4990Cl = (C4990Cl) a10;
                c5685Ol.f43023i = c4990Cl;
                int i10 = c5685Ol.f43017c.f39995d;
                int binarySearch = Arrays.binarySearch(c4990Cl.f39348k, i10);
                if (binarySearch < 0) {
                    binarySearch = (~binarySearch) - 1;
                }
                if (binarySearch < 0 || i10 >= c4990Cl.f39349l[binarySearch]) {
                    throw new C5164Fl(c5685Ol, JavadocConstants.ANCHOR_PREFIX_END + c5685Ol.f43023i.f39340c + "\" does not declare " + c5685Ol.f43017c.f39995d + " as an extension number.");
                }
            } else {
                throw new C5164Fl(c5685Ol, JavadocConstants.ANCHOR_PREFIX_END + c5685Ol.f43017c.b() + "\" is not a message type.");
            }
        }
        if (c5685Ol.f43017c.i()) {
            AbstractC5801Ql a11 = c5685Ol.f43019e.f43363h.a(c5685Ol, c5685Ol.f43017c.c());
            if (!c5685Ol.f43017c.h()) {
                if (a11 instanceof C4990Cl) {
                    c5685Ol.f43022h = EnumC5627Nl.f42685e;
                } else if (a11 instanceof C5280Hl) {
                    c5685Ol.f43022h = EnumC5627Nl.f42687g;
                } else {
                    throw new C5164Fl(c5685Ol, JavadocConstants.ANCHOR_PREFIX_END + c5685Ol.f43017c.c() + "\" is not a type.");
                }
            }
            EnumC5569Ml enumC5569Ml = c5685Ol.f43022h.f42689b;
            if (enumC5569Ml == EnumC5569Ml.f42387k) {
                if (a11 instanceof C4990Cl) {
                    c5685Ol.f43024j = (C4990Cl) a11;
                    if (c5685Ol.f43017c.d()) {
                        throw new C5164Fl(c5685Ol, "Messages can't have default values.");
                    }
                } else {
                    throw new C5164Fl(c5685Ol, JavadocConstants.ANCHOR_PREFIX_END + c5685Ol.f43017c.c() + "\" is not a message type.");
                }
            } else if (enumC5569Ml == EnumC5569Ml.f42386j) {
                if (a11 instanceof C5280Hl) {
                    c5685Ol.f43026l = (C5280Hl) a11;
                } else {
                    throw new C5164Fl(c5685Ol, JavadocConstants.ANCHOR_PREFIX_END + c5685Ol.f43017c.c() + "\" is not an enum type.");
                }
            } else {
                throw new C5164Fl(c5685Ol, "Field with primitive type has type_name.");
            }
        } else {
            EnumC5569Ml enumC5569Ml2 = c5685Ol.f43022h.f42689b;
            if (enumC5569Ml2 == EnumC5569Ml.f42387k || enumC5569Ml2 == EnumC5569Ml.f42386j) {
                throw new C5164Fl(c5685Ol, "Field with message or enum type missing type_name.");
            }
        }
        C5394Jk c5394Jk = c5685Ol.f43017c.f40003l;
        if (c5394Jk == null) {
            c5394Jk = C5394Jk.f41478l;
        }
        if (c5394Jk.f41482e && (!c5685Ol.k() || !f43015n[c5685Ol.f43022h.ordinal()].a())) {
            throw new C5164Fl(c5685Ol, "[packed = true] can only be specified for repeated primitive fields.");
        }
        if (c5685Ol.f43017c.d()) {
            if (!c5685Ol.k()) {
                try {
                    switch (c5685Ol.f43022h.ordinal()) {
                        case 0:
                            if (c5685Ol.f43017c.a().equals(LuaDouble.JSTR_POSINF)) {
                                c5685Ol.f43027m = Double.valueOf(Double.POSITIVE_INFINITY);
                                break;
                            } else if (c5685Ol.f43017c.a().equals(LuaDouble.JSTR_NEGINF)) {
                                c5685Ol.f43027m = Double.valueOf(Double.NEGATIVE_INFINITY);
                                break;
                            } else if (c5685Ol.f43017c.a().equals(LuaDouble.JSTR_NAN)) {
                                c5685Ol.f43027m = Double.valueOf(Double.NaN);
                                break;
                            } else {
                                c5685Ol.f43027m = Double.valueOf(c5685Ol.f43017c.a());
                                break;
                            }
                        case 1:
                            if (c5685Ol.f43017c.a().equals(LuaDouble.JSTR_POSINF)) {
                                c5685Ol.f43027m = Float.valueOf(Float.POSITIVE_INFINITY);
                                break;
                            } else if (c5685Ol.f43017c.a().equals(LuaDouble.JSTR_NEGINF)) {
                                c5685Ol.f43027m = Float.valueOf(Float.NEGATIVE_INFINITY);
                                break;
                            } else if (c5685Ol.f43017c.a().equals(LuaDouble.JSTR_NAN)) {
                                c5685Ol.f43027m = Float.valueOf(Float.NaN);
                                break;
                            } else {
                                c5685Ol.f43027m = Float.valueOf(c5685Ol.f43017c.a());
                                break;
                            }
                        case 2:
                        case 15:
                        case 17:
                            c5685Ol.f43027m = Long.valueOf(AbstractC5003Cr0.a(c5685Ol.f43017c.a(), true, true));
                            break;
                        case 3:
                        case 5:
                            c5685Ol.f43027m = Long.valueOf(AbstractC5003Cr0.a(c5685Ol.f43017c.a(), false, true));
                            break;
                        case 4:
                        case 14:
                        case 16:
                            c5685Ol.f43027m = Integer.valueOf((int) AbstractC5003Cr0.a(c5685Ol.f43017c.a(), true, false));
                            break;
                        case 6:
                        case 12:
                            c5685Ol.f43027m = Integer.valueOf((int) AbstractC5003Cr0.a(c5685Ol.f43017c.a(), false, false));
                            break;
                        case 7:
                            c5685Ol.f43027m = Boolean.valueOf(c5685Ol.f43017c.a());
                            break;
                        case 8:
                            c5685Ol.f43027m = c5685Ol.f43017c.a();
                            break;
                        case 9:
                        case 10:
                            throw new C5164Fl(c5685Ol, "Message type had default value.");
                        case 11:
                            try {
                                c5685Ol.f43027m = AbstractC5003Cr0.a(c5685Ol.f43017c.a());
                                break;
                            } catch (C10492yr0 e10) {
                                C5164Fl c5164Fl = new C5164Fl(c5685Ol, "Couldn't parse default value: " + e10.getMessage());
                                c5164Fl.initCause(e10);
                                throw c5164Fl;
                            }
                        case 13:
                            C5280Hl c5280Hl = c5685Ol.f43026l;
                            String a12 = c5685Ol.f43017c.a();
                            AbstractC5801Ql a13 = c5280Hl.f40858d.f43363h.a(3, c5280Hl.f40857c + '.' + a12);
                            C5454Kl c5454Kl = a13 instanceof C5454Kl ? (C5454Kl) a13 : null;
                            c5685Ol.f43027m = c5454Kl;
                            if (c5454Kl == null) {
                                throw new C5164Fl(c5685Ol, "Unknown enum default value: \"" + c5685Ol.f43017c.a() + '\"');
                            }
                            break;
                    }
                } catch (NumberFormatException e11) {
                    C5164Fl c5164Fl2 = new C5164Fl(c5685Ol, "Could not parse default value: \"" + c5685Ol.f43017c.a() + '\"');
                    c5164Fl2.initCause(e11);
                    throw c5164Fl2;
                }
            } else {
                throw new C5164Fl(c5685Ol, "Repeated fields cannot have default values.");
            }
        } else if (c5685Ol.k()) {
            c5685Ol.f43027m = Collections.EMPTY_LIST;
        } else {
            int ordinal = c5685Ol.f43022h.f42689b.ordinal();
            if (ordinal == 7) {
                c5685Ol.f43027m = Collections.unmodifiableList(Arrays.asList(c5685Ol.f43026l.f40859e)).get(0);
            } else if (ordinal != 8) {
                c5685Ol.f43027m = c5685Ol.f43022h.f42689b.f42388b;
            } else {
                c5685Ol.f43027m = null;
            }
        }
        C4990Cl c4990Cl2 = c5685Ol.f43023i;
        if (c4990Cl2 == null || !c4990Cl2.f().f44566d) {
            return;
        }
        if (c5685Ol.f43017c.e()) {
            EnumC4988Ck a14 = EnumC4988Ck.a(c5685Ol.f43017c.f39996e);
            if (a14 == null) {
                a14 = EnumC4988Ck.f39333c;
            }
            if (a14 != EnumC4988Ck.f39333c || c5685Ol.f43022h != EnumC5627Nl.f42685e) {
                throw new C5164Fl(c5685Ol, "Extensions of MessageSets must be optional messages.");
            }
            return;
        }
        throw new C5164Fl(c5685Ol, "MessageSets cannot have fields, only extensions.");
    }
}
