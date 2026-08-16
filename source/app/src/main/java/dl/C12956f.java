package dl;

public class C12956f {

    public C12952b f84781a = new C12952b();

    public void a(C12957g[] c12957gArr, int i10, int i11) {
        int i12 = i11;
        int i13 = 1;
        int i14 = (1 << i12) >> 1;
        int i15 = 2;
        int i16 = 1;
        int i17 = i14;
        while (i16 < i12) {
            int i18 = i17 >> 1;
            int i19 = i15 >> 1;
            int i20 = 0;
            int i21 = 0;
            while (i20 < i19) {
                C12957g[] c12957gArr2 = this.f84781a.f84775u;
                int i22 = (i15 + i20) << i13;
                C12957g c12957g = c12957gArr2[i22];
                C12957g c12957g2 = c12957gArr2[i22 + i13];
                int i23 = i21;
                for (int i24 = i21 + i18; i23 < i24; i24 = i24) {
                    int i25 = i10 + i23;
                    C12957g c12957g3 = c12957gArr[i25];
                    int i26 = i25 + i14;
                    C12957g c12957g4 = c12957gArr[i26];
                    int i27 = i25 + i18;
                    int i28 = i18;
                    int i29 = i27 + i14;
                    int i30 = i14;
                    C12951a e10 = e(c12957gArr[i27], c12957gArr[i29], c12957g, c12957g2);
                    C12957g c12957g5 = e10.f84749a;
                    C12957g c12957g6 = e10.f84750b;
                    int i31 = i19;
                    C12951a b10 = b(c12957g3, c12957g4, c12957g5, c12957g6);
                    c12957gArr[i25] = b10.f84749a;
                    c12957gArr[i26] = b10.f84750b;
                    C12951a g10 = g(c12957g3, c12957g4, c12957g5, c12957g6);
                    c12957gArr[i27] = g10.f84749a;
                    c12957gArr[i29] = g10.f84750b;
                    i23++;
                    i18 = i28;
                    i14 = i30;
                    i19 = i31;
                }
                i20++;
                i21 += i17;
                i13 = 1;
            }
            i16++;
            i15 <<= 1;
            i12 = i11;
            i17 = i18;
            i13 = 1;
        }
    }

    public C12951a b(C12957g c12957g, C12957g c12957g2, C12957g c12957g3, C12957g c12957g4) {
        return new C12951a(this.f84781a.b(c12957g, c12957g3), this.f84781a.b(c12957g2, c12957g4));
    }

    public C12951a c(C12957g c12957g, C12957g c12957g2, C12957g c12957g3, C12957g c12957g4) {
        C12952b c12952b = this.f84781a;
        C12957g h10 = this.f84781a.h(c12952b.b(c12952b.n(c12957g3), this.f84781a.n(c12957g4)));
        C12957g j10 = this.f84781a.j(c12957g3, h10);
        C12952b c12952b2 = this.f84781a;
        C12957g j11 = c12952b2.j(c12952b2.k(c12957g4), h10);
        C12952b c12952b3 = this.f84781a;
        C12957g p10 = c12952b3.p(c12952b3.j(c12957g, j10), this.f84781a.j(c12957g2, j11));
        C12952b c12952b4 = this.f84781a;
        return new C12951a(p10, c12952b4.b(c12952b4.j(c12957g, j11), this.f84781a.j(c12957g2, j10)));
    }

    public C12951a d(C12957g c12957g, C12957g c12957g2) {
        C12952b c12952b = this.f84781a;
        C12957g h10 = this.f84781a.h(c12952b.b(c12952b.n(c12957g), this.f84781a.n(c12957g2)));
        C12957g j10 = this.f84781a.j(c12957g, h10);
        C12952b c12952b2 = this.f84781a;
        return new C12951a(j10, c12952b2.j(c12952b2.k(c12957g2), h10));
    }

    public C12951a e(C12957g c12957g, C12957g c12957g2, C12957g c12957g3, C12957g c12957g4) {
        C12952b c12952b = this.f84781a;
        C12957g p10 = c12952b.p(c12952b.j(c12957g, c12957g3), this.f84781a.j(c12957g2, c12957g4));
        C12952b c12952b2 = this.f84781a;
        return new C12951a(p10, c12952b2.b(c12952b2.j(c12957g, c12957g4), this.f84781a.j(c12957g2, c12957g3)));
    }

