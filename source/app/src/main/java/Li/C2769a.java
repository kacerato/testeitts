package Li;

import Bi.AbstractC2389v;
import Bi.InterfaceC2379k;
import Xi.C3360o0;
import android.security.keystore.KeyProperties;
import java.lang.reflect.Array;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;

public class C2769a extends AbstractC2389v {

    public static final byte[] f13812e = {Opcodes.OPC_dadd, Opcodes.OPC_iushr, Opcodes.OPC_dneg, 123, -14, 107, 111, Opcodes.OPC_multianewarray, 48, 1, Opcodes.OPC_dsub, Opcodes.OPC_aload_1, -2, -41, Opcodes.OPC_lookupswitch, Opcodes.OPC_fneg, -54, Opcodes.OPC_ixor, Opcodes.OPC_jsr_w, Opcodes.OPC_lushr, -6, Opcodes.OPC_dup, 71, -16, Opcodes.OPC_lreturn, -44, Opcodes.OPC_if_icmpge, Opcodes.OPC_dreturn, Opcodes.OPC_ifge, Opcodes.OPC_if_icmple, Opcodes.OPC_frem, Opcodes.OPC_checkcast, Opcodes.OPC_invokespecial, -3, Opcodes.OPC_i2s, 38, 54, Opcodes.OPC_lstore_0, -9, -52, 52, Opcodes.OPC_if_acmpeq, -27, -15, 113, -40, Opcodes.OPC_daload, 21, 4, Opcodes.OPC_ifnonnull, Opcodes.OPC_fload_1, Opcodes.OPC_monitorexit, 24, Opcodes.OPC_fcmpg, 5, Opcodes.OPC_ifne, 7, 18, Byte.MIN_VALUE, -30, -21, Opcodes.OPC_dload_1, Opcodes.OPC_getstatic, Opcodes.OPC_lneg, 9, Opcodes.OPC_lxor, Opcodes.OPC_aload_2, 26, 27, 110, 90, Opcodes.OPC_if_icmpne, Opcodes.OPC_dastore, Opcodes.OPC_istore_0, -42, Opcodes.OPC_putstatic, 41, -29, Opcodes.OPC_laload, Opcodes.OPC_iinc, Opcodes.OPC_aastore, -47, 0, -19, 32, -4, Opcodes.OPC_return, 91, 106, -53, Opcodes.OPC_arraylength, Opcodes.OPC_dstore, Opcodes.OPC_dstore_3, Opcodes.OPC_astore_1, Opcodes.OPC_pop2, -49, -48, -17, Opcodes.OPC_tableswitch, -5, Opcodes.OPC_fstore_0, Opcodes.OPC_astore_2, 51, Opcodes.OPC_i2l, Opcodes.OPC_fstore_2, -7, 2, Byte.MAX_VALUE, 80, 60, Opcodes.OPC_if_icmpeq, Opcodes.OPC_jsr, Opcodes.OPC_fastore, Opcodes.OPC_if_icmpgt, 64, Opcodes.OPC_d2l, Opcodes.OPC_i2c, Opcodes.OPC_ifgt, Opcodes.OPC_fstore, -11, -68, Opcodes.OPC_invokevirtual, -38, 33, 16, -1, -13, -46, -51, 12, 19, -20, Opcodes.OPC_swap, Opcodes.OPC_dcmpl, Opcodes.OPC_fstore_1, 23, Opcodes.OPC_wide, Opcodes.OPC_goto, Opcodes.OPC_iand, 61, 100, Opcodes.OPC_dup2_x1, 25, Opcodes.OPC_drem, 96, Opcodes.OPC_lor, Opcodes.OPC_iastore, -36, 34, 42, Opcodes.OPC_d2f, Opcodes.OPC_l2i, 70, -18, Opcodes.OPC_invokestatic, 20, -34, Opcodes.OPC_dup2_x2, 11, -37, -32, 50, Opcodes.OPC_astore, 10, Opcodes.OPC_dstore_2, 6, Opcodes.OPC_fload_2, 92, Opcodes.OPC_monitorenter, -45, Opcodes.OPC_ireturn, Opcodes.OPC_fadd, Opcodes.OPC_i2b, Opcodes.OPC_fcmpl, -28, 121, -25, Opcodes.OPC_goto_w, Opcodes.OPC_lstore, Opcodes.OPC_ldiv, Opcodes.OPC_f2d, -43, Opcodes.OPC_astore_3, Opcodes.OPC_ret, Opcodes.OPC_idiv, Opcodes.OPC_sastore, -12, -22, 101, 122, Opcodes.OPC_freturn, 8, Opcodes.OPC_invokedynamic, 120, Opcodes.OPC_fload_3, Opcodes.OPC_iaload, 28, Opcodes.OPC_if_acmpne, Opcodes.OPC_getfield, Opcodes.OPC_ifnull, -24, -35, Opcodes.OPC_ineg, 31, Opcodes.OPC_astore_0, Opcodes.OPC_anewarray, Opcodes.OPC_f2i, Opcodes.OPC_l2d, 112, 62, Opcodes.OPC_putfield, 102, 72, 3, -10, 14, Opcodes.OPC_ladd, Opcodes.OPC_saload, Opcodes.OPC_pop, Opcodes.OPC_invokeinterface, Opcodes.OPC_i2f, Opcodes.OPC_instanceof, 29, Opcodes.OPC_ifle, Ti.t.f25309s, -8, Opcodes.OPC_dcmpg, 17, 105, -39, Opcodes.OPC_d2i, Opcodes.OPC_lcmp, Opcodes.OPC_iflt, 30, Opcodes.OPC_i2d, -23, -50, Opcodes.OPC_castore, 40, -33, Opcodes.OPC_f2l, Opcodes.OPC_if_icmplt, Opcodes.OPC_l2f, 13, Opcodes.OPC_athrow, -26, Opcodes.OPC_lstore_3, Opcodes.OPC_imul, Opcodes.OPC_lstore_2, Opcodes.OPC_ifeq, Opcodes.OPC_aload_3, 15, Opcodes.OPC_areturn, Opcodes.OPC_bastore, Opcodes.OPC_new, 22};

