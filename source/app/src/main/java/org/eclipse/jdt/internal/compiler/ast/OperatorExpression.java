package org.eclipse.jdt.internal.compiler.ast;

import b2.AbstractC3834c;
import org.eclipse.jdt.internal.compiler.util.Util;
import u8.C15580b;
import ve.j;

public abstract class OperatorExpression extends Expression implements OperatorIds {
    public static int[][] OperatorSignatures = new int[20];

    static {
        classInitialize();
    }

    public static final void classInitialize() {
        OperatorSignatures[2] = get_AND();
        OperatorSignatures[0] = get_AND_AND();
        OperatorSignatures[9] = get_DIVIDE();
        OperatorSignatures[18] = get_EQUAL_EQUAL();
        OperatorSignatures[6] = get_GREATER();
        OperatorSignatures[7] = get_GREATER_EQUAL();
        OperatorSignatures[10] = get_LEFT_SHIFT();
        OperatorSignatures[4] = get_LESS();
        OperatorSignatures[5] = get_LESS_EQUAL();
        OperatorSignatures[13] = get_MINUS();
        OperatorSignatures[15] = get_MULTIPLY();
        OperatorSignatures[3] = get_OR();
        OperatorSignatures[1] = get_OR_OR();
        OperatorSignatures[14] = get_PLUS();
        OperatorSignatures[16] = get_REMAINDER();
        OperatorSignatures[17] = get_RIGHT_SHIFT();
        OperatorSignatures[19] = get_UNSIGNED_RIGHT_SHIFT();
        OperatorSignatures[8] = get_XOR();
    }

