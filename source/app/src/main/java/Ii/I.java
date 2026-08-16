package Ii;

import Bi.EnumC2383o;
import Bi.InterfaceC2382n;

public class I extends AbstractC2658p {

    public static final int f9511r = 40;

    public int f9512f;

    public int f9513g;

    public int f9514h;

    public int f9515i;

    public int f9516j;

    public int f9517k;

    public int f9518l;

    public int f9519m;

    public int f9520n;

    public int f9521o;

    public int[] f9522p;

    public int f9523q;

    public I() {
        this(EnumC2383o.ANY);
    }

    private int q(int i10, int i11) {
        return (i10 >>> (32 - i11)) | (i10 << i11);
    }

    private int s(int i10, int i11, int i12) {
        return (i10 ^ i11) ^ i12;
    }

    private int t(int i10, int i11, int i12) {
        return ((~i10) & i12) | (i11 & i10);
    }

    private int u(int i10, int i11, int i12) {
        return (i10 | (~i11)) ^ i12;
    }

    private int v(int i10, int i11, int i12) {
        return (i10 & i12) | (i11 & (~i12));
    }

    private int w(int i10, int i11, int i12) {
        return i10 ^ (i11 | (~i12));
    }

    @Override
    public String b() {
        return "RIPEMD320";
    }

    @Override
    public int c(byte[] bArr, int i10) {
        l();
        org.bouncycastle.util.p.m(this.f9512f, bArr, i10);
        org.bouncycastle.util.p.m(this.f9513g, bArr, i10 + 4);
        org.bouncycastle.util.p.m(this.f9514h, bArr, i10 + 8);
        org.bouncycastle.util.p.m(this.f9515i, bArr, i10 + 12);
        org.bouncycastle.util.p.m(this.f9516j, bArr, i10 + 16);
        org.bouncycastle.util.p.m(this.f9517k, bArr, i10 + 20);
        org.bouncycastle.util.p.m(this.f9518l, bArr, i10 + 24);
        org.bouncycastle.util.p.m(this.f9519m, bArr, i10 + 28);
        org.bouncycastle.util.p.m(this.f9520n, bArr, i10 + 32);
        org.bouncycastle.util.p.m(this.f9521o, bArr, i10 + 36);
        reset();
        return 40;
    }

    @Override
    public org.bouncycastle.util.n copy() {
        return new I(this);
    }

    @Override
    public int f() {
        return 40;
    }

    @Override
    public void j(org.bouncycastle.util.n nVar) {
        r((I) nVar);
    }

    @Override
    public InterfaceC2382n k() {
        return Z.b(this, this.f9919a);
    }