    public static final byte[] f13813f = {Opcodes.OPC_dastore, 9, 106, -43, 48, 54, Opcodes.OPC_if_acmpeq, Opcodes.OPC_fstore, Opcodes.OPC_athrow, 64, Opcodes.OPC_if_icmpgt, Opcodes.OPC_ifle, Opcodes.OPC_lor, -13, -41, -5, Opcodes.OPC_iushr, -29, Opcodes.OPC_dstore, Opcodes.OPC_ixor, Opcodes.OPC_iflt, Opcodes.OPC_laload, -1, Opcodes.OPC_i2d, 52, Opcodes.OPC_d2i, Opcodes.OPC_fstore_0, Opcodes.OPC_fstore_1, Opcodes.OPC_wide, -34, -23, -53, Opcodes.OPC_bastore, 123, Opcodes.OPC_lcmp, 50, Opcodes.OPC_if_acmpne, Opcodes.OPC_monitorenter, Opcodes.OPC_fload_1, 61, -18, Opcodes.OPC_astore_1, Opcodes.OPC_fcmpl, 11, Opcodes.OPC_lstore_3, -6, Opcodes.OPC_monitorexit, Opcodes.OPC_astore_3, 8, Opcodes.OPC_iaload, Opcodes.OPC_if_icmplt, 102, 40, -39, Opcodes.OPC_fload_2, Opcodes.OPC_getstatic, Opcodes.OPC_fneg, 91, Opcodes.OPC_if_icmpge, Opcodes.OPC_dstore_2, Opcodes.OPC_ldiv, Opcodes.OPC_f2i, -47, Opcodes.OPC_fload_3, Opcodes.OPC_frem, -8, -10, 100, Opcodes.OPC_i2f, Opcodes.OPC_imul, Opcodes.OPC_dcmpg, 22, -44, Opcodes.OPC_if_icmple, 92, -52, Opcodes.OPC_dup2_x1, 101, Opcodes.OPC_invokevirtual, Opcodes.OPC_i2c, Opcodes.OPC_idiv, 112, 72, 80, -3, -19, Opcodes.OPC_invokeinterface, -38, Opcodes.OPC_dup2_x2, 21, 70, Opcodes.OPC_pop, Opcodes.OPC_goto, Opcodes.OPC_f2d, Opcodes.OPC_ifgt, Opcodes.OPC_iinc, Opcodes.OPC_d2f, -40, Opcodes.OPC_lookupswitch, 0, Opcodes.OPC_f2l, -68, -45, 10, -9, -28, Opcodes.OPC_pop2, 5, Opcodes.OPC_invokestatic, Opcodes.OPC_putstatic, Opcodes.OPC_fstore_2, 6, -48, Opcodes.OPC_aload_2, 30, Opcodes.OPC_d2l, -54, Opcodes.OPC_lstore_0, 15, 2, Opcodes.OPC_instanceof, Opcodes.OPC_dreturn, Opcodes.OPC_anewarray, 3, 1, 19, Opcodes.OPC_l2d, 107, Opcodes.OPC_astore, Opcodes.OPC_i2b, 17, Opcodes.OPC_lstore_2, Opcodes.OPC_iastore, Opcodes.OPC_dsub, -36, -22, Opcodes.OPC_dcmpl, -14, -49, -50, -16, Opcodes.OPC_getfield, -26, Opcodes.OPC_drem, Opcodes.OPC_fcmpg, Opcodes.OPC_ireturn, Opcodes.OPC_ineg, 34, -25, Opcodes.OPC_lreturn, Opcodes.OPC_saload, Opcodes.OPC_i2l, -30, -7, Opcodes.OPC_lstore, -24, 28, Opcodes.OPC_lneg, -33, 110, 71, -15, 26, 113, 29, 41, Opcodes.OPC_multianewarray, Opcodes.OPC_l2f, 111, Opcodes.OPC_invokespecial, Opcodes.OPC_fadd, 14, Opcodes.OPC_tableswitch, 24, Opcodes.OPC_arraylength, 27, -4, Opcodes.OPC_sastore, 62, Opcodes.OPC_astore_0, Opcodes.OPC_ifnull, -46, 121, 32, Opcodes.OPC_ifne, -37, Opcodes.OPC_checkcast, -2, 120, -51, 90, -12, 31, -35, Opcodes.OPC_jsr, 51, Opcodes.OPC_l2i, 7, Opcodes.OPC_ifnonnull, Opcodes.OPC_daload, Opcodes.OPC_return, 18, 16, Opcodes.OPC_dup, Opcodes.OPC_dload_1, Byte.MIN_VALUE, -20, Opcodes.OPC_swap, 96, Opcodes.OPC_fastore, Byte.MAX_VALUE, Opcodes.OPC_ret, 25, Opcodes.OPC_putfield, Opcodes.OPC_dstore_3, 13, Opcodes.OPC_aload_3, -27, 122, Opcodes.OPC_if_icmpeq, Opcodes.OPC_i2s, Opcodes.OPC_jsr_w, Opcodes.OPC_ifge, -17, Opcodes.OPC_if_icmpne, -32, Opcodes.OPC_istore_0, Opcodes.OPC_astore_2, Opcodes.OPC_freturn, 42, -11, Opcodes.OPC_areturn, Opcodes.OPC_goto_w, -21, Opcodes.OPC_new, 60, Opcodes.OPC_lxor, Opcodes.OPC_aastore, Opcodes.OPC_ifeq, Opcodes.OPC_ladd, 23, Opcodes.OPC_aload_1, 4, Opcodes.OPC_iand, Opcodes.OPC_invokedynamic, Opcodes.OPC_dneg, -42, 38, Ti.t.f25309s, 105, 20, Opcodes.OPC_dadd, Opcodes.OPC_castore, 33, 12, Opcodes.OPC_lushr};

