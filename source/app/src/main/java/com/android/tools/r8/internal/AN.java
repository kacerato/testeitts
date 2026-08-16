package com.android.tools.r8.internal;

import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class AN extends R2 {

    public final InterfaceC8413mO f38604c;

    public final C10080wN f38605d;

    public AN(H50 h50, InterfaceC8413mO interfaceC8413mO) {
        super(h50);
        this.f38605d = new C10080wN();
        this.f38604c = interfaceC8413mO;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.android.tools.r8.internal.uN] */
    @Override
    public final void a() {
        InterfaceC8413mO interfaceC8413mO = this.f38604c;
        C10080wN c10080wN = this.f38605d;
        C10247xN c10247xN = new C10247xN(c10080wN.f53485b);
        if (c10080wN.f53484a) {
            c10247xN = new C9746uN(c10247xN);
        }
        interfaceC8413mO.accept(c10247xN);
        Q2 q22 = this.f43440a;
        if (q22 != null) {
            q22.a();
        }
    }

    @Override
    public final void a(String str, String str2, String str3) {
        if (!"Landroidx/annotation/keep/KeepConstraint;".equals(str2) && !"Lcom/android/tools/r8/keepanno/annotations/KeepConstraint;".equals(str2)) {
            super.a(str, str2, str3);
            throw null;
        }
        str3.getClass();
        char c10 = '\uffff';
        switch (str3.hashCode()) {
            case -2043765382:
                if (str3.equals("LOOKUP")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1981759472:
                if (str3.equals("GENERIC_SIGNATURE")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1323055065:
                if (str3.equals("CLASS_OPEN_HIERARCHY")) {
                    c10 = 2;
                    break;
                }
                break;
            case -614440554:
                if (str3.equals("METHOD_INVOKE")) {
                    c10 = 3;
                    break;
                }
                break;
            case -378310708:
                if (str3.equals("NEVER_INLINE")) {
                    c10 = 4;
                    break;
                }
                break;
            case -241897903:
                if (str3.equals("FIELD_GET")) {
                    c10 = 5;
                    break;
                }
                break;
            case -241886371:
                if (str3.equals("FIELD_SET")) {
                    c10 = 6;
                    break;
                }
                break;
            case 2388619:
                if (str3.equals("NAME")) {
                    c10 = 7;
                    break;
                }
                break;
            case 64595715:
                if (str3.equals("VISIBILITY_RELAX")) {
                    c10 = '\b';
                    break;
                }
                break;
            case 443441481:
                if (str3.equals("VISIBILITY_RESTRICT")) {
                    c10 = '\t';
                    break;
                }
                break;
            case 572983987:
                if (str3.equals("VISIBILITY_INVARIANT")) {
                    c10 = '\n';
                    break;
                }
                break;
            case 1388569187:
                if (str3.equals("CLASS_INSTANTIATE")) {
                    c10 = IIndexConstants.INTERFACE_AND_ANNOTATION_SUFFIX;
                    break;
                }
                break;
            case 1561475382:
                if (str3.equals("METHOD_REPLACE")) {
                    c10 = '\f';
                    break;
                }
                break;
            case 1806898223:
                if (str3.equals("FIELD_REPLACE")) {
                    c10 = CharUtils.CR;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                C10080wN c10080wN = this.f38605d;
                c10080wN.f53485b.add(C8077kN.f49603b);
                return;
            case 1:
                C10080wN c10080wN2 = this.f38605d;
                c10080wN2.f53485b.add(C7910jN.f49217b);
                return;
            case 2:
                C10080wN c10080wN3 = this.f38605d;
                c10080wN3.f53485b.add(C7244fN.f47949b);
                return;
            case 3:
                C10080wN c10080wN4 = this.f38605d;
                c10080wN4.f53485b.add(C8244lN.f49960b);
                return;
            case 4:
                C10080wN c10080wN5 = this.f38605d;
                c10080wN5.f53485b.add(C8745oN.f51227b);
                return;
            case 5:
                C10080wN c10080wN6 = this.f38605d;
                c10080wN6.f53485b.add(C7411gN.f48248b);
                return;
            case 6:
                C10080wN c10080wN7 = this.f38605d;
                c10080wN7.f53485b.add(C7745iN.f48927b);
                return;
            case 7:
                C10080wN c10080wN8 = this.f38605d;
                c10080wN8.f53485b.add(C8578nN.f50939b);
                return;
            case '\b':
                C10080wN c10080wN9 = this.f38605d;
                c10080wN9.f53485b.add(C8912pN.f51508b);
                return;
            case '\t':
                C10080wN c10080wN10 = this.f38605d;
                c10080wN10.f53485b.add(C9079qN.f51766b);
                return;
            case '\n':
                C10080wN c10080wN11 = this.f38605d;
                c10080wN11.f53485b.add(C8912pN.f51508b);
                C10080wN c10080wN12 = this.f38605d;
                c10080wN12.f53485b.add(C9079qN.f51766b);
                return;
            case 11:
                C10080wN c10080wN13 = this.f38605d;
                c10080wN13.f53485b.add(C7077eN.f47662b);
                return;
            case '\f':
                C10080wN c10080wN14 = this.f38605d;
                c10080wN14.f53485b.add(C8411mN.f50280b);
                return;
            case '\r':
                C10080wN c10080wN15 = this.f38605d;
                c10080wN15.f53485b.add(C7578hN.f48540b);
                return;
            default:
                super.a(str, str2, str3);
                throw null;
        }
    }
}