    @Override
    public void n() {
        int i10 = this.f9512f;
        int i11 = this.f9513g;
        int i12 = this.f9514h;
        int i13 = this.f9515i;
        int i14 = this.f9516j;
        int i15 = this.f9517k;
        int i16 = this.f9518l;
        int i17 = this.f9519m;
        int i18 = this.f9520n;
        int i19 = this.f9521o;
        int q10 = q(i10 + s(i11, i12, i13) + this.f9522p[0], 11) + i14;
        int q11 = q(i12, 10);
        int q12 = q(i14 + s(q10, i11, q11) + this.f9522p[1], 14) + i13;
        int q13 = q(i11, 10);
        int q14 = q(i13 + s(q12, q10, q13) + this.f9522p[2], 15) + q11;
        int q15 = q(q10, 10);
        int q16 = q(q11 + s(q14, q12, q15) + this.f9522p[3], 12) + q13;
        int q17 = q(q12, 10);
        int q18 = q(q13 + s(q16, q14, q17) + this.f9522p[4], 5) + q15;
        int q19 = q(q14, 10);
        int q20 = q(q15 + s(q18, q16, q19) + this.f9522p[5], 8) + q17;
        int q21 = q(q16, 10);
        int q22 = q(q17 + s(q20, q18, q21) + this.f9522p[6], 7) + q19;
        int q23 = q(q18, 10);
        int q24 = q(q19 + s(q22, q20, q23) + this.f9522p[7], 9) + q21;
        int q25 = q(q20, 10);
        int q26 = q(q21 + s(q24, q22, q25) + this.f9522p[8], 11) + q23;
        int q27 = q(q22, 10);
        int q28 = q(q23 + s(q26, q24, q27) + this.f9522p[9], 13) + q25;
        int q29 = q(q24, 10);
        int q30 = q(q25 + s(q28, q26, q29) + this.f9522p[10], 14) + q27;
        int q31 = q(q26, 10);
        int q32 = q(q27 + s(q30, q28, q31) + this.f9522p[11], 15) + q29;
        int q33 = q(q28, 10);
        int q34 = q(q29 + s(q32, q30, q33) + this.f9522p[12], 6) + q31;
        int q35 = q(q30, 10);
        int q36 = q(q31 + s(q34, q32, q35) + this.f9522p[13], 7) + q33;
        int q37 = q(q32, 10);
        int q38 = q(q33 + s(q36, q34, q37) + this.f9522p[14], 9) + q35;
        int q39 = q(q34, 10);
        int q40 = q(q35 + s(q38, q36, q39) + this.f9522p[15], 8) + q37;
        int q41 = q(q36, 10);
        int q42 = q(i15 + w(i16, i17, i18) + this.f9522p[5] + 1352829926, 8) + i19;
        int q43 = q(i17, 10);
        int q44 = q(i19 + w(q42, i16, q43) + this.f9522p[14] + 1352829926, 9) + i18;
        int q45 = q(i16, 10);
        int q46 = q(i18 + w(q44, q42, q45) + this.f9522p[7] + 1352829926, 9) + q43;
        int q47 = q(q42, 10);
        int q48 = q(q43 + w(q46, q44, q47) + this.f9522p[0] + 1352829926, 11) + q45;
        int q49 = q(q44, 10);
        int q50 = q(q45 + w(q48, q46, q49) + this.f9522p[9] + 1352829926, 13) + q47;
        int q51 = q(q46, 10);
        int q52 = q(q47 + w(q50, q48, q51) + this.f9522p[2] + 1352829926, 15) + q49;
        int q53 = q(q48, 10);
        int q54 = q(q49 + w(q52, q50, q53) + this.f9522p[11] + 1352829926, 15) + q51;
        int q55 = q(q50, 10);
        int q56 = q(q51 + w(q54, q52, q55) + this.f9522p[4] + 1352829926, 5) + q53;
        int q57 = q(q52, 10);
        int q58 = q(q53 + w(q56, q54, q57) + this.f9522p[13] + 1352829926, 7) + q55;
        int q59 = q(q54, 10);
        int q60 = q(q55 + w(q58, q56, q59) + this.f9522p[6] + 1352829926, 7) + q57;
        int q61 = q(q56, 10);
        int q62 = q(q57 + w(q60, q58, q61) + this.f9522p[15] + 1352829926, 8) + q59;
        int q63 = q(q58, 10);
        int q64 = q(q59 + w(q62, q60, q63) + this.f9522p[8] + 1352829926, 11) + q61;
        int q65 = q(q60, 10);
        int q66 = q(q61 + w(q64, q62, q65) + this.f9522p[1] + 1352829926, 14) + q63;
        int q67 = q(q62, 10);
        int q68 = q(q63 + w(q66, q64, q67) + this.f9522p[10] + 1352829926, 14) + q65;
        int q69 = q(q64, 10);
        int q70 = q(q65 + w(q68, q66, q69) + this.f9522p[3] + 1352829926, 12) + q67;
        int q71 = q(q66, 10);
        int q72 = q(q67 + w(q70, q68, q71) + this.f9522p[12] + 1352829926, 6) + q69;
        int q73 = q(q68, 10);
        int q74 = q(q37 + t(q72, q38, q41) + this.f9522p[7] + 1518500249, 7) + q39;
        int q75 = q(q38, 10);
        int q76 = q(q39 + t(q74, q72, q75) + this.f9522p[4] + 1518500249, 6) + q41;
        int q77 = q(q72, 10);
        int q78 = q(q41 + t(q76, q74, q77) + this.f9522p[13] + 1518500249, 8) + q75;
        int q79 = q(q74, 10);
        int q80 = q(q75 + t(q78, q76, q79) + this.f9522p[1] + 1518500249, 13) + q77;
        int q81 = q(q76, 10);
        int q82 = q(q77 + t(q80, q78, q81) + this.f9522p[10] + 1518500249, 11) + q79;
        int q83 = q(q78, 10);
        int q84 = q(q79 + t(q82, q80, q83) + this.f9522p[6] + 1518500249, 9) + q81;
        int q85 = q(q80, 10);
        int q86 = q(q81 + t(q84, q82, q85) + this.f9522p[15] + 1518500249, 7) + q83;
        int q87 = q(q82, 10);
        int q88 = q(q83 + t(q86, q84, q87) + this.f9522p[3] + 1518500249, 15) + q85;
        int q89 = q(q84, 10);
        int q90 = q(q85 + t(q88, q86, q89) + this.f9522p[12] + 1518500249, 7) + q87;
        int q91 = q(q86, 10);
        int q92 = q(q87 + t(q90, q88, q91) + this.f9522p[0] + 1518500249, 12) + q89;
        int q93 = q(q88, 10);
        int q94 = q(q89 + t(q92, q90, q93) + this.f9522p[9] + 1518500249, 15) + q91;
        int q95 = q(q90, 10);
        int q96 = q(q91 + t(q94, q92, q95) + this.f9522p[5] + 1518500249, 9) + q93;
        int q97 = q(q92, 10);
        int q98 = q(q93 + t(q96, q94, q97) + this.f9522p[2] + 1518500249, 11) + q95;
        int q99 = q(q94, 10);
        int q100 = q(q95 + t(q98, q96, q99) + this.f9522p[14] + 1518500249, 7) + q97;
        int q101 = q(q96, 10);
        int q102 = q(q97 + t(q100, q98, q101) + this.f9522p[11] + 1518500249, 13) + q99;
        int q103 = q(q98, 10);
        int q104 = q(q99 + t(q102, q100, q103) + this.f9522p[8] + 1518500249, 12) + q101;
        int q105 = q(q100, 10);
        int q106 = q(q69 + v(q40, q70, q73) + this.f9522p[6] + 1548603684, 9) + q71;
        int q107 = q(q70, 10);
        int q108 = q(q71 + v(q106, q40, q107) + this.f9522p[11] + 1548603684, 13) + q73;
        int q109 = q(q40, 10);
        int q110 = q(q73 + v(q108, q106, q109) + this.f9522p[3] + 1548603684, 15) + q107;
        int q111 = q(q106, 10);
        int q112 = q(q107 + v(q110, q108, q111) + this.f9522p[7] + 1548603684, 7) + q109;
        int q113 = q(q108, 10);
        int q114 = q(q109 + v(q112, q110, q113) + this.f9522p[0] + 1548603684, 12) + q111;
        int q115 = q(q110, 10);
        int q116 = q(q111 + v(q114, q112, q115) + this.f9522p[13] + 1548603684, 8) + q113;
        int q117 = q(q112, 10);
        int q118 = q(q113 + v(q116, q114, q117) + this.f9522p[5] + 1548603684, 9) + q115;
        int q119 = q(q114, 10);
        int q120 = q(q115 + v(q118, q116, q119) + this.f9522p[10] + 1548603684, 11) + q117;
        int q121 = q(q116, 10);
        int q122 = q(q117 + v(q120, q118, q121) + this.f9522p[14] + 1548603684, 7) + q119;
        int q123 = q(q118, 10);
        int q124 = q(q119 + v(q122, q120, q123) + this.f9522p[15] + 1548603684, 7) + q121;
        int q125 = q(q120, 10);
        int q126 = q(q121 + v(q124, q122, q125) + this.f9522p[8] + 1548603684, 12) + q123;
        int q127 = q(q122, 10);
        int q128 = q(q123 + v(q126, q124, q127) + this.f9522p[12] + 1548603684, 7) + q125;
        int q129 = q(q124, 10);
        int q130 = q(q125 + v(q128, q126, q129) + this.f9522p[4] + 1548603684, 6) + q127;
        int q131 = q(q126, 10);
        int q132 = q(q127 + v(q130, q128, q131) + this.f9522p[9] + 1548603684, 15) + q129;
        int q133 = q(q128, 10);
        int q134 = q(q129 + v(q132, q130, q133) + this.f9522p[1] + 1548603684, 13) + q131;
        int q135 = q(q130, 10);
        int q136 = q(q131 + v(q134, q132, q135) + this.f9522p[2] + 1548603684, 11) + q133;
        int q137 = q(q132, 10);
        int q138 = q(q101 + u(q104, q102, q137) + this.f9522p[3] + 1859775393, 11) + q103;
        int q139 = q(q102, 10);
        int q140 = q(q103 + u(q138, q104, q139) + this.f9522p[10] + 1859775393, 13) + q137;
        int q141 = q(q104, 10);
        int q142 = q(q137 + u(q140, q138, q141) + this.f9522p[14] + 1859775393, 6) + q139;
        int q143 = q(q138, 10);
        int q144 = q(q139 + u(q142, q140, q143) + this.f9522p[4] + 1859775393, 7) + q141;
        int q145 = q(q140, 10);
        int q146 = q(q141 + u(q144, q142, q145) + this.f9522p[9] + 1859775393, 14) + q143;
        int q147 = q(q142, 10);
        int q148 = q(q143 + u(q146, q144, q147) + this.f9522p[15] + 1859775393, 9) + q145;
        int q149 = q(q144, 10);
        int q150 = q(q145 + u(q148, q146, q149) + this.f9522p[8] + 1859775393, 13) + q147;
        int q151 = q(q146, 10);
        int q152 = q(q147 + u(q150, q148, q151) + this.f9522p[1] + 1859775393, 15) + q149;
        int q153 = q(q148, 10);
        int q154 = q(q149 + u(q152, q150, q153) + this.f9522p[2] + 1859775393, 14) + q151;
        int q155 = q(q150, 10);
        int q156 = q(q151 + u(q154, q152, q155) + this.f9522p[7] + 1859775393, 8) + q153;
        int q157 = q(q152, 10);
        int q158 = q(q153 + u(q156, q154, q157) + this.f9522p[0] + 1859775393, 13) + q155;
        int q159 = q(q154, 10);
        int q160 = q(q155 + u(q158, q156, q159) + this.f9522p[6] + 1859775393, 6) + q157;
        int q161 = q(q156, 10);
        int q162 = q(q157 + u(q160, q158, q161) + this.f9522p[13] + 1859775393, 5) + q159;
        int q163 = q(q158, 10);
        int q164 = q(q159 + u(q162, q160, q163) + this.f9522p[11] + 1859775393, 12) + q161;
        int q165 = q(q160, 10);
        int q166 = q(q161 + u(q164, q162, q165) + this.f9522p[5] + 1859775393, 7) + q163;
        int q167 = q(q162, 10);
        int q168 = q(q163 + u(q166, q164, q167) + this.f9522p[12] + 1859775393, 5) + q165;
        int q169 = q(q164, 10);
        int q170 = q(q133 + u(q136, q134, q105) + this.f9522p[15] + 1836072691, 9) + q135;
        int q171 = q(q134, 10);
        int q172 = q(q135 + u(q170, q136, q171) + this.f9522p[5] + 1836072691, 7) + q105;
        int q173 = q(q136, 10);
        int q174 = q(q105 + u(q172, q170, q173) + this.f9522p[1] + 1836072691, 15) + q171;
        int q175 = q(q170, 10);
        int q176 = q(q171 + u(q174, q172, q175) + this.f9522p[3] + 1836072691, 11) + q173;
        int q177 = q(q172, 10);
        int q178 = q(q173 + u(q176, q174, q177) + this.f9522p[7] + 1836072691, 8) + q175;
        int q179 = q(q174, 10);
        int q180 = q(q175 + u(q178, q176, q179) + this.f9522p[14] + 1836072691, 6) + q177;
        int q181 = q(q176, 10);
        int q182 = q(q177 + u(q180, q178, q181) + this.f9522p[6] + 1836072691, 6) + q179;
        int q183 = q(q178, 10);
        int q184 = q(q179 + u(q182, q180, q183) + this.f9522p[9] + 1836072691, 14) + q181;
        int q185 = q(q180, 10);
        int q186 = q(q181 + u(q184, q182, q185) + this.f9522p[11] + 1836072691, 12) + q183;
        int q187 = q(q182, 10);
        int q188 = q(q183 + u(q186, q184, q187) + this.f9522p[8] + 1836072691, 13) + q185;
        int q189 = q(q184, 10);
        int q190 = q(q185 + u(q188, q186, q189) + this.f9522p[12] + 1836072691, 5) + q187;
        int q191 = q(q186, 10);
        int q192 = q(q187 + u(q190, q188, q191) + this.f9522p[2] + 1836072691, 14) + q189;
        int q193 = q(q188, 10);
        int q194 = q(q189 + u(q192, q190, q193) + this.f9522p[10] + 1836072691, 13) + q191;
        int q195 = q(q190, 10);
        int q196 = q(q191 + u(q194, q192, q195) + this.f9522p[0] + 1836072691, 13) + q193;
        int q197 = q(q192, 10);
        int q198 = q(q193 + u(q196, q194, q197) + this.f9522p[4] + 1836072691, 7) + q195;
        int q199 = q(q194, 10);
        int q200 = q(q195 + u(q198, q196, q199) + this.f9522p[13] + 1836072691, 5) + q197;
        int q201 = q(q196, 10);
        int q202 = q(((q197 + v(q168, q166, q169)) + this.f9522p[1]) - 1894007588, 11) + q167;
        int q203 = q(q166, 10);
        int q204 = q(((q167 + v(q202, q168, q203)) + this.f9522p[9]) - 1894007588, 12) + q169;
        int q205 = q(q168, 10);
        int q206 = q(((q169 + v(q204, q202, q205)) + this.f9522p[11]) - 1894007588, 14) + q203;
        int q207 = q(q202, 10);
        int q208 = q(((q203 + v(q206, q204, q207)) + this.f9522p[10]) - 1894007588, 15) + q205;
        int q209 = q(q204, 10);
        int q210 = q(((q205 + v(q208, q206, q209)) + this.f9522p[0]) - 1894007588, 14) + q207;
        int q211 = q(q206, 10);
        int q212 = q(((q207 + v(q210, q208, q211)) + this.f9522p[8]) - 1894007588, 15) + q209;
        int q213 = q(q208, 10);
        int q214 = q(((q209 + v(q212, q210, q213)) + this.f9522p[12]) - 1894007588, 9) + q211;
        int q215 = q(q210, 10);
        int q216 = q(((q211 + v(q214, q212, q215)) + this.f9522p[4]) - 1894007588, 8) + q213;
        int q217 = q(q212, 10);
        int q218 = q(((q213 + v(q216, q214, q217)) + this.f9522p[13]) - 1894007588, 9) + q215;
        int q219 = q(q214, 10);
        int q220 = q(((q215 + v(q218, q216, q219)) + this.f9522p[3]) - 1894007588, 14) + q217;
        int q221 = q(q216, 10);
        int q222 = q(((q217 + v(q220, q218, q221)) + this.f9522p[7]) - 1894007588, 5) + q219;
        int q223 = q(q218, 10);
        int q224 = q(((q219 + v(q222, q220, q223)) + this.f9522p[15]) - 1894007588, 6) + q221;
        int q225 = q(q220, 10);
        int q226 = q(((q221 + v(q224, q222, q225)) + this.f9522p[14]) - 1894007588, 8) + q223;
        int q227 = q(q222, 10);
        int q228 = q(((q223 + v(q226, q224, q227)) + this.f9522p[5]) - 1894007588, 6) + q225;
        int q229 = q(q224, 10);
        int q230 = q(((q225 + v(q228, q226, q229)) + this.f9522p[6]) - 1894007588, 5) + q227;
        int q231 = q(q226, 10);
        int q232 = q(((q227 + v(q230, q228, q231)) + this.f9522p[2]) - 1894007588, 12) + q229;
        int q233 = q(q228, 10);
        int q234 = q(q165 + t(q200, q198, q201) + this.f9522p[8] + 2053994217, 15) + q199;
        int q235 = q(q198, 10);
        int q236 = q(q199 + t(q234, q200, q235) + this.f9522p[6] + 2053994217, 5) + q201;
        int q237 = q(q200, 10);
        int q238 = q(q201 + t(q236, q234, q237) + this.f9522p[4] + 2053994217, 8) + q235;
        int q239 = q(q234, 10);
        int q240 = q(q235 + t(q238, q236, q239) + this.f9522p[1] + 2053994217, 11) + q237;
        int q241 = q(q236, 10);
        int q242 = q(q237 + t(q240, q238, q241) + this.f9522p[3] + 2053994217, 14) + q239;
        int q243 = q(q238, 10);
        int q244 = q(q239 + t(q242, q240, q243) + this.f9522p[11] + 2053994217, 14) + q241;
        int q245 = q(q240, 10);
        int q246 = q(q241 + t(q244, q242, q245) + this.f9522p[15] + 2053994217, 6) + q243;
        int q247 = q(q242, 10);
        int q248 = q(q243 + t(q246, q244, q247) + this.f9522p[0] + 2053994217, 14) + q245;
        int q249 = q(q244, 10);
        int q250 = q(q245 + t(q248, q246, q249) + this.f9522p[5] + 2053994217, 6) + q247;
        int q251 = q(q246, 10);
        int q252 = q(q247 + t(q250, q248, q251) + this.f9522p[12] + 2053994217, 9) + q249;
        int q253 = q(q248, 10);
        int q254 = q(q249 + t(q252, q250, q253) + this.f9522p[2] + 2053994217, 12) + q251;
        int q255 = q(q250, 10);
        int q256 = q(q251 + t(q254, q252, q255) + this.f9522p[13] + 2053994217, 9) + q253;
        int q257 = q(q252, 10);
        int q258 = q(q253 + t(q256, q254, q257) + this.f9522p[9] + 2053994217, 12) + q255;
        int q259 = q(q254, 10);
        int q260 = q(q255 + t(q258, q256, q259) + this.f9522p[7] + 2053994217, 5) + q257;
        int q261 = q(q256, 10);
        int q262 = q(q257 + t(q260, q258, q261) + this.f9522p[10] + 2053994217, 15) + q259;
        int q263 = q(q258, 10);
        int q264 = q(q259 + t(q262, q260, q263) + this.f9522p[14] + 2053994217, 8) + q261;
        int q265 = q(q260, 10);
        int q266 = q(((q229 + w(q232, q262, q233)) + this.f9522p[4]) - 1454113458, 9) + q231;
        int q267 = q(q262, 10);
        int q268 = q(((q231 + w(q266, q232, q267)) + this.f9522p[0]) - 1454113458, 15) + q233;
        int q269 = q(q232, 10);
        int q270 = q(((q233 + w(q268, q266, q269)) + this.f9522p[5]) - 1454113458, 5) + q267;
        int q271 = q(q266, 10);
        int q272 = q(((q267 + w(q270, q268, q271)) + this.f9522p[9]) - 1454113458, 11) + q269;
        int q273 = q(q268, 10);
        int q274 = q(((q269 + w(q272, q270, q273)) + this.f9522p[7]) - 1454113458, 6) + q271;
        int q275 = q(q270, 10);
        int q276 = q(((q271 + w(q274, q272, q275)) + this.f9522p[12]) - 1454113458, 8) + q273;
        int q277 = q(q272, 10);
        int q278 = q(((q273 + w(q276, q274, q277)) + this.f9522p[2]) - 1454113458, 13) + q275;
        int q279 = q(q274, 10);
        int q280 = q(((q275 + w(q278, q276, q279)) + this.f9522p[10]) - 1454113458, 12) + q277;
        int q281 = q(q276, 10);
        int q282 = q(((q277 + w(q280, q278, q281)) + this.f9522p[14]) - 1454113458, 5) + q279;
        int q283 = q(q278, 10);
        int q284 = q(((q279 + w(q282, q280, q283)) + this.f9522p[1]) - 1454113458, 12) + q281;
        int q285 = q(q280, 10);
        int q286 = q(((q281 + w(q284, q282, q285)) + this.f9522p[3]) - 1454113458, 13) + q283;
        int q287 = q(q282, 10);
        int q288 = q(((q283 + w(q286, q284, q287)) + this.f9522p[8]) - 1454113458, 14) + q285;
        int q289 = q(q284, 10);
        int q290 = q(((q285 + w(q288, q286, q289)) + this.f9522p[11]) - 1454113458, 11) + q287;
        int q291 = q(q286, 10);
        int q292 = q(((q287 + w(q290, q288, q291)) + this.f9522p[6]) - 1454113458, 8) + q289;
        int q293 = q(q288, 10);
        int q294 = q(((q289 + w(q292, q290, q293)) + this.f9522p[15]) - 1454113458, 5) + q291;
        int q295 = q(q290, 10);
        int q296 = q(((q291 + w(q294, q292, q295)) + this.f9522p[13]) - 1454113458, 6) + q293;
        int q297 = q(q292, 10);
        int q298 = q(q261 + s(q264, q230, q265) + this.f9522p[12], 8) + q263;
        int q299 = q(q230, 10);
        int q300 = q(q263 + s(q298, q264, q299) + this.f9522p[15], 5) + q265;
        int q301 = q(q264, 10);
        int q302 = q(q265 + s(q300, q298, q301) + this.f9522p[10], 12) + q299;
        int q303 = q(q298, 10);
        int q304 = q(q299 + s(q302, q300, q303) + this.f9522p[4], 9) + q301;
        int q305 = q(q300, 10);
        int q306 = q(q301 + s(q304, q302, q305) + this.f9522p[1], 12) + q303;
        int q307 = q(q302, 10);
        int q308 = q(q303 + s(q306, q304, q307) + this.f9522p[5], 5) + q305;
        int q309 = q(q304, 10);
        int q310 = q(q305 + s(q308, q306, q309) + this.f9522p[8], 14) + q307;
        int q311 = q(q306, 10);
        int q312 = q(q307 + s(q310, q308, q311) + this.f9522p[7], 6) + q309;
        int q313 = q(q308, 10);
        int q314 = q(q309 + s(q312, q310, q313) + this.f9522p[6], 8) + q311;
        int q315 = q(q310, 10);
        int q316 = q(q311 + s(q314, q312, q315) + this.f9522p[2], 13) + q313;
        int q317 = q(q312, 10);
        int q318 = q(q313 + s(q316, q314, q317) + this.f9522p[13], 6) + q315;
        int q319 = q(q314, 10);
        int q320 = q(q315 + s(q318, q316, q319) + this.f9522p[14], 5) + q317;
        int q321 = q(q316, 10);
        int q322 = q(q317 + s(q320, q318, q321) + this.f9522p[0], 15) + q319;
        int q323 = q(q318, 10);
        int q324 = q(q319 + s(q322, q320, q323) + this.f9522p[3], 13) + q321;
        int q325 = q(q320, 10);
        int q326 = q(q321 + s(q324, q322, q325) + this.f9522p[9], 11) + q323;
        int q327 = q(q322, 10);
        int q328 = q(q323 + s(q326, q324, q327) + this.f9522p[11], 11) + q325;
        int q329 = q(q324, 10);
        this.f9512f += q293;
        this.f9513g += q296;
        this.f9514h += q294;
        this.f9515i += q297;
        this.f9516j += q327;
        this.f9517k += q325;
        this.f9518l += q328;
        this.f9519m += q326;
        this.f9520n += q329;
        this.f9521o += q295;
        this.f9523q = 0;
        int i20 = 0;
        while (true) {
            int[] iArr = this.f9522p;
            if (i20 == iArr.length) {
                return;
            }
            iArr[i20] = 0;
            i20++;
        }
    }