    public static final int[] f13814g = {1, 2, 4, 8, 16, 32, 64, 128, 27, 54, 108, 216, 171, 77, 154, 47, 94, 188, 99, 198, 151, 53, 106, 212, 179, 125, 250, 239, 197, 145};

    public static final int[] f13815h = {-1520213050, -2072216328, -1720223762, -1921287178, 234025727, -1117033514, -1318096930, 1422247313, 1345335392, 50397442, -1452841010, 2099981142, 436141799, 1658312629, -424957107, -1703512340, 1170918031, -1652391393, 1086966153, -2021818886, 368769775, -346465870, -918075506, 200339707, -324162239, 1742001331, -39673249, -357585083, -1080255453, -140204973, -1770884380, 1539358875, -1028147339, 486407649, -1366060227, 1780885068, 1513502316, 1094664062, 49805301, 1338821763, 1546925160, -190470831, 887481809, 150073849, -1821281822, 1943591083, 1395732834, 1058346282, 201589768, 1388824469, 1696801606, 1589887901, 672667696, -1583966665, 251987210, -1248159185, 151455502, 907153956, -1686077413, 1038279391, 652995533, 1764173646, -843926913, -1619692054, 453576978, -1635548387, 1949051992, 773462580, 756751158, -1301385508, -296068428, -73359269, -162377052, 1295727478, 1641469623, -827083907, 2066295122, 1055122397, 1898917726, -1752923117, -179088474, 1758581177, 0, 753790401, 1612718144, 536673507, -927878791, -312779850, -1100322092, 1187761037, -641810841, 1262041458, -565556588, -733197160, -396863312, 1255133061, 1808847035, 720367557, -441800113, 385612781, -985447546, -682799718, 1429418854, -1803188975, -817543798, 284817897, 100794884, -2122350594, -263171936, 1144798328, -1163944155, -475486133, -212774494, -22830243, -1069531008, -1970303227, -1382903233, -1130521311, 1211644016, 83228145, -541279133, -1044990345, 1977277103, 1663115586, 806359072, 452984805, 250868733, 1842533055, 1288555905, 336333848, 890442534, 804056259, -513843266, -1567123659, -867941240, 957814574, 1472513171, -223893675, -2105639172, 1195195770, -1402706744, -413311558, 723065138, -1787595802, -1604296512, -1736343271, -783331426, 2145180835, 1713513028, 2116692564, -1416589253, -2088204277, -901364084, 703524551, -742868885, 1007948840, 2044649127, -497131844, 487262998, 1994120109, 1004593371, 1446130276, 1312438900, 503974420, -615954030, 168166924, 1814307912, -463709000, 1573044895, 1859376061, -273896381, -1503501628, -1466855111, -1533700815, 937747667, -1954973198, 854058965, 1137232011, 1496790894, -1217565222, -1936880383, 1691735473, -766620004, -525751991, -1267962664, -95005012, 133494003, 636152527, -1352309302, -1904575756, -374428089, 403179536, -709182865, -2005370640, 1864705354, 1915629148, 605822008, -240736681, -944458637, 1371981463, 602466507, 2094914977, -1670089496, 555687742, -582268010, -591544991, -2037675251, -2054518257, -1871679264, 1111375484, -994724495, -1436129588, -666351472, 84083462, 32962295, 302911004, -1553899070, 1597322602, -111716434, -793134743, -1853454825, 1489093017, 656219450, -1180787161, 954327513, 335083755, -1281845205, 856756514, -1150719534, 1893325225, -1987146233, -1483434957, -1231316179, 572399164, -1836611819, 552200649, 1238290055, -11184726, 2015897680, 2061492133, -1886614525, -123625127, -2138470135, 386731290, -624967835, 837215959, -968736124, -1201116976, -1019133566, -1332111063, 1999449434, 286199582, -877612933, -61582168, -692339859, 974525996};

