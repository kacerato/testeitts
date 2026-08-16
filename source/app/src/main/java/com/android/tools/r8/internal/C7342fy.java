package com.android.tools.r8.internal;

import java.util.ArrayList;
import w2.C15883c;

public final class C7342fy {

    public C6700c6 f48150a;

    public InterfaceC10173ww0[] f48151b;

    public int f48152c;

    public int f48153d;

    public int f48154e;

    public C7342fy(int i10, int i11) {
        this.f48151b = new InterfaceC10173ww0[(i11 >= 0 ? i11 : 4) + i10];
        this.f48152c = i10;
        this.f48153d = 0;
        this.f48154e = i11 < 0 ? 65536 : i11;
    }

    public final C7342fy a(C7342fy c7342fy) {
        this.f48150a = c7342fy.f48150a;
        InterfaceC10173ww0[] interfaceC10173ww0Arr = this.f48151b;
        int length = interfaceC10173ww0Arr.length;
        InterfaceC10173ww0[] interfaceC10173ww0Arr2 = c7342fy.f48151b;
        if (length < interfaceC10173ww0Arr2.length) {
            this.f48151b = (InterfaceC10173ww0[]) interfaceC10173ww0Arr2.clone();
        } else {
            System.arraycopy(interfaceC10173ww0Arr2, 0, interfaceC10173ww0Arr, 0, interfaceC10173ww0Arr2.length);
        }
        this.f48152c = c7342fy.f48152c;
        this.f48153d = c7342fy.f48153d;
        this.f48154e = c7342fy.f48154e;
        return this;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < this.f48152c; i10++) {
            sb2.append((Object) a(i10));
        }
        sb2.append(C15883c.f126249O);
        for (int i11 = 0; i11 < this.f48153d; i11++) {
            sb2.append(this.f48151b[this.f48152c + i11].toString());
        }
        return sb2.toString();
    }

    public final void a(H h10, C6867d6 c6867d6) {
        int i10;
        InterfaceC10173ww0 a10;
        C6700c6 a11;
        C6700c6 c6700c6;
        int i11 = h10.f40639a;
        switch (i11) {
            case 0:
                return;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                a(c6867d6.a(h10));
                return;
            default:
                switch (i11) {
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                        a(c6867d6.a(h10, a(((C5940Sw0) h10).f44341g)));
                        return;
                    default:
                        switch (i11) {
                            case 46:
                            case 47:
                            case 48:
                            case 49:
                            case 50:
                            case 51:
                            case 52:
                            case 53:
                                break;
                            case 54:
                            case 55:
                            case 56:
                            case 57:
                            case 58:
                                C6700c6 a12 = c6867d6.a(h10, a());
                                int i12 = ((C5940Sw0) h10).f44341g;
                                a(i12, a12);
                                if (a12.a() == 2) {
                                    C9663tt0 c9663tt0 = C6867d6.f47279a;
                                    a(i12 + 1, C6700c6.f46964b);
                                }
                                if (i12 <= 0 || (a10 = a((i10 = i12 - 1))) == null || ((C6700c6) a10).a() != 2) {
                                    return;
                                }
                                C9663tt0 c9663tt02 = C6867d6.f47279a;
                                a(i10, C6700c6.f46964b);
                                return;
                            default:
                                switch (i11) {
                                    case 79:
                                    case 80:
                                    case 81:
                                    case 82:
                                    case 83:
                                    case 84:
                                    case 85:
                                    case 86:
                                        InterfaceC10173ww0 a13 = a();
                                        InterfaceC10173ww0 a14 = a();
                                        C6700c6 c6700c62 = (C6700c6) a();
                                        C6700c6 c6700c63 = (C6700c6) a14;
                                        C6700c6 c6700c64 = (C6700c6) a13;
                                        switch (h10.f40639a) {
                                            case 79:
                                                a11 = C6867d6.a(C9663tt0.a("[I", 0, 2));
                                                c6700c6 = C6700c6.f46965c;
                                                break;
                                            case 80:
                                                a11 = C6867d6.a(C9663tt0.a("[J", 0, 2));
                                                c6700c6 = C6700c6.f46967e;
                                                break;
                                            case 81:
                                                a11 = C6867d6.a(C9663tt0.a("[F", 0, 2));
                                                c6700c6 = C6700c6.f46966d;
                                                break;
                                            case 82:
                                                a11 = C6867d6.a(C9663tt0.a("[D", 0, 2));
                                                c6700c6 = C6700c6.f46968f;
                                                break;
                                            case 83:
                                                c6700c6 = C6700c6.f46969g;
                                                a11 = c6700c62;
                                                break;
                                            case 84:
                                                if (c6700c62.equals(C6867d6.a(C9663tt0.a("[Z", 0, 2)))) {
                                                    a11 = C6867d6.a(C9663tt0.a("[Z", 0, 2));
                                                } else {
                                                    a11 = C6867d6.a(C9663tt0.a("[B", 0, 2));
                                                }
                                                c6700c6 = C6700c6.f46965c;
                                                break;
                                            case 85:
                                                a11 = C6867d6.a(C9663tt0.a("[C", 0, 2));
                                                c6700c6 = C6700c6.f46965c;
                                                break;
                                            case 86:
                                                a11 = C6867d6.a(C9663tt0.a("[S", 0, 2));
                                                c6700c6 = C6700c6.f46965c;
                                                break;
                                            default:
                                                throw new AssertionError();
                                        }
                                        if (c6700c62.equals(a11)) {
                                            C6700c6 c6700c65 = C6700c6.f46965c;
                                            if (c6700c65.equals(c6700c63)) {
                                                if (!c6700c64.equals(c6700c6)) {
                                                    throw new C9356s2(h10, "Third argument", c6700c6, c6700c64);
                                                }
                                                return;
                                            }
                                            throw new C9356s2(h10, "Second argument", c6700c65, c6700c63);
                                        }
                                        throw new C9356s2(h10, "First argument", "a " + ((Object) a11) + " array reference", c6700c62);
                                    case 87:
                                        if (((C6700c6) a()).a() == 2) {
                                            throw new C9356s2(h10, "Illegal use of POP");
                                        }
                                        return;
                                    case 88:
                                        if (((C6700c6) a()).a() == 1 && ((C6700c6) a()).a() != 1) {
                                            throw new C9356s2(h10, "Illegal use of POP2");
                                        }
                                        return;
                                    case 89:
                                        C6700c6 c6700c66 = (C6700c6) a();
                                        if (c6700c66.a() == 1) {
                                            a(c6867d6.a(h10, c6700c66));
                                            a(c6867d6.a(h10, c6700c66));
                                            return;
                                        }
                                        throw new C9356s2(h10, "Illegal use of DUP");
                                    case 90:
                                        InterfaceC10173ww0 a15 = a();
                                        InterfaceC10173ww0 a16 = a();
                                        C6700c6 c6700c67 = (C6700c6) a15;
                                        if (c6700c67.a() == 1) {
                                            C6700c6 c6700c68 = (C6700c6) a16;
                                            if (c6700c68.a() == 1) {
                                                a(c6867d6.a(h10, c6700c67));
                                                a(c6867d6.a(h10, c6700c68));
                                                a(c6867d6.a(h10, c6700c67));
                                                return;
                                            }
                                        }
                                        throw new C9356s2(h10, "Illegal use of DUP_X1");
                                    case 91:
                                        C6700c6 c6700c69 = (C6700c6) a();
                                        if (c6700c69.a() != 1 || !a(h10, c6700c69, c6867d6)) {
                                            throw new C9356s2(h10, "Illegal use of DUP_X2");
                                        }
                                        return;
                                    case 92:
                                        C6700c6 c6700c610 = (C6700c6) a();
                                        if (c6700c610.a() == 1) {
                                            C6700c6 c6700c611 = (C6700c6) a();
                                            if (c6700c611.a() == 1) {
                                                a(c6867d6.a(h10, c6700c611));
                                                a(c6867d6.a(h10, c6700c610));
                                                a(c6867d6.a(h10, c6700c611));
                                                a(c6867d6.a(h10, c6700c610));
                                                return;
                                            }
                                            throw new C9356s2(h10, "Illegal use of DUP2");
                                        }
                                        a(c6700c610);
                                        a(c6867d6.a(h10, c6700c610));
                                        return;
                                    case 93:
                                        C6700c6 c6700c612 = (C6700c6) a();
                                        if (c6700c612.a() == 1) {
                                            C6700c6 c6700c613 = (C6700c6) a();
                                            if (c6700c613.a() == 1) {
                                                C6700c6 c6700c614 = (C6700c6) a();
                                                if (c6700c614.a() == 1) {
                                                    a(c6867d6.a(h10, c6700c613));
                                                    a(c6867d6.a(h10, c6700c612));
                                                    a(c6867d6.a(h10, c6700c614));
                                                    a(c6867d6.a(h10, c6700c613));
                                                    a(c6867d6.a(h10, c6700c612));
                                                    return;
                                                }
                                            }
                                        } else {
                                            C6700c6 c6700c615 = (C6700c6) a();
                                            if (c6700c615.a() == 1) {
                                                a(c6867d6.a(h10, c6700c612));
                                                a(c6867d6.a(h10, c6700c615));
                                                a(c6867d6.a(h10, c6700c612));
                                                return;
                                            }
                                        }
                                        throw new C9356s2(h10, "Illegal use of DUP2_X1");
                                    case 94:
                                        C6700c6 c6700c616 = (C6700c6) a();
                                        if (c6700c616.a() == 1) {
                                            C6700c6 c6700c617 = (C6700c6) a();
                                            if (c6700c617.a() == 1) {
                                                C6700c6 c6700c618 = (C6700c6) a();
                                                if (c6700c618.a() == 1) {
                                                    C6700c6 c6700c619 = (C6700c6) a();
                                                    if (c6700c619.a() == 1) {
                                                        a(c6867d6.a(h10, c6700c617));
                                                        a(c6867d6.a(h10, c6700c616));
                                                        a(c6867d6.a(h10, c6700c619));
                                                        a(c6867d6.a(h10, c6700c618));
                                                        a(c6867d6.a(h10, c6700c617));
                                                        a(c6867d6.a(h10, c6700c616));
                                                        return;
                                                    }
                                                } else {
                                                    a(c6867d6.a(h10, c6700c617));
                                                    a(c6867d6.a(h10, c6700c616));
                                                    a(c6867d6.a(h10, c6700c618));
                                                    a(c6867d6.a(h10, c6700c617));
                                                    a(c6867d6.a(h10, c6700c616));
                                                    return;
                                                }
                                            }
                                        } else if (a(h10, c6700c616, c6867d6)) {
                                            return;
                                        }
                                        throw new C9356s2(h10, "Illegal use of DUP2_X2");
                                    case 95:
                                        InterfaceC10173ww0 a17 = a();
                                        C6700c6 c6700c620 = (C6700c6) a();
                                        if (c6700c620.a() == 1) {
                                            C6700c6 c6700c621 = (C6700c6) a17;
                                            if (c6700c621.a() == 1) {
                                                a(c6867d6.a(h10, c6700c621));
                                                a(c6867d6.a(h10, c6700c620));
                                                return;
                                            }
                                        }
                                        throw new C9356s2(h10, "Illegal use of SWAP");
                                    case 96:
                                    case 97:
                                    case 98:
                                    case 99:
                                    case 100:
                                    case 101:
                                    case 102:
                                    case 103:
                                    case 104:
                                    case 105:
                                    case 106:
                                    case 107:
                                    case 108:
                                    case 109:
                                    case 110:
                                    case 111:
                                    case 112:
                                    case 113:
                                    case 114:
                                    case 115:
                                    case 120:
                                    case 121:
                                    case 122:
                                    case 123:
                                    case 124:
                                    case 125:
                                    case 126:
                                    case 127:
                                    case 128:
                                    case 129:
                                    case 130:
                                    case 131:
                                    case 148:
                                    case 149:
                                    case 150:
                                    case 151:
                                    case 152:
                                        break;
                                    case 116:
                                    case 117:
                                    case 118:
                                    case 119:
                                        a(c6867d6.b(h10, a()));
                                        return;
                                    case 132:
                                        int i13 = ((PB) h10).f43160g;
                                        a(i13, c6867d6.b(h10, a(i13)));
                                        return;
                                    case 133:
                                    case 134:
                                    case 135:
                                    case 136:
                                    case 137:
                                    case 138:
                                    case 139:
                                    case 140:
                                    case 141:
                                    case 142:
                                    case 143:
                                    case 144:
                                    case 145:
                                    case 146:
                                    case 147:
                                        a(c6867d6.b(h10, a()));
                                        return;
                                    case 153:
                                    case 154:
                                    case 155:
                                    case 156:
                                    case 157:
                                    case 158:
                                        c6867d6.b(h10, a());
                                        return;
                                    case 159:
                                    case 160:
                                    case 161:
                                    case 162:
                                    case 163:
                                    case 164:
                                    case 165:
                                    case 166:
                                    case 181:
                                        c6867d6.a(h10, a(), a());
                                        return;
                                    case 167:
                                    case 169:
                                        return;
                                    case 168:
                                        a(c6867d6.a(h10));
                                        return;
                                    case 170:
                                    case 171:
                                        c6867d6.b(h10, a());
                                        return;
                                    case 172:
                                    case 173:
                                    case 174:
                                    case 175:
                                    case 176:
                                        InterfaceC10173ww0 a18 = a();
                                        c6867d6.b(h10, a18);
                                        C6700c6 c6700c622 = this.f48150a;
                                        C6700c6 c6700c623 = (C6700c6) a18;
                                        if (!c6700c623.equals(c6700c622)) {
                                            throw new C9356s2(h10, "Incompatible return type", c6700c622, c6700c623);
                                        }
                                        return;
                                    case 177:
                                        if (this.f48150a != null) {
                                            throw new C9356s2(h10, "Incompatible return type");
                                        }
                                        return;
                                    case 178:
                                        a(c6867d6.a(h10));
                                        return;
                                    case 179:
                                        c6867d6.b(h10, a());
                                        return;
                                    case 180:
                                        a(c6867d6.b(h10, a()));
                                        return;
                                    case 182:
                                    case 183:
                                    case 184:
                                    case 185:
                                        a(h10, ((KW) h10).f41691i, c6867d6);
                                        return;
                                    case 186:
                                        a(h10, ((RJ) h10).f43859h, c6867d6);
                                        return;
                                    case 187:
                                        a(c6867d6.a(h10));
                                        return;
                                    case 188:
                                    case 189:
                                    case 190:
                                        a(c6867d6.b(h10, a()));
                                        return;
                                    case 191:
                                        c6867d6.b(h10, a());
                                        return;
                                    case 192:
                                    case 193:
                                        a(c6867d6.b(h10, a()));
                                        return;
                                    case 194:
                                    case 195:
                                        c6867d6.b(h10, a());
                                        return;
                                    default:
                                        switch (i11) {
                                            case 197:
                                                ArrayList arrayList = new ArrayList();
                                                for (int i14 = ((C7600hY) h10).f48576h; i14 > 0; i14--) {
                                                    arrayList.add(0, a());
                                                }
                                                a(c6867d6.a(h10, arrayList));
                                                return;
                                            case 198:
                                            case 199:
                                                c6867d6.b(h10, a());
                                                return;
                                            default:
                                                throw new C9356s2(h10, T60.a(h10.f40639a, "Illegal opcode "));
                                        }
                                }
                        }
                        a(c6867d6.a(h10, a(), a()));
                        return;
                }
        }
    }

    public final InterfaceC10173ww0 a(int i10) {
        if (i10 < this.f48152c) {
            return this.f48151b[i10];
        }
        throw new IndexOutOfBoundsException(T60.a(i10, "Trying to get an inexistant local variable "));
    }

    public final void a(int i10, C6700c6 c6700c6) {
        if (i10 < this.f48152c) {
            this.f48151b[i10] = c6700c6;
            return;
        }
        throw new IndexOutOfBoundsException(T60.a(i10, "Trying to set an inexistant local variable "));
    }

    public final InterfaceC10173ww0 a() {
        int i10 = this.f48153d;
        if (i10 != 0) {
            InterfaceC10173ww0[] interfaceC10173ww0Arr = this.f48151b;
            int i11 = this.f48152c;
            int i12 = i10 - 1;
            this.f48153d = i12;
            return interfaceC10173ww0Arr[i11 + i12];
        }
        throw new IndexOutOfBoundsException("Cannot pop operand off an empty stack.");
    }

    public final void a(C6700c6 c6700c6) {
        int i10 = this.f48152c + this.f48153d;
        InterfaceC10173ww0[] interfaceC10173ww0Arr = this.f48151b;
        if (i10 >= interfaceC10173ww0Arr.length) {
            if (i10 < this.f48154e) {
                InterfaceC10173ww0[] interfaceC10173ww0Arr2 = new InterfaceC10173ww0[interfaceC10173ww0Arr.length * 2];
                this.f48151b = interfaceC10173ww0Arr2;
                System.arraycopy(interfaceC10173ww0Arr, 0, interfaceC10173ww0Arr2, 0, interfaceC10173ww0Arr.length);
            } else {
                throw new IndexOutOfBoundsException("Insufficient maximum stack size.");
            }
        }
        InterfaceC10173ww0[] interfaceC10173ww0Arr3 = this.f48151b;
        int i11 = this.f48152c;
        int i12 = this.f48153d;
        this.f48153d = i12 + 1;
        interfaceC10173ww0Arr3[i11 + i12] = c6700c6;
    }

    public final boolean a(H h10, C6700c6 c6700c6, C6867d6 c6867d6) {
        C6700c6 c6700c62 = (C6700c6) a();
        if (c6700c62.a() == 1) {
            C6700c6 c6700c63 = (C6700c6) a();
            if (c6700c63.a() != 1) {
                return false;
            }
            a(c6867d6.a(h10, c6700c6));
            a(c6867d6.a(h10, c6700c63));
            a(c6867d6.a(h10, c6700c62));
            a(c6867d6.a(h10, c6700c6));
            return true;
        }
        a(c6867d6.a(h10, c6700c6));
        a(c6867d6.a(h10, c6700c62));
        a(c6867d6.a(h10, c6700c6));
        return true;
    }

    public final void a(H h10, String str, C6867d6 c6867d6) {
        ArrayList arrayList = new ArrayList();
        for (int a10 = C9663tt0.a(str); a10 > 0; a10--) {
            arrayList.add(0, a());
        }
        int i10 = h10.f40639a;
        if (i10 != 184 && i10 != 186) {
            arrayList.add(0, a());
        }
        if (C9663tt0.a(str, C9663tt0.e(str), str.length()) == C9663tt0.f52713e) {
            c6867d6.a(h10, arrayList);
        } else {
            a(c6867d6.a(h10, arrayList));
        }
    }

    public final boolean a(C7342fy c7342fy, C6867d6 c6867d6) {
        if (this.f48153d == c7342fy.f48153d) {
            boolean z10 = false;
            for (int i10 = 0; i10 < this.f48152c + this.f48153d; i10++) {
                C6700c6 c6700c6 = (C6700c6) this.f48151b[i10];
                if (!c6700c6.equals((C6700c6) c7342fy.f48151b[i10])) {
                    c6700c6 = C6700c6.f46964b;
                }
                if (!c6700c6.equals(this.f48151b[i10])) {
                    this.f48151b[i10] = c6700c6;
                    z10 = true;
                }
            }
            return z10;
        }
        throw new C9356s2(null, "Incompatible stack heights");
    }
}