    public C12951a f(C12957g c12957g, C12957g c12957g2) {
        C12952b c12952b = this.f84781a;
        C12957g p10 = c12952b.p(c12952b.n(c12957g), this.f84781a.n(c12957g2));
        C12952b c12952b2 = this.f84781a;
        return new C12951a(p10, c12952b2.d(c12952b2.j(c12957g, c12957g2)));
    }

    public C12951a g(C12957g c12957g, C12957g c12957g2, C12957g c12957g3, C12957g c12957g4) {
        return new C12951a(this.f84781a.p(c12957g, c12957g3), this.f84781a.p(c12957g2, c12957g4));
    }

    public void h(C12957g[] c12957gArr, int i10, int i11) {
        int i12;
        int i13 = 1;
        int i14 = 1 << i11;
        int i15 = i14 >> 1;
        int i16 = i11;
        int i17 = 1;
        int i18 = i14;
        while (true) {
            i12 = 0;
            if (i16 <= i13) {
                break;
            }
            i18 >>= i13;
            int i19 = i17 << 1;
            int i20 = 0;
            while (i12 < i15) {
                C12952b c12952b = this.f84781a;
                C12957g[] c12957gArr2 = c12952b.f84775u;
                int i21 = (i18 + i20) << i13;
                C12957g c12957g = c12957gArr2[i21];
                C12957g k10 = c12952b.k(c12957gArr2[i21 + i13]);
                int i22 = i12;
                for (int i23 = i12 + i17; i22 < i23; i23 = i23) {
                    int i24 = i10 + i22;
                    C12957g c12957g2 = c12957gArr[i24];
                    int i25 = i24 + i15;
                    C12957g c12957g3 = c12957gArr[i25];
                    int i26 = i24 + i17;
                    int i27 = i18;
                    C12957g c12957g4 = c12957gArr[i26];
                    int i28 = i26 + i15;
                    int i29 = i15;
                    C12957g c12957g5 = c12957gArr[i28];
                    int i30 = i17;
                    C12951a b10 = b(c12957g2, c12957g3, c12957g4, c12957g5);
                    c12957gArr[i24] = b10.f84749a;
                    c12957gArr[i25] = b10.f84750b;
                    C12951a g10 = g(c12957g2, c12957g3, c12957g4, c12957g5);
                    C12951a e10 = e(g10.f84749a, g10.f84750b, c12957g, k10);
                    c12957gArr[i26] = e10.f84749a;
                    c12957gArr[i28] = e10.f84750b;
                    i22++;
                    i18 = i27;
                    i15 = i29;
                    i17 = i30;
                }
                i20++;
                i12 += i19;
                i13 = 1;
            }
            i16--;
            i17 = i19;
            i13 = 1;
        }
        if (i11 > 0) {
            C12957g c12957g6 = this.f84781a.f84776v[i11];
            while (i12 < i14) {
                int i31 = i10 + i12;
                c12957gArr[i31] = this.f84781a.j(c12957gArr[i31], c12957g6);
                i12++;
            }
        }
    }

    public void i(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, C12957g[] c12957gArr3, int i12, int i13) {
        int i14 = (1 << i13) >> 1;
        for (int i15 = 0; i15 < i14; i15++) {
            int i16 = i10 + i15;
            C12957g c12957g = c12957gArr[i16];
            C12957g c12957g2 = c12957gArr[i16 + i14];
            int i17 = i11 + i15;
            C12957g c12957g3 = c12957gArr2[i17];
            int i18 = i17 + i14;
            C12957g c12957g4 = c12957gArr2[i18];
            int i19 = i12 + i15;
            C12957g c12957g5 = c12957gArr3[i19];
            int i20 = i19 + i14;
            C12957g c12957g6 = c12957gArr3[i20];
            C12951a c10 = c(c12957g3, c12957g4, c12957g, c12957g2);
            C12957g c12957g7 = c10.f84749a;
            C12957g c12957g8 = c10.f84750b;
            C12951a e10 = e(c12957g7, c12957g8, c12957g3, this.f84781a.k(c12957g4));
            C12951a g10 = g(c12957g5, c12957g6, e10.f84749a, e10.f84750b);
            c12957gArr3[i19] = g10.f84749a;
            c12957gArr3[i20] = g10.f84750b;
            c12957gArr2[i17] = c12957g7;
            c12957gArr2[i18] = this.f84781a.k(c12957g8);
        }
    }