    public static final int[] f13816i = {1353184337, 1399144830, -1012656358, -1772214470, -882136261, -247096033, -1420232020, -1828461749, 1442459680, -160598355, -1854485368, 625738485, -52959921, -674551099, -2143013594, -1885117771, 1230680542, 1729870373, -1743852987, -507445667, 41234371, 317738113, -1550367091, -956705941, -413167869, -1784901099, -344298049, -631680363, 763608788, -752782248, 694804553, 1154009486, 1787413109, 2021232372, 1799248025, -579749593, -1236278850, 397248752, 1722556617, -1271214467, 407560035, -2110711067, 1613975959, 1165972322, -529046351, -2068943941, 480281086, -1809118983, 1483229296, 436028815, -2022908268, -1208452270, 601060267, -503166094, 1468997603, 715871590, 120122290, 63092015, -1703164538, -1526188077, -226023376, -1297760477, -1167457534, 1552029421, 723308426, -1833666137, -252573709, -1578997426, -839591323, -708967162, 526529745, -1963022652, -1655493068, -1604979806, 853641733, 1978398372, 971801355, -1427152832, 111112542, 1360031421, -108388034, 1023860118, -1375387939, 1186850381, -1249028975, 90031217, 1876166148, -15380384, 620468249, -1746289194, -868007799, 2006899047, -1119688528, -2004121337, 945494503, -605108103, 1191869601, -384875908, -920746760, 0, -2088337399, 1223502642, -1401941730, 1316117100, -67170563, 1446544655, 517320253, 658058550, 1691946762, 564550760, -783000677, 976107044, -1318647284, 266819475, -761860428, -1634624741, 1338359936, -1574904735, 1766553434, 370807324, 179999714, -450191168, 1138762300, 488053522, 185403662, -1379431438, -1180125651, -928440812, -2061897385, 1275557295, -1143105042, -44007517, -1624899081, -1124765092, -985962940, 880737115, 1982415755, -590994485, 1761406390, 1676797112, -891538985, 277177154, 1076008723, 538035844, 2099530373, -130171950, 288553390, 1839278535, 1261411869, -214912292, -330136051, -790380169, 1813426987, -1715900247, -95906799, 577038663, -997393240, 440397984, -668172970, -275762398, -951170681, -1043253031, -22885748, 906744984, -813566554, 685669029, 646887386, -1530942145, -459458004, 227702864, -1681105046, 1648787028, -1038905866, -390539120, 1593260334, -173030526, -1098883681, 2090061929, -1456614033, -1290656305, 999926984, -1484974064, 1852021992, 2075868123, 158869197, -199730834, 28809964, -1466282109, 1701746150, 2129067946, 147831841, -420997649, -644094022, -835293366, -737566742, -696471511, -1347247055, 824393514, 815048134, -1067015627, 935087732, -1496677636, -1328508704, 366520115, 1251476721, -136647615, 240176511, 804688151, -1915335306, 1303441219, 1414376140, -553347356, -474623586, 461924940, -1205916479, 2136040774, 82468509, 1563790337, 1937016826, 776014843, 1511876531, 1389550482, 861278441, 323475053, -1939744870, 2047648055, -1911228327, -1992551445, -299390514, 902390199, -303751967, 1018251130, 1507840668, 1064563285, 2043548696, -1086863501, -355600557, 1537932639, 342834655, -2032450440, -2114736182, 1053059257, 741614648, 1598071746, 1925389590, 203809468, -1958134744, 1100287487, 1895934009, -558691320, -1662733096, -1866377628, 1636092795, 1890988757, 1952214088, 1113045200};

    public static final int f13817j = -2139062144;

    public static final int f13818k = 2139062143;

    public static final int f13819l = 27;

    public static final int f13820m = -1061109568;

    public static final int f13821n = 1061109567;

    public static final int f13822o = 16;

    public int f13823a;

    public int[][] f13824b = null;

    public boolean f13825c;

    public byte[] f13826d;

    public C2769a() {
        Bi.r.a(new Hi.c(b(), 256));
    }

    public static int k(int i10) {
        return (((i10 & (-2139062144)) >>> 7) * 27) ^ ((2139062143 & i10) << 1);
    }

    public static int l(int i10) {
        int i11 = (1061109567 & i10) << 2;
        int i12 = i10 & (-1061109568);
        int i13 = i12 ^ (i12 >>> 1);
        return (i13 >>> 5) ^ (i11 ^ (i13 >>> 2));
    }