    /* JADX WARN: Type inference failed for: r11v2, types: [org.eclipse.jdt.internal.compiler.ast.OperatorExpression$1Decode] */
    public static final String generateTableTestCase() {
        int i10 = 17;
        int[] iArr = {2, 0, 9, 6, 7, 10, 4, 5, 13, 15, 3, 1, 14, 16, 17, 19, 8};
        ?? r11 = new Object() {
            public final String constant(int i11) {
                switch (i11) {
                    case 1:
                        return "null";
                    case 2:
                        return "'A'";
                    case 3:
                        return "((byte) 3)";
                    case 4:
                        return "((short) 5)";
                    case 5:
                        return "true";
                    case 6:
                    default:
                        return Util.EMPTY_STRING;
                    case 7:
                        return "7L";
                    case 8:
                        return "300.0d";
                    case 9:
                        return "100.0f";
                    case 10:
                        return "1";
                    case 11:
                        return "\"hello-world\"";
                    case 12:
                        return "null";
                }
            }

            public final String operator(int i11) {
                switch (i11) {
                    case 0:
                        return "&&";
                    case 1:
                        return "||";
                    case 2:
                        return "&";
                    case 3:
                        return "|";
                    case 4:
                        return "<";
                    case 5:
                        return "<=";
                    case 6:
                        return ">";
                    case 7:
                        return ">=";
                    case 8:
                        return "^";
                    case 9:
                        return "/";
                    case 10:
                        return "<<";
                    case 11:
                        return "!";
                    case 12:
                        return "~";
                    case 13:
                        return "-";
                    case 14:
                        return "+";
                    case 15:
                        return "*";
                    case 16:
                        return j.f121589a;
                    case 17:
                        return ">>";
                    case 18:
                        return "==";
                    case 19:
                        return ">>>";
                    default:
                        return "????";
                }
            }

            public final String type(int i11) {
                switch (i11) {
                    case 1:
                        return "obj";
                    case 2:
                        return AbstractC3834c.f32824b1;
                    case 3:
                        return C15580b.f118629u;
                    case 4:
                        return "s";
                    case 5:
                        return "z";
                    case 6:
                    default:
                        return "xxx";
                    case 7:
                        return "l";
                    case 8:
                        return "d";
                    case 9:
                        return "f";
                    case 10:
                        return "i";
                    case 11:
                        return "str";
                    case 12:
                        return "null";
                }
            }
        };
        String str = "\tpublic static void binaryOperationTablesTestCase(){\n\t\t//TC test : all binary operation (described in tables)\n\t\t//method automatically generated by\n\t\t//org.eclipse.jdt.internal.compiler.ast.OperatorExpression.generateTableTestCase();\n\t\tString str0;\t String str\t= " + r11.constant(11) + ";\n\t\tint i0;\t int i\t= " + r11.constant(10) + ";\n\t\tboolean z0;\t boolean z\t= " + r11.constant(5) + ";\n\t\tchar c0; \t char  c\t= " + r11.constant(2) + ";\n\t\tfloat f0; \t float f\t= " + r11.constant(9) + ";\n\t\tdouble d0;\t double d\t= " + r11.constant(8) + ";\n\t\tbyte b0; \t byte b\t= " + r11.constant(3) + ";\n\t\tshort s0; \t short s\t= " + r11.constant(4) + ";\n\t\tlong l0; \t long l\t= " + r11.constant(7) + ";\n\t\tObject obj0; \t Object obj\t= " + r11.constant(1) + ";\n\n";
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            int i13 = iArr[i12];
            for (int i14 = 0; i14 < 16; i14++) {
                int i15 = 0;
                while (i15 < 16) {
                    int i16 = OperatorSignatures[i13][(i14 << 4) + i15] & 15;
                    if (i16 != 0) {
                        StringBuilder sb2 = new StringBuilder(String.valueOf(String.valueOf(str) + "\t\t" + r11.type(i16) + "0 = " + r11.type(i14)));
                        sb2.append(" ");
                        sb2.append(r11.operator(i13));
                        sb2.append(" ");
                        sb2.append(r11.type(i15));
                        sb2.append(";\n");
                        String sb3 = sb2.toString();
                        StringBuilder sb4 = new StringBuilder(String.valueOf(String.valueOf(sb3) + (i16 == 11 ? "\t\tif (! " : "\t\tif ( ") + r11.type(i16) + "0" + (i16 == 11 ? ".equals(" : " != (") + r11.constant(i14) + " " + r11.operator(i13) + " " + r11.constant(i15) + "))\n"));
                        sb4.append("\t\t\tSystem.out.println(");
                        i11++;
                        sb4.append(i11);
                        sb4.append(");\n");
                        str = sb4.toString();
                    }
                    i15++;
                    i10 = 17;
                }
            }
        }
        return String.valueOf(str) + "\n\t\tSystem.out.println(\"binary tables test : done\");}";
    }

    public static final int[] get_AND() {
        int[] iArr = new int[256];
        iArr[51] = 670266;
        iArr[55] = 472951;
        iArr[52] = 670282;
        iArr[50] = 670250;
        iArr[58] = 670378;
        iArr[115] = 489271;
        iArr[119] = 489335;
        iArr[116] = 489287;
        iArr[114] = 489255;
        iArr[122] = 489383;
        iArr[67] = 674362;
        iArr[71] = 477047;
        iArr[68] = 674378;
        iArr[66] = 674346;
        iArr[74] = 674474;
        iArr[85] = 349525;
        iArr[35] = 666170;
        iArr[39] = 468855;
        iArr[36] = 666186;
        iArr[34] = 666154;
        iArr[42] = 666282;
        iArr[163] = 698938;
        iArr[167] = 501623;
        iArr[164] = 698954;
        iArr[162] = 698922;
        iArr[170] = 699050;
        return iArr;
    }

    public static final int[] get_AND_AND() {
        int[] iArr = new int[256];
        iArr[85] = 349525;
        return iArr;
    }

    public static final int[] get_DIVIDE() {
        return get_MINUS();
    }

    public static final int[] get_EQUAL_EQUAL() {
        int[] iArr = new int[256];
        iArr[51] = 670261;
        iArr[55] = 472949;
        iArr[52] = 670277;
        iArr[56] = 538757;
        iArr[57] = 604565;
        iArr[50] = 670245;
        iArr[58] = 670373;
        iArr[115] = 489269;
        iArr[119] = 489333;
        iArr[116] = 489285;
        iArr[120] = 555141;
        iArr[121] = 620949;
        iArr[114] = 489253;
        iArr[122] = 489381;
        iArr[67] = 674357;
        iArr[71] = 477045;
        iArr[68] = 674373;
        iArr[72] = 542853;
        iArr[73] = 608661;
        iArr[66] = 674341;
        iArr[74] = 674469;
        iArr[187] = 111029;
        iArr[177] = 110869;
        iArr[188] = 111045;
        iArr[27] = 70069;
        iArr[17] = 69909;
        iArr[28] = 70085;
        iArr[131] = 559157;
        iArr[135] = 559221;
        iArr[132] = 559173;
        iArr[136] = 559237;
        iArr[137] = 559253;
        iArr[130] = 559141;
        iArr[138] = 559269;
        iArr[147] = 629045;
        iArr[151] = 629109;
        iArr[148] = 629061;
        iArr[152] = 563333;
        iArr[153] = 629141;
        iArr[146] = 629029;
        iArr[154] = 629157;
        iArr[85] = 349525;
        iArr[35] = 666165;
        iArr[39] = 468853;
        iArr[36] = 666181;
        iArr[40] = 534661;
        iArr[41] = 600469;
        iArr[34] = 666149;
        iArr[42] = 666277;
        iArr[163] = 698933;
        iArr[167] = 501621;
        iArr[164] = 698949;
        iArr[168] = 567429;
        iArr[169] = 633237;
        iArr[162] = 698917;
        iArr[170] = 699045;
        iArr[203] = 115125;
        iArr[193] = 114965;
        iArr[204] = 115141;
        return iArr;
    }

    public static final int[] get_GREATER() {
        return get_LESS();
    }

    public static final int[] get_GREATER_EQUAL() {
        return get_LESS();
    }

    public static final int[] get_LEFT_SHIFT() {
        int[] iArr = new int[256];
        iArr[51] = 670266;
        iArr[55] = 670330;
        iArr[52] = 670282;
        iArr[50] = 670250;
        iArr[58] = 670378;
        iArr[115] = 490039;
        iArr[119] = 490103;
        iArr[116] = 490055;
        iArr[114] = 490023;
        iArr[122] = 490151;
        iArr[67] = 674362;
        iArr[71] = 674426;
        iArr[68] = 674378;
        iArr[66] = 674346;
        iArr[74] = 674474;
        iArr[35] = 666170;
        iArr[39] = 666234;
        iArr[36] = 666186;
        iArr[34] = 666154;
        iArr[42] = 666282;
        iArr[163] = 698938;
        iArr[167] = 699002;
        iArr[164] = 698954;
        iArr[162] = 698922;
        iArr[170] = 699050;
        return iArr;
    }

    public static final int[] get_LESS() {
        int[] iArr = new int[256];
        iArr[51] = 670261;
        iArr[55] = 472949;
        iArr[52] = 670277;
        iArr[56] = 538757;
        iArr[57] = 604565;
        iArr[50] = 670245;
        iArr[58] = 670373;
        iArr[115] = 489269;
        iArr[119] = 489333;
        iArr[116] = 489285;
        iArr[120] = 555141;
        iArr[121] = 620949;
        iArr[114] = 489253;
        iArr[122] = 489381;
        iArr[67] = 674357;
        iArr[71] = 477045;
        iArr[68] = 674373;
        iArr[72] = 542853;
        iArr[73] = 608661;
        iArr[66] = 674341;
        iArr[74] = 674469;
        iArr[131] = 559157;
        iArr[135] = 559221;
        iArr[132] = 559173;
        iArr[136] = 559237;
        iArr[137] = 559253;
        iArr[130] = 559141;
        iArr[138] = 559269;
        iArr[147] = 629045;
        iArr[151] = 629109;
        iArr[148] = 629061;
        iArr[152] = 563333;
        iArr[153] = 629141;
        iArr[146] = 629029;
        iArr[154] = 629157;
        iArr[35] = 666165;
        iArr[39] = 468853;
        iArr[36] = 666181;
        iArr[40] = 534661;
        iArr[41] = 600469;
        iArr[34] = 666149;
        iArr[42] = 666277;
        iArr[163] = 698933;
        iArr[167] = 501621;
        iArr[164] = 698949;
        iArr[168] = 567429;
        iArr[169] = 633237;
        iArr[162] = 698917;
        iArr[170] = 699045;
        return iArr;
    }

    public static final int[] get_LESS_EQUAL() {
        return get_LESS();
    }

    public static final int[] get_MINUS() {
        int[] iArr = (int[]) get_PLUS().clone();
        iArr[179] = 0;
        iArr[183] = 0;
        iArr[180] = 0;
        iArr[182] = 0;
        iArr[187] = 0;
        iArr[177] = 0;
        iArr[184] = 0;
        iArr[185] = 0;
        iArr[181] = 0;
        iArr[178] = 0;
        iArr[186] = 0;
        iArr[188] = 0;
        iArr[59] = 0;
        iArr[123] = 0;
        iArr[75] = 0;
        iArr[107] = 0;
        iArr[27] = 0;
        iArr[139] = 0;
        iArr[155] = 0;
        iArr[91] = 0;
        iArr[43] = 0;
        iArr[171] = 0;
        iArr[203] = 0;
        iArr[204] = 0;
        return iArr;
    }

    public static final int[] get_MULTIPLY() {
        return get_MINUS();
    }

    public static final int[] get_OR() {
        return get_AND();
    }

    public static final int[] get_OR_OR() {
        return get_AND_AND();
    }

    public static final int[] get_PLUS() {
        int[] iArr = new int[256];
        iArr[51] = 670266;
        iArr[55] = 472951;
        iArr[52] = 670282;
        iArr[59] = 211899;
        iArr[56] = 538760;
        iArr[57] = 604569;
        iArr[50] = 670250;
        iArr[58] = 670378;
        iArr[115] = 489271;
        iArr[119] = 489335;
        iArr[116] = 489287;
        iArr[123] = 490427;
        iArr[120] = 555144;
        iArr[121] = 620953;
        iArr[114] = 489255;
        iArr[122] = 489383;
        iArr[67] = 674362;
        iArr[71] = 477047;
        iArr[68] = 674378;
        iArr[75] = 281531;
        iArr[72] = 542856;
        iArr[73] = 608665;
        iArr[66] = 674346;
        iArr[74] = 674474;
        iArr[179] = 766779;
        iArr[183] = 767867;
        iArr[180] = 767051;
        iArr[187] = 768955;
        iArr[177] = 766235;
        iArr[184] = 768139;
        iArr[185] = 768411;
        iArr[181] = 767323;
        iArr[178] = 766507;
        iArr[186] = 768683;
        iArr[188] = 769227;
        iArr[27] = 72635;
        iArr[131] = 559160;
        iArr[135] = 559224;
        iArr[132] = 559176;
        iArr[139] = 560059;
        iArr[136] = 559240;
        iArr[137] = 559256;
        iArr[130] = 559144;
        iArr[138] = 559272;
        iArr[147] = 629049;
        iArr[151] = 629113;
        iArr[148] = 629065;
        iArr[155] = 629691;
        iArr[152] = 563336;
        iArr[153] = 629145;
        iArr[146] = 629033;
        iArr[154] = 629161;
        iArr[91] = 351163;
        iArr[35] = 666170;
        iArr[39] = 468855;
        iArr[36] = 666186;
        iArr[43] = 142267;
        iArr[40] = 534664;
        iArr[41] = 600473;
        iArr[34] = 666154;
        iArr[42] = 666282;
        iArr[163] = 698938;
        iArr[167] = 501623;
        iArr[164] = 698954;
        iArr[171] = 699323;
        iArr[168] = 567432;
        iArr[169] = 633241;
        iArr[162] = 698922;
        iArr[170] = 699050;
        iArr[203] = 838587;
        return iArr;
    }

    public static final int[] get_REMAINDER() {
        return get_MINUS();
    }

    public static final int[] get_RIGHT_SHIFT() {
        return get_LEFT_SHIFT();
    }

    public static final int[] get_UNSIGNED_RIGHT_SHIFT() {
        return get_LEFT_SHIFT();
    }

    public static final int[] get_XOR() {
        return get_AND();
    }

    public String operatorToString() {
        int i10 = (this.bits & ASTNode.OperatorMASK) >> 6;
        if (i10 == 23) {
            return "?:";
        }
        if (i10 == 29) {
            return "!=";
        }
        if (i10 == 30) {
            return "=";
        }
        switch (i10) {
            case 0:
                return "&&";
            case 1:
                return "||";
            case 2:
                return "&";
            case 3:
                return "|";
            case 4:
                return "<";
            case 5:
                return "<=";
            case 6:
                return ">";
            case 7:
                return ">=";
            case 8:
                return "^";
            case 9:
                return "/";
            case 10:
                return "<<";
            case 11:
                return "!";
            case 12:
                return "~";
            case 13:
                return "-";
            case 14:
                return "+";
            case 15:
                return "*";
            case 16:
                return j.f121589a;
            case 17:
                return ">>";
            case 18:
                return "==";
            case 19:
                return ">>>";
            default:
                return "unknown operator";
        }
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        stringBuffer.append('(');
        StringBuffer printExpressionNoParenthesis = printExpressionNoParenthesis(0, stringBuffer);
        printExpressionNoParenthesis.append(')');
        return printExpressionNoParenthesis;
    }

    public abstract StringBuffer printExpressionNoParenthesis(int i10, StringBuffer stringBuffer);
}