    public void j(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, C12957g[] c12957gArr3, int i12, C12957g[] c12957gArr4, int i13, C12957g[] c12957gArr5, int i14, int i15) {
        int i16 = (1 << i15) >> 1;
        for (int i17 = 0; i17 < i16; i17++) {
            int i18 = i12 + i17;
            C12957g c12957g = c12957gArr3[i18];
            C12957g c12957g2 = c12957gArr3[i18 + i16];
            int i19 = i13 + i17;
            C12957g c12957g3 = c12957gArr4[i19];
            C12957g c12957g4 = c12957gArr4[i19 + i16];
            int i20 = i14 + i17;
            C12957g c12957g5 = c12957gArr5[i20];
            C12957g c12957g6 = c12957gArr5[i20 + i16];
            C12951a c10 = c(c12957g3, c12957g4, c12957g, c12957g2);
            C12957g c12957g7 = c10.f84749a;
            C12957g c12957g8 = c10.f84750b;
            C12951a e10 = e(c12957g7, c12957g8, c12957g3, this.f84781a.k(c12957g4));
            C12951a g10 = g(c12957g5, c12957g6, e10.f84749a, e10.f84750b);
            int i21 = i10 + i17;
            c12957gArr[i21] = g10.f84749a;
            c12957gArr[i21 + i16] = g10.f84750b;
            int i22 = i11 + i17;
            c12957gArr2[i22] = c12957g7;
            c12957gArr2[i22 + i16] = this.f84781a.k(c12957g8);
        }
    }