    public static int q(int i10) {
        int s10 = s(i10, 8) ^ i10;
        int k10 = i10 ^ k(s10);
        int l10 = s10 ^ l(k10);
        return k10 ^ (l10 ^ s(l10, 16));
    }

    public static Bi.K r() {
        return new C2769a();
    }

    public static int s(int i10, int i11) {
        return (i10 << (-i11)) | (i10 >>> i11);
    }

    public static int t(int i10) {
        byte[] bArr = f13812e;
        return (bArr[(i10 >> 24) & 255] << 24) | (bArr[i10 & 255] & 255) | ((bArr[(i10 >> 8) & 255] & 255) << 8) | ((bArr[(i10 >> 16) & 255] & 255) << 16);
    }

    @Override
    public void a(boolean z10, InterfaceC2379k interfaceC2379k) {
        if (!(interfaceC2379k instanceof C3360o0)) {
            throw new IllegalArgumentException("invalid parameter passed to AES init - " + interfaceC2379k.getClass().getName());
        }
        this.f13824b = p(((C3360o0) interfaceC2379k).b(), z10);
        this.f13825c = z10;
        if (z10) {
            this.f13826d = org.bouncycastle.util.a.p(f13812e);
        } else {
            this.f13826d = org.bouncycastle.util.a.p(f13813f);
        }
        Bi.r.a(new Hi.c(b(), m(), interfaceC2379k, x0.a(z10)));
    }

    @Override
    public String b() {
        return KeyProperties.KEY_ALGORITHM_AES;
    }

    @Override
    public int c() {
        return 16;
    }

    @Override
    public int g(byte[] bArr, int i10, byte[] bArr2, int i11) {
        int[][] iArr = this.f13824b;
        if (iArr == null) {
            throw new IllegalStateException("AES engine not initialised");
        }
        if (i10 > bArr.length - 16) {
            throw new DataLengthException("input buffer too short");
        }
        if (i11 > bArr2.length - 16) {
            throw new OutputLengthException("output buffer too short");
        }
        if (this.f13825c) {
            o(bArr, i10, bArr2, i11, iArr);
        } else {
            n(bArr, i10, bArr2, i11, iArr);
        }
        return 16;
    }

    public final int m() {
        if (this.f13824b == null) {
            return 256;
        }
        return (r0.length - 7) << 5;
    }

