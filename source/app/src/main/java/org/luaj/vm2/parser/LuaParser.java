package org.luaj.vm2.parser;

import java.io.InputStream;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.luaj.vm2.LuaString;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.ast.Block;
import org.luaj.vm2.ast.Chunk;
import org.luaj.vm2.ast.Exp;
import org.luaj.vm2.ast.FuncArgs;
import org.luaj.vm2.ast.FuncBody;
import org.luaj.vm2.ast.FuncName;
import org.luaj.vm2.ast.Name;
import org.luaj.vm2.ast.ParList;
import org.luaj.vm2.ast.Stat;
import org.luaj.vm2.ast.Str;
import org.luaj.vm2.ast.SyntaxElement;
import org.luaj.vm2.ast.TableConstructor;
import org.luaj.vm2.ast.TableField;

public class LuaParser implements LuaParserConstants {
    private static int[] jj_la1_0;
    private static int[] jj_la1_1;
    private static int[] jj_la1_2;
    private final JJCalls[] jj_2_rtns;
    private int jj_endpos;
    private List jj_expentries;
    private int[] jj_expentry;
    private int jj_gc;
    private int jj_gen;
    SimpleCharStream jj_input_stream;
    private int jj_kind;
    private int jj_la;
    private final int[] jj_la1;
    private Token jj_lastpos;
    private int[] jj_lasttokens;
    private final LookaheadSuccess jj_ls;
    public Token jj_nt;
    private int jj_ntk;
    private boolean jj_rescan;
    private Token jj_scanpos;
    public Token token;
    public LuaParserTokenManager token_source;

    public static final class JJCalls {
        int arg;
        Token first;
        int gen;
        JJCalls next;
    }

    public static final class LookaheadSuccess extends Error {
        private LookaheadSuccess() {
        }
    }

    static {
        LuaValue.valueOf(true);
        jj_la1_init_0();
        jj_la1_init_1();
        jj_la1_init_2();
    }

    public LuaParser(InputStream inputStream) {
        this(inputStream, null);
    }

    private void L(SyntaxElement syntaxElement, long j10) {
        syntaxElement.beginLine = (int) (j10 >> 32);
        syntaxElement.beginColumn = (short) j10;
        Token token = this.token;
        syntaxElement.endLine = token.endLine;
        syntaxElement.endColumn = (short) token.endColumn;
    }

    private long LineInfo() {
        return (this.jj_input_stream.getBeginLine() << 32) | this.jj_input_stream.getBeginColumn();
    }

    private static Exp.FuncCall assertfunccall(Exp.PrimaryExp primaryExp) throws ParseException {
        if (primaryExp.isfunccall()) {
            return (Exp.FuncCall) primaryExp;
        }
        throw new ParseException("expected function call");
    }

    private static Exp.VarExp assertvarexp(Exp.PrimaryExp primaryExp) throws ParseException {
        if (primaryExp.isvarexp()) {
            return (Exp.VarExp) primaryExp;
        }
        throw new ParseException("expected variable");
    }