    public void k(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, int i12) {
        int i13 = 1 << i12;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = i10 + i14;
            c12957gArr[i15] = this.f84781a.b(c12957gArr[i15], c12957gArr2[i11 + i14]);
        }
    }

    public void l(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, C12957g[] c12957gArr3, int i12, C12957g[] c12957gArr4, int i13, C12957g[] c12957gArr5, int i14, int i15) {
        int i16 = (1 << i15) >> 1;
        for (int i17 = 0; i17 < i16; i17++) {
            int i18 = i11 + i17;
            C12957g c12957g = c12957gArr2[i18];
            C12957g c12957g2 = c12957gArr2[i18 + i16];
            int i19 = i12 + i17;
            C12957g c12957g3 = c12957gArr3[i19];
            C12957g c12957g4 = c12957gArr3[i19 + i16];
            int i20 = i13 + i17;
            C12957g c12957g5 = c12957gArr4[i20];
            C12957g c12957g6 = c12957gArr4[i20 + i16];
            int i21 = i14 + i17;
            C12957g c12957g7 = c12957gArr5[i21];
            C12957g c12957g8 = c12957gArr5[i21 + i16];
            C12951a e10 = e(c12957g, c12957g2, c12957g5, this.f84781a.k(c12957g6));
            C12957g c12957g9 = e10.f84749a;
            C12957g c12957g10 = e10.f84750b;
            C12951a e11 = e(c12957g3, c12957g4, c12957g7, this.f84781a.k(c12957g8));
            C12957g c12957g11 = e11.f84749a;
            C12957g c12957g12 = e11.f84750b;
            int i22 = i10 + i17;
            c12957gArr[i22] = this.f84781a.b(c12957g9, c12957g11);
            c12957gArr[i22 + i16] = this.f84781a.b(c12957g10, c12957g12);
        }
    }

    public void m(C12957g[] c12957gArr, int i10, int i11) {
        int i12 = 1 << i11;
        for (int i13 = i12 >> 1; i13 < i12; i13++) {
            int i14 = i10 + i13;
            c12957gArr[i14] = this.f84781a.k(c12957gArr[i14]);
        }
    }

    public void n(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, int i12) {
        int i13 = (1 << i12) >> 1;
        for (int i14 = 0; i14 < i13; i14++) {
            C12957g h10 = this.f84781a.h(c12957gArr2[i11 + i14]);
            int i15 = i10 + i14;
            c12957gArr[i15] = this.f84781a.j(c12957gArr[i15], h10);
            int i16 = i15 + i13;
            c12957gArr[i16] = this.f84781a.j(c12957gArr[i16], h10);
        }
    }

    public void o(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, int i12) {
        int i13 = (1 << i12) >> 1;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = i10 + i14;
            int i16 = i15 + i13;
            int i17 = i11 + i14;
            C12951a c10 = c(c12957gArr[i15], c12957gArr[i16], c12957gArr2[i17], c12957gArr2[i17 + i13]);
            c12957gArr[i15] = c10.f84749a;
            c12957gArr[i16] = c10.f84750b;
        }
    }

    public void p(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, C12957g[] c12957gArr3, int i12, int i13) {
        int i14 = (1 << i13) >> 1;
        for (int i15 = 0; i15 < i14; i15++) {
            int i16 = i11 + i15;
            C12957g c12957g = c12957gArr2[i16];
            C12957g c12957g2 = c12957gArr2[i16 + i14];
            int i17 = i12 + i15;
            C12957g c12957g3 = c12957gArr3[i17];
            C12957g c12957g4 = c12957gArr3[i17 + i14];
            C12952b c12952b = this.f84781a;
            C12957g b10 = c12952b.b(c12952b.n(c12957g), this.f84781a.n(c12957g2));
            C12952b c12952b2 = this.f84781a;
            c12957gArr[i10 + i15] = c12952b.h(c12952b.b(b10, c12952b2.b(c12952b2.n(c12957g3), this.f84781a.n(c12957g4))));
        }
    }

    public void q(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, C12957g[] c12957gArr3, int i12, int i13) {
        int i14 = 1 << i13;
        int i15 = i14 >> 1;
        int i16 = i14 >> 2;
        c12957gArr[i10] = c12957gArr2[i11];
        c12957gArr[i10 + i15] = c12957gArr3[i12];
        for (int i17 = 0; i17 < i16; i17++) {
            int i18 = i11 + i17;
            C12957g c12957g = c12957gArr2[i18];
            C12957g c12957g2 = c12957gArr2[i18 + i16];
            int i19 = i12 + i17;
            C12957g c12957g3 = c12957gArr3[i19];
            C12957g c12957g4 = c12957gArr3[i19 + i16];
            C12957g[] c12957gArr4 = this.f84781a.f84775u;
            int i20 = (i17 + i15) << 1;
            C12951a e10 = e(c12957g3, c12957g4, c12957gArr4[i20], c12957gArr4[i20 + 1]);
            C12957g c12957g5 = e10.f84749a;
            C12957g c12957g6 = e10.f84750b;
            C12951a b10 = b(c12957g, c12957g2, c12957g5, c12957g6);
            C12957g c12957g7 = b10.f84749a;
            C12957g c12957g8 = b10.f84750b;
            int i21 = (i17 << 1) + i10;
            c12957gArr[i21] = c12957g7;
            c12957gArr[i21 + i15] = c12957g8;
            C12951a g10 = g(c12957g, c12957g2, c12957g5, c12957g6);
            C12957g c12957g9 = g10.f84749a;
            C12957g c12957g10 = g10.f84750b;
            int i22 = i21 + 1;
            c12957gArr[i22] = c12957g9;
            c12957gArr[i22 + i15] = c12957g10;
        }
    }

    public void r(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, int i12) {
        int i13 = (1 << i12) >> 1;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = i10 + i14;
            int i16 = i11 + i14;
            c12957gArr[i15] = this.f84781a.j(c12957gArr[i15], c12957gArr2[i16]);
            int i17 = i15 + i13;
            c12957gArr[i17] = this.f84781a.j(c12957gArr[i17], c12957gArr2[i16]);
        }
    }

    public void s(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, int i12) {
        int i13 = (1 << i12) >> 1;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = i10 + i14;
            int i16 = i15 + i13;
            int i17 = i11 + i14;
            C12951a e10 = e(c12957gArr[i15], c12957gArr[i16], c12957gArr2[i17], c12957gArr2[i17 + i13]);
            c12957gArr[i15] = e10.f84749a;
            c12957gArr[i16] = e10.f84750b;
        }
    }

    public void t(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, int i12) {
        int i13 = (1 << i12) >> 1;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = i10 + i14;
            int i16 = i15 + i13;
            int i17 = i11 + i14;
            C12951a e10 = e(c12957gArr[i15], c12957gArr[i16], c12957gArr2[i17], this.f84781a.k(c12957gArr2[i17 + i13]));
            c12957gArr[i15] = e10.f84749a;
            c12957gArr[i16] = e10.f84750b;
        }
    }

    public void u(C12957g[] c12957gArr, int i10, C12957g c12957g, int i11) {
        int i12 = 1 << i11;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i10 + i13;
            c12957gArr[i14] = this.f84781a.j(c12957gArr[i14], c12957g);
        }
    }

    public void v(C12957g[] c12957gArr, int i10, int i11) {
        int i12 = (1 << i11) >> 1;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i10 + i13;
            C12957g c12957g = c12957gArr[i14];
            int i15 = i14 + i12;
            C12957g c12957g2 = c12957gArr[i15];
            C12952b c12952b = this.f84781a;
            c12957gArr[i14] = c12952b.b(c12952b.n(c12957g), this.f84781a.n(c12957g2));
            c12957gArr[i15] = this.f84781a.f84763i;
        }
    }

    public void w(C12957g[] c12957gArr, int i10, int i11) {
        int i12 = 1 << i11;
        for (int i13 = 0; i13 < i12; i13++) {
            int i14 = i10 + i13;
            c12957gArr[i14] = this.f84781a.k(c12957gArr[i14]);
        }
    }

    public void x(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, C12957g[] c12957gArr3, int i12, int i13) {
        int i14 = 1 << i13;
        int i15 = i14 >> 1;
        int i16 = i14 >> 2;
        c12957gArr[i10] = c12957gArr3[i12];
        c12957gArr2[i11] = c12957gArr3[i12 + i15];
        for (int i17 = 0; i17 < i16; i17++) {
            int i18 = i12 + (i17 << 1);
            C12957g c12957g = c12957gArr3[i18];
            C12957g c12957g2 = c12957gArr3[i18 + i15];
            int i19 = i18 + 1;
            C12957g c12957g3 = c12957gArr3[i19];
            C12957g c12957g4 = c12957gArr3[i19 + i15];
            C12951a b10 = b(c12957g, c12957g2, c12957g3, c12957g4);
            C12957g c12957g5 = b10.f84749a;
            C12957g c12957g6 = b10.f84750b;
            int i20 = i10 + i17;
            c12957gArr[i20] = this.f84781a.g(c12957g5);
            c12957gArr[i20 + i16] = this.f84781a.g(c12957g6);
            C12951a g10 = g(c12957g, c12957g2, c12957g3, c12957g4);
            C12957g c12957g7 = g10.f84749a;
            C12957g c12957g8 = g10.f84750b;
            C12952b c12952b = this.f84781a;
            C12957g[] c12957gArr4 = c12952b.f84775u;
            int i21 = (i17 + i15) << 1;
            C12951a e10 = e(c12957g7, c12957g8, c12957gArr4[i21], c12952b.k(c12957gArr4[i21 + 1]));
            C12957g c12957g9 = e10.f84749a;
            C12957g c12957g10 = e10.f84750b;
            int i22 = i11 + i17;
            c12957gArr2[i22] = this.f84781a.g(c12957g9);
            c12957gArr2[i22 + i16] = this.f84781a.g(c12957g10);
        }
    }

    public void y(C12957g[] c12957gArr, int i10, C12957g[] c12957gArr2, int i11, int i12) {
        int i13 = 1 << i12;
        for (int i14 = 0; i14 < i13; i14++) {
            int i15 = i10 + i14;
            c12957gArr[i15] = this.f84781a.p(c12957gArr[i15], c12957gArr2[i11 + i14]);
        }
    }
}
