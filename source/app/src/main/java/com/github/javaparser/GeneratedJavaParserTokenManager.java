package com.github.javaparser;

import android.provider.CallLog;
import android.provider.Telephony;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.github.javaparser.ast.comments.CommentsCollection;
import com.google.common.collect.C12510d2;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;
import mk.C14289h;
import mk.C14290h0;
import mk.C14317v0;
import mk.F0;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;
import org.apache.commons.math3.geometry.VectorFormat;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.openjdk.tools.doclint.DocLint;
import pk.AbstractC15010e;

public class GeneratedJavaParserTokenManager implements GeneratedJavaParserConstants {
    private CommentsCollection commentsCollection;
    protected int curChar;
    int curLexState;
    int defaultLexState;
    private JavaToken homeToken;
    private StringBuilder image;
    protected SimpleCharStream input_stream;
    private final StringBuilder jjimage;
    private int jjimageLen;
    int jjmatchedKind;
    int jjmatchedPos;
    int jjnewStateCnt;
    int jjround;
    private final int[] jjrounds;
    private final int[] jjstateSet;
    private int lengthOfMatch;
    private boolean storeTokens;
    private Stack<Token> tokenWorkStack;
    private List<JavaToken> tokens;
    private boolean yieldSupported;
    static final long[] jjbitVec0 = {0, 0, 4294967328L, 0};
    static final long[] jjbitVec1 = {0, 0, 1, 0};
    static final long[] jjbitVec2 = {16384, 0, 0, 0};
    static final long[] jjbitVec3 = {144036023255039L, 6442450944L, 0, 0};
    static final long[] jjbitVec4 = {1, 0, 0, 0};
    static final long[] jjbitVec5 = {0, 0, 0, Long.MIN_VALUE};
    static final long[] jjbitVec6 = {-2, -1, -1, -1};
    static final long[] jjbitVec8 = {0, 0, -1, -1};
    static final long[] jjbitVec9 = {-4503598551400446L, -8193, -17388175097857L, 1297036696969281535L};
    static final long[] jjbitVec10 = {0, 0, 297242231151001600L, -36028797027352577L};
    static final long[] jjbitVec11 = {-1, -1, -1, 88094074470339L};
    static final long[] jjbitVec12 = {0, -4837147474772623360L, -17179879616L, -18014398509481985L};
    static final long[] jjbitVec13 = {-1, -1, -1021, -1};
    static final long[] jjbitVec14 = {-281474976710657L, -8547991553L, 33023, 1979120929931264L};
    static final long[] jjbitVec15 = {-4294965248L, -351843720886273L, -1, -7205547885240254465L};
    static final long[] jjbitVec16 = {281474976514048L, -8192, 563224831328255L, 301749971126844416L};
    static final long[] jjbitVec17 = {1168302407679L, 8791831609343L, 4602678814877679616L, 0};
    static final long[] jjbitVec18 = {2594073385365405680L, -562932790263808L, 2577745637692514273L, 1733604397398638592L};
    static final long[] jjbitVec19 = {247132830528276448L, 7881300924956672L, 2589004636761079776L, 144678150914244608L};
    static final long[] jjbitVec20 = {2589004636760940512L, 562965791113216L, 288167810662516712L, 144115188075921408L};
    static final long[] jjbitVec21 = {2594071186342010848L, 13002342400L, 2589567586714640353L, 1688863818907648L};
    static final long[] jjbitVec22 = {2882303761516978144L, -288230361111969792L, 3457638613854978016L, 127};
    static final long[] jjbitVec23 = {-9219431387180826626L, 127, 2309762420256548246L, 4026531935L};
    static final long[] jjbitVec24 = {1, 35184372088575L, 7936, 0};
    static final long[] jjbitVec25 = {-9223363240761753601L, -8514196127940608L, -4294950909L, -576460752303480641L};
    static final long[] jjbitVec26 = {-1, -3263218177L, 9168765891372858879L, -8388803};
    static final long[] jjbitVec27 = {-12713985, F0.f97187a, -4294901761L, 4557642822898941951L};
    static final long[] jjbitVec28 = {-1, -105553116266497L, -4160749570L, 144053615424700415L};
    static final long[] jjbitVec29 = {1125895612129279L, 527761286627327L, E2.d.f5375a, 411041792};
    static final long[] jjbitVec30 = {C12510d2.f66536l, 72057594037927935L, -274877906944097L, 18014398509481983L};
    static final long[] jjbitVec31 = {2147483647L, 8796093022142464L, -263882790666241L, 1023};
    static final long[] jjbitVec32 = {-4286578689L, 2097151, 549755813888L, 0};
    static final long[] jjbitVec33 = {4503599627370464L, 4064, -288019261329244168L, 274877906943L};
    static final long[] jjbitVec34 = {68719476735L, 4611686018360336384L, 511, 28110114275721216L};
    static final long[] jjbitVec35 = {-1, -1, -1, 0};
    static final long[] jjbitVec36 = {-3233808385L, 4611686017001275199L, 6908521828386340863L, 2295745090394464220L};
    static final long[] jjbitVec37 = {Long.MIN_VALUE, -9222809086900305919L, -3758161920L, 0};
    static final long[] jjbitVec38 = {-864764451093480316L, -4294949920L, 511, 0};
    static final long[] jjbitVec39 = {-140737488355329L, -2147483649L, -1, 3509778554814463L};
    static final long[] jjbitVec40 = {-245465970900993L, 141836999983103L, 9187201948305063935L, 2139062143};
    static final long[] jjbitVec41 = {140737488355328L, 0, 0, 0};
    static final long[] jjbitVec42 = {2251241253188403424L, -2, -4823449601L, -576460752303423489L};
    static final long[] jjbitVec43 = {-422212465066016L, -1, 576460748008488959L, -281474976710656L};
    static final long[] jjbitVec44 = {-1, -1, 18014398509481983L, 0};
    static final long[] jjbitVec45 = {-1, -1, -1, 8796093022207L};
    static final long[] jjbitVec46 = {-1, -1, 8191, 4611686018427322368L};
    static final long[] jjbitVec47 = {13198434443263L, -9223231299366420481L, -3221225473L, 281474976710655L};
    static final long[] jjbitVec48 = {-12893290496L, -1, 71916856549571071L, -36028797018963968L};
    static final long[] jjbitVec49 = {72057628397664187L, E2.d.f5375a, 4503599627370492L, 2953235455648202752L};
    static final long[] jjbitVec50 = {-281200098804736L, 2305843004918726783L, 2251799813685232L, 8935422993945886720L};
    static final long[] jjbitVec51 = {C14317v0.f97428a, -4287426849551675401L, 4495436853045886975L, 7890092085477381L};
    static final long[] jjbitVec52 = {-141291530846594L, -281200233021441L, -1, C14290h0.f97344a};
    static final long[] jjbitVec53 = {-1, -1, -281406257233921L, 1152921504606845055L};
    static final long[] jjbitVec54 = {-1, -211106232532993L, -1, AbstractC15010e.f104121c};
    static final long[] jjbitVec55 = {6881498030004502655L, -37, 1125899906842623L, -524288};
    static final long[] jjbitVec56 = {4611686018427387903L, -65536, -196609, 2305561534236983551L};
    static final long[] jjbitVec57 = {6755399441055744L, -9286475208138752L, -1, 2305843009213693951L};
    static final long[] jjbitVec58 = {-8646911293141286896L, -274743689218L, Long.MAX_VALUE, 425688104188L};
    static final long[] jjbitVec59 = {0, 0, 297277419818057727L, -36028797027352577L};
    static final long[] jjbitVec60 = {-1, -4836865999795912705L, -17179879616L, -18014398509481985L};
    static final long[] jjbitVec61 = {-1, -1, -773, -1};
    static final long[] jjbitVec62 = {-281474976710657L, -8547991553L, -4611686018427485953L, 1979120929931446L};
    static final long[] jjbitVec63 = {-3892377537L, -65970697666561L, -1, -6917531227739127809L};
    static final long[] jjbitVec64 = {-32768, -6145, 1125899906842623L, 306244774661193727L};
    static final long[] jjbitVec65 = {70368744177663L, 8792066490367L, 4602678814877679616L, -1048576};
    static final long[] jjbitVec66 = {-1, -281681135140865L, -881018876128026641L, 1733885649045453215L};
    static final long[] jjbitVec67 = {-3211631683292264466L, 18014125208779143L, -869759877059461138L, -143270973599040577L};
    static final long[] jjbitVec68 = {-869759877059600402L, 844217442122143L, -4323518207764871188L, 144396388183129543L};
    static final long[] jjbitVec69 = {-2017614832085377041L, 281264647060959L, -869196927105900561L, 1970115463626207L};
    static final long[] jjbitVec70 = {-139281, -287949109465154081L, 3457638613854978028L, 3658904103781503L};
    static final long[] jjbitVec71 = {-8646911284551352322L, 67076095, 4323434403644581270L, 4093591391L};
    static final long[] jjbitVec72 = {-4422530440275951615L, -527765581332737L, 2305843009196916703L, 64};
    static final long[] jjbitVec73 = {-1, -64513, -3221225473L, -576460752303480641L};
    static final long[] jjbitVec74 = {-12713985, 3892314111L, -4294901761L, 4557642822898941951L};
    static final long[] jjbitVec75 = {9007194961862655L, 3905461007941631L, -1, 4394700505087L};
    static final long[] jjbitVec76 = {-4227893248L, 72057594037927935L, -272678883688449L, 18014398509481983L};
    static final long[] jjbitVec77 = {1152657619668697087L, 8796093022207936L, -263882790666241L, 67044351};
    static final long[] jjbitVec78 = {-4026531841L, -6917529029788565505L, 4611405093273535487L, 0};
    static final long[] jjbitVec79 = {-1, 4494803601395711L, -1, E2.d.f5375a};
    static final long[] jjbitVec80 = {72057594037927935L, 4611686018427380735L, 511, 288230376151121920L};
    static final long[] jjbitVec81 = {-1, -1, -1, -288230376151711745L};
    static final long[] jjbitVec82 = {-9223235697412868096L, -9222527753657516031L, -3758161920L, 562821641207808L};
    static final long[] jjbitVec83 = {-140737488355329L, -2147483649L, -1, 4494940973301759L};
    static final long[] jjbitVec84 = {-245465970900993L, -9223230199854792705L, 9187201948305063935L, -2155905153L};
    static final long[] jjbitVec85 = {2251518330118602976L, -2, -4722786305L, -576460752303423489L};
    static final long[] jjbitVec86 = {17592185987071L, -4615908143078047745L, -1, 1125899906842623L};
    static final long[] jjbitVec87 = {72058693549555711L, E2.d.f5375a, -1, 2954361351327121471L};
    static final long[] jjbitVec88 = {-211106232532993L, 2305843004919775231L, -1, 9223372032626884609L};
    static final long[] jjbitVec89 = {C14290h0.f97345b, -252201583360655361L, -1, 35184368733388807L};
    static final long[] jjbitVec90 = {-141291530846594L, -281200233021441L, -1, 288010473826156543L};
    static final long[] jjbitVec91 = {6881498031078244479L, -37, 1125899906842623L, -524288};
    static final long[] jjbitVec92 = {7036870122864639L, -9286475208138752L, -1, -6917529027641081857L};
    static final long[] jjbitVec93 = {-8646911293074243568L, -274743689218L, Long.MAX_VALUE, 1008806742219095292L};
    public static final String[] jjstrLiteralImages = {"", null, null, null, null, null, null, null, null, null, null, "abstract", "assert", TypedValues.Custom.S_BOOLEAN, "break", "byte", "case", "catch", "char", "class", "const", "continue", "default", "do", "double", "else", "enum", "extends", "false", "final", "finally", TypedValues.Custom.S_FLOAT, "for", "goto", "if", "implements", "import", "instanceof", "int", "interface", "long", "native", CallLog.Calls.NEW, "non-sealed", "null", Telephony.Sms.Intents.EXTRA_PACKAGE_NAME, "permits", "private", "protected", "public", "record", "return", "sealed", "short", "static", "strictfp", "super", "switch", "synchronized", "this", "throw", "throws", "transient", "true", "try", "void", "volatile", "while", "yield", "requires", TypedValues.TransitionType.S_TO, "with", AbstractCircuitBreaker.PROPERTY_NAME, "opens", "uses", IClasspathAttribute.MODULE, "exports", "provides", "transitive", "when", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, "(", ")", "{", VectorFormat.DEFAULT_SUFFIX, "[", "]", ";", DocLint.SEPARATOR, ".", "...", "@", "::", "=", "<", "!", "~", "?", b3.s.f32937c, "->", "==", ">=", "<=", "!=", "&&", "||", "++", "--", "+", "-", "*", "/", "&", "|", "^", ve.j.f121589a, "<<", "+=", "-=", "*=", "/=", "&=", "|=", "^=", "%=", "<<=", ">>=", ">>>=", ">>>", ">>", ">", "\u001a"};
    static final int[] jjnextStates = {39, 40, 47, 48, 73, 74, 75, 76, 77, 78, 79, 80, 10, 86, 87, 88, 94, 95, 96, 67, 71, 13, 15, 21, 107, 111, 114, 118, 122, 125, 129, 142, 3, 4, 5, 10, 8, 10, 11, 7, 8, 10, 11, 39, 40, 50, 47, 48, 83, 10, 85, 82, 83, 10, 85, 91, 10, 93, 90, 91, 10, 93, 97, 100, 10, 98, 99, 100, 10, 103, 10, 105, 102, 103, 10, 105, 109, 110, 75, 112, 113, 75, 116, 117, 75, 131, 132, 133, 135, 136, 137, 140, 141, 10, 144, 145, 146, 147, 150, 151, 10, 41, 49, 51, 3, 4, 6, 7, 8, 9, 16, 17, 19, 32, 33, 73, 74, 76, 77, 78, 79, 81, 82, 83, 84, 86, 87, 89, 90, 91, 92, 94, 95, 98, 99, 101, 102, 103, 104, 112, 113, 116, 117, 123, 124, 127, 128, 138, 139, 140, 141, 148, 149, 150, 151};
    public static final String[] lexStateNames = {"DEFAULT", "IN_JAVADOC_COMMENT", "IN_MULTI_LINE_COMMENT", "IN_TEXT_BLOCK"};
    public static final int[] jjnewLexState = {-1, -1, -1, -1, -1, -1, 1, 2, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 3, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    static final long[] jjtoToken = {-2047, -114349047809L, 16777215};
    static final long[] jjtoSkip = {830, 0, 0};
    static final long[] jjtoSpecial = {830, 0, 0};
    static final long[] jjtoMore = {1216, 10737418240L, 0};

    public GeneratedJavaParserTokenManager(SimpleCharStream stream) {
        this.tokens = new ArrayList();
        this.commentsCollection = new CommentsCollection();
        this.tokenWorkStack = new Stack<>();
        this.yieldSupported = false;
        this.curLexState = 0;
        this.defaultLexState = 0;
        this.jjrounds = new int[152];
        this.jjstateSet = new int[304];
        StringBuilder sb2 = new StringBuilder();
        this.jjimage = sb2;
        this.image = sb2;
        this.input_stream = stream;
    }

    private void CommonTokenAction(Token token) {
        do {
            this.tokenWorkStack.push(token);
            token = token.specialToken;
        } while (token != null);
        while (!this.tokenWorkStack.empty()) {
            Token pop = this.tokenWorkStack.pop();
            JavaToken javaToken = new JavaToken(pop, this.tokens);
            pop.javaToken = javaToken;
            if (this.storeTokens) {
                this.tokens.add(javaToken);
            }
            if (this.homeToken == null) {
                this.homeToken = pop.javaToken;
            }
            if (TokenTypes.isComment(pop.kind)) {
                this.commentsCollection.addComment(GeneratedJavaParserTokenManagerBase.createCommentFromToken(pop));
            }
        }
    }

    private void ReInitRounds() {
        this.jjround = C14289h.f97343g;
        int i10 = 152;
        while (true) {
            int i11 = i10 - 1;
            if (i10 <= 0) {
                return;
            }
            this.jjrounds[i11] = Integer.MIN_VALUE;
            i10 = i11;
        }
    }

    private void jjAddStates(int start, int end) {
        while (true) {
            int[] iArr = this.jjstateSet;
            int i10 = this.jjnewStateCnt;
            this.jjnewStateCnt = i10 + 1;
            iArr[i10] = jjnextStates[start];
            int i11 = start + 1;
            if (start == end) {
                return;
            } else {
                start = i11;
            }
        }
    }

    private static final boolean jjCanMove_0(int hiByte, int i12, int i22, long l12, long l22) {
        return hiByte != 0 ? hiByte != 22 ? hiByte != 24 ? hiByte != 32 ? hiByte != 48 ? hiByte == 254 && (l22 & jjbitVec5[i22]) != 0 : (l22 & jjbitVec4[i22]) != 0 : (l22 & jjbitVec3[i22]) != 0 : (l22 & jjbitVec2[i22]) != 0 : (l22 & jjbitVec1[i22]) != 0 : (l22 & jjbitVec0[i22]) != 0;
    }

    private static final boolean jjCanMove_1(int hiByte, int i12, int i22, long l12, long l22) {
        return hiByte != 0 ? (jjbitVec6[i12] & l12) != 0 : (jjbitVec8[i22] & l22) != 0;
    }

    private static final boolean jjCanMove_2(int hiByte, int i12, int i22, long l12, long l22) {
        if (hiByte == 0) {
            return (jjbitVec10[i22] & l22) != 0;
        }
        if (hiByte == 77) {
            return (jjbitVec44[i22] & l22) != 0;
        }
        if (hiByte == 159) {
            return (jjbitVec45[i22] & l22) != 0;
        }
        if (hiByte == 164) {
            return (jjbitVec46[i22] & l22) != 0;
        }
        if (hiByte == 215) {
            return (jjbitVec53[i22] & l22) != 0;
        }
        if (hiByte == 48) {
            return (jjbitVec42[i22] & l22) != 0;
        }
        if (hiByte == 49) {
            return (jjbitVec43[i22] & l22) != 0;
        }
        if (hiByte == 250) {
            return (jjbitVec54[i22] & l22) != 0;
        }
        if (hiByte == 251) {
            return (jjbitVec55[i22] & l22) != 0;
        }
        switch (hiByte) {
            case 2:
                return (jjbitVec11[i22] & l22) != 0;
            case 3:
                return (jjbitVec12[i22] & l22) != 0;
            case 4:
                return (jjbitVec13[i22] & l22) != 0;
            case 5:
                return (jjbitVec14[i22] & l22) != 0;
            case 6:
                return (jjbitVec15[i22] & l22) != 0;
            case 7:
                return (jjbitVec16[i22] & l22) != 0;
            case 8:
                return (jjbitVec17[i22] & l22) != 0;
            case 9:
                return (jjbitVec18[i22] & l22) != 0;
            case 10:
                return (jjbitVec19[i22] & l22) != 0;
            case 11:
                return (jjbitVec20[i22] & l22) != 0;
            case 12:
                return (jjbitVec21[i22] & l22) != 0;
            case 13:
                return (jjbitVec22[i22] & l22) != 0;
            case 14:
                return (jjbitVec23[i22] & l22) != 0;
            case 15:
                return (jjbitVec24[i22] & l22) != 0;
            case 16:
                return (jjbitVec25[i22] & l22) != 0;
            default:
                switch (hiByte) {
                    case 18:
                        return (jjbitVec26[i22] & l22) != 0;
                    case 19:
                        return (jjbitVec27[i22] & l22) != 0;
                    case 20:
                        return (jjbitVec6[i22] & l22) != 0;
                    default:
                        switch (hiByte) {
                            case 22:
                                return (jjbitVec28[i22] & l22) != 0;
                            case 23:
                                return (jjbitVec29[i22] & l22) != 0;
                            case 24:
                                return (jjbitVec30[i22] & l22) != 0;
                            case 25:
                                return (jjbitVec31[i22] & l22) != 0;
                            case 26:
                                return (jjbitVec32[i22] & l22) != 0;
                            case 27:
                                return (jjbitVec33[i22] & l22) != 0;
                            case 28:
                                return (jjbitVec34[i22] & l22) != 0;
                            case 29:
                                return (jjbitVec35[i22] & l22) != 0;
                            default:
                                switch (hiByte) {
                                    case 31:
                                        return (jjbitVec36[i22] & l22) != 0;
                                    case 32:
                                        return (jjbitVec37[i22] & l22) != 0;
                                    case 33:
                                        return (jjbitVec38[i22] & l22) != 0;
                                    default:
                                        switch (hiByte) {
                                            case 44:
                                                return (jjbitVec39[i22] & l22) != 0;
                                            case 45:
                                                return (jjbitVec40[i22] & l22) != 0;
                                            case 46:
                                                return (jjbitVec41[i22] & l22) != 0;
                                            default:
                                                switch (hiByte) {
                                                    case 166:
                                                        return (jjbitVec47[i22] & l22) != 0;
                                                    case 167:
                                                        return (jjbitVec48[i22] & l22) != 0;
                                                    case 168:
                                                        return (jjbitVec49[i22] & l22) != 0;
                                                    case 169:
                                                        return (jjbitVec50[i22] & l22) != 0;
                                                    case 170:
                                                        return (jjbitVec51[i22] & l22) != 0;
                                                    case 171:
                                                        return (jjbitVec52[i22] & l22) != 0;
                                                    default:
                                                        switch (hiByte) {
                                                            case 253:
                                                                return (jjbitVec56[i22] & l22) != 0;
                                                            case 254:
                                                                return (jjbitVec57[i22] & l22) != 0;
                                                            case 255:
                                                                return (jjbitVec58[i22] & l22) != 0;
                                                            default:
                                                                return (jjbitVec9[i12] & l12) != 0;
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    private static final boolean jjCanMove_3(int hiByte, int i12, int i22, long l12, long l22) {
        if (hiByte == 0) {
            return (jjbitVec59[i22] & l22) != 0;
        }
        if (hiByte == 77) {
            return (jjbitVec44[i22] & l22) != 0;
        }
        if (hiByte == 159) {
            return (jjbitVec45[i22] & l22) != 0;
        }
        if (hiByte == 164) {
            return (jjbitVec46[i22] & l22) != 0;
        }
        if (hiByte == 215) {
            return (jjbitVec53[i22] & l22) != 0;
        }
        if (hiByte == 48) {
            return (jjbitVec85[i22] & l22) != 0;
        }
        if (hiByte == 49) {
            return (jjbitVec43[i22] & l22) != 0;
        }
        if (hiByte == 250) {
            return (jjbitVec54[i22] & l22) != 0;
        }
        if (hiByte == 251) {
            return (jjbitVec91[i22] & l22) != 0;
        }
        switch (hiByte) {
            case 2:
                return (jjbitVec11[i22] & l22) != 0;
            case 3:
                return (jjbitVec60[i22] & l22) != 0;
            case 4:
                return (jjbitVec61[i22] & l22) != 0;
            case 5:
                return (jjbitVec62[i22] & l22) != 0;
            case 6:
                return (jjbitVec63[i22] & l22) != 0;
            case 7:
                return (jjbitVec64[i22] & l22) != 0;
            case 8:
                return (jjbitVec65[i22] & l22) != 0;
            case 9:
                return (jjbitVec66[i22] & l22) != 0;
            case 10:
                return (jjbitVec67[i22] & l22) != 0;
            case 11:
                return (jjbitVec68[i22] & l22) != 0;
            case 12:
                return (jjbitVec69[i22] & l22) != 0;
            case 13:
                return (jjbitVec70[i22] & l22) != 0;
            case 14:
                return (jjbitVec71[i22] & l22) != 0;
            case 15:
                return (jjbitVec72[i22] & l22) != 0;
            case 16:
                return (jjbitVec73[i22] & l22) != 0;
            default:
                switch (hiByte) {
                    case 18:
                        return (jjbitVec26[i22] & l22) != 0;
                    case 19:
                        return (jjbitVec74[i22] & l22) != 0;
                    case 20:
                        return (jjbitVec6[i22] & l22) != 0;
                    default:
                        switch (hiByte) {
                            case 22:
                                return (jjbitVec28[i22] & l22) != 0;
                            case 23:
                                return (jjbitVec75[i22] & l22) != 0;
                            case 24:
                                return (jjbitVec76[i22] & l22) != 0;
                            case 25:
                                return (jjbitVec77[i22] & l22) != 0;
                            case 26:
                                return (jjbitVec78[i22] & l22) != 0;
                            case 27:
                                return (jjbitVec79[i22] & l22) != 0;
                            case 28:
                                return (jjbitVec80[i22] & l22) != 0;
                            case 29:
                                return (jjbitVec81[i22] & l22) != 0;
                            default:
                                switch (hiByte) {
                                    case 31:
                                        return (jjbitVec36[i22] & l22) != 0;
                                    case 32:
                                        return (jjbitVec82[i22] & l22) != 0;
                                    case 33:
                                        return (jjbitVec38[i22] & l22) != 0;
                                    default:
                                        switch (hiByte) {
                                            case 44:
                                                return (jjbitVec83[i22] & l22) != 0;
                                            case 45:
                                                return (jjbitVec84[i22] & l22) != 0;
                                            case 46:
                                                return (jjbitVec41[i22] & l22) != 0;
                                            default:
                                                switch (hiByte) {
                                                    case 166:
                                                        return (jjbitVec86[i22] & l22) != 0;
                                                    case 167:
                                                        return (jjbitVec48[i22] & l22) != 0;
                                                    case 168:
                                                        return (jjbitVec87[i22] & l22) != 0;
                                                    case 169:
                                                        return (jjbitVec88[i22] & l22) != 0;
                                                    case 170:
                                                        return (jjbitVec89[i22] & l22) != 0;
                                                    case 171:
                                                        return (jjbitVec90[i22] & l22) != 0;
                                                    default:
                                                        switch (hiByte) {
                                                            case 253:
                                                                return (jjbitVec56[i22] & l22) != 0;
                                                            case 254:
                                                                return (jjbitVec92[i22] & l22) != 0;
                                                            case 255:
                                                                return (jjbitVec93[i22] & l22) != 0;
                                                            default:
                                                                return (jjbitVec9[i12] & l12) != 0;
                                                        }
                                                }
                                        }
                                }
                        }
                }
        }
    }

    private void jjCheckNAdd(int state) {
        int[] iArr = this.jjrounds;
        int i10 = iArr[state];
        int i11 = this.jjround;
        if (i10 != i11) {
            int[] iArr2 = this.jjstateSet;
            int i12 = this.jjnewStateCnt;
            this.jjnewStateCnt = i12 + 1;
            iArr2[i12] = state;
            iArr[state] = i11;
        }
    }

    private void jjCheckNAddStates(int start, int end) {
        while (true) {
            jjCheckNAdd(jjnextStates[start]);
            int i10 = start + 1;
            if (start == end) {
                return;
            } else {
                start = i10;
            }
        }
    }

    private void jjCheckNAddTwoStates(int state1, int state2) {
        jjCheckNAdd(state1);
        jjCheckNAdd(state2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0061, code lost:
    
        if (r4 > 94) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0063, code lost:
    
        r4 = 94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x0429, code lost:
    
        if (r4 > 81) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:318:0x05bc, code lost:
    
        if (r4 > 94) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:757:0x0e36, code lost:
    
        if (r4 > 86) goto L649;
     */
    /* JADX WARN: Code restructure failed: missing block: B:794:0x0ede, code lost:
    
        if (r7 != 153) goto L818;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x018c, code lost:
    
        if (r4 > 81) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x018e, code lost:
    
        r4 = 81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01be, code lost:
    
        if (r4 > 81) goto L85;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:482:0x0875. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0046. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int jjMoveNfa_0(int startState, int curPos) {
        int i10;
        char c10;
        int i11;
        this.jjnewStateCnt = 152;
        int i12 = 0;
        this.jjstateSet[0] = startState;
        int i13 = 1;
        int i14 = 1;
        int i15 = 0;
        int i16 = Integer.MAX_VALUE;
        int i17 = curPos;
        while (true) {
            int i18 = this.jjround + i13;
            this.jjround = i18;
            if (i18 == Integer.MAX_VALUE) {
                ReInitRounds();
            }
            int i19 = this.curChar;
            char c11 = '.';
            int i20 = 117;
            int i21 = 98;
            if (i19 < 64) {
                long j10 = 1 << i19;
                while (true) {
                    int[] iArr = this.jjstateSet;
                    i14--;
                    switch (iArr[i14]) {
                        case 0:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 81) {
                                    i16 = 81;
                                }
                                jjCheckNAddStates(4, 18);
                            } else if ((j10 & 4294971904L) == 0) {
                                int i22 = this.curChar;
                                if (i22 == 47) {
                                    jjAddStates(19, 20);
                                } else if (i22 == 36) {
                                    if (i16 > 98) {
                                        i16 = 98;
                                    }
                                    jjCheckNAddTwoStates(54, 60);
                                } else if (i22 == 34) {
                                    jjCheckNAddStates(i12, 3);
                                } else if (i22 == 39) {
                                    jjAddStates(21, 23);
                                } else if (i22 == 46) {
                                    int i23 = this.jjnewStateCnt;
                                    this.jjnewStateCnt = i23 + 1;
                                    iArr[i23] = 2;
                                }
                            } else if (i16 > 1) {
                                i16 = 1;
                            }
                            if (this.curChar == 48) {
                                jjAddStates(24, 31);
                                break;
                            }
                            break;
                        case 1:
                            if (this.curChar == 46) {
                                int i24 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i24 + 1;
                                iArr[i24] = 2;
                                break;
                            }
                            break;
                        case 2:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddStates(32, 35);
                                break;
                            }
                            break;
                        case 3:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(3, 4);
                                break;
                            }
                            break;
                        case 4:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddTwoStates(5, 10);
                                break;
                            }
                            break;
                        case 6:
                            if ((j10 & 43980465111040L) != 0) {
                                jjCheckNAdd(7);
                                break;
                            }
                            break;
                        case 7:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddStates(36, 38);
                                break;
                            }
                            break;
                        case 8:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(8, 9);
                                break;
                            }
                            break;
                        case 9:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddTwoStates(7, 10);
                                break;
                            }
                            break;
                        case 11:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddStates(39, 42);
                                break;
                            }
                            break;
                        case 12:
                            if (this.curChar == 39) {
                                jjAddStates(21, 23);
                                break;
                            }
                            break;
                        case 13:
                            if ((j10 & (-549755823105L)) != 0) {
                                jjCheckNAdd(14);
                                break;
                            }
                            break;
                        case 14:
                            if (this.curChar == 39 && i16 > 93) {
                                i16 = 93;
                                break;
                            }
                            break;
                        case 16:
                            if ((j10 & 566935683072L) != 0) {
                                jjCheckNAdd(14);
                                break;
                            }
                            break;
                        case 17:
                            if ((j10 & 71776119061217280L) != 0) {
                                jjCheckNAddTwoStates(18, 14);
                                break;
                            }
                            break;
                        case 18:
                            if ((j10 & 71776119061217280L) != 0) {
                                jjCheckNAdd(14);
                                break;
                            }
                            break;
                        case 19:
                            if ((j10 & 4222124650659840L) != 0) {
                                int i25 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i25 + 1;
                                iArr[i25] = 20;
                                break;
                            }
                            break;
                        case 20:
                            if ((j10 & 71776119061217280L) != 0) {
                                jjCheckNAdd(18);
                                break;
                            }
                            break;
                        case 22:
                            if (this.curChar == 53) {
                                int i26 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i26 + 1;
                                iArr[i26] = 23;
                                break;
                            }
                            break;
                        case 24:
                            if (this.curChar == 53) {
                                int i27 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i27 + 1;
                                iArr[i27] = 25;
                                break;
                            }
                            break;
                        case 26:
                            if (this.curChar == 48) {
                                int i28 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i28 + 1;
                                iArr[i28] = 24;
                                break;
                            }
                            break;
                        case 27:
                            if (this.curChar == 48) {
                                int i29 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i29 + 1;
                                iArr[i29] = 26;
                                break;
                            }
                            break;
                        case 30:
                            if (this.curChar == 48) {
                                int i30 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i30 + 1;
                                iArr[i30] = 22;
                                break;
                            }
                            break;
                        case 31:
                            if (this.curChar == 48) {
                                int i31 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i31 + 1;
                                iArr[i31] = 30;
                                break;
                            }
                            break;
                        case 34:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i32 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i32 + 1;
                                iArr[i32] = 35;
                                break;
                            }
                            break;
                        case 35:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i33 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i33 + 1;
                                iArr[i33] = 36;
                                break;
                            }
                            break;
                        case 36:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i34 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i34 + 1;
                                iArr[i34] = 37;
                                break;
                            }
                            break;
                        case 37:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAdd(14);
                                break;
                            }
                            break;
                        case 38:
                            if (this.curChar == 34) {
                                jjCheckNAddStates(i12, 3);
                                break;
                            }
                            break;
                        case 39:
                            if ((j10 & (-17179878401L)) != 0) {
                                jjCheckNAddStates(i12, 3);
                                break;
                            }
                            break;
                        case 41:
                            if ((j10 & 566935683072L) != 0) {
                                jjCheckNAddStates(i12, 3);
                                break;
                            }
                            break;
                        case 43:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i35 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i35 + 1;
                                iArr[i35] = 44;
                                break;
                            }
                            break;
                        case 44:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i36 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i36 + 1;
                                iArr[i36] = 45;
                                break;
                            }
                            break;
                        case 45:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i37 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i37 + 1;
                                iArr[i37] = 46;
                                break;
                            }
                            break;
                        case 46:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddStates(i12, 3);
                                break;
                            }
                            break;
                        case 48:
                            if (this.curChar == 34) {
                            }
                            break;
                        case 49:
                            if ((j10 & 71776119061217280L) != 0) {
                                jjCheckNAddStates(43, 47);
                                break;
                            }
                            break;
                        case 50:
                            if ((j10 & 71776119061217280L) != 0) {
                                jjCheckNAddStates(i12, 3);
                                break;
                            }
                            break;
                        case 51:
                            if ((j10 & 4222124650659840L) != 0) {
                                int i38 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i38 + 1;
                                iArr[i38] = 52;
                                break;
                            }
                            break;
                        case 52:
                            if ((j10 & 71776119061217280L) != 0) {
                                jjCheckNAdd(50);
                                break;
                            }
                            break;
                        case 53:
                            if (this.curChar == 36) {
                                if (i16 > 98) {
                                    i16 = 98;
                                }
                                jjCheckNAddTwoStates(54, 60);
                                break;
                            }
                            break;
                        case 54:
                        case 153:
                            if ((j10 & 287948970162897407L) != 0) {
                                if (i16 > 98) {
                                    i16 = 98;
                                }
                                jjCheckNAddTwoStates(54, 60);
                                break;
                            }
                            break;
                        case 56:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i39 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i39 + 1;
                                iArr[i39] = 57;
                                break;
                            }
                            break;
                        case 57:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i40 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i40 + 1;
                                iArr[i40] = 58;
                                break;
                            }
                            break;
                        case 58:
                        case 64:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAdd(59);
                                break;
                            }
                            break;
                        case 59:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 98) {
                                    i16 = 98;
                                }
                                jjCheckNAddTwoStates(54, 60);
                                break;
                            }
                            break;
                        case 62:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i41 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i41 + 1;
                                iArr[i41] = 63;
                                break;
                            }
                            break;
                        case 63:
                            if ((j10 & 287948901175001088L) != 0) {
                                int i42 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i42 + 1;
                                iArr[i42] = 64;
                                break;
                            }
                            break;
                        case 66:
                            if (this.curChar == 47) {
                                jjAddStates(19, 20);
                                break;
                            }
                            break;
                        case 67:
                            int i43 = this.curChar;
                            if (i43 != 42) {
                                if (i43 == 47) {
                                    if (i16 > 5) {
                                        i16 = 5;
                                    }
                                    jjCheckNAdd(68);
                                    break;
                                }
                            } else {
                                int i44 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i44 + 1;
                                iArr[i44] = 69;
                                break;
                            }
                            break;
                        case 68:
                            if ((j10 & (-9217)) != 0) {
                                if (i16 > 5) {
                                    i16 = 5;
                                }
                                jjCheckNAdd(68);
                                break;
                            }
                            break;
                        case 69:
                            if (this.curChar == 42) {
                                int i45 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i45 + 1;
                                iArr[i45] = 70;
                                break;
                            }
                            break;
                        case 70:
                            if ((j10 & (-140737488355329L)) != 0 && i16 > 6) {
                                i16 = 6;
                                break;
                            }
                            break;
                        case 71:
                            if (this.curChar == 42) {
                                int i46 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i46 + 1;
                                iArr[i46] = 69;
                                break;
                            }
                            break;
                        case 72:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 81) {
                                    i16 = 81;
                                }
                                jjCheckNAddStates(4, 18);
                                break;
                            }
                            break;
                        case 73:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(73, 74);
                                break;
                            }
                            break;
                        case 74:
                        case 110:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAdd(75);
                                break;
                            }
                            break;
                        case 76:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(76, 77);
                                break;
                            }
                            break;
                        case 77:
                        case 121:
                            if ((j10 & 287948901175001088L) != 0) {
                            }
                            break;
                        case 78:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(78, 79);
                                break;
                            }
                            break;
                        case 79:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(80, 10);
                                break;
                            }
                            break;
                        case 81:
                            if ((j10 & 43980465111040L) != 0) {
                                jjCheckNAdd(82);
                                break;
                            }
                            break;
                        case 82:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddStates(48, 50);
                                break;
                            }
                            break;
                        case 83:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(83, 84);
                                break;
                            }
                            break;
                        case 84:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(82, 10);
                                break;
                            }
                            break;
                        case 85:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddStates(51, 54);
                                break;
                            }
                            break;
                        case 86:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(86, 87);
                                break;
                            }
                            break;
                        case 87:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAdd(88);
                                break;
                            }
                            break;
                        case 89:
                            if ((j10 & 43980465111040L) != 0) {
                                jjCheckNAdd(90);
                                break;
                            }
                            break;
                        case 90:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddStates(55, 57);
                                break;
                            }
                            break;
                        case 91:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(91, 92);
                                break;
                            }
                            break;
                        case 92:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddTwoStates(90, 10);
                                break;
                            }
                            break;
                        case 93:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddStates(58, 61);
                                break;
                            }
                            break;
                        case 94:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(94, 95);
                                break;
                            }
                            break;
                        case 95:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAdd(96);
                                break;
                            }
                            break;
                        case 96:
                            if (this.curChar == 46) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddStates(62, 64);
                                break;
                            }
                            break;
                        case 97:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddStates(65, 68);
                                break;
                            }
                            break;
                        case 98:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(98, 99);
                                break;
                            }
                            break;
                        case 99:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddTwoStates(100, 10);
                                break;
                            }
                            break;
                        case 101:
                            if ((j10 & 43980465111040L) != 0) {
                                jjCheckNAdd(102);
                                break;
                            }
                            break;
                        case 102:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddStates(69, 71);
                                break;
                            }
                            break;
                        case 103:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(103, 104);
                                break;
                            }
                            break;
                        case 104:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddTwoStates(102, 10);
                                break;
                            }
                            break;
                        case 105:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddStates(72, 75);
                                break;
                            }
                            break;
                        case 106:
                            if (this.curChar == 48) {
                                jjAddStates(24, 31);
                                break;
                            }
                            break;
                        case 108:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddStates(76, 78);
                                break;
                            }
                            break;
                        case 109:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(109, 110);
                                break;
                            }
                            break;
                        case 111:
                            if ((j10 & 71776119061217280L) != 0) {
                                jjCheckNAddStates(79, 81);
                                break;
                            }
                            break;
                        case 112:
                            if ((j10 & 71776119061217280L) != 0) {
                                jjCheckNAddTwoStates(112, 113);
                                break;
                            }
                            break;
                        case 113:
                            if ((j10 & 71776119061217280L) != 0) {
                                jjCheckNAdd(75);
                                break;
                            }
                            break;
                        case 115:
                            if ((j10 & 844424930131968L) != 0) {
                                jjCheckNAddStates(82, 84);
                                break;
                            }
                            break;
                        case 116:
                            if ((j10 & 844424930131968L) != 0) {
                                jjCheckNAddTwoStates(116, i20);
                                break;
                            }
                            break;
                        case 117:
                            if ((j10 & 844424930131968L) != 0) {
                                jjCheckNAdd(75);
                                break;
                            }
                            break;
                        case 119:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 81) {
                                    i16 = 81;
                                }
                                jjCheckNAddTwoStates(120, 121);
                                break;
                            }
                            break;
                        case 120:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(120, 121);
                                break;
                            }
                            break;
                        case 122:
                            if ((j10 & 71776119061217280L) != 0) {
                                if (i16 > 81) {
                                    i16 = 81;
                                }
                                jjCheckNAddTwoStates(123, 124);
                                break;
                            }
                            break;
                        case 123:
                            if ((j10 & 71776119061217280L) != 0) {
                                jjCheckNAddTwoStates(123, 124);
                                break;
                            }
                            break;
                        case 124:
                            if ((j10 & 71776119061217280L) != 0) {
                            }
                            break;
                        case 126:
                            if ((j10 & 844424930131968L) != 0) {
                                if (i16 > 81) {
                                    i16 = 81;
                                }
                                jjCheckNAddTwoStates(127, 128);
                                break;
                            }
                            break;
                        case 127:
                            if ((j10 & 844424930131968L) != 0) {
                                jjCheckNAddTwoStates(127, 128);
                                break;
                            }
                            break;
                        case 128:
                            if ((j10 & 844424930131968L) != 0) {
                            }
                            break;
                        case 130:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddStates(85, 87);
                                break;
                            }
                            break;
                        case 131:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(131, 132);
                                break;
                            }
                            break;
                        case 132:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAdd(133);
                                break;
                            }
                            break;
                        case 133:
                            if (this.curChar == 46) {
                                int i47 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i47 + 1;
                                iArr[i47] = 134;
                                break;
                            }
                            break;
                        case 134:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddStates(88, 90);
                                break;
                            }
                            break;
                        case 135:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(135, 136);
                                break;
                            }
                            break;
                        case 136:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAdd(137);
                                break;
                            }
                            break;
                        case 138:
                            if ((j10 & 43980465111040L) != 0) {
                                int i48 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i48 + 1;
                                iArr[i48] = 139;
                                break;
                            }
                            break;
                        case 139:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddStates(91, 93);
                                break;
                            }
                            break;
                        case 140:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(140, 141);
                                break;
                            }
                            break;
                        case 141:
                        case 151:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAdd(10);
                                break;
                            }
                            break;
                        case 143:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddStates(94, 97);
                                break;
                            }
                            break;
                        case 144:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(144, 145);
                                break;
                            }
                            break;
                        case 145:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(146, 147);
                                break;
                            }
                            break;
                        case 146:
                            if (this.curChar == 46) {
                                jjCheckNAdd(147);
                                break;
                            }
                            break;
                        case 148:
                            if ((j10 & 43980465111040L) != 0) {
                                int i49 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i49 + 1;
                                iArr[i49] = 149;
                                break;
                            }
                            break;
                        case 149:
                            if ((j10 & 287948901175001088L) != 0) {
                                if (i16 > 86) {
                                    i16 = 86;
                                }
                                jjCheckNAddStates(98, 100);
                                break;
                            }
                            break;
                        case 150:
                            if ((j10 & 287948901175001088L) != 0) {
                                jjCheckNAddTwoStates(150, 151);
                                break;
                            }
                            break;
                        case 152:
                            if ((j10 & (-17179878401L)) != 0) {
                                jjCheckNAddStates(i12, 3);
                                break;
                            } else if (this.curChar == 34) {
                            }
                            break;
                    }
                    if (i14 != i15) {
                        i20 = 117;
                    }
                }
            } else if (i19 < 128) {
                long j11 = 1 << (i19 & 63);
                while (true) {
                    int[] iArr2 = this.jjstateSet;
                    i14--;
                    switch (iArr2[i14]) {
                        case 0:
                            if ((j11 & 576460745995190270L) == 0) {
                                if (this.curChar == 92) {
                                    int i50 = this.jjnewStateCnt;
                                    this.jjnewStateCnt = i50 + 1;
                                    iArr2[i50] = 61;
                                    break;
                                }
                            } else {
                                if (i16 > 98) {
                                    i16 = 98;
                                }
                                jjCheckNAddTwoStates(54, 60);
                                break;
                            }
                            break;
                        case 3:
                            if (this.curChar == 95) {
                                jjAddStates(104, 105);
                                break;
                            }
                            break;
                        case 5:
                            if ((j11 & 137438953504L) != 0) {
                                jjAddStates(106, 107);
                            }
                            break;
                        case 8:
                            if (this.curChar == 95) {
                                jjAddStates(108, 109);
                                break;
                            }
                            break;
                        case 10:
                            if ((j11 & 343597383760L) != 0) {
                                i10 = 86;
                                break;
                            }
                            break;
                        case 13:
                            if ((j11 & (-268435457)) != 0) {
                                jjCheckNAdd(14);
                            }
                            break;
                        case 15:
                            if (this.curChar == 92) {
                                jjCheckNAddStates(110, 112);
                            }
                            break;
                        case 16:
                            if ((j11 & 7951960418287616L) != 0) {
                                jjCheckNAdd(14);
                            }
                            break;
                        case 21:
                            if (this.curChar == 92) {
                                jjAddStates(113, 114);
                            }
                            break;
                        case 23:
                            if ((j11 & 34359738376L) != 0) {
                                jjCheckNAddTwoStates(16, 29);
                            }
                            break;
                        case 25:
                            if ((j11 & 34359738376L) != 0) {
                                jjCheckNAdd(14);
                            }
                            break;
                        case 28:
                            if (this.curChar == 117) {
                                int i51 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i51 + 1;
                                iArr2[i51] = 27;
                            }
                            break;
                        case 29:
                            if (this.curChar == 92) {
                                int i52 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i52 + 1;
                                iArr2[i52] = 28;
                            }
                            break;
                        case 32:
                            if (this.curChar == 117) {
                                int i53 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i53 + 1;
                                iArr2[i53] = 31;
                            }
                            break;
                        case 33:
                            if (this.curChar == 117) {
                                int i54 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i54 + 1;
                                iArr2[i54] = 34;
                            }
                            break;
                        case 34:
                            if ((j11 & 541165879422L) != 0) {
                                int i55 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i55 + 1;
                                iArr2[i55] = 35;
                            }
                            break;
                        case 35:
                            if ((j11 & 541165879422L) != 0) {
                                int i56 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i56 + 1;
                                iArr2[i56] = 36;
                            }
                            break;
                        case 36:
                            if ((j11 & 541165879422L) != 0) {
                                int i57 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i57 + 1;
                                iArr2[i57] = 37;
                            }
                            break;
                        case 37:
                            if ((j11 & 541165879422L) != 0) {
                                jjCheckNAdd(14);
                            }
                            break;
                        case 39:
                            if ((j11 & (-268435457)) != 0) {
                                jjCheckNAddStates(i12, 3);
                            }
                            break;
                        case 40:
                            if (this.curChar == 92) {
                                jjAddStates(101, 103);
                            }
                            break;
                        case 41:
                            if ((j11 & 7951960418287616L) != 0) {
                                jjCheckNAddStates(i12, 3);
                            }
                            break;
                        case 42:
                            if (this.curChar == 117) {
                                int i58 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i58 + 1;
                                iArr2[i58] = 43;
                            }
                            break;
                        case 43:
                            if ((j11 & 541165879422L) != 0) {
                                int i59 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i59 + 1;
                                iArr2[i59] = 44;
                            }
                            break;
                        case 44:
                            if ((j11 & 541165879422L) != 0) {
                                int i60 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i60 + 1;
                                iArr2[i60] = 45;
                            }
                            break;
                        case 45:
                            if ((j11 & 541165879422L) != 0) {
                                int i61 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i61 + 1;
                                iArr2[i61] = 46;
                            }
                            break;
                        case 46:
                            if ((j11 & 541165879422L) != 0) {
                                jjCheckNAddStates(i12, 3);
                            }
                            break;
                        case 47:
                            if (this.curChar == 92) {
                                int i62 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i62 + 1;
                                iArr2[i62] = 42;
                            }
                            break;
                        case 53:
                            if ((j11 & 576460745995190270L) != 0) {
                                if (i16 > 98) {
                                    i16 = 98;
                                }
                                jjCheckNAddTwoStates(54, 60);
                            }
                            break;
                        case 54:
                            if (((-8646911290859585538L) & j11) != 0) {
                                if (i16 > 98) {
                                    i16 = 98;
                                }
                                jjCheckNAddTwoStates(54, 60);
                            }
                            break;
                        case 55:
                            if (this.curChar == 117) {
                                int i63 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i63 + 1;
                                iArr2[i63] = 56;
                            }
                            break;
                        case 56:
                            if ((j11 & 541165879422L) != 0) {
                                int i64 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i64 + 1;
                                iArr2[i64] = 57;
                            }
                            break;
                        case 57:
                            if ((j11 & 541165879422L) != 0) {
                                int i65 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i65 + 1;
                                iArr2[i65] = 58;
                            }
                            break;
                        case 58:
                        case 64:
                            if ((j11 & 541165879422L) != 0) {
                                jjCheckNAdd(59);
                            }
                            break;
                        case 59:
                            if ((j11 & 541165879422L) != 0) {
                                if (i16 > 98) {
                                    i16 = 98;
                                }
                                jjCheckNAddTwoStates(54, 60);
                            }
                            break;
                        case 60:
                            if (this.curChar == 92) {
                                int i66 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i66 + 1;
                                iArr2[i66] = 55;
                            }
                            break;
                        case 61:
                            if (this.curChar == 117) {
                                int i67 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i67 + 1;
                                iArr2[i67] = 62;
                            }
                            break;
                        case 62:
                            if ((j11 & 541165879422L) != 0) {
                                int i68 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i68 + 1;
                                iArr2[i68] = 63;
                            }
                            break;
                        case 63:
                            if ((j11 & 541165879422L) != 0) {
                                int i69 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i69 + 1;
                                iArr2[i69] = 64;
                            }
                            break;
                        case 65:
                            if (this.curChar == 92) {
                                int i70 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i70 + 1;
                                iArr2[i70] = 61;
                            }
                            break;
                        case 68:
                            if (i16 > 5) {
                                i16 = 5;
                            }
                            int i71 = this.jjnewStateCnt;
                            this.jjnewStateCnt = i71 + 1;
                            iArr2[i71] = 68;
                            break;
                        case 70:
                            if (i16 > 6) {
                                i16 = 6;
                            }
                            break;
                        case 73:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(115, 116);
                                break;
                            }
                            break;
                        case 75:
                            if ((17592186048512L & j11) != 0 && i16 > 80) {
                                i10 = 80;
                                i16 = i10;
                            }
                            break;
                        case 76:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(117, 118);
                                break;
                            }
                            break;
                        case 78:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(119, 120);
                            }
                            break;
                        case 80:
                            if ((137438953504L & j11) != 0) {
                                jjAddStates(121, 122);
                            }
                            break;
                        case 83:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(123, 124);
                                break;
                            }
                            break;
                        case 86:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(125, 126);
                            }
                            break;
                        case 88:
                            if ((137438953504L & j11) != 0) {
                                jjAddStates(127, 128);
                            }
                            break;
                        case 91:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(129, 130);
                                break;
                            }
                            break;
                        case 94:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(131, 132);
                            }
                            break;
                        case 98:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(133, 134);
                            }
                            break;
                        case 100:
                            if ((137438953504L & j11) != 0) {
                                jjAddStates(135, 136);
                            }
                            break;
                        case 103:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(137, 138);
                                break;
                            }
                            break;
                        case 107:
                            if ((j11 & 72057594054705152L) != 0) {
                                int i72 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i72 + 1;
                                iArr2[i72] = 108;
                            }
                            break;
                        case 108:
                            if ((j11 & 541165879422L) != 0) {
                                jjCheckNAddStates(76, 78);
                            }
                            break;
                        case 109:
                            if ((543313363070L & j11) != 0) {
                                jjCheckNAddTwoStates(109, 110);
                            }
                            break;
                        case 110:
                            if ((j11 & 541165879422L) != 0) {
                                jjCheckNAdd(75);
                            }
                            break;
                        case 112:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(139, 140);
                                break;
                            }
                            break;
                        case 114:
                            if ((j11 & 17179869188L) != 0) {
                                int i73 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i73 + 1;
                                iArr2[i73] = 115;
                            }
                            break;
                        case 116:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(141, 142);
                                break;
                            }
                            break;
                        case 118:
                            if ((j11 & 72057594054705152L) != 0) {
                                int i74 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i74 + 1;
                                iArr2[i74] = 119;
                            }
                            break;
                        case 119:
                            if ((j11 & 541165879422L) != 0) {
                                if (i16 > 81) {
                                    i16 = 81;
                                }
                                jjCheckNAddTwoStates(120, 121);
                            }
                            break;
                        case 120:
                            if ((543313363070L & j11) != 0) {
                                jjCheckNAddTwoStates(120, 121);
                            }
                            break;
                        case 121:
                            if ((j11 & 541165879422L) != 0 && i16 > 81) {
                                i16 = 81;
                            }
                            break;
                        case 123:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(143, 144);
                                break;
                            }
                            break;
                        case 125:
                            if ((j11 & 17179869188L) != 0) {
                                int i75 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i75 + 1;
                                iArr2[i75] = 126;
                            }
                            break;
                        case 127:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(145, 146);
                                break;
                            }
                            break;
                        case 129:
                            if ((72057594054705152L & j11) != 0) {
                                jjCheckNAddTwoStates(130, 133);
                            }
                            break;
                        case 130:
                            if ((j11 & 541165879422L) != 0) {
                                jjCheckNAddStates(85, 87);
                            }
                            break;
                        case 131:
                            if ((543313363070L & j11) != 0) {
                                jjCheckNAddTwoStates(131, 132);
                            }
                            break;
                        case 132:
                            if ((j11 & 541165879422L) != 0) {
                                jjCheckNAdd(133);
                            }
                            break;
                        case 134:
                            if ((j11 & 541165879422L) != 0) {
                                jjCheckNAddStates(88, 90);
                            }
                            break;
                        case 135:
                            if ((543313363070L & j11) != 0) {
                                jjCheckNAddTwoStates(135, 136);
                            }
                            break;
                        case 136:
                            if ((j11 & 541165879422L) != 0) {
                                jjCheckNAdd(137);
                            }
                            break;
                        case 137:
                            if ((281474976776192L & j11) != 0) {
                                jjAddStates(147, 148);
                            }
                            break;
                        case 140:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(149, 150);
                                break;
                            }
                            break;
                        case 142:
                            if ((j11 & 72057594054705152L) != 0) {
                                int i76 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i76 + 1;
                                iArr2[i76] = 143;
                            }
                            break;
                        case 143:
                            if ((j11 & 541165879422L) != 0) {
                                jjCheckNAddStates(94, 97);
                            }
                            break;
                        case 144:
                            if ((543313363070L & j11) != 0) {
                                jjCheckNAddTwoStates(144, 145);
                            }
                            break;
                        case 145:
                            if ((j11 & 541165879422L) != 0) {
                                jjCheckNAddTwoStates(146, 147);
                            }
                            break;
                        case 147:
                            if ((281474976776192L & j11) != 0) {
                                jjAddStates(151, 152);
                            }
                            break;
                        case 150:
                            c10 = '_';
                            if (this.curChar == 95) {
                                jjAddStates(153, 154);
                                break;
                            }
                            break;
                        case 152:
                            if ((j11 & (-268435457)) != 0) {
                                jjCheckNAddStates(i12, 3);
                                i11 = 92;
                            } else {
                                i11 = 92;
                                if (this.curChar == 92) {
                                    int i77 = this.jjnewStateCnt;
                                    this.jjnewStateCnt = i77 + 1;
                                    iArr2[i77] = 42;
                                }
                            }
                            if (this.curChar == i11) {
                                jjAddStates(101, 103);
                            }
                            break;
                        case 153:
                            if ((j11 & (-8646911290859585538L)) != 0) {
                                if (i16 > 98) {
                                    i16 = 98;
                                }
                                jjCheckNAddTwoStates(54, 60);
                            } else if (this.curChar == 92) {
                                int i78 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i78 + 1;
                                iArr2[i78] = 55;
                            }
                            break;
                    }
                    if (i14 != i15) {
                        c11 = '.';
                    }
                }
            } else {
                int i79 = i19 >> 8;
                int i80 = i19 >> 14;
                long j12 = 1 << (i79 & 63);
                int i81 = (i19 & 255) >> 6;
                long j13 = 1 << (i19 & 63);
                do {
                    i14--;
                    int i82 = this.jjstateSet[i14];
                    if (i82 == 0) {
                        if (jjCanMove_0(i79, i80, i81, j12, j13) && i16 > 1) {
                            i16 = 1;
                        }
                        if (jjCanMove_2(i79, i80, i81, j12, j13)) {
                            i21 = 98;
                            if (i16 > 98) {
                                i16 = 98;
                            }
                            jjCheckNAddTwoStates(54, 60);
                        }
                        i21 = 98;
                    } else if (i82 != 13) {
                        if (i82 != 39) {
                            if (i82 != 68) {
                                if (i82 != 70) {
                                    if (i82 != 53) {
                                        if (i82 != 54) {
                                            if (i82 != 152) {
                                            }
                                        }
                                        if (jjCanMove_3(i79, i80, i81, j12, j13)) {
                                            if (i16 > i21) {
                                                i16 = i21;
                                            }
                                            jjCheckNAddTwoStates(54, 60);
                                        }
                                    } else if (jjCanMove_2(i79, i80, i81, j12, j13)) {
                                        if (i16 > i21) {
                                            i16 = i21;
                                        }
                                        jjCheckNAddTwoStates(54, 60);
                                    }
                                } else if (jjCanMove_1(i79, i80, i81, j12, j13) && i16 > 6) {
                                    i16 = 6;
                                }
                            } else if (jjCanMove_1(i79, i80, i81, j12, j13)) {
                                if (i16 > 5) {
                                    i16 = 5;
                                }
                                int[] iArr3 = this.jjstateSet;
                                int i83 = this.jjnewStateCnt;
                                this.jjnewStateCnt = i83 + 1;
                                iArr3[i83] = 68;
                                i21 = 98;
                            }
                            i21 = 98;
                        }
                        if (jjCanMove_1(i79, i80, i81, j12, j13)) {
                            jjCheckNAddStates(0, 3);
                        }
                        i21 = 98;
                    } else {
                        if (jjCanMove_1(i79, i80, i81, j12, j13)) {
                            int[] iArr4 = this.jjstateSet;
                            int i84 = this.jjnewStateCnt;
                            this.jjnewStateCnt = i84 + 1;
                            iArr4[i84] = 14;
                            i21 = 98;
                        }
                        i21 = 98;
                    }
                } while (i14 != i15);
            }
            if (i16 != Integer.MAX_VALUE) {
                this.jjmatchedKind = i16;
                this.jjmatchedPos = i17;
                i16 = Integer.MAX_VALUE;
            }
            i17++;
            i14 = this.jjnewStateCnt;
            this.jjnewStateCnt = i15;
            i15 = 152 - i15;
            if (i14 == i15) {
                return i17;
            }
            try {
                this.curChar = this.input_stream.readChar();
                i13 = 1;
                i12 = 0;
            } catch (IOException unused) {
                return i17;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private int jjMoveNfa_3(int startState, int curPos) {
        this.jjnewStateCnt = 3;
        this.jjstateSet[0] = startState;
        int i10 = 1;
        int i11 = 0;
        int i12 = Integer.MAX_VALUE;
        int i13 = curPos;
        while (true) {
            int i14 = this.jjround + 1;
            this.jjround = i14;
            if (i14 == Integer.MAX_VALUE) {
                ReInitRounds();
            }
            int i15 = this.curChar;
            if (i15 >= 64) {
                if (i15 >= 128) {
                    int i16 = i15 >> 8;
                    int i17 = i15 >> 14;
                    long j10 = 1 << (i16 & 63);
                    int i18 = (i15 & 255) >> 6;
                    long j11 = 1 << (i15 & 63);
                    do {
                        i10--;
                        if (this.jjstateSet[i10] == 0 && jjCanMove_1(i16, i17, i18, j10, j11) && i12 > 97) {
                            i12 = 97;
                        }
                    } while (i10 != i11);
                    if (i12 != Integer.MAX_VALUE) {
                        this.jjmatchedKind = i12;
                        this.jjmatchedPos = i13;
                        i12 = Integer.MAX_VALUE;
                    }
                    i13++;
                    i10 = this.jjnewStateCnt;
                    this.jjnewStateCnt = i11;
                    i11 = 3 - i11;
                    if (i10 != i11) {
                        return i13;
                    }
                    try {
                        this.curChar = this.input_stream.readChar();
                    } catch (IOException unused) {
                        return i13;
                    }
                }
                do {
                    int[] iArr = this.jjstateSet;
                    i10--;
                    int i19 = iArr[i10];
                    if (i19 == 0) {
                        if (i12 > 97) {
                            i12 = 97;
                        }
                        if (this.curChar == 92) {
                            int i20 = this.jjnewStateCnt;
                            this.jjnewStateCnt = i20 + 1;
                            iArr[i20] = 1;
                        }
                    } else if (i19 == 2 && i12 > 97) {
                        i12 = 97;
                    }
                } while (i10 != i11);
                if (i12 != Integer.MAX_VALUE) {
                }
                i13++;
                i10 = this.jjnewStateCnt;
                this.jjnewStateCnt = i11;
                i11 = 3 - i11;
                if (i10 != i11) {
                }
            }
            do {
                i10--;
                int i21 = this.jjstateSet[i10];
                if (i21 == 0) {
                    if (i12 <= 97) {
                    }
                    i12 = 97;
                } else if (i21 == 1) {
                    if (this.curChar == 34) {
                        if (i12 <= 97) {
                        }
                        i12 = 97;
                    }
                }
                if (i12 != Integer.MAX_VALUE) {
                }
                i13++;
                i10 = this.jjnewStateCnt;
                this.jjnewStateCnt = i11;
                i11 = 3 - i11;
                if (i10 != i11) {
                }
            } while (i10 != i11);
            if (i12 != Integer.MAX_VALUE) {
            }
            i13++;
            i10 = this.jjnewStateCnt;
            this.jjnewStateCnt = i11;
            i11 = 3 - i11;
            if (i10 != i11) {
            }
        }
    }

    private int jjMoveStringLiteralDfa0_0() {
        int i10 = this.curChar;
        if (i10 == 10) {
            return jjStopAtPos(0, 3);
        }
        if (i10 == 13) {
            this.jjmatchedKind = 4;
            return jjMoveStringLiteralDfa1_0(4L, 0L, 0L);
        }
        if (i10 == 26) {
            return jjStopAtPos(0, 151);
        }
        if (i10 == 91) {
            return jjStopAtPos(0, 105);
        }
        if (i10 == 105) {
            return jjMoveStringLiteralDfa1_0(1082331758592L, 0L, 0L);
        }
        if (i10 == 121) {
            return jjMoveStringLiteralDfa1_0(0L, 16L, 0L);
        }
        if (i10 == 33) {
            this.jjmatchedKind = 115;
            return jjMoveStringLiteralDfa1_0(0L, 576460752303423488L, 0L);
        }
        if (i10 == 34) {
            return jjMoveStringLiteralDfa1_0(0L, 2147483648L, 0L);
        }
        if (i10 == 37) {
            this.jjmatchedKind = 135;
            return jjMoveStringLiteralDfa1_0(0L, 0L, 65536L);
        }
        if (i10 == 38) {
            this.jjmatchedKind = 132;
            return jjMoveStringLiteralDfa1_0(0L, 1152921504606846976L, 8192L);
        }
        if (i10 == 93) {
            return jjStopAtPos(0, 106);
        }
        if (i10 == 94) {
            this.jjmatchedKind = 134;
            return jjMoveStringLiteralDfa1_0(0L, 0L, 32768L);
        }
        switch (i10) {
            case 40:
                return jjStopAtPos(0, 101);
            case 41:
                return jjStopAtPos(0, 102);
            case 42:
                this.jjmatchedKind = 130;
                return jjMoveStringLiteralDfa1_0(0L, 0L, 2048L);
            case 43:
                this.jjmatchedKind = 128;
                return jjMoveStringLiteralDfa1_0(0L, 4611686018427387904L, 512L);
            case 44:
                return jjStopAtPos(0, 108);
            case 45:
                this.jjmatchedKind = 129;
                return jjMoveStringLiteralDfa1_0(0L, -9187343239835811840L, 1024L);
            case 46:
                this.jjmatchedKind = 109;
                return jjMoveStringLiteralDfa1_0(0L, 70368744177664L, 0L);
            case 47:
                this.jjmatchedKind = 131;
                return jjMoveStringLiteralDfa1_0(128L, 0L, 4096L);
            default:
                switch (i10) {
                    case 58:
                        this.jjmatchedKind = 118;
                        return jjMoveStringLiteralDfa1_0(0L, 281474976710656L, 0L);
                    case 59:
                        return jjStopAtPos(0, 107);
                    case 60:
                        this.jjmatchedKind = 114;
                        return jjMoveStringLiteralDfa1_0(0L, 288230376151711744L, 131328L);
                    case 61:
                        this.jjmatchedKind = 113;
                        return jjMoveStringLiteralDfa1_0(0L, 72057594037927936L, 0L);
                    case 62:
                        this.jjmatchedKind = 150;
                        return jjMoveStringLiteralDfa1_0(0L, 144115188075855872L, 3932160L);
                    case 63:
                        return jjStopAtPos(0, 117);
                    case 64:
                        return jjStopAtPos(0, 111);
                    default:
                        switch (i10) {
                            case 97:
                                return jjMoveStringLiteralDfa1_0(6144L, 0L, 0L);
                            case 98:
                                return jjMoveStringLiteralDfa1_0(57344L, 0L, 0L);
                            case 99:
                                return jjMoveStringLiteralDfa1_0(4128768L, 0L, 0L);
                            case 100:
                                return jjMoveStringLiteralDfa1_0(29360128L, 0L, 0L);
                            case 101:
                                return jjMoveStringLiteralDfa1_0(234881024L, 4096L, 0L);
                            case 102:
                                return jjMoveStringLiteralDfa1_0(8321499136L, 0L, 0L);
                            case 103:
                                return jjMoveStringLiteralDfa1_0(8589934592L, 0L, 0L);
                            default:
                                switch (i10) {
                                    case 108:
                                        return jjMoveStringLiteralDfa1_0(1099511627776L, 0L, 0L);
                                    case 109:
                                        return jjMoveStringLiteralDfa1_0(0L, 2048L, 0L);
                                    case 110:
                                        return jjMoveStringLiteralDfa1_0(32985348833280L, 0L, 0L);
                                    case 111:
                                        return jjMoveStringLiteralDfa1_0(0L, 768L, 0L);
                                    case 112:
                                        return jjMoveStringLiteralDfa1_0(1090715534753792L, 8192L, 0L);
                                    default:
                                        switch (i10) {
                                            case 114:
                                                return jjMoveStringLiteralDfa1_0(3377699720527872L, 32L, 0L);
                                            case 115:
                                                return jjMoveStringLiteralDfa1_0(571957152676052992L, 0L, 0L);
                                            case 116:
                                                return jjMoveStringLiteralDfa1_0(-576460752303423488L, 16449L, 0L);
                                            case 117:
                                                return jjMoveStringLiteralDfa1_0(0L, 1024L, 0L);
                                            case 118:
                                                return jjMoveStringLiteralDfa1_0(0L, 6L, 0L);
                                            case 119:
                                                return jjMoveStringLiteralDfa1_0(0L, 32904L, 0L);
                                            default:
                                                switch (i10) {
                                                    case 123:
                                                        return jjStopAtPos(0, 103);
                                                    case 124:
                                                        this.jjmatchedKind = 133;
                                                        return jjMoveStringLiteralDfa1_0(0L, 2305843009213693952L, 16384L);
                                                    case 125:
                                                        return jjStopAtPos(0, 104);
                                                    case 126:
                                                        return jjStopAtPos(0, 116);
                                                    default:
                                                        return jjMoveNfa_0(0, 0);
                                                }
                                        }
                                }
                        }
                }
        }
    }

    private int jjMoveStringLiteralDfa0_1() {
        if (this.curChar != 42) {
            return 1;
        }
        return jjMoveStringLiteralDfa1_1(256L);
    }

    private int jjMoveStringLiteralDfa0_2() {
        if (this.curChar != 42) {
            return 1;
        }
        return jjMoveStringLiteralDfa1_2(512L);
    }

    private int jjMoveStringLiteralDfa0_3() {
        return this.curChar != 34 ? jjMoveNfa_3(0, 0) : jjMoveStringLiteralDfa1_3(4294967296L);
    }

    private int jjMoveStringLiteralDfa10_0(long old0, long active0, long old1, long active1) {
        long j10 = active0 & old0;
        if (((active1 & old1) | j10) == 0) {
            return jjStartNfa_0(8, old0, old1, 0L);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            return readChar != 'e' ? jjStartNfa_0(9, j10, 0L, 0L) : jjMoveStringLiteralDfa11_0(j10, 288230376151711744L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(9, j10, 0L, 0L);
            return 10;
        }
    }

    private int jjMoveStringLiteralDfa11_0(long old0, long active0) {
        long j10 = active0 & old0;
        if (j10 == 0) {
            return jjStartNfa_0(9, old0, 0L, 0L);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            return (readChar == 'd' && (288230376151711744L & j10) != 0) ? jjStartNfaWithStates_0(11, 58, 153) : jjStartNfa_0(10, j10, 0L, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(10, j10, 0L, 0L);
            return 11;
        }
    }

    private int jjMoveStringLiteralDfa1_0(long active0, long active1, long active2) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '\n') {
                if (readChar == '\"') {
                    return jjMoveStringLiteralDfa2_0(active0, 0L, active1, 2147483648L, active2, 0L);
                }
                if (readChar != '&') {
                    if (readChar != ':') {
                        if (readChar != '|') {
                            if (readChar != '*') {
                                if (readChar != '+') {
                                    if (readChar != '-') {
                                        if (readChar == '.') {
                                            return jjMoveStringLiteralDfa2_0(active0, 0L, active1, 70368744177664L, active2, 0L);
                                        }
                                        if (readChar == 'a') {
                                            return jjMoveStringLiteralDfa2_0(active0, 37383663976448L, active1, 0L, active2, 0L);
                                        }
                                        if (readChar == 'b') {
                                            return jjMoveStringLiteralDfa2_0(active0, 2048L, active1, 0L, active2, 0L);
                                        }
                                        if (readChar == 'e') {
                                            return jjMoveStringLiteralDfa2_0(active0, 7956066142781440L, active1, 32L, active2, 0L);
                                        }
                                        if (readChar != 'f') {
                                            if (readChar == 'h') {
                                                return jjMoveStringLiteralDfa2_0(active0, 4044232465378967552L, active1, 32776L, active2, 0L);
                                            }
                                            if (readChar == 'i') {
                                                return jjMoveStringLiteralDfa2_0(active0, 1610612736L, active1, 144L, active2, 0L);
                                            }
                                            switch (readChar) {
                                                case '<':
                                                    if ((active2 & 256) != 0) {
                                                        this.jjmatchedKind = 136;
                                                        this.jjmatchedPos = 1;
                                                    }
                                                    return jjMoveStringLiteralDfa2_0(active0, 0L, active1, 0L, active2, 131072L);
                                                case '=':
                                                    if ((active1 & 72057594037927936L) != 0) {
                                                        return jjStopAtPos(1, 120);
                                                    }
                                                    if ((active1 & 144115188075855872L) != 0) {
                                                        return jjStopAtPos(1, 121);
                                                    }
                                                    if ((active1 & 288230376151711744L) != 0) {
                                                        return jjStopAtPos(1, 122);
                                                    }
                                                    if ((active1 & 576460752303423488L) != 0) {
                                                        return jjStopAtPos(1, 123);
                                                    }
                                                    if ((active2 & 512) != 0) {
                                                        return jjStopAtPos(1, 137);
                                                    }
                                                    if ((active2 & 1024) != 0) {
                                                        return jjStopAtPos(1, 138);
                                                    }
                                                    if ((active2 & 2048) != 0) {
                                                        return jjStopAtPos(1, 139);
                                                    }
                                                    if ((active2 & 4096) != 0) {
                                                        return jjStopAtPos(1, 140);
                                                    }
                                                    if ((active2 & 8192) != 0) {
                                                        return jjStopAtPos(1, 141);
                                                    }
                                                    if ((active2 & 16384) != 0) {
                                                        return jjStopAtPos(1, 142);
                                                    }
                                                    if ((active2 & 32768) != 0) {
                                                        return jjStopAtPos(1, 143);
                                                    }
                                                    if ((active2 & 65536) != 0) {
                                                        return jjStopAtPos(1, 144);
                                                    }
                                                    break;
                                                case '>':
                                                    if ((active1 & 36028797018963968L) != 0) {
                                                        return jjStopAtPos(1, 119);
                                                    }
                                                    if ((active2 & 2097152) != 0) {
                                                        this.jjmatchedKind = 149;
                                                        this.jjmatchedPos = 1;
                                                    }
                                                    return jjMoveStringLiteralDfa2_0(active0, 0L, active1, 0L, active2, 1835008L);
                                                default:
                                                    switch (readChar) {
                                                        case 'l':
                                                            return jjMoveStringLiteralDfa2_0(active0, 2181562368L, active1, 0L, active2, 0L);
                                                        case 'm':
                                                            return jjMoveStringLiteralDfa2_0(active0, 103079215104L, active1, 0L, active2, 0L);
                                                        case 'n':
                                                            return jjMoveStringLiteralDfa2_0(active0, 962139783168L, active1, 0L, active2, 0L);
                                                        case 'o':
                                                            if ((8388608 & active0) != 0) {
                                                                this.jjmatchedKind = 23;
                                                                this.jjmatchedPos = 1;
                                                            } else if ((active1 & 64) != 0) {
                                                                return jjStartNfaWithStates_0(1, 70, 153);
                                                            }
                                                            return jjMoveStringLiteralDfa2_0(active0, 9908509483008L, active1, 2054L, active2, 0L);
                                                        case 'p':
                                                            return jjMoveStringLiteralDfa2_0(active0, 0L, active1, 768L, active2, 0L);
                                                        default:
                                                            switch (readChar) {
                                                                case 'r':
                                                                    return jjMoveStringLiteralDfa2_0(active0, -4611263805962305536L, active1, 24577L, active2, 0L);
                                                                case 's':
                                                                    return jjMoveStringLiteralDfa2_0(active0, 4096L, active1, 1024L, active2, 0L);
                                                                case 't':
                                                                    return jjMoveStringLiteralDfa2_0(active0, 54043195528445952L, active1, 0L, active2, 0L);
                                                                case 'u':
                                                                    return jjMoveStringLiteralDfa2_0(active0, 72638136177393664L, active1, 0L, active2, 0L);
                                                                default:
                                                                    switch (readChar) {
                                                                        case 'w':
                                                                            return jjMoveStringLiteralDfa2_0(active0, 144115188075855872L, active1, 0L, active2, 0L);
                                                                        case 'x':
                                                                            return jjMoveStringLiteralDfa2_0(active0, TagBits.HasUnresolvedEnclosingType, active1, 4096L, active2, 0L);
                                                                        case 'y':
                                                                            return jjMoveStringLiteralDfa2_0(active0, 288230376151744512L, active1, 0L, active2, 0L);
                                                                    }
                                                            }
                                                    }
                                            }
                                        } else if ((17179869184L & active0) != 0) {
                                            return jjStartNfaWithStates_0(1, 34, 153);
                                        }
                                    } else if ((active1 & Long.MIN_VALUE) != 0) {
                                        return jjStopAtPos(1, 127);
                                    }
                                } else if ((active1 & 4611686018427387904L) != 0) {
                                    return jjStopAtPos(1, 126);
                                }
                            } else if ((128 & active0) != 0) {
                                return jjStartNfaWithStates_0(1, 7, 69);
                            }
                        } else if ((active1 & 2305843009213693952L) != 0) {
                            return jjStopAtPos(1, 125);
                        }
                    } else if ((active1 & 281474976710656L) != 0) {
                        return jjStopAtPos(1, 112);
                    }
                } else if ((active1 & 1152921504606846976L) != 0) {
                    return jjStopAtPos(1, 124);
                }
            } else if ((4 & active0) != 0) {
                return jjStopAtPos(1, 2);
            }
            return jjStartNfa_0(0, active0, active1, active2);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(0, active0, active1, active2);
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa1_1(long active0) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == '/' && (active0 & 256) != 0) {
                return jjStopAtPos(1, 8);
            }
            return 2;
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa1_2(long active0) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == '/' && (active0 & 512) != 0) {
                return jjStopAtPos(1, 9);
            }
            return 2;
        } catch (IOException unused) {
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa1_3(long active1) {
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            return readChar != '\"' ? jjStartNfa_3(0, 0L, active1) : jjMoveStringLiteralDfa2_3(active1, 4294967296L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_3(0, 0L, active1);
            return 1;
        }
    }

    private int jjMoveStringLiteralDfa2_0(long old0, long active0, long old1, long active1, long old2, long active2) {
        long j10 = active0 & old0;
        long j11 = active1 & old1;
        long j12 = active2 & old2;
        if ((j10 | j11 | j12) == 0) {
            return jjStartNfa_0(0, old0, old1, old2);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != '\"') {
                if (readChar != '.') {
                    if (readChar == 'i') {
                        return jjMoveStringLiteralDfa3_0(j10, 720716677867634688L, j11, 10L, j12, 0L);
                    }
                    if (readChar == 'l') {
                        return jjMoveStringLiteralDfa3_0(j10, 17592454479872L, j11, 4L, j12, 0L);
                    }
                    if (readChar != 'w') {
                        if (readChar != 'y') {
                            if (readChar != '=') {
                                if (readChar == '>') {
                                    if ((TagBits.HasNullTypeAnnotation & j12) != 0) {
                                        this.jjmatchedKind = 148;
                                        this.jjmatchedPos = 2;
                                    }
                                    return jjMoveStringLiteralDfa3_0(j10, 0L, j11, 0L, j12, TagBits.PauseHierarchyCheck);
                                }
                                switch (readChar) {
                                    case 'a':
                                        return jjMoveStringLiteralDfa3_0(j10, 4634204016565026816L, j11, 16384L, j12, 0L);
                                    case 'b':
                                        return jjMoveStringLiteralDfa3_0(j10, 562949953421312L, j11, 0L, j12, 0L);
                                    case 'c':
                                        return jjMoveStringLiteralDfa3_0(j10, 1161084278931456L, j11, 0L, j12, 0L);
                                    case 'd':
                                        return jjMoveStringLiteralDfa3_0(j10, 0L, j11, 2048L, j12, 0L);
                                    case 'e':
                                        return jjMoveStringLiteralDfa3_0(j10, 16384L, j11, 34576L, j12, 0L);
                                    case 'f':
                                        return jjMoveStringLiteralDfa3_0(j10, TagBits.PassedBoundCheck, j11, 0L, j12, 0L);
                                    default:
                                        switch (readChar) {
                                            case 'n':
                                                return jjMoveStringLiteralDfa3_0(j10, 288240273370120192L, j11, 0L, j12, 0L);
                                            case 'o':
                                                return jjMoveStringLiteralDfa3_0(j10, 9288676378943488L, j11, 8192L, j12, 0L);
                                            case 'p':
                                                return jjMoveStringLiteralDfa3_0(j10, 72057697117143040L, j11, 4096L, j12, 0L);
                                            case 'q':
                                                return jjMoveStringLiteralDfa3_0(j10, 0L, j11, 32L, j12, 0L);
                                            case 'r':
                                                return (4294967296L & j10) != 0 ? jjStartNfaWithStates_0(2, 32, 153) : jjMoveStringLiteralDfa3_0(j10, 3494863679583682560L, j11, 0L, j12, 0L);
                                            case 's':
                                                return jjMoveStringLiteralDfa3_0(j10, 137472579584L, j11, 0L, j12, 0L);
                                            case 't':
                                                if ((274877906944L & j10) != 0) {
                                                    this.jjmatchedKind = 38;
                                                    this.jjmatchedPos = 2;
                                                }
                                                return jjMoveStringLiteralDfa3_0(j10, 2254557317070848L, j11, 128L, j12, 0L);
                                            case 'u':
                                                return jjMoveStringLiteralDfa3_0(j10, -9223372036770889728L, j11, 0L, j12, 0L);
                                        }
                                }
                            }
                            if ((131072 & j12) != 0) {
                                return jjStopAtPos(2, 145);
                            }
                            if ((TagBits.TypeVariablesAreConnected & j12) != 0) {
                                return jjStopAtPos(2, 146);
                            }
                        } else if ((1 & j11) != 0) {
                            return jjStartNfaWithStates_0(2, 64, 153);
                        }
                    } else if ((4398046511104L & j10) != 0) {
                        return jjStartNfaWithStates_0(2, 42, 153);
                    }
                } else if ((70368744177664L & j11) != 0) {
                    return jjStopAtPos(2, 110);
                }
            } else if ((2147483648L & j11) != 0) {
                return jjStopAtPos(2, 95);
            }
            return jjStartNfa_0(1, j10, j11, j12);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(1, j10, j11, j12);
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa2_3(long old1, long active1) {
        long j10 = active1 & old1;
        if (j10 == 0) {
            return jjStartNfa_3(0, 0L, old1);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            return (readChar == '\"' && (4294967296L & j10) != 0) ? jjStopAtPos(2, 96) : jjStartNfa_3(1, 0L, j10);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_3(1, 0L, j10);
            return 2;
        }
    }

    private int jjMoveStringLiteralDfa3_0(long old0, long active0, long old1, long active1, long old2, long active2) {
        long j10 = active0 & old0;
        long j11 = active1 & old1;
        long j12 = active2 & old2;
        if ((j10 | j11 | j12) == 0) {
            return jjStartNfa_0(1, old0, old1, old2);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == '-') {
                return jjMoveStringLiteralDfa4_0(j10, 8796093022208L, j11, 0L, j12, 0L);
            }
            if (readChar != '=') {
                switch (readChar) {
                    case 'a':
                        return jjMoveStringLiteralDfa4_0(j10, 3762307072L, j11, 4L, j12, 0L);
                    case 'b':
                        return jjMoveStringLiteralDfa4_0(j10, 16777216L, j11, 0L, j12, 0L);
                    case 'c':
                        return jjMoveStringLiteralDfa4_0(j10, 288230376151842816L, j11, 0L, j12, 0L);
                    case 'd':
                        if ((2 & j11) != 0) {
                            return jjStartNfaWithStates_0(3, 65, 153);
                        }
                        break;
                    case 'e':
                        return (32768 & j10) != 0 ? jjStartNfaWithStates_0(3, 15, 153) : (65536 & j10) != 0 ? jjStartNfaWithStates_0(3, 16, 153) : (TagBits.HasUnresolvedSuperclass & j10) != 0 ? jjStartNfaWithStates_0(3, 25, 153) : (Long.MIN_VALUE & j10) != 0 ? jjStartNfaWithStates_0(3, 63, 153) : jjMoveStringLiteralDfa4_0(j10, 72058143927963648L, j11, 0L, j12, 0L);
                    default:
                        switch (readChar) {
                            case 'g':
                                if ((1099511627776L & j10) != 0) {
                                    return jjStartNfaWithStates_0(3, 40, 153);
                                }
                                break;
                            case 'h':
                                if ((128 & j11) != 0) {
                                    return jjStartNfaWithStates_0(3, 71, 153);
                                }
                                break;
                            case 'i':
                                return jjMoveStringLiteralDfa4_0(j10, 36030996042219520L, j11, 0L, j12, 0L);
                            default:
                                switch (readChar) {
                                    case 'k':
                                        return jjMoveStringLiteralDfa4_0(j10, 35184372088832L, j11, 0L, j12, 0L);
                                    case 'l':
                                        return (17592186044416L & j10) != 0 ? jjStartNfaWithStates_0(3, 44, 153) : jjMoveStringLiteralDfa4_0(j10, 5066583940538368L, j11, 24L, j12, 0L);
                                    case 'm':
                                        return (TagBits.HasUnresolvedSuperinterfaces & j10) != 0 ? jjStartNfaWithStates_0(3, 26, 153) : jjMoveStringLiteralDfa4_0(j10, 70368744177664L, j11, 0L, j12, 0L);
                                    case 'n':
                                        if ((256 & j11) != 0) {
                                            this.jjmatchedKind = 72;
                                            this.jjmatchedPos = 3;
                                        } else if ((32768 & j11) != 0) {
                                            return jjStartNfaWithStates_0(3, 79, 153);
                                        }
                                        return jjMoveStringLiteralDfa4_0(j10, 4611686018427387904L, j11, 16896L, j12, 0L);
                                    case 'o':
                                        return (8589934592L & j10) != 0 ? jjStartNfaWithStates_0(3, 33, 153) : jjMoveStringLiteralDfa4_0(j10, 3459890482446860288L, j11, 4096L, j12, 0L);
                                    default:
                                        switch (readChar) {
                                            case 'r':
                                                return (TagBits.TypeVariablesAreConnected & j10) != 0 ? jjStartNfaWithStates_0(3, 18, 153) : jjMoveStringLiteralDfa4_0(j10, 9007199254740992L, j11, 0L, j12, 0L);
                                            case 's':
                                                return (576460752303423488L & j10) != 0 ? jjStartNfaWithStates_0(3, 59, 153) : (1024 & j11) != 0 ? jjStartNfaWithStates_0(3, 74, 153) : jjMoveStringLiteralDfa4_0(j10, 270008320L, j11, 0L, j12, 0L);
                                            case 't':
                                                return jjMoveStringLiteralDfa4_0(j10, 162411199003101184L, j11, 0L, j12, 0L);
                                            case 'u':
                                                return jjMoveStringLiteralDfa4_0(j10, 2251799813685248L, j11, 2080L, j12, 0L);
                                            case 'v':
                                                return jjMoveStringLiteralDfa4_0(j10, 140737488355328L, j11, 8192L, j12, 0L);
                                        }
                                }
                        }
                }
            } else if ((TagBits.PauseHierarchyCheck & j12) != 0) {
                return jjStopAtPos(3, 147);
            }
            return jjStartNfa_0(2, j10, j11, j12);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(2, j10, j11, j12);
            return 3;
        }
    }

    private int jjMoveStringLiteralDfa4_0(long old0, long active0, long old1, long active1, long old2, long active2) {
        long j10 = active0 & old0;
        long j11 = active1 & old1;
        if ((j10 | j11 | (active2 & old2)) == 0) {
            return jjStartNfa_0(2, old0, old1, old2);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            switch (readChar) {
                case 'a':
                    return jjMoveStringLiteralDfa5_0(j10, 176059299397632L, j11, 0L);
                case 'c':
                    return jjMoveStringLiteralDfa5_0(j10, 180143985094819840L, j11, 0L);
                case 'd':
                    if ((16 & j11) != 0) {
                        return jjStartNfaWithStates_0(4, 68, 153);
                    }
                    break;
                case 'e':
                    return (TagBits.HasUnresolvedMemberTypes & j10) != 0 ? jjStartNfaWithStates_0(4, 28, 153) : (8 & j11) != 0 ? jjStartNfaWithStates_0(4, 67, 153) : jjMoveStringLiteralDfa5_0(j10, 4785108963827712L, j11, 0L);
                case 'h':
                    return (131072 & j10) != 0 ? jjStartNfaWithStates_0(4, 17, 153) : jjMoveStringLiteralDfa5_0(j10, 288230376151711744L, j11, 0L);
                case 'i':
                    return jjMoveStringLiteralDfa5_0(j10, 18647717209178112L, j11, 8224L);
                case 'k':
                    if ((16384 & j10) != 0) {
                        return jjStartNfaWithStates_0(4, 14, 153);
                    }
                    break;
                case 'l':
                    if ((TagBits.HasTypeVariable & j10) != 0) {
                        this.jjmatchedKind = 29;
                        this.jjmatchedPos = 4;
                    }
                    return jjMoveStringLiteralDfa5_0(j10, 1090519040L, j11, 2048L);
                case 'n':
                    return jjMoveStringLiteralDfa5_0(j10, TagBits.HasUnresolvedEnclosingType, j11, 0L);
                case 'r':
                    return (72057594037927936L & j10) != 0 ? jjStartNfaWithStates_0(4, 56, 153) : jjMoveStringLiteralDfa5_0(j10, 3378318195824640L, j11, 4096L);
                case 's':
                    return (TagBits.PauseHierarchyCheck & j10) != 0 ? jjStartNfaWithStates_0(4, 19, 153) : (512 & j11) != 0 ? jjStartNfaWithStates_0(4, 73, 153) : jjMoveStringLiteralDfa5_0(j10, 4611694814520410112L, j11, 16384L);
                case 't':
                    return (TagBits.HasNullTypeAnnotation & j10) != 0 ? jjStartNfaWithStates_0(4, 20, 153) : (2147483648L & j10) != 0 ? jjStartNfaWithStates_0(4, 31, 153) : (9007199254740992L & j10) != 0 ? jjStartNfaWithStates_0(4, 53, 153) : jjMoveStringLiteralDfa5_0(j10, 0L, j11, 4L);
                case 'u':
                    return jjMoveStringLiteralDfa5_0(j10, TagBits.PassedBoundCheck, j11, 0L);
                case 'v':
                    return jjMoveStringLiteralDfa5_0(j10, 2199023255552L, j11, 0L);
                case 'w':
                    if ((1152921504606846976L & j10) != 0) {
                        this.jjmatchedKind = 60;
                        this.jjmatchedPos = 4;
                    }
                    return jjMoveStringLiteralDfa5_0(j10, 2305843009213693952L, j11, 0L);
            }
            return jjStartNfa_0(3, j10, j11, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(3, j10, j11, 0L);
            return 4;
        }
    }

    private int jjMoveStringLiteralDfa5_0(long old0, long active0, long old1, long active1) {
        long j10 = active0 & old0;
        long j11 = active1 & old1;
        if ((j10 | j11) == 0) {
            return jjStartNfa_0(3, old0, old1, 0L);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            switch (readChar) {
                case 'a':
                    return jjMoveStringLiteralDfa6_0(j10, 10240L, j11, 0L);
                case 'c':
                    return (562949953421312L & j10) != 0 ? jjStartNfaWithStates_0(5, 49, 153) : (18014398509481984L & j10) != 0 ? jjStartNfaWithStates_0(5, 54, 153) : jjMoveStringLiteralDfa6_0(j10, 281474976710656L, j11, 0L);
                case 'd':
                    return (1125899906842624L & j10) != 0 ? jjStartNfaWithStates_0(5, 50, 153) : (4503599627370496L & j10) != 0 ? jjStartNfaWithStates_0(5, 52, 153) : jjMoveStringLiteralDfa6_0(j10, TagBits.HasUnresolvedEnclosingType, j11, 8192L);
                case 'e':
                    return (16777216 & j10) != 0 ? jjStartNfaWithStates_0(5, 24, 153) : (2199023255552L & j10) != 0 ? jjStartNfaWithStates_0(5, 41, 153) : (2048 & j11) != 0 ? jjStartNfaWithStates_0(5, 75, 153) : jjMoveStringLiteralDfa6_0(j10, 8796093022208L, j11, 0L);
                case 'f':
                    return jjMoveStringLiteralDfa6_0(j10, 549755813888L, j11, 0L);
                case 'g':
                    return jjMoveStringLiteralDfa6_0(j10, 35184372088832L, j11, 0L);
                case 'h':
                    if ((144115188075855872L & j10) != 0) {
                        return jjStartNfaWithStates_0(5, 57, 153);
                    }
                    break;
                case 'i':
                    return jjMoveStringLiteralDfa6_0(j10, 4611686018427387904L, j11, 16388L);
                case 'l':
                    return jjMoveStringLiteralDfa6_0(j10, 1077936128L, j11, 0L);
                case 'm':
                    return jjMoveStringLiteralDfa6_0(j10, 34359738368L, j11, 0L);
                case 'n':
                    return (2251799813685248L & j10) != 0 ? jjStartNfaWithStates_0(5, 51, 153) : jjMoveStringLiteralDfa6_0(j10, 137441050624L, j11, 0L);
                case 'r':
                    return jjMoveStringLiteralDfa6_0(j10, 288230376151711744L, j11, 32L);
                case 's':
                    if ((2305843009213693952L & j10) != 0) {
                        return jjStartNfaWithStates_0(5, 61, 153);
                    }
                    break;
                case 't':
                    return (4096 & j10) != 0 ? jjStartNfaWithStates_0(5, 12, 153) : (68719476736L & j10) != 0 ? jjStartNfaWithStates_0(5, 36, 153) : jjMoveStringLiteralDfa6_0(j10, 36239903251496960L, j11, 4096L);
            }
            return jjStartNfa_0(4, j10, j11, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(4, j10, j11, 0L);
            return 5;
        }
    }

    private int jjMoveStringLiteralDfa6_0(long old0, long active0, long old1, long active1) {
        long j10 = active0 & old0;
        long j11 = active1 & old1;
        if ((j10 | j11) == 0) {
            return jjStartNfa_0(4, old0, old1, 0L);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == 'a') {
                return jjMoveStringLiteralDfa7_0(j10, 9345848836096L, j11, 0L);
            }
            if (readChar == 'c') {
                return jjMoveStringLiteralDfa7_0(j10, 137438955520L, j11, 0L);
            }
            if (readChar == 'l') {
                return jjMoveStringLiteralDfa7_0(j10, 0L, j11, 4L);
            }
            if (readChar != 'y') {
                if (readChar == 'e') {
                    return (35184372088832L & j10) != 0 ? jjStartNfaWithStates_0(6, 45, 153) : (140737488355328L & j10) != 0 ? jjStartNfaWithStates_0(6, 47, 153) : jjMoveStringLiteralDfa7_0(j10, 4611686052787126272L, j11, 8224L);
                }
                if (readChar == 'f') {
                    return jjMoveStringLiteralDfa7_0(j10, 36028797018963968L, j11, 0L);
                }
                if (readChar != 'n') {
                    if (readChar == 'o') {
                        return jjMoveStringLiteralDfa7_0(j10, 288230376151711744L, j11, 0L);
                    }
                    switch (readChar) {
                        case 's':
                            if ((TagBits.HasUnresolvedEnclosingType & j10) != 0) {
                                return jjStartNfaWithStates_0(6, 27, 153);
                            }
                            if ((70368744177664L & j10) != 0) {
                                return jjStartNfaWithStates_0(6, 46, 153);
                            }
                            if ((4096 & j11) != 0) {
                                return jjStartNfaWithStates_0(6, 76, 153);
                            }
                            break;
                        case 't':
                            return (TagBits.PassedBoundCheck & j10) != 0 ? jjStartNfaWithStates_0(6, 22, 153) : jjMoveStringLiteralDfa7_0(j10, 281474976710656L, j11, 16384L);
                        case 'u':
                            return jjMoveStringLiteralDfa7_0(j10, 2097152L, j11, 0L);
                    }
                } else if ((8192 & j10) != 0) {
                    return jjStartNfaWithStates_0(6, 13, 153);
                }
            } else if ((TagBits.HasDirectWildcard & j10) != 0) {
                return jjStartNfaWithStates_0(6, 30, 153);
            }
            return jjStartNfa_0(5, j10, j11, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(5, j10, j11, 0L);
            return 6;
        }
    }

    private int jjMoveStringLiteralDfa7_0(long old0, long active0, long old1, long active1) {
        long j10 = active0 & old0;
        long j11 = active1 & old1;
        if ((j10 | j11) == 0) {
            return jjStartNfa_0(5, old0, old1, 0L);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar == 'c') {
                return jjMoveStringLiteralDfa8_0(j10, 549755813888L, j11, 0L);
            }
            if (readChar == 'e') {
                return (2097152 & j10) != 0 ? jjStartNfaWithStates_0(7, 21, 153) : (4 & j11) != 0 ? jjStartNfaWithStates_0(7, 66, 153) : jjMoveStringLiteralDfa8_0(j10, 281612415664128L, j11, 0L);
            }
            if (readChar == 'i') {
                return jjMoveStringLiteralDfa8_0(j10, 0L, j11, 16384L);
            }
            if (readChar == 'l') {
                return jjMoveStringLiteralDfa8_0(j10, 8796093022208L, j11, 0L);
            }
            if (readChar == 'n') {
                return jjMoveStringLiteralDfa8_0(j10, 4899916428938838016L, j11, 0L);
            }
            if (readChar != 'p') {
                if (readChar != 's') {
                    if (readChar == 't' && (2048 & j10) != 0) {
                        return jjStartNfaWithStates_0(7, 11, 153);
                    }
                } else {
                    if ((32 & j11) != 0) {
                        return jjStartNfaWithStates_0(7, 69, 153);
                    }
                    if ((8192 & j11) != 0) {
                        return jjStartNfaWithStates_0(7, 77, 153);
                    }
                }
            } else if ((36028797018963968L & j10) != 0) {
                return jjStartNfaWithStates_0(7, 55, 153);
            }
            return jjStartNfa_0(6, j10, j11, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(6, j10, j11, 0L);
            return 7;
        }
    }

    private int jjMoveStringLiteralDfa8_0(long old0, long active0, long old1, long active1) {
        long j10 = active0 & old0;
        long j11 = active1 & old1;
        if ((j10 | j11) == 0) {
            return jjStartNfa_0(6, old0, old1, 0L);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != 'd') {
                if (readChar == 'e') {
                    return (549755813888L & j10) != 0 ? jjStartNfaWithStates_0(8, 39, 153) : jjMoveStringLiteralDfa9_0(j10, 8796093022208L, j11, 0L);
                }
                if (readChar == 'i') {
                    return jjMoveStringLiteralDfa9_0(j10, 288230376151711744L, j11, 0L);
                }
                if (readChar == 'o') {
                    return jjMoveStringLiteralDfa9_0(j10, 137438953472L, j11, 0L);
                }
                if (readChar == 't') {
                    return (4611686018427387904L & j10) != 0 ? jjStartNfaWithStates_0(8, 62, 153) : jjMoveStringLiteralDfa9_0(j10, 34359738368L, j11, 0L);
                }
                if (readChar == 'v') {
                    return jjMoveStringLiteralDfa9_0(j10, 0L, j11, 16384L);
                }
            } else if ((281474976710656L & j10) != 0) {
                return jjStartNfaWithStates_0(8, 48, 153);
            }
            return jjStartNfa_0(7, j10, j11, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(7, j10, j11, 0L);
            return 8;
        }
    }

    private int jjMoveStringLiteralDfa9_0(long old0, long active0, long old1, long active1) {
        long j10 = active0 & old0;
        long j11 = active1 & old1;
        if ((j10 | j11) == 0) {
            return jjStartNfa_0(7, old0, old1, 0L);
        }
        try {
            char readChar = this.input_stream.readChar();
            this.curChar = readChar;
            if (readChar != 's') {
                if (readChar == 'z') {
                    return jjMoveStringLiteralDfa10_0(j10, 288230376151711744L, j11, 0L);
                }
                switch (readChar) {
                    case 'd':
                        if ((8796093022208L & j10) != 0) {
                            return jjStopAtPos(9, 43);
                        }
                        break;
                    case 'e':
                        if ((16384 & j11) != 0) {
                            return jjStartNfaWithStates_0(9, 78, 153);
                        }
                        break;
                    case 'f':
                        if ((137438953472L & j10) != 0) {
                            return jjStartNfaWithStates_0(9, 37, 153);
                        }
                        break;
                }
            } else if ((34359738368L & j10) != 0) {
                return jjStartNfaWithStates_0(9, 35, 153);
            }
            return jjStartNfa_0(8, j10, j11, 0L);
        } catch (IOException unused) {
            jjStopStringLiteralDfa_0(8, j10, j11, 0L);
            return 9;
        }
    }

    private int jjStartNfaWithStates_0(int pos, int kind, int state) {
        this.jjmatchedKind = kind;
        this.jjmatchedPos = pos;
        try {
            this.curChar = this.input_stream.readChar();
            return jjMoveNfa_0(state, pos + 1);
        } catch (IOException unused) {
            return pos + 1;
        }
    }

    private final int jjStartNfa_0(int pos, long active0, long active1, long active2) {
        return jjMoveNfa_0(jjStopStringLiteralDfa_0(pos, active0, active1, active2), pos + 1);
    }

    private final int jjStartNfa_3(int pos, long active0, long active1) {
        return jjMoveNfa_3(jjStopStringLiteralDfa_3(pos, active0, active1), pos + 1);
    }

    private int jjStopAtPos(int pos, int kind) {
        this.jjmatchedKind = kind;
        this.jjmatchedPos = pos;
        return pos + 1;
    }

    private final int jjStopStringLiteralDfa_0(int pos, long active0, long active1, long active2) {
        switch (pos) {
            case 0:
                if ((active1 & 2147483648L) != 0) {
                    return 152;
                }
                if ((active0 & (-2048)) != 0 || (active1 & Sg.b.f23266s) != 0) {
                    this.jjmatchedKind = 98;
                    return 153;
                }
                if ((active1 & 105553116266496L) != 0) {
                    return 2;
                }
                return ((active0 & 128) == 0 && (active2 & 4104) == 0) ? -1 : 67;
            case 1:
                if ((active1 & 2147483648L) != 0) {
                    if (this.jjmatchedPos != 1) {
                        this.jjmatchedKind = 94;
                        this.jjmatchedPos = 1;
                    }
                    return -1;
                }
                if ((active0 & 17205035008L) == 0 && (active1 & 64) == 0) {
                    if ((active0 & 128) != 0) {
                        return 69;
                    }
                    if ((active0 & (-17205037056L)) == 0 && (active1 & 65471) == 0) {
                        return -1;
                    }
                    if (this.jjmatchedPos != 1) {
                        this.jjmatchedKind = 98;
                        this.jjmatchedPos = 1;
                    }
                }
                return 153;
            case 2:
                if ((active0 & (-5244163459072L)) != 0 || (active1 & 65470) != 0) {
                    if (this.jjmatchedPos != 2) {
                        this.jjmatchedKind = 98;
                        this.jjmatchedPos = 2;
                    }
                    return 153;
                }
                if ((active1 & 2147483648L) == 0) {
                    return ((active0 & 5226975199232L) == 0 && (active1 & 1) == 0) ? -1 : 153;
                }
                if (this.jjmatchedPos < 1) {
                    this.jjmatchedKind = 94;
                    this.jjmatchedPos = 1;
                }
                return -1;
            case 3:
                if ((active0 & (-8646892584162721792L)) == 0 && (active1 & 34690) == 0) {
                    if ((active0 & 8646879093662054400L) == 0 && (active1 & 30780) == 0) {
                        if ((active0 & 8796093022208L) != 0 && this.jjmatchedPos < 2) {
                            this.jjmatchedKind = 98;
                            this.jjmatchedPos = 2;
                        }
                        return -1;
                    }
                    if (this.jjmatchedPos != 3) {
                        this.jjmatchedKind = 98;
                        this.jjmatchedPos = 3;
                    }
                }
                return 153;
            case 4:
                if ((active0 & 5107049782520592384L) != 0 || (active1 & 30756) != 0) {
                    if (this.jjmatchedPos != 4) {
                        this.jjmatchedKind = 98;
                        this.jjmatchedPos = 4;
                    }
                    return 153;
                }
                if ((active0 & 3539829311141462016L) != 0 || (active1 & 536) != 0) {
                    return 153;
                }
                if ((active0 & 8796093022208L) != 0 && this.jjmatchedPos < 2) {
                    this.jjmatchedKind = 98;
                    this.jjmatchedPos = 2;
                }
                return -1;
            case 5:
                if ((active0 & 4936473679948163072L) != 0 || (active1 & 28708) != 0) {
                    this.jjmatchedKind = 98;
                    this.jjmatchedPos = 5;
                    return 153;
                }
                if ((active0 & 2476419112859865088L) != 0 || (active1 & 2048) != 0) {
                    return 153;
                }
                if ((active0 & 8796093022208L) != 0 && this.jjmatchedPos < 2) {
                    this.jjmatchedKind = 98;
                    this.jjmatchedPos = 2;
                }
                return -1;
            case 6:
                if ((active0 & 246291816783872L) == 0 && (active1 & 4096) == 0) {
                    if ((active0 & 8796093022208L) != 0) {
                        if (this.jjmatchedPos < 2) {
                            this.jjmatchedKind = 98;
                            this.jjmatchedPos = 2;
                        }
                        return -1;
                    }
                    if ((active0 & 4936227388131379200L) == 0 && (active1 & 24612) == 0) {
                        return -1;
                    }
                    this.jjmatchedKind = 98;
                    this.jjmatchedPos = 6;
                }
                return 153;
            case 7:
                if ((active0 & 4900198591110316032L) != 0 || (active1 & 16384) != 0) {
                    this.jjmatchedKind = 98;
                    this.jjmatchedPos = 7;
                    return 153;
                }
                if ((active0 & 36028797021063168L) != 0 || (active1 & 8228) != 0) {
                    return 153;
                }
                if ((active0 & 8796093022208L) != 0 && this.jjmatchedPos < 2) {
                    this.jjmatchedKind = 98;
                    this.jjmatchedPos = 2;
                }
                return -1;
            case 8:
                if ((active0 & 4611968043159912448L) != 0) {
                    return 153;
                }
                if ((active0 & 288230547950403584L) != 0 || (active1 & 16384) != 0) {
                    this.jjmatchedKind = 98;
                    this.jjmatchedPos = 8;
                    return 153;
                }
                if ((active0 & 8796093022208L) != 0 && this.jjmatchedPos < 2) {
                    this.jjmatchedKind = 98;
                    this.jjmatchedPos = 2;
                }
                return -1;
            case 9:
                if ((active0 & 171798691840L) != 0 || (active1 & 16384) != 0) {
                    return 153;
                }
                if ((active0 & 288230376151711744L) != 0) {
                    this.jjmatchedKind = 98;
                    this.jjmatchedPos = 9;
                    return 153;
                }
                if ((active0 & 8796093022208L) != 0 && this.jjmatchedPos < 2) {
                    this.jjmatchedKind = 98;
                    this.jjmatchedPos = 2;
                }
                return -1;
            case 10:
                if ((active0 & 288230376151711744L) == 0) {
                    return -1;
                }
                this.jjmatchedKind = 98;
                this.jjmatchedPos = 10;
                return 153;
            default:
                return -1;
        }
    }

    private final int jjStopStringLiteralDfa_3(int pos, long active0, long active1) {
        if (pos == 0) {
            if ((active1 & 4294967296L) != 0) {
                this.jjmatchedKind = 97;
            }
            return -1;
        }
        if (pos == 1 && (active1 & 4294967296L) != 0 && this.jjmatchedPos == 0) {
            this.jjmatchedKind = 97;
            this.jjmatchedPos = 0;
        }
        return -1;
    }

    public void MoreLexicalActions() {
        int i10 = this.jjimageLen;
        int i11 = this.jjmatchedPos + 1;
        this.lengthOfMatch = i11;
        int i12 = i10 + i11;
        this.jjimageLen = i12;
        if (this.jjmatchedKind != 6) {
            return;
        }
        this.image.append(this.input_stream.getSuffix(i12));
        this.jjimageLen = 0;
        this.input_stream.backup(1);
    }

    public void ReInit(SimpleCharStream stream) {
        this.jjnewStateCnt = 0;
        this.jjmatchedPos = 0;
        this.curLexState = this.defaultLexState;
        this.input_stream = stream;
        ReInitRounds();
    }

    public void SkipLexicalActions(Token matchedToken) {
    }

    public void SwitchTo(int lexState) {
        if (lexState < 4 && lexState >= 0) {
            this.curLexState = lexState;
            return;
        }
        throw new TokenMgrException("Error: Ignoring invalid lexical state : " + lexState + ". State unchanged.", 2);
    }

    public void TokenLexicalActions(Token matchedToken) {
        int i10 = this.jjmatchedKind;
        if (i10 == 68) {
            StringBuilder sb2 = this.image;
            String[] strArr = jjstrLiteralImages;
            sb2.append(strArr[68]);
            this.lengthOfMatch = strArr[68].length();
            if (this.yieldSupported) {
                return;
            }
            matchedToken.kind = 98;
            return;
        }
        if (i10 == 148) {
            StringBuilder sb3 = this.image;
            String[] strArr2 = jjstrLiteralImages;
            sb3.append(strArr2[148]);
            this.lengthOfMatch = strArr2[148].length();
            matchedToken.kind = 150;
            matchedToken.realKind = 148;
            this.input_stream.backup(2);
            return;
        }
        if (i10 != 149) {
            return;
        }
        StringBuilder sb4 = this.image;
        String[] strArr3 = jjstrLiteralImages;
        sb4.append(strArr3[149]);
        this.lengthOfMatch = strArr3[149].length();
        matchedToken.kind = 150;
        matchedToken.realKind = 149;
        this.input_stream.backup(1);
    }

    public CommentsCollection getCommentsCollection() {
        return this.commentsCollection;
    }

    public JavaToken getHomeToken() {
        return this.homeToken;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00c1, code lost:
    
        if ((com.github.javaparser.GeneratedJavaParserTokenManager.jjtoSpecial[r11 >> 6] & (1 << (r11 & 63))) == 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00c3, code lost:
    
        r7 = jjFillToken();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00c7, code lost:
    
        if (r4 != null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ca, code lost:
    
        r7.specialToken = r4;
        r4.next = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ce, code lost:
    
        SkipLexicalActions(r7);
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00d6, code lost:
    
        r7 = com.github.javaparser.GeneratedJavaParserTokenManager.jjnewLexState[r20.jjmatchedKind];
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00dc, code lost:
    
        if (r7 == (-1)) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00de, code lost:
    
        r20.curLexState = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00d3, code lost:
    
        SkipLexicalActions(null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Token getNextToken() {
        int i10;
        int i11;
        boolean z10;
        String str;
        String str2 = null;
        int i12 = 0;
        Token token = null;
        int i13 = 0;
        loop0: while (true) {
            try {
                this.curChar = this.input_stream.beginToken();
                StringBuilder sb2 = this.jjimage;
                this.image = sb2;
                sb2.setLength(0);
                this.jjimageLen = 0;
                while (true) {
                    int i14 = this.curLexState;
                    if (i14 == 0) {
                        this.jjmatchedKind = Integer.MAX_VALUE;
                        this.jjmatchedPos = 0;
                        i13 = jjMoveStringLiteralDfa0_0();
                    } else if (i14 == 1) {
                        this.jjmatchedKind = Integer.MAX_VALUE;
                        this.jjmatchedPos = 0;
                        i13 = jjMoveStringLiteralDfa0_1();
                        if (this.jjmatchedPos == 0 && this.jjmatchedKind > 10) {
                            this.jjmatchedKind = 10;
                        }
                    } else if (i14 == 2) {
                        this.jjmatchedKind = Integer.MAX_VALUE;
                        this.jjmatchedPos = 0;
                        i13 = jjMoveStringLiteralDfa0_2();
                        if (this.jjmatchedPos == 0 && this.jjmatchedKind > 10) {
                            this.jjmatchedKind = 10;
                        }
                    } else if (i14 == 3) {
                        this.jjmatchedKind = Integer.MAX_VALUE;
                        this.jjmatchedPos = 0;
                        i13 = jjMoveStringLiteralDfa0_3();
                    }
                    if (this.jjmatchedKind == Integer.MAX_VALUE) {
                        break loop0;
                    }
                    int i15 = this.jjmatchedPos;
                    if (i15 + 1 < i13) {
                        this.input_stream.backup((i13 - i15) - 1);
                    }
                    long[] jArr = jjtoToken;
                    int i16 = this.jjmatchedKind;
                    if ((jArr[i16 >> 6] & (1 << (i16 & 63))) != 0) {
                        Token jjFillToken = jjFillToken();
                        jjFillToken.specialToken = token;
                        TokenLexicalActions(jjFillToken);
                        int i17 = jjnewLexState[this.jjmatchedKind];
                        if (i17 != -1) {
                            this.curLexState = i17;
                        }
                        CommonTokenAction(jjFillToken);
                        return jjFillToken;
                    }
                    if ((jjtoSkip[i16 >> 6] & (1 << (i16 & 63))) != 0) {
                        break;
                    }
                    MoreLexicalActions();
                    int i18 = jjnewLexState[this.jjmatchedKind];
                    if (i18 != -1) {
                        this.curLexState = i18;
                    }
                    this.jjmatchedKind = Integer.MAX_VALUE;
                    try {
                        this.curChar = this.input_stream.readChar();
                        i13 = 0;
                    } catch (IOException unused) {
                        i13 = 0;
                    }
                }
            } catch (Exception unused2) {
                this.jjmatchedKind = 0;
                this.jjmatchedPos = -1;
                Token jjFillToken2 = jjFillToken();
                jjFillToken2.specialToken = token;
                CommonTokenAction(jjFillToken2);
                return jjFillToken2;
            }
        }
        int endLine = this.input_stream.getEndLine();
        int endColumn = this.input_stream.getEndColumn();
        try {
            this.input_stream.readChar();
            this.input_stream.backup(1);
            z10 = false;
            i11 = endLine;
            i10 = endColumn;
        } catch (IOException unused3) {
            str2 = i13 <= 1 ? "" : this.input_stream.getImage();
            int i19 = this.curChar;
            if (i19 == 10 || i19 == 13) {
                endLine++;
            } else {
                i12 = endColumn + 1;
            }
            i10 = i12;
            i11 = endLine;
            z10 = true;
        }
        if (z10) {
            str = str2;
        } else {
            this.input_stream.backup(1);
            str = i13 > 1 ? this.input_stream.getImage() : "";
        }
        throw new TokenMgrException(z10, this.curLexState, i11, i10, str, this.curChar, 0);
    }

    public List<JavaToken> getTokens() {
        if (this.storeTokens) {
            return this.tokens;
        }
        return null;
    }

    public Token jjFillToken() {
        String str = jjstrLiteralImages[this.jjmatchedKind];
        if (str == null) {
            str = this.input_stream.getImage();
        }
        int beginLine = this.input_stream.getBeginLine();
        int beginColumn = this.input_stream.getBeginColumn();
        int endLine = this.input_stream.getEndLine();
        int endColumn = this.input_stream.getEndColumn();
        Token newToken = Token.newToken(this.jjmatchedKind);
        newToken.kind = this.jjmatchedKind;
        newToken.image = str;
        newToken.beginLine = beginLine;
        newToken.endLine = endLine;
        newToken.beginColumn = beginColumn;
        newToken.endColumn = endColumn;
        return newToken;
    }

    public void reset() {
        this.tokens = new ArrayList();
        this.commentsCollection = new CommentsCollection();
        this.homeToken = null;
    }

    public void setStoreTokens(boolean storeTokens) {
        this.storeTokens = storeTokens;
    }

    public void setYieldSupported() {
        this.yieldSupported = true;
    }

    public void ReInit(SimpleCharStream stream, int lexState) {
        ReInit(stream);
        SwitchTo(lexState);
    }

    public GeneratedJavaParserTokenManager(SimpleCharStream stream, int lexState) {
        this.tokens = new ArrayList();
        this.commentsCollection = new CommentsCollection();
        this.tokenWorkStack = new Stack<>();
        this.yieldSupported = false;
        this.curLexState = 0;
        this.defaultLexState = 0;
        this.jjrounds = new int[152];
        this.jjstateSet = new int[304];
        StringBuilder sb2 = new StringBuilder();
        this.jjimage = sb2;
        this.image = sb2;
        ReInit(stream);
        SwitchTo(lexState);
    }
}
