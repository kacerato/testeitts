package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
import java.util.Map;

public final class X4 implements E6 {

    public final W4 f62171a;

    public X4(W4 w42) {
        byte[] bArr = A5.f61886b;
        this.f62171a = w42;
        w42.f62160a = this;
    }

    public static X4 M(W4 w42) {
        X4 x42 = w42.f62160a;
        return x42 != null ? x42 : new X4(w42);
    }

    @Override
    public final void A(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof C12171r5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.j(i10, ((Integer) list.get(i11)).intValue());
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += W4.a(((Integer) list.get(i13)).intValue());
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.y(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        C12171r5 c12171r5 = (C12171r5) list;
        if (!z10) {
            while (i11 < c12171r5.size()) {
                this.f62171a.j(i10, c12171r5.j(i11));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < c12171r5.size(); i15++) {
            i14 += W4.a(c12171r5.j(i15));
        }
        w43.z(i14);
        while (i11 < c12171r5.size()) {
            w43.y(c12171r5.j(i11));
            i11++;
        }
    }

    @Override
    public final void B(int i10, Object obj, InterfaceC12083h6 interfaceC12083h6) throws IOException {
        this.f62171a.t(i10, (W5) obj, interfaceC12083h6);
    }

    @Override
    public final void C(int i10, Object obj, InterfaceC12083h6 interfaceC12083h6) throws IOException {
        W4 w42 = this.f62171a;
        w42.i(i10, 3);
        interfaceC12083h6.c((W5) obj, w42.f62160a);
        w42.i(i10, 4);
    }

    @Override
    public final void D(int i10, long j10) throws IOException {
        this.f62171a.m(i10, (j10 >> 63) ^ (j10 + j10));
    }

    @Override
    @Deprecated
    public final void E(int i10) throws IOException {
        this.f62171a.i(i10, 3);
    }

    @Override
    @Deprecated
    public final void F(int i10) throws IOException {
        this.f62171a.i(i10, 4);
    }

    @Override
    public final void G(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof J5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    W4 w42 = this.f62171a;
                    long longValue = ((Long) list.get(i11)).longValue();
                    w42.m(i10, (longValue >> 63) ^ (longValue + longValue));
                    i11++;
                }
                return;
            }
            W4 w43 = this.f62171a;
            w43.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                long longValue2 = ((Long) list.get(i13)).longValue();
                i12 += W4.a((longValue2 >> 63) ^ (longValue2 + longValue2));
            }
            w43.z(i12);
            while (i11 < list.size()) {
                long longValue3 = ((Long) list.get(i11)).longValue();
                w43.B((longValue3 >> 63) ^ (longValue3 + longValue3));
                i11++;
            }
            return;
        }
        J5 j52 = (J5) list;
        if (!z10) {
            while (i11 < j52.size()) {
                W4 w44 = this.f62171a;
                long q42 = j52.q4(i11);
                w44.m(i10, (q42 >> 63) ^ (q42 + q42));
                i11++;
            }
            return;
        }
        W4 w45 = this.f62171a;
        w45.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < j52.size(); i15++) {
            long q43 = j52.q4(i15);
            i14 += W4.a((q43 >> 63) ^ (q43 + q43));
        }
        w45.z(i14);
        while (i11 < j52.size()) {
            long q44 = j52.q4(i11);
            w45.B((q44 >> 63) ^ (q44 + q44));
            i11++;
        }
    }

    @Override
    public final void H(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof C12171r5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    W4 w42 = this.f62171a;
                    int intValue = ((Integer) list.get(i11)).intValue();
                    w42.k(i10, (intValue >> 31) ^ (intValue + intValue));
                    i11++;
                }
                return;
            }
            W4 w43 = this.f62171a;
            w43.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                int intValue2 = ((Integer) list.get(i13)).intValue();
                i12 += W4.G((intValue2 >> 31) ^ (intValue2 + intValue2));
            }
            w43.z(i12);
            while (i11 < list.size()) {
                int intValue3 = ((Integer) list.get(i11)).intValue();
                w43.z((intValue3 >> 31) ^ (intValue3 + intValue3));
                i11++;
            }
            return;
        }
        C12171r5 c12171r5 = (C12171r5) list;
        if (!z10) {
            while (i11 < c12171r5.size()) {
                W4 w44 = this.f62171a;
                int j10 = c12171r5.j(i11);
                w44.k(i10, (j10 >> 31) ^ (j10 + j10));
                i11++;
            }
            return;
        }
        W4 w45 = this.f62171a;
        w45.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < c12171r5.size(); i15++) {
            int j11 = c12171r5.j(i15);
            i14 += W4.G((j11 >> 31) ^ (j11 + j11));
        }
        w45.z(i14);
        while (i11 < c12171r5.size()) {
            int j12 = c12171r5.j(i11);
            w45.z((j12 >> 31) ^ (j12 + j12));
            i11++;
        }
    }

    @Override
    public final void I(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof J5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.m(i10, ((Long) list.get(i11)).longValue());
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += W4.a(((Long) list.get(i13)).longValue());
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.B(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        J5 j52 = (J5) list;
        if (!z10) {
            while (i11 < j52.size()) {
                this.f62171a.m(i10, j52.q4(i11));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < j52.size(); i15++) {
            i14 += W4.a(j52.q4(i15));
        }
        w43.z(i14);
        while (i11 < j52.size()) {
            w43.B(j52.q4(i11));
            i11++;
        }
    }

    @Override
    public final void J(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof J5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.m(i10, ((Long) list.get(i11)).longValue());
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += W4.a(((Long) list.get(i13)).longValue());
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.B(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        J5 j52 = (J5) list;
        if (!z10) {
            while (i11 < j52.size()) {
                this.f62171a.m(i10, j52.q4(i11));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < j52.size(); i15++) {
            i14 += W4.a(j52.q4(i15));
        }
        w43.z(i14);
        while (i11 < j52.size()) {
            w43.B(j52.q4(i11));
            i11++;
        }
    }

    @Override
    public final void K(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof C12171r5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.l(i10, ((Integer) list.get(i11)).intValue());
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Integer) list.get(i13)).intValue();
                i12 += 4;
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.A(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        C12171r5 c12171r5 = (C12171r5) list;
        if (!z10) {
            while (i11 < c12171r5.size()) {
                this.f62171a.l(i10, c12171r5.j(i11));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < c12171r5.size(); i15++) {
            c12171r5.j(i15);
            i14 += 4;
        }
        w43.z(i14);
        while (i11 < c12171r5.size()) {
            w43.A(c12171r5.j(i11));
            i11++;
        }
    }

    @Override
    public final void L(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof C12171r5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.j(i10, ((Integer) list.get(i11)).intValue());
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += W4.a(((Integer) list.get(i13)).intValue());
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.y(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        C12171r5 c12171r5 = (C12171r5) list;
        if (!z10) {
            while (i11 < c12171r5.size()) {
                this.f62171a.j(i10, c12171r5.j(i11));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < c12171r5.size(); i15++) {
            i14 += W4.a(c12171r5.j(i15));
        }
        w43.z(i14);
        while (i11 < c12171r5.size()) {
            w43.y(c12171r5.j(i11));
            i11++;
        }
    }

    @Override
    public final void a(int i10, int i11) throws IOException {
        this.f62171a.l(i10, i11);
    }

    @Override
    public final void b(int i10, long j10) throws IOException {
        this.f62171a.m(i10, j10);
    }

    @Override
    public final void c(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof J5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.n(i10, ((Long) list.get(i11)).longValue());
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Long) list.get(i13)).longValue();
                i12 += 8;
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.C(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        J5 j52 = (J5) list;
        if (!z10) {
            while (i11 < j52.size()) {
                this.f62171a.n(i10, j52.q4(i11));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < j52.size(); i15++) {
            j52.q4(i15);
            i14 += 8;
        }
        w43.z(i14);
        while (i11 < j52.size()) {
            w43.C(j52.q4(i11));
            i11++;
        }
    }

    @Override
    public final void d(int i10, String str) throws IOException {
        this.f62171a.p(i10, str);
    }

    @Override
    public final void e(int i10, double d10) throws IOException {
        this.f62171a.n(i10, Double.doubleToRawLongBits(d10));
    }

    @Override
    public final void f(int i10, O5 o52, Map map) throws IOException {
        for (Map.Entry entry : map.entrySet()) {
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            w42.z(P5.c(o52, entry.getKey(), entry.getValue()));
            P5.b(w42, o52, entry.getKey(), entry.getValue());
        }
    }

    @Override
    public final void g(int i10, int i11) throws IOException {
        this.f62171a.j(i10, i11);
    }

    @Override
    public final void h(int i10, long j10) throws IOException {
        this.f62171a.n(i10, j10);
    }

    @Override
    public final void i(int i10, float f10) throws IOException {
        this.f62171a.l(i10, Float.floatToRawIntBits(f10));
    }

    @Override
    public final void j(int i10, long j10) throws IOException {
        this.f62171a.n(i10, j10);
    }

    @Override
    public final void k(int i10, S4 s42) throws IOException {
        this.f62171a.q(i10, s42);
    }

    @Override
    public final void l(int i10, int i11) throws IOException {
        this.f62171a.l(i10, i11);
    }

    @Override
    public final void m(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof C12171r5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.l(i10, ((Integer) list.get(i11)).intValue());
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Integer) list.get(i13)).intValue();
                i12 += 4;
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.A(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        C12171r5 c12171r5 = (C12171r5) list;
        if (!z10) {
            while (i11 < c12171r5.size()) {
                this.f62171a.l(i10, c12171r5.j(i11));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < c12171r5.size(); i15++) {
            c12171r5.j(i15);
            i14 += 4;
        }
        w43.z(i14);
        while (i11 < c12171r5.size()) {
            w43.A(c12171r5.j(i11));
            i11++;
        }
    }

    @Override
    public final void n(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof J5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.n(i10, ((Long) list.get(i11)).longValue());
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Long) list.get(i13)).longValue();
                i12 += 8;
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.C(((Long) list.get(i11)).longValue());
                i11++;
            }
            return;
        }
        J5 j52 = (J5) list;
        if (!z10) {
            while (i11 < j52.size()) {
                this.f62171a.n(i10, j52.q4(i11));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < j52.size(); i15++) {
            j52.q4(i15);
            i14 += 8;
        }
        w43.z(i14);
        while (i11 < j52.size()) {
            w43.C(j52.q4(i11));
            i11++;
        }
    }

    @Override
    public final void o(int i10, long j10) throws IOException {
        this.f62171a.m(i10, j10);
    }

    @Override
    public final void p(int i10, int i11) throws IOException {
        this.f62171a.j(i10, i11);
    }

    @Override
    public final void q(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof C12171r5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.k(i10, ((Integer) list.get(i11)).intValue());
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                i12 += W4.G(((Integer) list.get(i13)).intValue());
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.z(((Integer) list.get(i11)).intValue());
                i11++;
            }
            return;
        }
        C12171r5 c12171r5 = (C12171r5) list;
        if (!z10) {
            while (i11 < c12171r5.size()) {
                this.f62171a.k(i10, c12171r5.j(i11));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < c12171r5.size(); i15++) {
            i14 += W4.G(c12171r5.j(i15));
        }
        w43.z(i14);
        while (i11 < c12171r5.size()) {
            w43.z(c12171r5.j(i11));
            i11++;
        }
    }

    @Override
    public final void r(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof Y4)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.n(i10, Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Double) list.get(i13)).doubleValue();
                i12 += 8;
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.C(Double.doubleToRawLongBits(((Double) list.get(i11)).doubleValue()));
                i11++;
            }
            return;
        }
        Y4 y42 = (Y4) list;
        if (!z10) {
            while (i11 < y42.size()) {
                this.f62171a.n(i10, Double.doubleToRawLongBits(y42.j(i11)));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < y42.size(); i15++) {
            y42.j(i15);
            i14 += 8;
        }
        w43.z(i14);
        while (i11 < y42.size()) {
            w43.C(Double.doubleToRawLongBits(y42.j(i11)));
            i11++;
        }
    }

    @Override
    public final void s(int i10, List list) throws IOException {
        for (int i11 = 0; i11 < list.size(); i11++) {
            this.f62171a.q(i10, (S4) list.get(i11));
        }
    }

    @Override
    public final void t(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof C12091i5)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.l(i10, Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Float) list.get(i13)).floatValue();
                i12 += 4;
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.A(Float.floatToRawIntBits(((Float) list.get(i11)).floatValue()));
                i11++;
            }
            return;
        }
        C12091i5 c12091i5 = (C12091i5) list;
        if (!z10) {
            while (i11 < c12091i5.size()) {
                this.f62171a.l(i10, Float.floatToRawIntBits(c12091i5.j(i11)));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < c12091i5.size(); i15++) {
            c12091i5.j(i15);
            i14 += 4;
        }
        w43.z(i14);
        while (i11 < c12091i5.size()) {
            w43.A(Float.floatToRawIntBits(c12091i5.j(i11)));
            i11++;
        }
    }

    @Override
    public final void u(int i10, int i11) throws IOException {
        this.f62171a.k(i10, i11);
    }

    @Override
    public final void v(int i10, List list) throws IOException {
        int i11 = 0;
        if (!(list instanceof G5)) {
            while (i11 < list.size()) {
                this.f62171a.p(i10, (String) list.get(i11));
                i11++;
            }
            return;
        }
        G5 g52 = (G5) list;
        while (i11 < list.size()) {
            Object P12 = g52.P1();
            if (P12 instanceof String) {
                this.f62171a.p(i10, (String) P12);
            } else {
                this.f62171a.q(i10, (S4) P12);
            }
            i11++;
        }
    }

    @Override
    public final void w(int i10, int i11) throws IOException {
        this.f62171a.k(i10, (i11 >> 31) ^ (i11 + i11));
    }

    @Override
    public final void x(int i10, List list, boolean z10) throws IOException {
        int i11 = 0;
        if (!(list instanceof I4)) {
            if (!z10) {
                while (i11 < list.size()) {
                    this.f62171a.o(i10, ((Boolean) list.get(i11)).booleanValue());
                    i11++;
                }
                return;
            }
            W4 w42 = this.f62171a;
            w42.i(i10, 2);
            int i12 = 0;
            for (int i13 = 0; i13 < list.size(); i13++) {
                ((Boolean) list.get(i13)).booleanValue();
                i12++;
            }
            w42.z(i12);
            while (i11 < list.size()) {
                w42.x(((Boolean) list.get(i11)).booleanValue() ? (byte) 1 : (byte) 0);
                i11++;
            }
            return;
        }
        I4 i42 = (I4) list;
        if (!z10) {
            while (i11 < i42.size()) {
                this.f62171a.o(i10, i42.j(i11));
                i11++;
            }
            return;
        }
        W4 w43 = this.f62171a;
        w43.i(i10, 2);
        int i14 = 0;
        for (int i15 = 0; i15 < i42.size(); i15++) {
            i42.j(i15);
            i14++;
        }
        w43.z(i14);
        while (i11 < i42.size()) {
            w43.x(i42.j(i11) ? (byte) 1 : (byte) 0);
            i11++;
        }
    }

    @Override
    public final void y(int i10, Object obj) throws IOException {
        if (obj instanceof S4) {
            this.f62171a.v(i10, (S4) obj);
        } else {
            this.f62171a.u(i10, (W5) obj);
        }
    }

    @Override
    public final void z(int i10, boolean z10) throws IOException {
        this.f62171a.o(i10, z10);
    }
}