    public final void n(byte[] bArr, int i10, byte[] bArr2, int i11, int[][] iArr) {
        int r10 = org.bouncycastle.util.p.r(bArr, i10);
        int r11 = org.bouncycastle.util.p.r(bArr, i10 + 4);
        int r12 = org.bouncycastle.util.p.r(bArr, i10 + 8);
        int r13 = org.bouncycastle.util.p.r(bArr, i10 + 12);
        int i12 = this.f13823a;
        int[] iArr2 = iArr[i12];
        char c10 = 0;
        int i13 = r10 ^ iArr2[0];
        int i14 = r11 ^ iArr2[1];
        int i15 = r12 ^ iArr2[2];
        int i16 = i12 - 1;
        int i17 = r13 ^ iArr2[3];
        for (int i18 = 1; i16 > i18; i18 = 1) {
            int[] iArr3 = f13816i;
            int s10 = (((s(iArr3[(i17 >> 8) & 255], 24) ^ iArr3[i13 & 255]) ^ s(iArr3[(i15 >> 16) & 255], 16)) ^ s(iArr3[(i14 >> 24) & 255], 8)) ^ iArr[i16][c10];
            int s11 = (((s(iArr3[(i13 >> 8) & 255], 24) ^ iArr3[i14 & 255]) ^ s(iArr3[(i17 >> 16) & 255], 16)) ^ s(iArr3[(i15 >> 24) & 255], 8)) ^ iArr[i16][i18];
            int s12 = (((s(iArr3[(i14 >> 8) & 255], 24) ^ iArr3[i15 & 255]) ^ s(iArr3[(i13 >> 16) & 255], 16)) ^ s(iArr3[(i17 >> 24) & 255], 8)) ^ iArr[i16][2];
            int s13 = ((iArr3[i17 & 255] ^ s(iArr3[(i15 >> 8) & 255], 24)) ^ s(iArr3[(i14 >> 16) & 255], 16)) ^ s(iArr3[(i13 >> 24) & 255], 8);
            int i19 = i16 - 1;
            int i20 = s13 ^ iArr[i16][3];
            int s14 = (((iArr3[s10 & 255] ^ s(iArr3[(i20 >> 8) & 255], 24)) ^ s(iArr3[(s12 >> 16) & 255], 16)) ^ s(iArr3[(s11 >> 24) & 255], 8)) ^ iArr[i19][0];
            int s15 = (((iArr3[s11 & 255] ^ s(iArr3[(s10 >> 8) & 255], 24)) ^ s(iArr3[(i20 >> 16) & 255], 16)) ^ s(iArr3[(s12 >> 24) & 255], 8)) ^ iArr[i19][1];
            int s16 = (((iArr3[s12 & 255] ^ s(iArr3[(s11 >> 8) & 255], 24)) ^ s(iArr3[(s10 >> 16) & 255], 16)) ^ s(iArr3[(i20 >> 24) & 255], 8)) ^ iArr[i19][2];
            i16 -= 2;
            i17 = (((iArr3[i20 & 255] ^ s(iArr3[(s12 >> 8) & 255], 24)) ^ s(iArr3[(s11 >> 16) & 255], 16)) ^ s(iArr3[(s10 >> 24) & 255], 8)) ^ iArr[i19][3];
            i13 = s14;
            i14 = s15;
            i15 = s16;
            c10 = 0;
        }
        int[] iArr4 = f13816i;
        int s17 = (((iArr4[i13 & 255] ^ s(iArr4[(i17 >> 8) & 255], 24)) ^ s(iArr4[(i15 >> 16) & 255], 16)) ^ s(iArr4[(i14 >> 24) & 255], 8)) ^ iArr[i16][0];
        int s18 = (((iArr4[i14 & 255] ^ s(iArr4[(i13 >> 8) & 255], 24)) ^ s(iArr4[(i17 >> 16) & 255], 16)) ^ s(iArr4[(i15 >> 24) & 255], 8)) ^ iArr[i16][1];
        int s19 = (((iArr4[i15 & 255] ^ s(iArr4[(i14 >> 8) & 255], 24)) ^ s(iArr4[(i13 >> 16) & 255], 16)) ^ s(iArr4[(i17 >> 24) & 255], 8)) ^ iArr[i16][2];
        int s20 = (((iArr4[i17 & 255] ^ s(iArr4[(i15 >> 8) & 255], 24)) ^ s(iArr4[(i14 >> 16) & 255], 16)) ^ s(iArr4[(i13 >> 24) & 255], 8)) ^ iArr[i16][3];
        byte[] bArr3 = f13813f;
        int i21 = bArr3[s17 & 255] & 255;
        byte[] bArr4 = this.f13826d;
        int i22 = ((i21 ^ ((bArr4[(s20 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(s19 >> 16) & 255] & 255) << 16)) ^ (bArr3[(s18 >> 24) & 255] << 24);
        int[] iArr5 = iArr[0];
        int i23 = i22 ^ iArr5[0];
        int i24 = ((((bArr4[s18 & 255] & 255) ^ ((bArr4[(s17 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(s20 >> 16) & 255] & 255) << 16)) ^ (bArr4[(s19 >> 24) & 255] << 24)) ^ iArr5[1];
        int i25 = ((((bArr4[s19 & 255] & 255) ^ ((bArr3[(s18 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(s17 >> 16) & 255] & 255) << 16)) ^ (bArr4[(s20 >> 24) & 255] << 24)) ^ iArr5[2];
        int i26 = ((((bArr3[s20 & 255] & 255) ^ ((bArr4[(s19 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(s18 >> 16) & 255] & 255) << 16)) ^ (bArr4[(s17 >> 24) & 255] << 24)) ^ iArr5[3];
        org.bouncycastle.util.p.m(i23, bArr2, i11);
        org.bouncycastle.util.p.m(i24, bArr2, i11 + 4);
        org.bouncycastle.util.p.m(i25, bArr2, i11 + 8);
        org.bouncycastle.util.p.m(i26, bArr2, i11 + 12);
    }

    public final void o(byte[] bArr, int i10, byte[] bArr2, int i11, int[][] iArr) {
        int r10 = org.bouncycastle.util.p.r(bArr, i10);
        int r11 = org.bouncycastle.util.p.r(bArr, i10 + 4);
        int r12 = org.bouncycastle.util.p.r(bArr, i10 + 8);
        int r13 = org.bouncycastle.util.p.r(bArr, i10 + 12);
        char c10 = 0;
        int[] iArr2 = iArr[0];
        int i12 = r10 ^ iArr2[0];
        int i13 = r11 ^ iArr2[1];
        int i14 = r12 ^ iArr2[2];
        int i15 = r13 ^ iArr2[3];
        int i16 = 1;
        for (int i17 = 1; i16 < this.f13823a - i17; i17 = 1) {
            int[] iArr3 = f13815h;
            int s10 = (((s(iArr3[(i13 >> 8) & 255], 24) ^ iArr3[i12 & 255]) ^ s(iArr3[(i14 >> 16) & 255], 16)) ^ s(iArr3[(i15 >> 24) & 255], 8)) ^ iArr[i16][c10];
            int s11 = (((s(iArr3[(i14 >> 8) & 255], 24) ^ iArr3[i13 & 255]) ^ s(iArr3[(i15 >> 16) & 255], 16)) ^ s(iArr3[(i12 >> 24) & 255], 8)) ^ iArr[i16][i17];
            int s12 = (((s(iArr3[(i15 >> 8) & 255], 24) ^ iArr3[i14 & 255]) ^ s(iArr3[(i12 >> 16) & 255], 16)) ^ s(iArr3[(i13 >> 24) & 255], 8)) ^ iArr[i16][2];
            int s13 = ((iArr3[i15 & 255] ^ s(iArr3[(i12 >> 8) & 255], 24)) ^ s(iArr3[(i13 >> 16) & 255], 16)) ^ s(iArr3[(i14 >> 24) & 255], 8);
            int i18 = i16 + 1;
            int i19 = s13 ^ iArr[i16][3];
            int s14 = (((iArr3[s10 & 255] ^ s(iArr3[(s11 >> 8) & 255], 24)) ^ s(iArr3[(s12 >> 16) & 255], 16)) ^ s(iArr3[(i19 >> 24) & 255], 8)) ^ iArr[i18][0];
            int s15 = (((iArr3[s11 & 255] ^ s(iArr3[(s12 >> 8) & 255], 24)) ^ s(iArr3[(i19 >> 16) & 255], 16)) ^ s(iArr3[(s10 >> 24) & 255], 8)) ^ iArr[i18][1];
            int s16 = (((iArr3[s12 & 255] ^ s(iArr3[(i19 >> 8) & 255], 24)) ^ s(iArr3[(s10 >> 16) & 255], 16)) ^ s(iArr3[(s11 >> 24) & 255], 8)) ^ iArr[i18][2];
            i16 += 2;
            i15 = (((iArr3[i19 & 255] ^ s(iArr3[(s10 >> 8) & 255], 24)) ^ s(iArr3[(s11 >> 16) & 255], 16)) ^ s(iArr3[(s12 >> 24) & 255], 8)) ^ iArr[i18][3];
            i12 = s14;
            i13 = s15;
            i14 = s16;
            c10 = 0;
        }
        int[] iArr4 = f13815h;
        int s17 = (((iArr4[i12 & 255] ^ s(iArr4[(i13 >> 8) & 255], 24)) ^ s(iArr4[(i14 >> 16) & 255], 16)) ^ s(iArr4[(i15 >> 24) & 255], 8)) ^ iArr[i16][0];
        int s18 = (((iArr4[i13 & 255] ^ s(iArr4[(i14 >> 8) & 255], 24)) ^ s(iArr4[(i15 >> 16) & 255], 16)) ^ s(iArr4[(i12 >> 24) & 255], 8)) ^ iArr[i16][1];
        int s19 = (((iArr4[i14 & 255] ^ s(iArr4[(i15 >> 8) & 255], 24)) ^ s(iArr4[(i12 >> 16) & 255], 16)) ^ s(iArr4[(i13 >> 24) & 255], 8)) ^ iArr[i16][2];
        int s20 = (((iArr4[i15 & 255] ^ s(iArr4[(i12 >> 8) & 255], 24)) ^ s(iArr4[(i13 >> 16) & 255], 16)) ^ s(iArr4[(i14 >> 24) & 255], 8)) ^ iArr[i16][3];
        byte[] bArr3 = f13812e;
        int i20 = (bArr3[s17 & 255] & 255) ^ ((bArr3[(s18 >> 8) & 255] & 255) << 8);
        byte[] bArr4 = this.f13826d;
        int i21 = (i20 ^ ((bArr4[(s19 >> 16) & 255] & 255) << 16)) ^ (bArr4[(s20 >> 24) & 255] << 24);
        int[] iArr5 = iArr[i16 + 1];
        int i22 = i21 ^ iArr5[0];
        int i23 = ((((bArr4[s18 & 255] & 255) ^ ((bArr3[(s19 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(s20 >> 16) & 255] & 255) << 16)) ^ (bArr4[(s17 >> 24) & 255] << 24)) ^ iArr5[1];
        int i24 = ((((bArr4[s19 & 255] & 255) ^ ((bArr3[(s20 >> 8) & 255] & 255) << 8)) ^ ((bArr3[(s17 >> 16) & 255] & 255) << 16)) ^ (bArr3[(s18 >> 24) & 255] << 24)) ^ iArr5[2];
        int i25 = ((((bArr4[s20 & 255] & 255) ^ ((bArr4[(s17 >> 8) & 255] & 255) << 8)) ^ ((bArr4[(s18 >> 16) & 255] & 255) << 16)) ^ (bArr3[(s19 >> 24) & 255] << 24)) ^ iArr5[3];
        org.bouncycastle.util.p.m(i22, bArr2, i11);
        org.bouncycastle.util.p.m(i23, bArr2, i11 + 4);
        org.bouncycastle.util.p.m(i24, bArr2, i11 + 8);
        org.bouncycastle.util.p.m(i25, bArr2, i11 + 12);
    }

    public final int[][] p(byte[] bArr, boolean z10) {
        int length = bArr.length;
        if (length < 16 || length > 32 || (length & 7) != 0) {
            throw new IllegalArgumentException("Key length not 128/192/256 bits.");
        }
        int i10 = length >>> 2;
        this.f13823a = i10 + 6;
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, i10 + 7, 4);
        int i11 = 8;
        char c10 = 3;
        if (i10 == 4) {
            int r10 = org.bouncycastle.util.p.r(bArr, 0);
            iArr[0][0] = r10;
            int r11 = org.bouncycastle.util.p.r(bArr, 4);
            iArr[0][1] = r11;
            int r12 = org.bouncycastle.util.p.r(bArr, 8);
            iArr[0][2] = r12;
            int r13 = org.bouncycastle.util.p.r(bArr, 12);
            iArr[0][3] = r13;
            for (int i12 = 1; i12 <= 10; i12++) {
                r10 ^= t(s(r13, 8)) ^ f13814g[i12 - 1];
                int[] iArr2 = iArr[i12];
                iArr2[0] = r10;
                r11 ^= r10;
                iArr2[1] = r11;
                r12 ^= r11;
                iArr2[2] = r12;
                r13 ^= r12;
                iArr2[3] = r13;
            }
        } else if (i10 == 6) {
            int r14 = org.bouncycastle.util.p.r(bArr, 0);
            iArr[0][0] = r14;
            int r15 = org.bouncycastle.util.p.r(bArr, 4);
            iArr[0][1] = r15;
            int r16 = org.bouncycastle.util.p.r(bArr, 8);
            iArr[0][2] = r16;
            int r17 = org.bouncycastle.util.p.r(bArr, 12);
            iArr[0][3] = r17;
            int r18 = org.bouncycastle.util.p.r(bArr, 16);
            int r19 = org.bouncycastle.util.p.r(bArr, 20);
            int i13 = 1;
            int i14 = 1;
            while (true) {
                int[] iArr3 = iArr[i13];
                iArr3[0] = r18;
                iArr3[1] = r19;
                int t10 = r14 ^ (t(s(r19, 8)) ^ i14);
                int[] iArr4 = iArr[i13];
                iArr4[2] = t10;
                int i15 = r15 ^ t10;
                iArr4[3] = i15;
                int i16 = r16 ^ i15;
                int[] iArr5 = iArr[i13 + 1];
                iArr5[0] = i16;
                int i17 = r17 ^ i16;
                iArr5[1] = i17;
                int i18 = r18 ^ i17;
                iArr5[2] = i18;
                int i19 = r19 ^ i18;
                iArr5[3] = i19;
                int t11 = t(s(i19, 8)) ^ (i14 << 1);
                i14 <<= 2;
                r14 = t10 ^ t11;
                int[] iArr6 = iArr[i13 + 2];
                iArr6[0] = r14;
                r15 = i15 ^ r14;
                iArr6[1] = r15;
                r16 = i16 ^ r15;
                iArr6[2] = r16;
                r17 = i17 ^ r16;
                iArr6[3] = r17;
                i13 += 3;
                if (i13 >= 13) {
                    break;
                }
                r18 = i18 ^ r17;
                r19 = i19 ^ r18;
            }
        } else {
            if (i10 != 8) {
                throw new IllegalStateException("Should never get here");
            }
            int r20 = org.bouncycastle.util.p.r(bArr, 0);
            iArr[0][0] = r20;
            int r21 = org.bouncycastle.util.p.r(bArr, 4);
            iArr[0][1] = r21;
            int r22 = org.bouncycastle.util.p.r(bArr, 8);
            iArr[0][2] = r22;
            int r23 = org.bouncycastle.util.p.r(bArr, 12);
            iArr[0][3] = r23;
            int r24 = org.bouncycastle.util.p.r(bArr, 16);
            iArr[1][0] = r24;
            int r25 = org.bouncycastle.util.p.r(bArr, 20);
            iArr[1][1] = r25;
            int r26 = org.bouncycastle.util.p.r(bArr, 24);
            iArr[1][2] = r26;
            int r27 = org.bouncycastle.util.p.r(bArr, 28);
            iArr[1][3] = r27;
            int i20 = 2;
            int i21 = 1;
            while (true) {
                int t12 = t(s(r27, i11)) ^ i21;
                i21 <<= 1;
                r20 ^= t12;
                int[] iArr7 = iArr[i20];
                iArr7[0] = r20;
                r21 ^= r20;
                iArr7[1] = r21;
                r22 ^= r21;
                iArr7[2] = r22;
                r23 ^= r22;
                iArr7[c10] = r23;
                int i22 = i20 + 1;
                if (i22 >= 15) {
                    break;
                }
                r24 ^= t(r23);
                int[] iArr8 = iArr[i22];
                iArr8[0] = r24;
                r25 ^= r24;
                iArr8[1] = r25;
                r26 ^= r25;
                iArr8[2] = r26;
                r27 ^= r26;
                iArr8[3] = r27;
                i20 += 2;
                i11 = 8;
                c10 = 3;
            }
        }
        if (!z10) {
            for (int i23 = 1; i23 < this.f13823a; i23++) {
                for (int i24 = 0; i24 < 4; i24++) {
                    int[] iArr9 = iArr[i23];
                    iArr9[i24] = q(iArr9[i24]);
                }
            }
        }
        return iArr;
    }

    @Override
    public void reset() {
    }
}
