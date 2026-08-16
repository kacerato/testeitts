package com.android.tools.r8.internal;

import java.util.ArrayList;

public final class C6867d6 extends AbstractC10406yJ {

    public static final C9663tt0 f47279a = C9663tt0.d("null");

    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x00f1. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x00f4. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x000f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0012. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:35:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0115  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6700c6 a(H h10, InterfaceC10173ww0 interfaceC10173ww0, InterfaceC10173ww0 interfaceC10173ww02) {
        C6700c6 a10;
        C6700c6 c6700c6;
        C6700c6 c6700c62 = (C6700c6) interfaceC10173ww0;
        C6700c6 c6700c63 = (C6700c6) interfaceC10173ww02;
        int i10 = h10.f40639a;
        if (i10 != 181) {
            switch (i10) {
                case 46:
                    c6700c6 = a(C9663tt0.a("[I", 0, 2));
                    a10 = C6700c6.f46965c;
                    break;
                case 47:
                    c6700c6 = a(C9663tt0.a("[J", 0, 2));
                    a10 = C6700c6.f46965c;
                    break;
                case 48:
                    c6700c6 = a(C9663tt0.a("[F", 0, 2));
                    a10 = C6700c6.f46965c;
                    break;
                case 49:
                    c6700c6 = a(C9663tt0.a("[D", 0, 2));
                    a10 = C6700c6.f46965c;
                    break;
                case 50:
                    c6700c6 = a(C9663tt0.a("[Ljava/lang/Object;", 0, 19));
                    a10 = C6700c6.f46965c;
                    break;
                case 51:
                    if (c6700c62.equals(a(C9663tt0.a("[Z", 0, 2)))) {
                        c6700c6 = a(C9663tt0.a("[Z", 0, 2));
                    } else {
                        c6700c6 = a(C9663tt0.a("[B", 0, 2));
                    }
                    a10 = C6700c6.f46965c;
                    break;
                case 52:
                    c6700c6 = a(C9663tt0.a("[C", 0, 2));
                    a10 = C6700c6.f46965c;
                    break;
                case 53:
                    c6700c6 = a(C9663tt0.a("[S", 0, 2));
                    a10 = C6700c6.f46965c;
                    break;
                default:
                    switch (i10) {
                        case 96:
                        case 100:
                        case 104:
                        case 108:
                        case 112:
                            c6700c6 = C6700c6.f46965c;
                            a10 = c6700c6;
                            break;
                        case 97:
                        case 101:
                        case 105:
                        case 109:
                        case 113:
                            c6700c6 = C6700c6.f46967e;
                            a10 = c6700c6;
                            break;
                        case 98:
                        case 102:
                        case 106:
                        case 110:
                        case 114:
                            c6700c6 = C6700c6.f46966d;
                            a10 = c6700c6;
                            break;
                        case 99:
                        case 103:
                        case 107:
                        case 111:
                        case 115:
                            c6700c6 = C6700c6.f46968f;
                            a10 = c6700c6;
                            break;
                        default:
                            switch (i10) {
                                case 120:
                                case 122:
                                case 124:
                                case 126:
                                case 128:
                                case 130:
                                    break;
                                case 121:
                                case 123:
                                case 125:
                                    c6700c6 = C6700c6.f46967e;
                                    a10 = C6700c6.f46965c;
                                    break;
                                case 127:
                                case 129:
                                case 131:
                                    break;
                                default:
                                    switch (i10) {
                                        case 148:
                                            break;
                                        case 149:
                                        case 150:
                                            break;
                                        case 151:
                                        case 152:
                                            break;
                                        default:
                                            switch (i10) {
                                                case 159:
                                                case 160:
                                                case 161:
                                                case 162:
                                                case 163:
                                                case 164:
                                                    break;
                                                case 165:
                                                case 166:
                                                    c6700c6 = C6700c6.f46969g;
                                                    break;
                                                default:
                                                    throw new AssertionError();
                                            }
                                            a10 = c6700c6;
                                            break;
                                    }
                            }
                    }
            }
        } else {
            C7336fw c7336fw = (C7336fw) h10;
            C6700c6 a11 = a(C9663tt0.d(c7336fw.f48137g));
            String str = c7336fw.f48139i;
            a10 = a(C9663tt0.a(str, 0, str.length()));
            c6700c6 = a11;
        }
        if (c6700c62.equals(c6700c6)) {
            if (c6700c63.equals(a10)) {
                int i11 = h10.f40639a;
                if (i11 == 50) {
                    return C6700c6.f46969g;
                }
                if (i11 == 181) {
                    return null;
                }
                switch (i11) {
                    case 46:
                    case 51:
                    case 52:
                    case 53:
                        return C6700c6.f46965c;
                    case 47:
                        return C6700c6.f46967e;
                    case 48:
                        return C6700c6.f46966d;
                    case 49:
                        return C6700c6.f46968f;
                    case 50:
                        return C6700c6.f46969g;
                    default:
                        switch (i11) {
                            case 96:
                            case 100:
                            case 104:
                            case 108:
                            case 112:
                                break;
                            case 97:
                            case 101:
                            case 105:
                            case 109:
                            case 113:
                                break;
                            case 98:
                            case 102:
                            case 106:
                            case 110:
                            case 114:
                                break;
                            case 99:
                            case 103:
                            case 107:
                            case 111:
                            case 115:
                                break;
                            default:
                                switch (i11) {
                                    case 120:
                                    case 122:
                                    case 124:
                                    case 126:
                                    case 128:
                                    case 130:
                                        break;
                                    case 121:
                                    case 123:
                                    case 125:
                                    case 127:
                                    case 129:
                                    case 131:
                                        break;
                                    default:
                                        switch (i11) {
                                            case 148:
                                            case 149:
                                            case 150:
                                            case 151:
                                            case 152:
                                                return C6700c6.f46965c;
                                            default:
                                                switch (i11) {
                                                    case 159:
                                                    case 160:
                                                    case 161:
                                                    case 162:
                                                    case 163:
                                                    case 164:
                                                    case 165:
                                                    case 166:
                                                        return null;
                                                    default:
                                                        throw new AssertionError();
                                                }
                                        }
                                }
                        }
                }
            } else {
                throw new C9356s2(h10, "Second argument", a10, c6700c63);
            }
        } else {
            throw new C9356s2(h10, "First argument", c6700c6, c6700c62);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0018. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x001b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x001e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0046 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6700c6 b(H h10, InterfaceC10173ww0 interfaceC10173ww0) {
        C6700c6 a10;
        C6700c6 c6700c6 = (C6700c6) interfaceC10173ww0;
        int i10 = h10.f40639a;
        if (i10 == 179) {
            String str = ((C7336fw) h10).f48139i;
            a10 = a(C9663tt0.a(str, 0, str.length()));
        } else {
            if (i10 != 180) {
                if (i10 != 198 && i10 != 199) {
                    switch (i10) {
                        case 116:
                            a10 = C6700c6.f46965c;
                            break;
                        case 117:
                            a10 = C6700c6.f46967e;
                            break;
                        case 118:
                            a10 = C6700c6.f46966d;
                            break;
                        case 119:
                            a10 = C6700c6.f46968f;
                            break;
                        default:
                            switch (i10) {
                                case 132:
                                case 133:
                                case 134:
                                case 135:
                                case 145:
                                case 146:
                                case 147:
                                    break;
                                case 136:
                                case 137:
                                case 138:
                                    break;
                                case 139:
                                case 140:
                                case 141:
                                    break;
                                case 142:
                                case 143:
                                case 144:
                                    break;
                                default:
                                    switch (i10) {
                                        default:
                                            switch (i10) {
                                                case 170:
                                                case 171:
                                                case 172:
                                                    break;
                                                case 173:
                                                    break;
                                                case 174:
                                                    break;
                                                case 175:
                                                    break;
                                                case 176:
                                                    break;
                                                default:
                                                    switch (i10) {
                                                        case 188:
                                                        case 189:
                                                            break;
                                                        case 190:
                                                            if (c6700c6.b()) {
                                                                return b(h10);
                                                            }
                                                            throw new C9356s2(h10, null, "an array reference", c6700c6);
                                                        case 191:
                                                        case 192:
                                                        case 193:
                                                        case 194:
                                                        case 195:
                                                            break;
                                                        default:
                                                            throw new AssertionError();
                                                    }
                                            }
                                        case 153:
                                        case 154:
                                        case 155:
                                        case 156:
                                        case 157:
                                        case 158:
                                            break;
                                    }
                            }
                    }
                }
                if (c6700c6.b()) {
                    return b(h10);
                }
                throw new C9356s2(h10, null, "an object reference", c6700c6);
            }
            a10 = a(C9663tt0.d(((C7336fw) h10).f48137g));
        }
        if (c6700c6.equals(a10)) {
            return b(h10);
        }
        throw new C9356s2(h10, null, a10, c6700c6);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0017. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x001a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0014. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C6700c6 b(H h10) {
        int i10 = h10.f40639a;
        if (i10 != 179) {
            if (i10 == 180) {
                String str = ((C7336fw) h10).f48139i;
                return a(C9663tt0.a(str, 0, str.length()));
            }
            if (i10 != 198 && i10 != 199) {
                switch (i10) {
                    case 116:
                        return C6700c6.f46965c;
                    case 117:
                        return C6700c6.f46967e;
                    case 118:
                        return C6700c6.f46966d;
                    case 119:
                        return C6700c6.f46968f;
                    default:
                        switch (i10) {
                            case 132:
                            case 136:
                            case 139:
                            case 142:
                            case 145:
                            case 146:
                            case 147:
                                break;
                            case 133:
                            case 140:
                            case 143:
                                break;
                            case 134:
                            case 137:
                            case 144:
                                break;
                            case 135:
                            case 138:
                            case 141:
                                break;
                            default:
                                switch (i10) {
                                    default:
                                        switch (i10) {
                                            case 170:
                                            case 171:
                                            case 172:
                                            case 173:
                                            case 174:
                                            case 175:
                                            case 176:
                                                break;
                                            default:
                                                switch (i10) {
                                                    case 188:
                                                        switch (((OH) h10).f42844g) {
                                                            case 4:
                                                                return a(C9663tt0.a("[Z", 0, 2));
                                                            case 5:
                                                                return a(C9663tt0.a("[C", 0, 2));
                                                            case 6:
                                                                return a(C9663tt0.a("[F", 0, 2));
                                                            case 7:
                                                                return a(C9663tt0.a("[D", 0, 2));
                                                            case 8:
                                                                return a(C9663tt0.a("[B", 0, 2));
                                                            case 9:
                                                                return a(C9663tt0.a("[S", 0, 2));
                                                            case 10:
                                                                return a(C9663tt0.a("[I", 0, 2));
                                                            case 11:
                                                                return a(C9663tt0.a("[J", 0, 2));
                                                            default:
                                                                throw new C9356s2(h10, "Invalid array type");
                                                        }
                                                    case 189:
                                                        String str2 = "[" + ((Object) C9663tt0.d(((C9166qu0) h10).f51909g));
                                                        return a(C9663tt0.a(str2, 0, str2.length()));
                                                    case 190:
                                                        return C6700c6.f46965c;
                                                    case 191:
                                                        return null;
                                                    case 192:
                                                        return a(C9663tt0.d(((C9166qu0) h10).f51909g));
                                                    case 193:
                                                        return C6700c6.f46965c;
                                                    case 194:
                                                    case 195:
                                                        break;
                                                    default:
                                                        throw new AssertionError();
                                                }
                                        }
                                    case 153:
                                    case 154:
                                    case 155:
                                    case 156:
                                    case 157:
                                    case 158:
                                        return null;
                                }
                        }
                }
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0005. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:3:0x0008. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x003b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C6700c6 a(H h10, InterfaceC10173ww0 interfaceC10173ww0) {
        C6700c6 c6700c6;
        C6700c6 c6700c62 = (C6700c6) interfaceC10173ww0;
        int i10 = h10.f40639a;
        switch (i10) {
            case 21:
                c6700c6 = C6700c6.f46965c;
                if (!c6700c6.equals(c6700c62)) {
                    throw new C9356s2(h10, null, c6700c6, c6700c62);
                }
                return c6700c62;
            case 22:
                c6700c6 = C6700c6.f46967e;
                if (!c6700c6.equals(c6700c62)) {
                }
                return c6700c62;
            case 23:
                c6700c6 = C6700c6.f46966d;
                if (!c6700c6.equals(c6700c62)) {
                }
                return c6700c62;
            case 24:
                c6700c6 = C6700c6.f46968f;
                if (!c6700c6.equals(c6700c62)) {
                }
                return c6700c62;
            case 25:
                if (!c6700c62.b()) {
                    throw new C9356s2(h10, null, "an object reference", c6700c62);
                }
                return c6700c62;
            default:
                switch (i10) {
                    case 54:
                        break;
                    case 55:
                        break;
                    case 56:
                        break;
                    case 57:
                        break;
                    case 58:
                        if (!c6700c62.b() && !C6700c6.f46970h.equals(c6700c62)) {
                            throw new C9356s2(h10, null, "an object reference or a return address", c6700c62);
                        }
                        break;
                    default:
                        return c6700c62;
                }
        }
    }

    public static C6700c6 a(C9663tt0 c9663tt0) {
        if (c9663tt0 == null) {
            return C6700c6.f46964b;
        }
        switch (c9663tt0.c()) {
            case 0:
                return null;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                return C6700c6.f46965c;
            case 6:
                return C6700c6.f46966d;
            case 7:
                return C6700c6.f46967e;
            case 8:
                return C6700c6.f46968f;
            case 9:
            case 10:
                return C6700c6.f46969g;
            default:
                throw new AssertionError();
        }
    }

    public final C6700c6 a(H h10, ArrayList arrayList) {
        int i10;
        String str;
        int i11 = h10.f40639a;
        if (i11 == 197) {
            int size = arrayList.size();
            int i12 = 0;
            while (i12 < size) {
                Object obj = arrayList.get(i12);
                i12++;
                C6700c6 c6700c6 = (C6700c6) obj;
                C6700c6 c6700c62 = C6700c6.f46965c;
                if (!c6700c62.equals(c6700c6)) {
                    throw new C9356s2(h10, null, c6700c62, c6700c6);
                }
            }
        } else {
            if (i11 == 184 || i11 == 186) {
                i10 = 0;
            } else {
                C9663tt0 d10 = C9663tt0.d(((KW) h10).f41689g);
                if (!((C6700c6) arrayList.get(0)).equals(a(d10))) {
                    throw new C9356s2(h10, "Method owner", a(d10), (InterfaceC10173ww0) arrayList.get(0));
                }
                i10 = 1;
            }
            if (i11 == 186) {
                str = ((RJ) h10).f43859h;
            } else {
                str = ((KW) h10).f41691i;
            }
            C9663tt0[] b10 = C9663tt0.b(str);
            int i13 = 0;
            while (i10 < arrayList.size()) {
                int i14 = i13 + 1;
                C6700c6 a10 = a(b10[i13]);
                int i15 = i10 + 1;
                C6700c6 c6700c63 = (C6700c6) arrayList.get(i10);
                if (!c6700c63.equals(a10)) {
                    throw new C9356s2(h10, T60.a(i14, "Argument "), a10, c6700c63);
                }
                i13 = i14;
                i10 = i15;
            }
        }
        int i16 = h10.f40639a;
        if (i16 == 197) {
            String str2 = ((C7600hY) h10).f48575g;
            return a(C9663tt0.a(str2, 0, str2.length()));
        }
        if (i16 == 186) {
            String str3 = ((RJ) h10).f43859h;
            return a(C9663tt0.a(str3, C9663tt0.e(str3), str3.length()));
        }
        String str4 = ((KW) h10).f41691i;
        return a(C9663tt0.a(str4, C9663tt0.e(str4), str4.length()));
    }

    public final C6700c6 a(H h10) {
        int i10 = h10.f40639a;
        if (i10 == 168) {
            return C6700c6.f46970h;
        }
        if (i10 == 178) {
            String str = ((C7336fw) h10).f48139i;
            return a(C9663tt0.a(str, 0, str.length()));
        }
        if (i10 != 187) {
            switch (i10) {
                case 1:
                    return a(f47279a);
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                    return C6700c6.f46965c;
                case 9:
                case 10:
                    return C6700c6.f46967e;
                case 11:
                case 12:
                case 13:
                    return C6700c6.f46966d;
                case 14:
                case 15:
                    return C6700c6.f46968f;
                case 16:
                case 17:
                    return C6700c6.f46965c;
                case 18:
                    Object obj = ((AR) h10).f38614g;
                    if (obj instanceof Integer) {
                        return C6700c6.f46965c;
                    }
                    if (obj instanceof Float) {
                        return C6700c6.f46966d;
                    }
                    if (obj instanceof Long) {
                        return C6700c6.f46967e;
                    }
                    if (obj instanceof Double) {
                        return C6700c6.f46968f;
                    }
                    if (obj instanceof String) {
                        return a(C9663tt0.d("java/lang/String"));
                    }
                    if (obj instanceof C9663tt0) {
                        int c10 = ((C9663tt0) obj).c();
                        if (c10 == 10 || c10 == 9) {
                            return a(C9663tt0.d("java/lang/Class"));
                        }
                        if (c10 == 11) {
                            return a(C9663tt0.d("java/lang/invoke/MethodType"));
                        }
                        throw new C9356s2(h10, "Illegal LDC value " + obj);
                    }
                    if (obj instanceof C5829Qz) {
                        return a(C9663tt0.d("java/lang/invoke/MethodHandle"));
                    }
                    if (obj instanceof C10127wh) {
                        String str2 = ((C10127wh) obj).f53558b;
                        return a(C9663tt0.a(str2, 0, str2.length()));
                    }
                    throw new C9356s2(h10, "Illegal LDC value " + obj);
                default:
                    throw new AssertionError();
            }
        }
        return a(C9663tt0.d(((C9166qu0) h10).f51909g));
    }
}
