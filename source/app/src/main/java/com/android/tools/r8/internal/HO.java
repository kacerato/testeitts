package com.android.tools.r8.internal;

import com.android.tools.r8.relocated.keepanno.proto.KeepSpecProtos;
import java.util.HashSet;
import java.util.Set;

public abstract class HO {

    public static final boolean f40746f = true;

    public final HashSet f40747a;

    public final HashSet f40748b;

    public LX f40749c;

    public LX f40750d;

    public LX f40751e;

    public HO() {
        EnumC6355a2 enumC6355a2 = EnumC6355a2.f46396b;
        this.f40747a = new HashSet();
        this.f40748b = new HashSet();
        IX ix = LX.f41973a;
        this.f40749c = ix;
        this.f40750d = ix;
        this.f40751e = ix;
    }

    public final HO a(IO io2) {
        this.f40747a.clear();
        this.f40748b.clear();
        this.f40747a.addAll(io2.f41073a);
        this.f40749c = io2.f41074b;
        this.f40750d = io2.f41075c;
        return b();
    }

    public abstract HO b();

    public final Set a() {
        if (this.f40747a.isEmpty() && this.f40748b.isEmpty()) {
            return EnumC6355a2.f46400f;
        }
        EnumC6355a2 enumC6355a2 = EnumC6355a2.f46396b;
        HashSet hashSet = new HashSet();
        if (this.f40747a.isEmpty()) {
            hashSet.addAll(EnumC6355a2.f46400f);
        } else {
            hashSet.addAll(this.f40747a);
        }
        hashSet.removeAll(this.f40748b);
        if (hashSet.isEmpty()) {
            throw new FN("Empty access visibility pattern will never match a member");
        }
        return hashSet;
    }

    public final HO a(KeepSpecProtos.MemberAccessGeneral memberAccessGeneral) {
        if (!f40746f && a() != EnumC6355a2.f46400f) {
            throw new AssertionError();
        }
        if (memberAccessGeneral.hasAccessVisibility()) {
            for (KeepSpecProtos.AccessVisibility accessVisibility : memberAccessGeneral.getAccessVisibility().getAccessVisibilityList()) {
                EnumC6355a2 enumC6355a2 = EnumC6355a2.f46396b;
                int number = accessVisibility.getNumber();
                if (number != 1) {
                    if (number == 2) {
                        enumC6355a2 = EnumC6355a2.f46397c;
                    } else if (number == 3) {
                        enumC6355a2 = EnumC6355a2.f46398d;
                    } else if (number != 4) {
                        if (!EnumC6355a2.f46402h && accessVisibility != KeepSpecProtos.AccessVisibility.ACCESS_UNSPECIFIED) {
                            throw new AssertionError();
                        }
                        enumC6355a2 = null;
                    } else {
                        enumC6355a2 = EnumC6355a2.f46399e;
                    }
                }
                if (enumC6355a2 != null) {
                    this.f40747a.add(enumC6355a2);
                }
            }
        }
        boolean z10 = f40746f;
        if (!z10) {
            LX lx = this.f40749c;
            lx.getClass();
            if (!(lx instanceof IX)) {
                throw new AssertionError();
            }
        }
        if (memberAccessGeneral.hasStaticPattern()) {
            this.f40749c = memberAccessGeneral.getStaticPattern().getValue() ? LX.f41974b : LX.f41975c;
        }
        if (!z10) {
            LX lx2 = this.f40750d;
            lx2.getClass();
            if (!(lx2 instanceof IX)) {
                throw new AssertionError();
            }
        }
        if (memberAccessGeneral.hasFinalPattern()) {
            this.f40750d = memberAccessGeneral.getFinalPattern().getValue() ? LX.f41974b : LX.f41975c;
        }
        if (!z10) {
            LX lx3 = this.f40751e;
            lx3.getClass();
            if (!(lx3 instanceof IX)) {
                throw new AssertionError();
            }
        }
        if (memberAccessGeneral.hasSyntheticPattern()) {
            this.f40751e = memberAccessGeneral.getSyntheticPattern().getValue() ? LX.f41974b : LX.f41975c;
        }
        return b();
    }
}
