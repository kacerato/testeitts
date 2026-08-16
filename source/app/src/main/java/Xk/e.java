package Xk;

import hi.C13486b;
import java.util.Vector;
import oh.AbstractC14545v;
import oh.B;
import oh.C0;
import oh.C14518h;
import oh.C14539s;
import oh.E;
import oh.G0;
import oh.InterfaceC14516g;

public class e extends AbstractC14545v {

    public B f29498b;

    public e(E e10) {
        E e11 = (E) e10.I(0);
        int[] iArr = new int[e11.size()];
        for (int i10 = 0; i10 < e11.size(); i10++) {
            iArr[i10] = u(e11.I(i10));
        }
        E e12 = (E) e10.I(1);
        int size = e12.size();
        byte[][] bArr = new byte[size];
        for (int i11 = 0; i11 < size; i11++) {
            bArr[i11] = ((C0) e12.I(i11)).H();
        }
        E e13 = (E) e10.I(2);
        int size2 = e13.size();
        byte[][] bArr2 = new byte[size2];
        for (int i12 = 0; i12 < size2; i12++) {
            bArr2[i12] = ((C0) e13.I(i12)).H();
        }
        E e14 = (E) e10.I(3);
        int size3 = e14.size();
        byte[][][] bArr3 = new byte[size3][];
        for (int i13 = 0; i13 < size3; i13++) {
            E e15 = (E) e14.I(i13);
            bArr3[i13] = new byte[e15.size()];
            int i14 = 0;
            while (true) {
                byte[][] bArr4 = bArr3[i13];
                if (i14 < bArr4.length) {
                    bArr4[i14] = ((C0) e15.I(i14)).H();
                    i14++;
                }
            }
        }
        E e16 = (E) e10.I(4);
        int size4 = e16.size();
        byte[][][] bArr5 = new byte[size4][];
        for (int i15 = 0; i15 < size4; i15++) {
            E e17 = (E) e16.I(i15);
            bArr5[i15] = new byte[e17.size()];
            int i16 = 0;
            while (true) {
                byte[][] bArr6 = bArr5[i15];
                if (i16 < bArr6.length) {
                    bArr6[i16] = ((C0) e17.I(i16)).H();
                    i16++;
                }
            }
        }
        Pl.n[][] nVarArr = new Pl.n[((E) e10.I(5)).size()];
    }

    public static int u(InterfaceC14516g interfaceC14516g) {
        return ((C14539s) interfaceC14516g).O();
    }