    @Override
    public void o(long j10) {
        if (this.f9523q > 14) {
            n();
        }
        int[] iArr = this.f9522p;
        iArr[14] = (int) j10;
        iArr[15] = (int) (j10 >>> 32);
    }

    @Override
    public void p(byte[] bArr, int i10) {
        int[] iArr = this.f9522p;
        int i11 = this.f9523q;
        this.f9523q = i11 + 1;
        iArr[i11] = org.bouncycastle.util.p.r(bArr, i10);
        if (this.f9523q == 16) {
            n();
        }
    }

    public final void r(I i10) {
        super.d(i10);
        this.f9512f = i10.f9512f;
        this.f9513g = i10.f9513g;
        this.f9514h = i10.f9514h;
        this.f9515i = i10.f9515i;
        this.f9516j = i10.f9516j;
        this.f9517k = i10.f9517k;
        this.f9518l = i10.f9518l;
        this.f9519m = i10.f9519m;
        this.f9520n = i10.f9520n;
        this.f9521o = i10.f9521o;
        int[] iArr = i10.f9522p;
        System.arraycopy(iArr, 0, this.f9522p, 0, iArr.length);
        this.f9523q = i10.f9523q;
    }

    @Override
    public void reset() {
        super.reset();
        this.f9512f = 1732584193;
        this.f9513g = -271733879;
        this.f9514h = -1732584194;
        this.f9515i = 271733878;
        this.f9516j = -1009589776;
        this.f9517k = 1985229328;
        this.f9518l = -19088744;
        this.f9519m = -1985229329;
        this.f9520n = 19088743;
        this.f9521o = 1009589775;
        this.f9523q = 0;
        int i10 = 0;
        while (true) {
            int[] iArr = this.f9522p;
            if (i10 == iArr.length) {
                return;
            }
            iArr[i10] = 0;
            i10++;
        }
    }

    public I(EnumC2383o enumC2383o) {
        super(enumC2383o);
        this.f9522p = new int[16];
        Bi.r.a(Z.a(this, 128, enumC2383o));
        reset();
    }

    public I(I i10) {
        super(i10.f9919a);
        this.f9522p = new int[16];
        Bi.r.a(Z.a(this, 128, this.f9919a));
        r(i10);
    }
}