    private boolean jj_2_1(int i10) {
        this.jj_la = i10;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_1();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(0, i10);
        }
    }

    private boolean jj_2_2(int i10) {
        this.jj_la = i10;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return !jj_3_2();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(1, i10);
        }
    }

    private boolean jj_2_3(int i10) {
        this.jj_la = i10;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_3();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(2, i10);
        }
    }

    private boolean jj_2_4(int i10) {
        this.jj_la = i10;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(3, i10);
        }
    }

    private boolean jj_2_5(int i10) {
        this.jj_la = i10;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_5();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(4, i10);
        }
    }

    private boolean jj_2_6(int i10) {
        this.jj_la = i10;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_6();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(5, i10);
        }
    }

    private boolean jj_2_7(int i10) {
        this.jj_la = i10;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_7();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(6, i10);
        }
    }

    private boolean jj_3R_10() {
        Token token = this.jj_scanpos;
        if (!jj_3R_15()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_16()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_17()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_18();
    }

    private boolean jj_3R_11() {
        Token token = this.jj_scanpos;
        if (!jj_3R_19()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_20()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_21()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_22()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_23()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_24()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_25()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_26()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_27()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_28()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_29()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_30()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_31()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_32()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_33();
    }

    private boolean jj_3R_12() {
        Token token = this.jj_scanpos;
        if (!jj_3R_34()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_35();
    }

    private boolean jj_3R_13() {
        Token token = this.jj_scanpos;
        if (!jj_scan_token(72)) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_scan_token(70);
    }

    private boolean jj_3R_14() {
        Token token = this.jj_scanpos;
        if (!jj_3R_36()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3_7()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_37();
    }

    private boolean jj_3R_15() {
        return jj_scan_token(73) || jj_scan_token(51);
    }

    private boolean jj_3R_16() {
        return jj_scan_token(77) || jj_3R_12();
    }

    private boolean jj_3R_17() {
        return jj_scan_token(74) || jj_scan_token(51);
    }

    private boolean jj_3R_18() {
        return jj_3R_38();
    }

    private boolean jj_3R_19() {
        return jj_scan_token(82);
    }

    private boolean jj_3R_20() {
        return jj_scan_token(83);
    }

    private boolean jj_3R_21() {
        return jj_scan_token(84);
    }

    private boolean jj_3R_22() {
        return jj_scan_token(85);
    }

    private boolean jj_3R_23() {
        return jj_scan_token(86);
    }

    private boolean jj_3R_24() {
        return jj_scan_token(87);
    }

    private boolean jj_3R_25() {
        return jj_scan_token(88);
    }

    private boolean jj_3R_26() {
        return jj_scan_token(89);
    }

    private boolean jj_3R_27() {
        return jj_scan_token(90);
    }

    private boolean jj_3R_28() {
        return jj_scan_token(91);
    }

    private boolean jj_3R_29() {
        return jj_scan_token(92);
    }

    private boolean jj_3R_30() {
        return jj_scan_token(93);
    }

    private boolean jj_3R_31() {
        return jj_scan_token(94);
    }

    private boolean jj_3R_32() {
        return jj_scan_token(29);
    }

    private boolean jj_3R_33() {
        return jj_scan_token(44);
    }

    private boolean jj_3R_34() {
        return jj_3R_39();
    }

    private boolean jj_3R_35() {
        return jj_3R_40();
    }

    private boolean jj_3R_36() {
        return jj_scan_token(77);
    }

    private boolean jj_3R_37() {
        return jj_3R_12();
    }

    private boolean jj_3R_38() {
        Token token = this.jj_scanpos;
        if (!jj_3R_41()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_42()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_43();
    }

    private boolean jj_3R_39() {
        Token token = this.jj_scanpos;
        if (!jj_3R_44()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_45()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_46()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_47()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_48()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_49()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_50()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_51()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_52();
    }

    private boolean jj_3R_40() {
        Token token = this.jj_scanpos;
        if (!jj_3R_53()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_54()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_55();
    }

    private boolean jj_3R_41() {
        if (jj_scan_token(75)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_56()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(76);
    }

    private boolean jj_3R_42() {
        return jj_3R_57();
    }

    private boolean jj_3R_43() {
        return jj_3R_58();
    }

    private boolean jj_3R_44() {
        return jj_scan_token(42);
    }

    private boolean jj_3R_45() {
        return jj_scan_token(48);
    }

    private boolean jj_3R_46() {
        return jj_scan_token(35);
    }

    private boolean jj_3R_47() {
        return jj_scan_token(52);
    }

    private boolean jj_3R_48() {
        return jj_3R_58();
    }

    private boolean jj_3R_49() {
        return jj_scan_token(79);
    }

    private boolean jj_3R_50() {
        return jj_3R_57();
    }

    private boolean jj_3R_51() {
        return jj_3R_59();
    }

    private boolean jj_3R_52() {
        return jj_3R_60();
    }

    private boolean jj_3R_53() {
        return jj_scan_token(83);
    }

    private boolean jj_3R_54() {
        return jj_scan_token(43);
    }

    private boolean jj_3R_55() {
        return jj_scan_token(69);
    }

    private boolean jj_3R_56() {
        return jj_3R_61();
    }

    private boolean jj_3R_57() {
        if (jj_scan_token(80)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_62()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(81);
    }

    private boolean jj_3R_58() {
        Token token = this.jj_scanpos;
        if (!jj_3R_63()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_64()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_65()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_66()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_67()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_68()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_69();
    }

    private boolean jj_3R_59() {
        return jj_scan_token(37);
    }

    private boolean jj_3R_60() {
        return jj_3R_70();
    }

    private boolean jj_3R_61() {
        return jj_3R_12();
    }

    private boolean jj_3R_62() {
        return jj_3R_71();
    }

    private boolean jj_3R_63() {
        return jj_scan_token(61);
    }

    private boolean jj_3R_64() {
        return jj_scan_token(62);
    }

    private boolean jj_3R_65() {
        return jj_scan_token(23);
    }

    private boolean jj_3R_66() {
        return jj_scan_token(24);
    }

    private boolean jj_3R_67() {
        return jj_scan_token(25);
    }

    private boolean jj_3R_68() {
        return jj_scan_token(26);
    }

    private boolean jj_3R_69() {
        return jj_scan_token(27);
    }

    private boolean jj_3R_70() {
        Token token = this.jj_scanpos;
        if (!jj_3R_72()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_73();
    }

    private boolean jj_3R_71() {
        return jj_3R_14();
    }

    private boolean jj_3R_72() {
        return jj_scan_token(51);
    }

    private boolean jj_3R_73() {
        return jj_scan_token(75);
    }

    private boolean jj_3_1() {
        return jj_scan_token(36) || jj_scan_token(51) || jj_scan_token(71);
    }

    private boolean jj_3_2() {
        return jj_scan_token(41) || jj_scan_token(37);
    }

    private boolean jj_3_3() {
        return jj_3R_10();
    }

    private boolean jj_3_4() {
        return jj_scan_token(72) || jj_scan_token(51);
    }

    private boolean jj_3_5() {
        return jj_3R_11() || jj_3R_12();
    }

    private boolean jj_3_6() {
        return jj_3R_13() || jj_3R_14();
    }

    private boolean jj_3_7() {
        return jj_scan_token(51) || jj_scan_token(71);
    }

    private void jj_add_error_token(int i10, int i11) {
        if (i11 >= 100) {
            return;
        }
        int i12 = this.jj_endpos;
        if (i11 == i12 + 1) {
            int[] iArr = this.jj_lasttokens;
            this.jj_endpos = i12 + 1;
            iArr[i12] = i10;
            return;
        }
        if (i12 != 0) {
            this.jj_expentry = new int[i12];
            for (int i13 = 0; i13 < this.jj_endpos; i13++) {
                this.jj_expentry[i13] = this.jj_lasttokens[i13];
            }
            Iterator it = this.jj_expentries.iterator();
            loop1: while (true) {
                if (!it.hasNext()) {
                    break;
                }
                int[] iArr2 = (int[]) it.next();
                if (iArr2.length == this.jj_expentry.length) {
                    int i14 = 0;
                    while (true) {
                        int[] iArr3 = this.jj_expentry;
                        if (i14 >= iArr3.length) {
                            this.jj_expentries.add(iArr3);
                            break loop1;
                        } else if (iArr2[i14] != iArr3[i14]) {
                            break;
                        } else {
                            i14++;
                        }
                    }
                }
            }
            if (i11 != 0) {
                int[] iArr4 = this.jj_lasttokens;
                this.jj_endpos = i11;
                iArr4[i11 - 1] = i10;
            }
        }
    }

    private Token jj_consume_token(int i10) throws ParseException {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 == null) {
            token2 = this.token_source.getNextToken();
            token.next = token2;
        }
        this.token = token2;
        this.jj_ntk = -1;
        if (this.token.kind != i10) {
            this.token = token;
            this.jj_kind = i10;
            throw generateParseException();
        }
        this.jj_gen++;
        int i11 = this.jj_gc + 1;
        this.jj_gc = i11;
        if (i11 > 100) {
            int i12 = 0;
            this.jj_gc = 0;
            while (true) {
                JJCalls[] jJCallsArr = this.jj_2_rtns;
                if (i12 >= jJCallsArr.length) {
                    break;
                }
                for (JJCalls jJCalls = jJCallsArr[i12]; jJCalls != null; jJCalls = jJCalls.next) {
                    if (jJCalls.gen < this.jj_gen) {
                        jJCalls.first = null;
                    }
                }
                i12++;
            }
        }
        return this.token;
    }

    private static void jj_la1_init_0() {
        jj_la1_0 = new int[]{0, -1073741824, 0, 0, 0, -1073741824, 0, 0, 0, 0, 260046848, 0, 0, 0, 0, 0, 0, 260046848, 260046848, 260046848, 0, 260046848, 260046848, 260046848, 0, 0, 0, 260046848, 0, 0, 260046848, 0, 536870912, 0};
    }

    private static void jj_la1_init_1() {
        jj_la1_1 = new int[]{0, 803568, 8192, 0, 0, 278720, 48, 524800, 2, 1, 1612254248, 0, 0, 0, 0, 0, 524288, 1610612736, 1612254248, 1610612736, 0, 1612252200, 1610612736, 1612254248, 524288, 0, 524288, 1612254248, 0, 0, 1612254248, 0, 4096, 2048};
    }

    private static void jj_la1_init_2() {
        jj_la1_2 = new int[]{32, 2114, 0, 256, 128, 66, 0, 2048, 0, 0, 624672, 64, 384, 256, 512, 1024, 2048, 77312, 624672, 67584, 256, 100352, 0, 624672, 32768, 256, 32768, 632864, 320, 8192, 624672, 320, 2147221504, 524320};
    }

    private int jj_ntk() {
        Token token = this.token;
        Token token2 = token.next;
        this.jj_nt = token2;
        if (token2 == null) {
            token2 = this.token_source.getNextToken();
            token.next = token2;
        }
        int i10 = token2.kind;
        this.jj_ntk = i10;
        return i10;
    }

    private void jj_rescan_token() {
        this.jj_rescan = true;
        for (int i10 = 0; i10 < 7; i10++) {
            try {
                JJCalls jJCalls = this.jj_2_rtns[i10];
                do {
                    if (jJCalls.gen > this.jj_gen) {
                        this.jj_la = jJCalls.arg;
                        Token token = jJCalls.first;
                        this.jj_scanpos = token;
                        this.jj_lastpos = token;
                        switch (i10) {
                            case 0:
                                jj_3_1();
                                break;
                            case 1:
                                jj_3_2();
                                break;
                            case 2:
                                jj_3_3();
                                break;
                            case 3:
                                jj_3_4();
                                break;
                            case 4:
                                jj_3_5();
                                break;
                            case 5:
                                jj_3_6();
                                break;
                            case 6:
                                jj_3_7();
                                break;
                        }
                    }
                    jJCalls = jJCalls.next;
                } while (jJCalls != null);
            } catch (LookaheadSuccess unused) {
            }
        }
        this.jj_rescan = false;
    }

    private void jj_save(int i10, int i11) {
        JJCalls jJCalls = this.jj_2_rtns[i10];
        while (true) {
            if (jJCalls.gen <= this.jj_gen) {
                break;
            }
            JJCalls jJCalls2 = jJCalls.next;
            if (jJCalls2 == null) {
                JJCalls jJCalls3 = new JJCalls();
                jJCalls.next = jJCalls3;
                jJCalls = jJCalls3;
                break;
            }
            jJCalls = jJCalls2;
        }
        jJCalls.gen = (this.jj_gen + i11) - this.jj_la;
        jJCalls.first = this.token;
        jJCalls.arg = i11;
    }

    private boolean jj_scan_token(int i10) {
        Token token = this.jj_scanpos;
        if (token == this.jj_lastpos) {
            this.jj_la--;
            Token token2 = token.next;
            if (token2 == null) {
                token2 = this.token_source.getNextToken();
                token.next = token2;
            }
            this.jj_scanpos = token2;
            this.jj_lastpos = token2;
        } else {
            this.jj_scanpos = token.next;
        }
        if (this.jj_rescan) {
            Token token3 = this.token;
            int i11 = 0;
            while (token3 != null && token3 != this.jj_scanpos) {
                i11++;
                token3 = token3.next;
            }
            if (token3 != null) {
                jj_add_error_token(i10, i11);
            }
        }
        Token token4 = this.jj_scanpos;
        if (token4.kind != i10) {
            return true;
        }
        if (this.jj_la == 0 && token4 == this.jj_lastpos) {
            throw this.jj_ls;
        }
        return false;
    }

    public static void main(String[] strArr) throws ParseException {
        new LuaParser(System.f92798in).Chunk();
    }

    public final Stat Assign(Exp.VarExp varExp) throws ParseException {
        ArrayList arrayList = new ArrayList();
        arrayList.add(varExp);
        long LineInfo = LineInfo();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk();
            }
            if (i10 != 72) {
                this.jj_la1[13] = this.jj_gen;
                jj_consume_token(71);
                Stat assignment = Stat.assignment(arrayList, ExpList());
                L(assignment, LineInfo);
                return assignment;
            }
            jj_consume_token(72);
            arrayList.add(VarExp());
        }
    }

    public final int Binop() throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 == 29) {
            jj_consume_token(29);
            return 60;
        }
        if (i10 == 44) {
            jj_consume_token(44);
            return 59;
        }
        switch (i10) {
            case 82:
                jj_consume_token(82);
                return 13;
            case 83:
                jj_consume_token(83);
                return 14;
            case 84:
                jj_consume_token(84);
                return 15;
            case 85:
                jj_consume_token(85);
                return 16;
            case 86:
                jj_consume_token(86);
                return 18;
            case 87:
                jj_consume_token(87);
                return 17;
            case 88:
                jj_consume_token(88);
                return 22;
            case 89:
                jj_consume_token(89);
                return 25;
            case 90:
                jj_consume_token(90);
                return 26;
            case 91:
                jj_consume_token(91);
                return 63;
            case 92:
                jj_consume_token(92);
                return 62;
            case 93:
                jj_consume_token(93);
                return 24;
            case 94:
                jj_consume_token(94);
                return 61;
            default:
                this.jj_la1[32] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0039, code lost:
    
        r7.jj_la1[1] = r7.jj_gen;
        r3 = r7.jj_ntk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0042, code lost:
    
        if (r3 != (-1)) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0044, code lost:
    
        r3 = jj_ntk();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x004a, code lost:
    
        if (r3 == 45) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x004c, code lost:
    
        r7.jj_la1[2] = r7.jj_gen;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x005b, code lost:
    
        L(r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x005e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0054, code lost:
    
        r0.add(ReturnStat());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Block Block() throws ParseException {
        Block block = new Block();
        long LineInfo = LineInfo();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk();
            }
            if (i10 != 30 && i10 != 31 && i10 != 41 && i10 != 46 && i10 != 65 && i10 != 70 && i10 != 75 && i10 != 50 && i10 != 51) {
                switch (i10) {
                }
            }
            block.add(Stat());
        }
    }

    public final Chunk Chunk() throws ParseException {
        long LineInfo = LineInfo();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 != 69) {
            this.jj_la1[0] = this.jj_gen;
        } else {
            jj_consume_token(69);
            this.token_source.SwitchTo(1);
        }
        Block Block = Block();
        jj_consume_token(0);
        Chunk chunk = new Chunk(Block);
        L(chunk, LineInfo);
        return chunk;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0071 A[LOOP:0: B:38:0x006a->B:40:0x0071, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Exp Exp() throws ParseException {
        Exp SimpleExp;
        long LineInfo = LineInfo();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 != 35 && i10 != 37 && i10 != 48) {
            if (i10 != 69) {
                if (i10 != 75) {
                    if (i10 != 83) {
                        if (i10 != 42) {
                            if (i10 != 43) {
                                if (i10 != 51 && i10 != 52 && i10 != 61 && i10 != 62 && i10 != 79 && i10 != 80) {
                                    switch (i10) {
                                        case 23:
                                        case 24:
                                        case 25:
                                        case 26:
                                        case 27:
                                            break;
                                        default:
                                            this.jj_la1[23] = this.jj_gen;
                                            jj_consume_token(-1);
                                            throw new ParseException();
                                    }
                                    while (jj_2_5(2)) {
                                        SimpleExp = Exp.binaryexp(SimpleExp, Binop(), Exp());
                                    }
                                    L(SimpleExp, LineInfo);
                                    return SimpleExp;
                                }
                            }
                        }
                    }
                }
            }
            SimpleExp = Exp.unaryexp(Unop(), Exp());
            while (jj_2_5(2)) {
            }
            L(SimpleExp, LineInfo);
            return SimpleExp;
        }
        SimpleExp = SimpleExp();
        while (jj_2_5(2)) {
        }
        L(SimpleExp, LineInfo);
        return SimpleExp;
    }

    public final List ExpList() throws ParseException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            arrayList.add(Exp());
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk();
            }
            if (i10 != 72) {
                this.jj_la1[20] = this.jj_gen;
                return arrayList;
            }
            jj_consume_token(72);
        }
    }

    public final Stat ExprStat() throws ParseException {
        Stat Assign;
        long LineInfo = LineInfo();
        Exp.PrimaryExp PrimaryExp = PrimaryExp();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 == 71 || i10 == 72) {
            Assign = Assign(assertvarexp(PrimaryExp));
        } else {
            this.jj_la1[12] = this.jj_gen;
            Assign = null;
        }
        if (Assign == null) {
            Assign = Stat.functioncall(assertfunccall(PrimaryExp));
        }
        L(Assign, LineInfo);
        return Assign;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:42:0x0077. Please report as an issue. */
    public final TableField Field() throws ParseException {
        TableField keyedField;
        long LineInfo = LineInfo();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 != 77) {
            this.jj_la1[29] = this.jj_gen;
            if (jj_2_7(2)) {
                Token jj_consume_token = jj_consume_token(51);
                jj_consume_token(71);
                keyedField = TableField.namedField(jj_consume_token.image, Exp());
            } else {
                int i11 = this.jj_ntk;
                if (i11 == -1) {
                    i11 = jj_ntk();
                }
                if (i11 != 35 && i11 != 37 && i11 != 48 && i11 != 69 && i11 != 75 && i11 != 83 && i11 != 42 && i11 != 43 && i11 != 51 && i11 != 52 && i11 != 61 && i11 != 62 && i11 != 79 && i11 != 80) {
                    switch (i11) {
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                            break;
                        default:
                            this.jj_la1[30] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                    }
                }
                keyedField = TableField.listField(Exp());
            }
        } else {
            jj_consume_token(77);
            Exp Exp = Exp();
            jj_consume_token(78);
            jj_consume_token(71);
            keyedField = TableField.keyedField(Exp, Exp());
        }
        L(keyedField, LineInfo);
        return keyedField;
    }

    public final List FieldList() throws ParseException {
        ArrayList arrayList = new ArrayList();
        while (true) {
            arrayList.add(Field());
            if (!jj_2_6(2)) {
                break;
            }
            FieldSep();
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 == 70 || i10 == 72) {
            FieldSep();
        } else {
            this.jj_la1[28] = this.jj_gen;
        }
        return arrayList;
    }

    public final void FieldSep() throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        int i11 = 70;
        if (i10 != 70) {
            i11 = 72;
            if (i10 != 72) {
                this.jj_la1[31] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
            }
        }
        jj_consume_token(i11);
    }

    public final FuncArgs FuncArgs() throws ParseException {
        FuncArgs string;
        List ExpList;
        long LineInfo = LineInfo();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 != 61 && i10 != 62) {
            if (i10 == 75) {
                jj_consume_token(75);
                int i11 = this.jj_ntk;
                if (i11 == -1) {
                    i11 = jj_ntk();
                }
                if (i11 != 35 && i11 != 37 && i11 != 48 && i11 != 69 && i11 != 75 && i11 != 83 && i11 != 42 && i11 != 43 && i11 != 51 && i11 != 52 && i11 != 61 && i11 != 62 && i11 != 79 && i11 != 80) {
                    switch (i11) {
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                            break;
                        default:
                            this.jj_la1[18] = this.jj_gen;
                            ExpList = null;
                            break;
                    }
                    jj_consume_token(76);
                    string = FuncArgs.explist(ExpList);
                }
                ExpList = ExpList();
                jj_consume_token(76);
                string = FuncArgs.explist(ExpList);
            } else if (i10 != 80) {
                switch (i10) {
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                        break;
                    default:
                        this.jj_la1[19] = this.jj_gen;
                        jj_consume_token(-1);
                        throw new ParseException();
                }
            } else {
                string = FuncArgs.tableconstructor(TableConstructor());
            }
            L(string, LineInfo);
            return string;
        }
        string = FuncArgs.string(Str());
        L(string, LineInfo);
        return string;
    }

    public final FuncBody FuncBody() throws ParseException {
        ParList ParList;
        long LineInfo = LineInfo();
        jj_consume_token(75);
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 == 51 || i10 == 79) {
            ParList = ParList();
        } else {
            this.jj_la1[24] = this.jj_gen;
            ParList = null;
        }
        jj_consume_token(76);
        Block Block = Block();
        jj_consume_token(34);
        FuncBody funcBody = new FuncBody(ParList, Block);
        L(funcBody, LineInfo);
        return funcBody;
    }

    public final FuncName FuncName() throws ParseException {
        Token jj_consume_token = jj_consume_token(51);
        FuncName funcName = new FuncName(jj_consume_token.image);
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk();
            }
            if (i10 != 73) {
                break;
            }
            jj_consume_token(73);
            jj_consume_token = jj_consume_token(51);
            funcName.adddot(jj_consume_token.image);
        }
        this.jj_la1[14] = this.jj_gen;
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk();
        }
        if (i11 != 74) {
            this.jj_la1[15] = this.jj_gen;
        } else {
            jj_consume_token(74);
            jj_consume_token = jj_consume_token(51);
            funcName.method = jj_consume_token.image;
        }
        L(funcName, jj_consume_token);
        return funcName;
    }

    public final FuncBody FunctionCall() throws ParseException {
        long LineInfo = LineInfo();
        jj_consume_token(37);
        FuncBody FuncBody = FuncBody();
        L(FuncBody, LineInfo);
        return FuncBody;
    }

    public final Stat IfThenElse() throws ParseException {
        jj_consume_token(39);
        Exp Exp = Exp();
        jj_consume_token(47);
        Block Block = Block();
        Block block = null;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk();
            }
            if (i10 != 33) {
                break;
            }
            jj_consume_token(33);
            Exp Exp2 = Exp();
            jj_consume_token(47);
            Block Block2 = Block();
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
            }
            arrayList.add(Exp2);
            arrayList2.add(Block2);
        }
        this.jj_la1[8] = this.jj_gen;
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk();
        }
        if (i11 != 32) {
            this.jj_la1[9] = this.jj_gen;
        } else {
            jj_consume_token(32);
            block = Block();
        }
        jj_consume_token(34);
        return Stat.ifthenelse(Exp, Block, arrayList, arrayList2, block);
    }

    public final Stat Label() throws ParseException {
        jj_consume_token(65);
        Token jj_consume_token = jj_consume_token(51);
        jj_consume_token(65);
        return Stat.labelstat(jj_consume_token.image);
    }

    public final List NameList() throws ParseException {
        ArrayList arrayList = new ArrayList();
        Name name = new Name(jj_consume_token(51).image);
        while (true) {
            arrayList.add(name);
            if (!jj_2_4(2)) {
                return arrayList;
            }
            jj_consume_token(72);
            name = new Name(jj_consume_token(51).image);
        }
    }

    public final ParList ParList() throws ParseException {
        long LineInfo = LineInfo();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        boolean z10 = true;
        if (i10 != 51) {
            if (i10 != 79) {
                this.jj_la1[26] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
            }
            jj_consume_token(79);
            ParList parList = new ParList(null, true);
            L(parList, LineInfo);
            return parList;
        }
        List NameList = NameList();
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk();
        }
        if (i11 != 72) {
            this.jj_la1[25] = this.jj_gen;
            z10 = false;
        } else {
            jj_consume_token(72);
            jj_consume_token(79);
        }
        ParList parList2 = new ParList(NameList, z10);
        L(parList2, LineInfo);
        return parList2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x001d. Please report as an issue. */
    public final Exp.PrimaryExp PostfixOp(Exp.PrimaryExp primaryExp) throws ParseException {
        Exp.PrimaryExp functionop;
        long LineInfo = LineInfo();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 != 61 && i10 != 62) {
            if (i10 == 77) {
                jj_consume_token(77);
                Exp Exp = Exp();
                jj_consume_token(78);
                functionop = Exp.indexop(primaryExp, Exp);
            } else if (i10 != 80) {
                switch (i10) {
                    default:
                        switch (i10) {
                            case 73:
                                jj_consume_token(73);
                                functionop = Exp.fieldop(primaryExp, jj_consume_token(51).image);
                                break;
                            case 74:
                                jj_consume_token(74);
                                Token jj_consume_token = jj_consume_token(51);
                                functionop = Exp.methodop(primaryExp, jj_consume_token.image, FuncArgs());
                                break;
                            case 75:
                                break;
                            default:
                                this.jj_la1[17] = this.jj_gen;
                                jj_consume_token(-1);
                                throw new ParseException();
                        }
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                        functionop = Exp.functionop(primaryExp, FuncArgs());
                        break;
                }
            }
            L(functionop, LineInfo);
            return functionop;
        }
        functionop = Exp.functionop(primaryExp, FuncArgs());
        L(functionop, LineInfo);
        return functionop;
    }

    public final Exp.PrimaryExp PrefixExp() throws ParseException {
        Exp.PrimaryExp nameprefix;
        long LineInfo = LineInfo();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 == 51) {
            nameprefix = Exp.nameprefix(jj_consume_token(51).image);
        } else {
            if (i10 != 75) {
                this.jj_la1[16] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
            }
            jj_consume_token(75);
            Exp Exp = Exp();
            jj_consume_token(76);
            nameprefix = Exp.parensprefix(Exp);
        }
        L(nameprefix, LineInfo);
        return nameprefix;
    }

    public final Exp.PrimaryExp PrimaryExp() throws ParseException {
        long LineInfo = LineInfo();
        Exp.PrimaryExp PrefixExp = PrefixExp();
        while (jj_2_3(2)) {
            PrefixExp = PostfixOp(PrefixExp);
        }
        L(PrefixExp, LineInfo);
        return PrefixExp;
    }

    public void ReInit(InputStream inputStream) {
        ReInit(inputStream, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Stat ReturnStat() throws ParseException {
        List ExpList;
        int i10;
        long LineInfo = LineInfo();
        jj_consume_token(45);
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk();
        }
        if (i11 != 35 && i11 != 37 && i11 != 48 && i11 != 69 && i11 != 75 && i11 != 83 && i11 != 42 && i11 != 43 && i11 != 51 && i11 != 52 && i11 != 61 && i11 != 62 && i11 != 79 && i11 != 80) {
            switch (i11) {
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    break;
                default:
                    this.jj_la1[10] = this.jj_gen;
                    ExpList = null;
                    break;
            }
            i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk();
            }
            if (i10 == 70) {
                this.jj_la1[11] = this.jj_gen;
            } else {
                jj_consume_token(70);
            }
            Stat returnstat = Stat.returnstat(ExpList);
            L(returnstat, LineInfo);
            return returnstat;
        }
        ExpList = ExpList();
        i10 = this.jj_ntk;
        if (i10 == -1) {
        }
        if (i10 == 70) {
        }
        Stat returnstat2 = Stat.returnstat(ExpList);
        L(returnstat2, LineInfo);
        return returnstat2;
    }

    public final Exp SimpleExp() throws ParseException {
        LuaValue luaValue;
        Exp constant;
        long LineInfo = LineInfo();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 != 35) {
            if (i10 == 37) {
                constant = Exp.anonymousfunction(FunctionCall());
            } else if (i10 == 42) {
                jj_consume_token(42);
                luaValue = LuaValue.NIL;
            } else if (i10 == 48) {
                jj_consume_token(48);
                luaValue = LuaValue.TRUE;
            } else {
                if (i10 == 75 || i10 == 51) {
                    return PrimaryExp();
                }
                if (i10 != 52) {
                    if (i10 != 61 && i10 != 62) {
                        if (i10 == 79) {
                            jj_consume_token(79);
                            constant = Exp.varargs();
                        } else if (i10 != 80) {
                            switch (i10) {
                                case 23:
                                case 24:
                                case 25:
                                case 26:
                                case 27:
                                    break;
                                default:
                                    this.jj_la1[21] = this.jj_gen;
                                    jj_consume_token(-1);
                                    throw new ParseException();
                            }
                        } else {
                            constant = Exp.tableconstructor(TableConstructor());
                        }
                    }
                    luaValue = Str();
                } else {
                    constant = Exp.numberconstant(jj_consume_token(52).image);
                }
            }
            L(constant, LineInfo);
            return constant;
        }
        jj_consume_token(35);
        luaValue = LuaValue.FALSE;
        constant = Exp.constant(luaValue);
        L(constant, LineInfo);
        return constant;
    }

    public final Stat Stat() throws ParseException {
        Stat breakstat;
        long LineInfo = LineInfo();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 == 30) {
            jj_consume_token(30);
            breakstat = Stat.breakstat();
        } else if (i10 == 31) {
            jj_consume_token(31);
            Block Block = Block();
            jj_consume_token(34);
            breakstat = Stat.block(Block);
        } else if (i10 == 38) {
            jj_consume_token(38);
            breakstat = Stat.gotostat(jj_consume_token(51).image);
        } else if (i10 == 39) {
            breakstat = IfThenElse();
        } else if (i10 == 46) {
            jj_consume_token(46);
            Block Block2 = Block();
            jj_consume_token(49);
            breakstat = Stat.repeatuntil(Block2, Exp());
        } else if (i10 == 50) {
            jj_consume_token(50);
            Exp Exp = Exp();
            jj_consume_token(31);
            Block Block3 = Block();
            jj_consume_token(34);
            breakstat = Stat.whiledo(Exp, Block3);
        } else if (i10 != 65) {
            List list = null;
            Exp Exp2 = null;
            if (i10 == 70) {
                jj_consume_token(70);
                return null;
            }
            this.jj_la1[5] = this.jj_gen;
            if (jj_2_1(3)) {
                jj_consume_token(36);
                Token jj_consume_token = jj_consume_token(51);
                jj_consume_token(71);
                Exp Exp3 = Exp();
                jj_consume_token(72);
                Exp Exp4 = Exp();
                int i11 = this.jj_ntk;
                if (i11 == -1) {
                    i11 = jj_ntk();
                }
                if (i11 != 72) {
                    this.jj_la1[3] = this.jj_gen;
                } else {
                    jj_consume_token(72);
                    Exp2 = Exp();
                }
                jj_consume_token(31);
                Block Block4 = Block();
                jj_consume_token(34);
                breakstat = Stat.fornumeric(jj_consume_token.image, Exp3, Exp4, Exp2, Block4);
            } else {
                int i12 = this.jj_ntk;
                if (i12 == -1) {
                    i12 = jj_ntk();
                }
                if (i12 == 36) {
                    jj_consume_token(36);
                    List NameList = NameList();
                    jj_consume_token(40);
                    List ExpList = ExpList();
                    jj_consume_token(31);
                    Block Block5 = Block();
                    jj_consume_token(34);
                    breakstat = Stat.forgeneric(NameList, ExpList, Block5);
                } else if (i12 != 37) {
                    this.jj_la1[6] = this.jj_gen;
                    if (jj_2_2(2)) {
                        jj_consume_token(41);
                        jj_consume_token(37);
                        Token jj_consume_token2 = jj_consume_token(51);
                        breakstat = Stat.localfunctiondef(jj_consume_token2.image, FuncBody());
                    } else {
                        int i13 = this.jj_ntk;
                        if (i13 == -1) {
                            i13 = jj_ntk();
                        }
                        if (i13 == 41) {
                            jj_consume_token(41);
                            List NameList2 = NameList();
                            int i14 = this.jj_ntk;
                            if (i14 == -1) {
                                i14 = jj_ntk();
                            }
                            if (i14 != 71) {
                                this.jj_la1[4] = this.jj_gen;
                            } else {
                                jj_consume_token(71);
                                list = ExpList();
                            }
                            breakstat = Stat.localassignment(NameList2, list);
                        } else {
                            if (i13 != 51 && i13 != 75) {
                                this.jj_la1[7] = this.jj_gen;
                                jj_consume_token(-1);
                                throw new ParseException();
                            }
                            breakstat = ExprStat();
                        }
                    }
                } else {
                    jj_consume_token(37);
                    breakstat = Stat.functiondef(FuncName(), FuncBody());
                }
            }
        } else {
            breakstat = Label();
        }
        L(breakstat, LineInfo);
        return breakstat;
    }

    public final LuaString Str() throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 == 61) {
            jj_consume_token(61);
            return Str.quoteString(this.token.image);
        }
        if (i10 == 62) {
            jj_consume_token(62);
            return Str.charString(this.token.image);
        }
        switch (i10) {
            case 23:
                jj_consume_token(23);
                return Str.longString(this.token.image);
            case 24:
                jj_consume_token(24);
                return Str.longString(this.token.image);
            case 25:
                jj_consume_token(25);
                return Str.longString(this.token.image);
            case 26:
                jj_consume_token(26);
                return Str.longString(this.token.image);
            case 27:
                jj_consume_token(27);
                return Str.longString(this.token.image);
            default:
                this.jj_la1[22] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
        }
    }

    public final TableConstructor TableConstructor() throws ParseException {
        TableConstructor tableConstructor = new TableConstructor();
        long LineInfo = LineInfo();
        jj_consume_token(80);
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 != 35 && i10 != 37 && i10 != 48 && i10 != 69 && i10 != 75 && i10 != 77 && i10 != 83 && i10 != 42 && i10 != 43 && i10 != 51 && i10 != 52 && i10 != 61 && i10 != 62 && i10 != 79 && i10 != 80) {
            switch (i10) {
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    break;
                default:
                    this.jj_la1[27] = this.jj_gen;
                    break;
            }
            jj_consume_token(81);
            L(tableConstructor, LineInfo);
            return tableConstructor;
        }
        tableConstructor.fields = FieldList();
        jj_consume_token(81);
        L(tableConstructor, LineInfo);
        return tableConstructor;
    }

    public final int Unop() throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk();
        }
        if (i10 == 43) {
            jj_consume_token(43);
            return 20;
        }
        if (i10 == 69) {
            jj_consume_token(69);
            return 21;
        }
        if (i10 == 83) {
            jj_consume_token(83);
            return 19;
        }
        this.jj_la1[33] = this.jj_gen;
        jj_consume_token(-1);
        throw new ParseException();
    }

    public final Exp.VarExp VarExp() throws ParseException {
        return assertvarexp(PrimaryExp());
    }

    public final void disable_tracing() {
    }

    public final void enable_tracing() {
    }

    public ParseException generateParseException() {
        this.jj_expentries.clear();
        boolean[] zArr = new boolean[95];
        int i10 = this.jj_kind;
        if (i10 >= 0) {
            zArr[i10] = true;
            this.jj_kind = -1;
        }
        for (int i11 = 0; i11 < 34; i11++) {
            if (this.jj_la1[i11] == this.jj_gen) {
                for (int i12 = 0; i12 < 32; i12++) {
                    int i13 = 1 << i12;
                    if ((jj_la1_0[i11] & i13) != 0) {
                        zArr[i12] = true;
                    }
                    if ((jj_la1_1[i11] & i13) != 0) {
                        zArr[i12 + 32] = true;
                    }
                    if ((jj_la1_2[i11] & i13) != 0) {
                        zArr[i12 + 64] = true;
                    }
                }
            }
        }
        for (int i14 = 0; i14 < 95; i14++) {
            if (zArr[i14]) {
                this.jj_expentry = r5;
                int[] iArr = {i14};
                this.jj_expentries.add(iArr);
            }
        }
        this.jj_endpos = 0;
        jj_rescan_token();
        jj_add_error_token(0, 0);
        int[][] iArr2 = new int[this.jj_expentries.size()];
        for (int i15 = 0; i15 < this.jj_expentries.size(); i15++) {
            iArr2[i15] = (int[]) this.jj_expentries.get(i15);
        }
        return new ParseException(this.token, iArr2, LuaParserConstants.tokenImage);
    }

    public SimpleCharStream getCharStream() {
        return this.jj_input_stream;
    }

    public final Token getNextToken() {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 == null) {
            token2 = this.token_source.getNextToken();
            token.next = token2;
        }
        this.token = token2;
        this.jj_ntk = -1;
        this.jj_gen++;
        return this.token;
    }

    public final Token getToken(int i10) {
        Token token = this.token;
        for (int i11 = 0; i11 < i10; i11++) {
            Token token2 = token.next;
            if (token2 == null) {
                token2 = this.token_source.getNextToken();
                token.next = token2;
            }
            token = token2;
        }
        return token;
    }

    public LuaParser(InputStream inputStream, String str) {
        this.jj_la1 = new int[34];
        this.jj_2_rtns = new JJCalls[7];
        int i10 = 0;
        this.jj_rescan = false;
        this.jj_gc = 0;
        this.jj_ls = new LookaheadSuccess();
        this.jj_expentries = new ArrayList();
        this.jj_kind = -1;
        this.jj_lasttokens = new int[100];
        try {
            this.jj_input_stream = new SimpleCharStream(inputStream, str, 1, 1);
            this.token_source = new LuaParserTokenManager(this.jj_input_stream);
            this.token = new Token();
            this.jj_ntk = -1;
            this.jj_gen = 0;
            for (int i11 = 0; i11 < 34; i11++) {
                this.jj_la1[i11] = -1;
            }
            while (true) {
                JJCalls[] jJCallsArr = this.jj_2_rtns;
                if (i10 >= jJCallsArr.length) {
                    return;
                }
                jJCallsArr[i10] = new JJCalls();
                i10++;
            }
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    private void L(SyntaxElement syntaxElement, Token token) {
        syntaxElement.beginLine = token.beginLine;
        syntaxElement.beginColumn = (short) token.beginColumn;
        Token token2 = this.token;
        syntaxElement.endLine = token2.endLine;
        syntaxElement.endColumn = (short) token2.endColumn;
    }

    public void ReInit(InputStream inputStream, String str) {
        try {
            this.jj_input_stream.ReInit(inputStream, str, 1, 1);
            this.token_source.ReInit(this.jj_input_stream);
            this.token = new Token();
            this.jj_ntk = -1;
            int i10 = 0;
            this.jj_gen = 0;
            for (int i11 = 0; i11 < 34; i11++) {
                this.jj_la1[i11] = -1;
            }
            while (true) {
                JJCalls[] jJCallsArr = this.jj_2_rtns;
                if (i10 >= jJCallsArr.length) {
                    return;
                }
                jJCallsArr[i10] = new JJCalls();
                i10++;
            }
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10.getMessage());
        }
    }

    public LuaParser(Reader reader) {
        this.jj_la1 = new int[34];
        this.jj_2_rtns = new JJCalls[7];
        int i10 = 0;
        this.jj_rescan = false;
        this.jj_gc = 0;
        this.jj_ls = new LookaheadSuccess();
        this.jj_expentries = new ArrayList();
        this.jj_kind = -1;
        this.jj_lasttokens = new int[100];
        this.jj_input_stream = new SimpleCharStream(reader, 1, 1);
        this.token_source = new LuaParserTokenManager(this.jj_input_stream);
        this.token = new Token();
        this.jj_ntk = -1;
        this.jj_gen = 0;
        for (int i11 = 0; i11 < 34; i11++) {
            this.jj_la1[i11] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.jj_2_rtns;
            if (i10 >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i10] = new JJCalls();
            i10++;
        }
    }

    public void ReInit(Reader reader) {
        this.jj_input_stream.ReInit(reader, 1, 1);
        this.token_source.ReInit(this.jj_input_stream);
        this.token = new Token();
        this.jj_ntk = -1;
        int i10 = 0;
        this.jj_gen = 0;
        for (int i11 = 0; i11 < 34; i11++) {
            this.jj_la1[i11] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.jj_2_rtns;
            if (i10 >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i10] = new JJCalls();
            i10++;
        }
    }

    public LuaParser(LuaParserTokenManager luaParserTokenManager) {
        this.jj_la1 = new int[34];
        this.jj_2_rtns = new JJCalls[7];
        int i10 = 0;
        this.jj_rescan = false;
        this.jj_gc = 0;
        this.jj_ls = new LookaheadSuccess();
        this.jj_expentries = new ArrayList();
        this.jj_kind = -1;
        this.jj_lasttokens = new int[100];
        this.token_source = luaParserTokenManager;
        this.token = new Token();
        this.jj_ntk = -1;
        this.jj_gen = 0;
        for (int i11 = 0; i11 < 34; i11++) {
            this.jj_la1[i11] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.jj_2_rtns;
            if (i10 >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i10] = new JJCalls();
            i10++;
        }
    }

    public void ReInit(LuaParserTokenManager luaParserTokenManager) {
        this.token_source = luaParserTokenManager;
        this.token = new Token();
        this.jj_ntk = -1;
        int i10 = 0;
        this.jj_gen = 0;
        for (int i11 = 0; i11 < 34; i11++) {
            this.jj_la1[i11] = -1;
        }
        while (true) {
            JJCalls[] jJCallsArr = this.jj_2_rtns;
            if (i10 >= jJCallsArr.length) {
                return;
            }
            jJCallsArr[i10] = new JJCalls();
            i10++;
        }
    }
}