    public static e w(Object obj) {
        if (obj instanceof e) {
            return (e) obj;
        }
        if (obj != null) {
            return new e(E.G(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f29498b;
    }

    public final B v(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, byte[][][] bArr5, Pl.n[][] nVarArr, Pl.n[][] nVarArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, Pl.e[] eVarArr, Pl.e[] eVarArr2, Pl.e[] eVarArr3, int[] iArr2, byte[][] bArr6, Pl.i[] iVarArr, byte[][] bArr7, Pl.j[] jVarArr, Pl.f fVar, C13486b[] c13486bArr) {
        Pl.n[][] nVarArr3 = nVarArr;
        C14518h c14518h = new C14518h();
        C14518h c14518h2 = new C14518h();
        for (int i10 : iArr) {
            c14518h2.a(new C14539s(i10));
        }
        c14518h.a(new G0(c14518h2));
        C14518h c14518h3 = new C14518h();
        for (byte[] bArr8 : bArr) {
            c14518h3.a(new C0(bArr8));
        }
        c14518h.a(new G0(c14518h3));
        C14518h c14518h4 = new C14518h();
        for (byte[] bArr9 : bArr2) {
            c14518h4.a(new C0(bArr9));
        }
        c14518h.a(new G0(c14518h4));
        C14518h c14518h5 = new C14518h();
        C14518h c14518h6 = new C14518h();
        for (int i11 = 0; i11 < bArr3.length; i11++) {
            for (int i12 = 0; i12 < bArr3[i11].length; i12++) {
                c14518h5.a(new C0(bArr3[i11][i12]));
            }
            c14518h6.a(new G0(c14518h5));
            c14518h5 = new C14518h();
        }
        c14518h.a(new G0(c14518h6));
        C14518h c14518h7 = new C14518h();
        C14518h c14518h8 = new C14518h();
        for (int i13 = 0; i13 < bArr4.length; i13++) {
            for (int i14 = 0; i14 < bArr4[i13].length; i14++) {
                c14518h7.a(new C0(bArr4[i13][i14]));
            }
            c14518h8.a(new G0(c14518h7));
            c14518h7 = new C14518h();
        }
        c14518h.a(new G0(c14518h8));
        C14518h c14518h9 = new C14518h();
        C14518h c14518h10 = new C14518h();
        C14518h c14518h11 = new C14518h();
        C14518h c14518h12 = new C14518h();
        C14518h c14518h13 = new C14518h();
        int i15 = 0;
        while (i15 < nVarArr3.length) {
            int i16 = 0;
            while (i16 < nVarArr3[i15].length) {
                c14518h11.a(new G0(c13486bArr[0]));
                int i17 = nVarArr3[i15][i16].g()[1];
                c14518h12.a(new C0(nVarArr3[i15][i16].f()[0]));
                c14518h12.a(new C0(nVarArr3[i15][i16].f()[1]));
                c14518h12.a(new C0(nVarArr3[i15][i16].f()[2]));
                for (int i18 = 0; i18 < i17; i18++) {
                    c14518h12.a(new C0(nVarArr3[i15][i16].f()[i18 + 3]));
                }
                c14518h11.a(new G0(c14518h12));
                c14518h12 = new C14518h();
                c14518h13.a(new C14539s(nVarArr3[i15][i16].g()[0]));
                c14518h13.a(new C14539s(i17));
                c14518h13.a(new C14539s(nVarArr3[i15][i16].g()[2]));
                c14518h13.a(new C14539s(nVarArr3[i15][i16].g()[3]));
                c14518h13.a(new C14539s(nVarArr3[i15][i16].g()[4]));
                c14518h13.a(new C14539s(nVarArr3[i15][i16].g()[5]));
                int i19 = 0;
                while (i19 < i17) {
                    c14518h13.a(new C14539s(nVarArr3[i15][i16].g()[i19 + 6]));
                    i19++;
                    nVarArr3 = nVarArr;
                }
                c14518h11.a(new G0(c14518h13));
                c14518h13 = new C14518h();
                c14518h10.a(new G0(c14518h11));
                c14518h11 = new C14518h();
                i16++;
                nVarArr3 = nVarArr;
            }
            c14518h9.a(new G0(c14518h10));
            c14518h10 = new C14518h();
            i15++;
            nVarArr3 = nVarArr;
        }
        c14518h.a(new G0(c14518h9));
        C14518h c14518h14 = new C14518h();
        C14518h c14518h15 = new C14518h();
        C14518h c14518h16 = new C14518h();
        C14518h c14518h17 = new C14518h();
        C14518h c14518h18 = new C14518h();
        for (int i20 = 0; i20 < nVarArr2.length; i20++) {
            for (int i21 = 0; i21 < nVarArr2[i20].length; i21++) {
                c14518h16.a(new G0(c13486bArr[0]));
                int i22 = nVarArr2[i20][i21].g()[1];
                c14518h17.a(new C0(nVarArr2[i20][i21].f()[0]));
                c14518h17.a(new C0(nVarArr2[i20][i21].f()[1]));
                c14518h17.a(new C0(nVarArr2[i20][i21].f()[2]));
                for (int i23 = 0; i23 < i22; i23++) {
                    c14518h17.a(new C0(nVarArr2[i20][i21].f()[i23 + 3]));
                }
                c14518h16.a(new G0(c14518h17));
                c14518h17 = new C14518h();
                c14518h18.a(new C14539s(nVarArr2[i20][i21].g()[0]));
                c14518h18.a(new C14539s(i22));
                c14518h18.a(new C14539s(nVarArr2[i20][i21].g()[2]));
                c14518h18.a(new C14539s(nVarArr2[i20][i21].g()[3]));
                c14518h18.a(new C14539s(nVarArr2[i20][i21].g()[4]));
                c14518h18.a(new C14539s(nVarArr2[i20][i21].g()[5]));
                for (int i24 = 0; i24 < i22; i24++) {
                    c14518h18.a(new C14539s(nVarArr2[i20][i21].g()[i24 + 6]));
                }
                c14518h16.a(new G0(c14518h18));
                c14518h18 = new C14518h();
                c14518h15.a(new G0(c14518h16));
                c14518h16 = new C14518h();
            }
            c14518h14.a(new G0(new G0(c14518h15)));
            c14518h15 = new C14518h();
        }
        c14518h.a(new G0(c14518h14));
        C14518h c14518h19 = new C14518h();
        C14518h c14518h20 = new C14518h();
        for (int i25 = 0; i25 < bArr5.length; i25++) {
            for (int i26 = 0; i26 < bArr5[i25].length; i26++) {
                c14518h19.a(new C0(bArr5[i25][i26]));
            }
            c14518h20.a(new G0(c14518h19));
            c14518h19 = new C14518h();
        }
        c14518h.a(new G0(c14518h20));
        C14518h c14518h21 = new C14518h();
        C14518h c14518h22 = new C14518h();
        for (int i27 = 0; i27 < vectorArr.length; i27++) {
            for (int i28 = 0; i28 < vectorArr[i27].size(); i28++) {
                c14518h21.a(new C0((byte[]) vectorArr[i27].elementAt(i28)));
            }
            c14518h22.a(new G0(c14518h21));
            c14518h21 = new C14518h();
        }
        c14518h.a(new G0(c14518h22));
        C14518h c14518h23 = new C14518h();
        C14518h c14518h24 = new C14518h();
        for (int i29 = 0; i29 < vectorArr2.length; i29++) {
            for (int i30 = 0; i30 < vectorArr2[i29].size(); i30++) {
                c14518h23.a(new C0((byte[]) vectorArr2[i29].elementAt(i30)));
            }
            c14518h24.a(new G0(c14518h23));
            c14518h23 = new C14518h();
        }
        c14518h.a(new G0(c14518h24));
        C14518h c14518h25 = new C14518h();
        C14518h c14518h26 = new C14518h();
        C14518h c14518h27 = new C14518h();
        for (int i31 = 0; i31 < vectorArr3.length; i31++) {
            for (int i32 = 0; i32 < vectorArr3[i31].length; i32++) {
                for (int i33 = 0; i33 < vectorArr3[i31][i32].size(); i33++) {
                    c14518h25.a(new C0((byte[]) vectorArr3[i31][i32].elementAt(i33)));
                }
                c14518h26.a(new G0(c14518h25));
                c14518h25 = new C14518h();
            }
            c14518h27.a(new G0(c14518h26));
            c14518h26 = new C14518h();
        }
        c14518h.a(new G0(c14518h27));
        C14518h c14518h28 = new C14518h();
        C14518h c14518h29 = new C14518h();
        C14518h c14518h30 = new C14518h();
        for (int i34 = 0; i34 < vectorArr4.length; i34++) {
            for (int i35 = 0; i35 < vectorArr4[i34].length; i35++) {
                for (int i36 = 0; i36 < vectorArr4[i34][i35].size(); i36++) {
                    c14518h28.a(new C0((byte[]) vectorArr4[i34][i35].elementAt(i36)));
                }
                c14518h29.a(new G0(c14518h28));
                c14518h28 = new C14518h();
            }
            c14518h30.a(new G0(c14518h29));
            c14518h29 = new C14518h();
        }
        c14518h.a(new G0(c14518h30));
        C14518h c14518h31 = new C14518h();
        C14518h c14518h32 = new C14518h();
        C14518h c14518h33 = new C14518h();
        C14518h c14518h34 = new C14518h();
        for (int i37 = 0; i37 < eVarArr.length; i37++) {
            c14518h32.a(new G0(c13486bArr[0]));
            byte[][] c10 = eVarArr[i37].c();
            c14518h33.a(new C0(c10[0]));
            c14518h33.a(new C0(c10[1]));
            c14518h33.a(new C0(c10[2]));
            c14518h33.a(new C0(c10[3]));
            c14518h32.a(new G0(c14518h33));
            c14518h33 = new C14518h();
            int[] d10 = eVarArr[i37].d();
            c14518h34.a(new C14539s(d10[0]));
            c14518h34.a(new C14539s(d10[1]));
            c14518h34.a(new C14539s(d10[2]));
            c14518h34.a(new C14539s(d10[3]));
            c14518h32.a(new G0(c14518h34));
            c14518h34 = new C14518h();
            c14518h31.a(new G0(c14518h32));
            c14518h32 = new C14518h();
        }
        c14518h.a(new G0(c14518h31));
        C14518h c14518h35 = new C14518h();
        C14518h c14518h36 = new C14518h();
        C14518h c14518h37 = new C14518h();
        C14518h c14518h38 = new C14518h();
        for (int i38 = 0; i38 < eVarArr2.length; i38++) {
            c14518h36.a(new G0(c13486bArr[0]));
            byte[][] c11 = eVarArr2[i38].c();
            c14518h37.a(new C0(c11[0]));
            c14518h37.a(new C0(c11[1]));
            c14518h37.a(new C0(c11[2]));
            c14518h37.a(new C0(c11[3]));
            c14518h36.a(new G0(c14518h37));
            c14518h37 = new C14518h();
            int[] d11 = eVarArr2[i38].d();
            c14518h38.a(new C14539s(d11[0]));
            c14518h38.a(new C14539s(d11[1]));
            c14518h38.a(new C14539s(d11[2]));
            c14518h38.a(new C14539s(d11[3]));
            c14518h36.a(new G0(c14518h38));
            c14518h38 = new C14518h();
            c14518h35.a(new G0(c14518h36));
            c14518h36 = new C14518h();
        }
        c14518h.a(new G0(c14518h35));
        C14518h c14518h39 = new C14518h();
        C14518h c14518h40 = new C14518h();
        C14518h c14518h41 = new C14518h();
        C14518h c14518h42 = new C14518h();
        C14518h c14518h43 = c14518h;
        for (int i39 = 0; i39 < eVarArr3.length; i39++) {
            c14518h40.a(new G0(c13486bArr[0]));
            byte[][] c12 = eVarArr3[i39].c();
            c14518h41.a(new C0(c12[0]));
            c14518h41.a(new C0(c12[1]));
            c14518h41.a(new C0(c12[2]));
            c14518h41.a(new C0(c12[3]));
            c14518h40.a(new G0(c14518h41));
            c14518h41 = new C14518h();
            int[] d12 = eVarArr3[i39].d();
            c14518h42.a(new C14539s(d12[0]));
            c14518h42.a(new C14539s(d12[1]));
            c14518h42.a(new C14539s(d12[2]));
            c14518h42.a(new C14539s(d12[3]));
            c14518h40.a(new G0(c14518h42));
            c14518h42 = new C14518h();
            c14518h39.a(new G0(c14518h40));
            c14518h40 = new C14518h();
        }
        c14518h43.a(new G0(c14518h39));
        C14518h c14518h44 = new C14518h();
        for (int i40 : iArr2) {
            c14518h44.a(new C14539s(i40));
        }
        c14518h43.a(new G0(c14518h44));
        C14518h c14518h45 = new C14518h();
        for (byte[] bArr10 : bArr6) {
            c14518h45.a(new C0(bArr10));
        }
        c14518h43.a(new G0(c14518h45));
        C14518h c14518h46 = new C14518h();
        C14518h c14518h47 = new C14518h();
        new C14518h();
        C14518h c14518h48 = new C14518h();
        C14518h c14518h49 = new C14518h();
        C14518h c14518h50 = new C14518h();
        C14518h c14518h51 = new C14518h();
        int i41 = 0;
        while (i41 < iVarArr.length) {
            c14518h47.a(new G0(c13486bArr[0]));
            new C14518h();
            int i42 = iVarArr[i41].f()[0];
            int i43 = iVarArr[i41].f()[7];
            c14518h48.a(new C0(iVarArr[i41].e()[0]));
            int i44 = 0;
            while (i44 < i42) {
                i44++;
                c14518h48.a(new C0(iVarArr[i41].e()[i44]));
            }
            for (int i45 = 0; i45 < i43; i45++) {
                c14518h48.a(new C0(iVarArr[i41].e()[i42 + 1 + i45]));
            }
            c14518h47.a(new G0(c14518h48));
            C14518h c14518h52 = new C14518h();
            c14518h49.a(new C14539s(i42));
            c14518h49.a(new C14539s(iVarArr[i41].f()[1]));
            c14518h49.a(new C14539s(iVarArr[i41].f()[2]));
            c14518h49.a(new C14539s(iVarArr[i41].f()[3]));
            c14518h49.a(new C14539s(iVarArr[i41].f()[4]));
            c14518h49.a(new C14539s(iVarArr[i41].f()[5]));
            c14518h49.a(new C14539s(iVarArr[i41].f()[6]));
            c14518h49.a(new C14539s(i43));
            for (int i46 = 0; i46 < i42; i46++) {
                c14518h49.a(new C14539s(iVarArr[i41].f()[i46 + 8]));
            }
            for (int i47 = 0; i47 < i43; i47++) {
                c14518h49.a(new C14539s(iVarArr[i41].f()[i42 + 8 + i47]));
            }
            c14518h47.a(new G0(c14518h49));
            C14518h c14518h53 = new C14518h();
            C14518h c14518h54 = new C14518h();
            C14518h c14518h55 = new C14518h();
            C14518h c14518h56 = new C14518h();
            if (iVarArr[i41].g() != null) {
                int i48 = 0;
                while (i48 < iVarArr[i41].g().length) {
                    c14518h54.a(new G0(c13486bArr[0]));
                    int i49 = iVarArr[i41].g()[i48].g()[1];
                    C14518h c14518h57 = c14518h52;
                    c14518h55.a(new C0(iVarArr[i41].g()[i48].f()[0]));
                    c14518h55.a(new C0(iVarArr[i41].g()[i48].f()[1]));
                    c14518h55.a(new C0(iVarArr[i41].g()[i48].f()[2]));
                    int i50 = 0;
                    while (i50 < i49) {
                        c14518h55.a(new C0(iVarArr[i41].g()[i48].f()[i50 + 3]));
                        i50++;
                        c14518h53 = c14518h53;
                    }
                    C14518h c14518h58 = c14518h53;
                    c14518h54.a(new G0(c14518h55));
                    c14518h55 = new C14518h();
                    C14518h c14518h59 = c14518h43;
                    c14518h56.a(new C14539s(iVarArr[i41].g()[i48].g()[0]));
                    c14518h56.a(new C14539s(i49));
                    c14518h56.a(new C14539s(iVarArr[i41].g()[i48].g()[2]));
                    c14518h56.a(new C14539s(iVarArr[i41].g()[i48].g()[3]));
                    c14518h56.a(new C14539s(iVarArr[i41].g()[i48].g()[4]));
                    c14518h56.a(new C14539s(iVarArr[i41].g()[i48].g()[5]));
                    int i51 = 0;
                    while (i51 < i49) {
                        c14518h56.a(new C14539s(iVarArr[i41].g()[i48].g()[i51 + 6]));
                        i51++;
                        i49 = i49;
                        c14518h59 = c14518h59;
                    }
                    c14518h54.a(new G0(c14518h56));
                    c14518h56 = new C14518h();
                    c14518h50.a(new G0(c14518h54));
                    c14518h54 = new C14518h();
                    i48++;
                    c14518h52 = c14518h57;
                    c14518h53 = c14518h58;
                    c14518h43 = c14518h59;
                }
            }
            C14518h c14518h60 = c14518h52;
            C14518h c14518h61 = c14518h53;
            C14518h c14518h62 = c14518h43;
            c14518h47.a(new G0(c14518h50));
            c14518h50 = new C14518h();
            C14518h c14518h63 = new C14518h();
            if (iVarArr[i41].b() != null) {
                for (int i52 = 0; i52 < iVarArr[i41].b().length; i52++) {
                    for (int i53 = 0; i53 < iVarArr[i41].b()[i52].size(); i53++) {
                        c14518h63.a(new C0((byte[]) iVarArr[i41].b()[i52].elementAt(i53)));
                    }
                    c14518h51.a(new G0(c14518h63));
                    c14518h63 = new C14518h();
                }
            }
            c14518h47.a(new G0(c14518h51));
            c14518h51 = new C14518h();
            c14518h46.a(new G0(c14518h47));
            c14518h47 = new C14518h();
            i41++;
            c14518h48 = c14518h60;
            c14518h49 = c14518h61;
            c14518h43 = c14518h62;
        }
        C14518h c14518h64 = c14518h43;
        c14518h64.a(new G0(c14518h46));
        C14518h c14518h65 = new C14518h();
        for (byte[] bArr11 : bArr7) {
            c14518h65.a(new C0(bArr11));
        }
        c14518h64.a(new G0(c14518h65));
        C14518h c14518h66 = new C14518h();
        C14518h c14518h67 = new C14518h();
        new C14518h();
        C14518h c14518h68 = new C14518h();
        C14518h c14518h69 = new C14518h();
        for (int i54 = 0; i54 < jVarArr.length; i54++) {
            c14518h67.a(new G0(c13486bArr[0]));
            new C14518h();
            c14518h68.a(new C0(jVarArr[i54].c()[0]));
            c14518h68.a(new C0(jVarArr[i54].c()[1]));
            c14518h68.a(new C0(jVarArr[i54].c()[2]));
            c14518h68.a(new C0(jVarArr[i54].c()[3]));
            c14518h68.a(new C0(jVarArr[i54].c()[4]));
            c14518h67.a(new G0(c14518h68));
            c14518h68 = new C14518h();
            c14518h69.a(new C14539s(jVarArr[i54].d()[0]));
            c14518h69.a(new C14539s(jVarArr[i54].d()[1]));
            c14518h69.a(new C14539s(jVarArr[i54].d()[2]));
            c14518h69.a(new C14539s(jVarArr[i54].d()[3]));
            c14518h69.a(new C14539s(jVarArr[i54].d()[4]));
            c14518h69.a(new C14539s(jVarArr[i54].d()[5]));
            c14518h69.a(new C14539s(jVarArr[i54].d()[6]));
            c14518h69.a(new C14539s(jVarArr[i54].d()[7]));
            c14518h69.a(new C14539s(jVarArr[i54].d()[8]));
            c14518h67.a(new G0(c14518h69));
            c14518h69 = new C14518h();
            c14518h66.a(new G0(c14518h67));
            c14518h67 = new C14518h();
        }
        c14518h64.a(new G0(c14518h66));
        C14518h c14518h70 = new C14518h();
        C14518h c14518h71 = new C14518h();
        C14518h c14518h72 = new C14518h();
        C14518h c14518h73 = new C14518h();
        for (int i55 = 0; i55 < fVar.a().length; i55++) {
            c14518h71.a(new C14539s(fVar.a()[i55]));
            c14518h72.a(new C14539s(fVar.d()[i55]));
            c14518h73.a(new C14539s(fVar.b()[i55]));
        }
        c14518h70.a(new C14539s(fVar.c()));
        c14518h70.a(new G0(c14518h71));
        c14518h70.a(new G0(c14518h72));
        c14518h70.a(new G0(c14518h73));
        c14518h64.a(new G0(c14518h70));
        C14518h c14518h74 = new C14518h();
        for (C13486b c13486b : c13486bArr) {
            c14518h74.a(c13486b);
        }
        c14518h64.a(new G0(c14518h74));
        return new G0(c14518h64);
    }

    public e(int[] iArr, byte[][] bArr, byte[][] bArr2, byte[][][] bArr3, byte[][][] bArr4, Pl.n[][] nVarArr, Pl.n[][] nVarArr2, Vector[] vectorArr, Vector[] vectorArr2, Vector[][] vectorArr3, Vector[][] vectorArr4, byte[][][] bArr5, Pl.e[] eVarArr, Pl.e[] eVarArr2, Pl.e[] eVarArr3, int[] iArr2, byte[][] bArr6, Pl.i[] iVarArr, byte[][] bArr7, Pl.j[] jVarArr, Pl.f fVar, C13486b c13486b) {
        this.f29498b = v(iArr, bArr, bArr2, bArr3, bArr4, bArr5, nVarArr, nVarArr2, vectorArr, vectorArr2, vectorArr3, vectorArr4, eVarArr, eVarArr2, eVarArr3, iArr2, bArr6, iVarArr, bArr7, jVarArr, fVar, new C13486b[]{c13486b});
    }
}
