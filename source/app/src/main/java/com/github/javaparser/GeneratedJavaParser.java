package com.github.javaparser;

import android.opengl.GLES20;
import com.github.javaparser.ast.CompilationUnit;
import com.github.javaparser.ast.ImportDeclaration;
import com.github.javaparser.ast.Modifier;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.NodeList;
import com.github.javaparser.ast.PackageDeclaration;
import com.github.javaparser.ast.body.AnnotationDeclaration;
import com.github.javaparser.ast.body.AnnotationMemberDeclaration;
import com.github.javaparser.ast.body.BodyDeclaration;
import com.github.javaparser.ast.body.ClassOrInterfaceDeclaration;
import com.github.javaparser.ast.body.CompactConstructorDeclaration;
import com.github.javaparser.ast.body.ConstructorDeclaration;
import com.github.javaparser.ast.body.EnumConstantDeclaration;
import com.github.javaparser.ast.body.EnumDeclaration;
import com.github.javaparser.ast.body.FieldDeclaration;
import com.github.javaparser.ast.body.InitializerDeclaration;
import com.github.javaparser.ast.body.MethodDeclaration;
import com.github.javaparser.ast.body.Parameter;
import com.github.javaparser.ast.body.ReceiverParameter;
import com.github.javaparser.ast.body.RecordDeclaration;
import com.github.javaparser.ast.body.TypeDeclaration;
import com.github.javaparser.ast.body.VariableDeclarator;
import com.github.javaparser.ast.expr.AnnotationExpr;
import com.github.javaparser.ast.expr.ArrayAccessExpr;
import com.github.javaparser.ast.expr.ArrayCreationExpr;
import com.github.javaparser.ast.expr.ArrayInitializerExpr;
import com.github.javaparser.ast.expr.AssignExpr;
import com.github.javaparser.ast.expr.BinaryExpr;
import com.github.javaparser.ast.expr.BooleanLiteralExpr;
import com.github.javaparser.ast.expr.CastExpr;
import com.github.javaparser.ast.expr.CharLiteralExpr;
import com.github.javaparser.ast.expr.ClassExpr;
import com.github.javaparser.ast.expr.ConditionalExpr;
import com.github.javaparser.ast.expr.DoubleLiteralExpr;
import com.github.javaparser.ast.expr.EnclosedExpr;
import com.github.javaparser.ast.expr.Expression;
import com.github.javaparser.ast.expr.FieldAccessExpr;
import com.github.javaparser.ast.expr.InstanceOfExpr;
import com.github.javaparser.ast.expr.IntegerLiteralExpr;
import com.github.javaparser.ast.expr.LambdaExpr;
import com.github.javaparser.ast.expr.LongLiteralExpr;
import com.github.javaparser.ast.expr.MarkerAnnotationExpr;
import com.github.javaparser.ast.expr.MemberValuePair;
import com.github.javaparser.ast.expr.MethodCallExpr;
import com.github.javaparser.ast.expr.MethodReferenceExpr;
import com.github.javaparser.ast.expr.Name;
import com.github.javaparser.ast.expr.NameExpr;
import com.github.javaparser.ast.expr.NormalAnnotationExpr;
import com.github.javaparser.ast.expr.NullLiteralExpr;
import com.github.javaparser.ast.expr.ObjectCreationExpr;
import com.github.javaparser.ast.expr.PatternExpr;
import com.github.javaparser.ast.expr.RecordPatternExpr;
import com.github.javaparser.ast.expr.SimpleName;
import com.github.javaparser.ast.expr.SingleMemberAnnotationExpr;
import com.github.javaparser.ast.expr.StringLiteralExpr;
import com.github.javaparser.ast.expr.SuperExpr;
import com.github.javaparser.ast.expr.SwitchExpr;
import com.github.javaparser.ast.expr.TextBlockLiteralExpr;
import com.github.javaparser.ast.expr.ThisExpr;
import com.github.javaparser.ast.expr.TypeExpr;
import com.github.javaparser.ast.expr.TypePatternExpr;
import com.github.javaparser.ast.expr.UnaryExpr;
import com.github.javaparser.ast.expr.VariableDeclarationExpr;
import com.github.javaparser.ast.modules.ModuleDeclaration;
import com.github.javaparser.ast.modules.ModuleDirective;
import com.github.javaparser.ast.modules.ModuleExportsDirective;
import com.github.javaparser.ast.modules.ModuleOpensDirective;
import com.github.javaparser.ast.modules.ModuleProvidesDirective;
import com.github.javaparser.ast.modules.ModuleRequiresDirective;
import com.github.javaparser.ast.modules.ModuleUsesDirective;
import com.github.javaparser.ast.stmt.AssertStmt;
import com.github.javaparser.ast.stmt.BlockStmt;
import com.github.javaparser.ast.stmt.BreakStmt;
import com.github.javaparser.ast.stmt.CatchClause;
import com.github.javaparser.ast.stmt.ContinueStmt;
import com.github.javaparser.ast.stmt.DoStmt;
import com.github.javaparser.ast.stmt.EmptyStmt;
import com.github.javaparser.ast.stmt.ExplicitConstructorInvocationStmt;
import com.github.javaparser.ast.stmt.ExpressionStmt;
import com.github.javaparser.ast.stmt.ForEachStmt;
import com.github.javaparser.ast.stmt.ForStmt;
import com.github.javaparser.ast.stmt.IfStmt;
import com.github.javaparser.ast.stmt.LabeledStmt;
import com.github.javaparser.ast.stmt.LocalClassDeclarationStmt;
import com.github.javaparser.ast.stmt.LocalRecordDeclarationStmt;
import com.github.javaparser.ast.stmt.ReturnStmt;
import com.github.javaparser.ast.stmt.Statement;
import com.github.javaparser.ast.stmt.SwitchEntry;
import com.github.javaparser.ast.stmt.SwitchStmt;
import com.github.javaparser.ast.stmt.SynchronizedStmt;
import com.github.javaparser.ast.stmt.ThrowStmt;
import com.github.javaparser.ast.stmt.TryStmt;
import com.github.javaparser.ast.stmt.UnparsableStmt;
import com.github.javaparser.ast.stmt.WhileStmt;
import com.github.javaparser.ast.stmt.YieldStmt;
import com.github.javaparser.ast.type.ArrayType;
import com.github.javaparser.ast.type.ClassOrInterfaceType;
import com.github.javaparser.ast.type.IntersectionType;
import com.github.javaparser.ast.type.PrimitiveType;
import com.github.javaparser.ast.type.ReferenceType;
import com.github.javaparser.ast.type.Type;
import com.github.javaparser.ast.type.TypeParameter;
import com.github.javaparser.ast.type.UnionType;
import com.github.javaparser.ast.type.UnknownType;
import com.github.javaparser.ast.type.VoidType;
import com.github.javaparser.ast.type.WildcardType;
import com.github.javaparser.utils.Pair;
import com.jme3.audio.openal.AL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class GeneratedJavaParser extends GeneratedJavaParserBase implements GeneratedJavaParserConstants {
    private static int[] jj_la1_0;
    private static int[] jj_la1_1;
    private static int[] jj_la1_2;
    private static int[] jj_la1_3;
    private static int[] jj_la1_4;
    private final JJCalls[] jj_2_rtns;
    private int jj_endpos;
    private List<int[]> jj_expentries;
    private int[] jj_expentry;
    private int jj_gc;
    private int jj_gen;
    SimpleCharStream jj_input_stream;
    private int jj_kind;
    private int jj_la;
    private final int[] jj_la1;
    private Token jj_lastpos;
    private int[] jj_lasttokens;
    private boolean jj_lookingAhead;
    private final LookaheadSuccess jj_ls;
    public Token jj_nt;
    private int jj_ntk;
    private boolean jj_rescan;
    private Token jj_scanpos;
    private boolean jj_semLA;
    public Token token;
    public GeneratedJavaParserTokenManager token_source;

    public static final class JJCalls {
        int arg;
        Token first;
        int gen;
        JJCalls next;
    }

    public static final class LookaheadSuccess extends IllegalStateException {
        private LookaheadSuccess() {
        }
    }

    static {
        jj_la1_init_0();
        jj_la1_init_1();
        jj_la1_init_2();
        jj_la1_init_3();
        jj_la1_init_4();
    }

    public GeneratedJavaParser(final Provider stream) {
        int i10 = 0;
        this.jj_lookingAhead = false;
        this.jj_la1 = new int[188];
        this.jj_2_rtns = new JJCalls[75];
        this.jj_rescan = false;
        this.jj_gc = 0;
        this.jj_ls = new LookaheadSuccess();
        this.jj_expentries = new ArrayList();
        this.jj_kind = -1;
        this.jj_lasttokens = new int[100];
        this.jj_input_stream = new SimpleCharStream(stream, 1, 1);
        this.token_source = new GeneratedJavaParserTokenManager(this.jj_input_stream);
        this.token = new Token();
        this.jj_ntk = -1;
        this.jj_gen = 0;
        for (int i11 = 0; i11 < 188; i11++) {
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

    private boolean jj_2_1(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_1();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(0, xla);
        }
    }

    private boolean jj_2_10(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_10();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(9, xla);
        }
    }

    private boolean jj_2_11(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_11();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(10, xla);
        }
    }

    private boolean jj_2_12(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_12();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(11, xla);
        }
    }

    private boolean jj_2_13(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_13();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(12, xla);
        }
    }

    private boolean jj_2_14(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_14();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(13, xla);
        }
    }

    private boolean jj_2_15(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_15();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(14, xla);
        }
    }

    private boolean jj_2_16(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_16();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(15, xla);
        }
    }

    private boolean jj_2_17(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_17();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(16, xla);
        }
    }

    private boolean jj_2_18(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_18();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(17, xla);
        }
    }

    private boolean jj_2_19(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_19();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(18, xla);
        }
    }

    private boolean jj_2_2(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return !jj_3_2();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(1, xla);
        }
    }

    private boolean jj_2_20(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_20();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(19, xla);
        }
    }

    private boolean jj_2_21(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_21();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(20, xla);
        }
    }

    private boolean jj_2_22(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_22();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(21, xla);
        }
    }

    private boolean jj_2_23(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_23();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(22, xla);
        }
    }

    private boolean jj_2_24(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_24();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(23, xla);
        }
    }

    private boolean jj_2_25(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_25();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(24, xla);
        }
    }

    private boolean jj_2_26(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_26();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(25, xla);
        }
    }

    private boolean jj_2_27(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_27();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(26, xla);
        }
    }

    private boolean jj_2_28(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_28();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(27, xla);
        }
    }

    private boolean jj_2_29(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_29();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(28, xla);
        }
    }

    private boolean jj_2_3(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_3();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(2, xla);
        }
    }

    private boolean jj_2_30(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_30();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(29, xla);
        }
    }

    private boolean jj_2_31(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_31();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(30, xla);
        }
    }

    private boolean jj_2_32(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_32();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(31, xla);
        }
    }

    private boolean jj_2_33(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_33();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(32, xla);
        }
    }

    private boolean jj_2_34(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_34();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(33, xla);
        }
    }

    private boolean jj_2_35(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_35();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(34, xla);
        }
    }

    private boolean jj_2_36(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_36();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(35, xla);
        }
    }

    private boolean jj_2_37(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_37();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(36, xla);
        }
    }

    private boolean jj_2_38(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_38();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(37, xla);
        }
    }

    private boolean jj_2_39(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_39();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(38, xla);
        }
    }

    private boolean jj_2_4(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_4();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(3, xla);
        }
    }

    private boolean jj_2_40(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_40();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(39, xla);
        }
    }

    private boolean jj_2_41(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_41();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(40, xla);
        }
    }

    private boolean jj_2_42(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_42();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(41, xla);
        }
    }

    private boolean jj_2_43(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_43();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(42, xla);
        }
    }

    private boolean jj_2_44(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_44();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(43, xla);
        }
    }

    private boolean jj_2_45(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_45();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(44, xla);
        }
    }

    private boolean jj_2_46(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_46();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(45, xla);
        }
    }

    private boolean jj_2_47(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_47();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(46, xla);
        }
    }

    private boolean jj_2_48(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_48();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(47, xla);
        }
    }

    private boolean jj_2_49(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_49();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(48, xla);
        }
    }

    private boolean jj_2_5(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_5();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(4, xla);
        }
    }

    private boolean jj_2_50(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_50();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(49, xla);
        }
    }

    private boolean jj_2_51(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_51();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(50, xla);
        }
    }

    private boolean jj_2_52(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_52();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(51, xla);
        }
    }

    private boolean jj_2_53(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_53();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(52, xla);
        }
    }

    private boolean jj_2_54(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_54();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(53, xla);
        }
    }

    private boolean jj_2_55(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_55();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(54, xla);
        }
    }

    private boolean jj_2_56(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_56();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(55, xla);
        }
    }

    private boolean jj_2_57(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_57();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(56, xla);
        }
    }

    private boolean jj_2_58(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_58();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(57, xla);
        }
    }

    private boolean jj_2_59(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_59();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(58, xla);
        }
    }

    private boolean jj_2_6(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_6();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(5, xla);
        }
    }

    private boolean jj_2_60(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_60();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(59, xla);
        }
    }

    private boolean jj_2_61(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_61();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(60, xla);
        }
    }

    private boolean jj_2_62(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_62();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(61, xla);
        }
    }

    private boolean jj_2_63(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_63();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(62, xla);
        }
    }

    private boolean jj_2_64(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_64();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(63, xla);
        }
    }

    private boolean jj_2_65(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_65();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(64, xla);
        }
    }

    private boolean jj_2_66(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_66();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(65, xla);
        }
    }

    private boolean jj_2_67(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_67();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(66, xla);
        }
    }

    private boolean jj_2_68(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_68();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(67, xla);
        }
    }

    private boolean jj_2_69(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_69();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(68, xla);
        }
    }

    private boolean jj_2_7(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_7();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(6, xla);
        }
    }

    private boolean jj_2_70(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_70();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(69, xla);
        }
    }

    private boolean jj_2_71(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_71();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(70, xla);
        }
    }

    private boolean jj_2_72(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_72();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(71, xla);
        }
    }

    private boolean jj_2_73(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_73();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(72, xla);
        }
    }

    private boolean jj_2_74(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_74();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(73, xla);
        }
    }

    private boolean jj_2_75(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_75();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(74, xla);
        }
    }

    private boolean jj_2_8(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_8();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(7, xla);
        }
    }

    private boolean jj_2_9(int xla) {
        this.jj_la = xla;
        Token token = this.token;
        this.jj_scanpos = token;
        this.jj_lastpos = token;
        try {
            return true ^ jj_3_9();
        } catch (LookaheadSuccess unused) {
            return true;
        } finally {
            jj_save(8, xla);
        }
    }

    private boolean jj_3R_100() {
        return jj_3R_114() || jj_3R_102() || jj_scan_token(105);
    }

    private boolean jj_3R_101() {
        return jj_3R_158();
    }

    private boolean jj_3R_102() {
        Token token;
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_159());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_103() {
        if (jj_scan_token(114)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_160()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(150);
    }

    private boolean jj_3R_104() {
        Token token = this.jj_scanpos;
        if (!jj_3R_161()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_162()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_163()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_164()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_165()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_166()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_167()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_168()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_169()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_170()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_171()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_172();
    }

    private boolean jj_3R_105() {
        if (jj_3R_173()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_238()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_106() {
        return jj_3R_126() || jj_3R_85() || jj_3R_89();
    }

    private boolean jj_3R_107() {
        Token token = this.jj_scanpos;
        if (!jj_3R_174()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_175();
    }

    private boolean jj_3R_108() {
        return jj_scan_token(136);
    }

    private boolean jj_3R_109() {
        this.jj_lookingAhead = true;
        boolean z10 = getToken(1).kind == 150 && getToken(1).realKind == 149;
        this.jj_semLA = z10;
        this.jj_lookingAhead = false;
        return !z10 || jj_3R_176() || jj_scan_token(150) || jj_scan_token(150);
    }

    private boolean jj_3R_110() {
        this.jj_lookingAhead = true;
        boolean z10 = getToken(1).kind == 150 && getToken(1).realKind == 148;
        this.jj_semLA = z10;
        this.jj_lookingAhead = false;
        return !z10 || jj_3R_177() || jj_scan_token(150) || jj_scan_token(150) || jj_scan_token(150);
    }

    private boolean jj_3R_111() {
        if (jj_scan_token(101) || jj_3R_102()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3_41()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_178();
    }

    private boolean jj_3R_112() {
        return jj_scan_token(126);
    }

    private boolean jj_3R_113() {
        return jj_scan_token(127);
    }

    private boolean jj_3R_114() {
        Token token = this.jj_scanpos;
        if (!jj_3R_179()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_180()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_181()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_182()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_183()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_184()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_185()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_186();
    }

    private boolean jj_3R_115() {
        Token token = this.jj_scanpos;
        if (!jj_3_48()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_187();
    }

    private boolean jj_3R_116() {
        Token token = this.jj_scanpos;
        if (!jj_3R_188()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_189();
    }

    private boolean jj_3R_117() {
        if (jj_3R_126() || jj_3R_85()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_190()) {
            this.jj_scanpos = token;
        }
        return jj_3R_118();
    }

    private boolean jj_3R_118() {
        Token token;
        if (jj_3R_89()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_191());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_119() {
        Token token = this.jj_scanpos;
        if (!jj_3R_192()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_193();
    }

    private boolean jj_3R_120() {
        return jj_3R_102() || jj_3R_85();
    }

    private boolean jj_3R_121() {
        return jj_3R_103();
    }

    private boolean jj_3R_122() {
        Token token;
        if (jj_scan_token(103)) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_194());
        this.jj_scanpos = token;
        return jj_scan_token(104);
    }

    private boolean jj_3R_123() {
        return jj_3R_105();
    }

    private boolean jj_3R_124() {
        return jj_3R_89() || jj_scan_token(118) || jj_3R_228();
    }

    private boolean jj_3R_125() {
        return jj_scan_token(68) || jj_3R_105() || jj_scan_token(107);
    }

    private boolean jj_3R_126() {
        Token token;
        do {
            token = this.jj_scanpos;
        } while (!jj_3_3());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_127() {
        return jj_3R_139();
    }

    private boolean jj_3R_128() {
        Token token;
        if (jj_3R_126() || jj_3R_85() || jj_3R_132()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_195());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_129() {
        return jj_scan_token(126) || jj_3R_196();
    }

    private boolean jj_3R_130() {
        return jj_scan_token(44);
    }

    private boolean jj_3R_131() {
        Token token = this.jj_scanpos;
        if (!jj_3R_197()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_198();
    }

    private boolean jj_3R_132() {
        if (jj_3R_118()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_199()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_133() {
        return jj_3R_83() || jj_scan_token(113);
    }

    private boolean jj_3R_134() {
        Token token = this.jj_scanpos;
        if (!jj_3R_200()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_201()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_202();
    }

    private boolean jj_3R_135() {
        if (jj_scan_token(50) || jj_3R_89()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_203()) {
            this.jj_scanpos = token;
        }
        if (jj_3R_91()) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (jj_3R_204()) {
            this.jj_scanpos = token2;
        }
        return jj_3R_205();
    }

    private boolean jj_3R_136() {
        return jj_3R_137();
    }

    private boolean jj_3R_137() {
        if (jj_scan_token(111) || jj_3R_96()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_247()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_248()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_249();
    }

    private boolean jj_3R_138() {
        return jj_3R_137();
    }

    private boolean jj_3R_139() {
        Token token;
        if (jj_scan_token(114) || jj_3R_102() || jj_3R_206()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_207());
        this.jj_scanpos = token;
        return jj_scan_token(150);
    }

    private boolean jj_3R_140() {
        return jj_3R_208();
    }

    private boolean jj_3R_141() {
        return jj_3R_114();
    }

    private boolean jj_3R_142() {
        return jj_3R_102() || jj_scan_token(105) || jj_scan_token(106);
    }

    private boolean jj_3R_143() {
        return jj_scan_token(54);
    }

    private boolean jj_3R_144() {
        return jj_scan_token(103) || jj_3R_209() || jj_scan_token(104);
    }

    private boolean jj_3R_145() {
        Token token = this.jj_scanpos;
        if (jj_3R_210()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(59) || jj_3R_211() || jj_scan_token(107);
    }

    private boolean jj_3R_146() {
        Token token = this.jj_scanpos;
        if (jj_3R_212()) {
            this.jj_scanpos = token;
        }
        Token token2 = this.jj_scanpos;
        if (jj_3R_213()) {
            this.jj_scanpos = token2;
        }
        return jj_scan_token(56) || jj_3R_211() || jj_scan_token(107);
    }

    private boolean jj_3R_147() {
        Token token;
        Token token2 = this.jj_scanpos;
        if (jj_3R_214()) {
            this.jj_scanpos = token2;
            if (jj_3R_215()) {
                return true;
            }
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_216());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_148() {
        return jj_3R_217();
    }

    private boolean jj_3R_149() {
        return jj_3R_105();
    }

    private boolean jj_3R_150() {
        Token token = this.jj_scanpos;
        if (jj_3R_218()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(59);
    }

    private boolean jj_3R_151() {
        Token token = this.jj_scanpos;
        if (!jj_3R_219()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_220()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_221()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_222()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_223()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_224()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_225()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_226();
    }

    private boolean jj_3R_152() {
        return jj_3R_116();
    }

    private boolean jj_3R_153() {
        return jj_3R_126() || jj_3R_227();
    }

    private boolean jj_3R_154() {
        return jj_3R_126() || jj_3R_135();
    }

    private boolean jj_3R_155() {
        return jj_3R_125();
    }

    private boolean jj_3R_156() {
        return jj_3R_128() || jj_scan_token(107);
    }

    private boolean jj_3R_157() {
        return jj_3R_228();
    }

    private boolean jj_3R_158() {
        Token token;
        if (jj_3R_89()) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (jj_3_29()) {
            this.jj_scanpos = token2;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3_30());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_159() {
        return jj_3R_137();
    }

    private boolean jj_3R_160() {
        Token token;
        if (jj_3R_229()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_265());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_161() {
        return jj_scan_token(113);
    }

    private boolean jj_3R_162() {
        return jj_scan_token(139);
    }

    private boolean jj_3R_163() {
        return jj_scan_token(140);
    }

    private boolean jj_3R_164() {
        return jj_scan_token(144);
    }

    private boolean jj_3R_165() {
        return jj_scan_token(137);
    }

    private boolean jj_3R_166() {
        return jj_scan_token(138);
    }

    private boolean jj_3R_167() {
        return jj_scan_token(145);
    }

    private boolean jj_3R_168() {
        return jj_scan_token(146);
    }

    private boolean jj_3R_169() {
        return jj_scan_token(147);
    }

    private boolean jj_3R_170() {
        return jj_scan_token(141);
    }

    private boolean jj_3R_171() {
        return jj_scan_token(143);
    }

    private boolean jj_3R_172() {
        return jj_scan_token(142);
    }

    private boolean jj_3R_173() {
        if (jj_3R_230()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_295()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_174() {
        return jj_3R_106();
    }

    private boolean jj_3R_175() {
        return jj_3R_231();
    }

    private boolean jj_3R_176() {
        return false;
    }

    private boolean jj_3R_177() {
        return false;
    }

    private boolean jj_3R_178() {
        Token token;
        if (jj_3R_208()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_232());
        this.jj_scanpos = token;
        return jj_scan_token(102) || jj_3R_233();
    }

    private boolean jj_3R_179() {
        return jj_scan_token(13);
    }

    private boolean jj_3R_180() {
        return jj_scan_token(18);
    }

    private boolean jj_3R_181() {
        return jj_scan_token(15);
    }

    private boolean jj_3R_182() {
        return jj_scan_token(53);
    }

    private boolean jj_3R_183() {
        return jj_scan_token(38);
    }

    private boolean jj_3R_184() {
        return jj_scan_token(40);
    }

    private boolean jj_3R_185() {
        return jj_scan_token(31);
    }

    private boolean jj_3R_186() {
        return jj_scan_token(24);
    }

    private boolean jj_3R_187() {
        return jj_scan_token(109) || jj_scan_token(56);
    }

    private boolean jj_3R_188() {
        if (jj_scan_token(109)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_234()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_235()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_236();
    }

    private boolean jj_3R_189() {
        return jj_scan_token(105) || jj_3R_105() || jj_scan_token(106);
    }

    private boolean jj_3R_190() {
        return jj_3R_102() || jj_scan_token(110);
    }

    private boolean jj_3R_191() {
        return jj_3R_142();
    }

    private boolean jj_3R_192() {
        return jj_scan_token(65);
    }

    private boolean jj_3R_193() {
        return jj_3R_85();
    }

    private boolean jj_3R_194() {
        Token token = this.jj_scanpos;
        if (!jj_3R_237()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_scan_token(107);
    }

    private boolean jj_3R_195() {
        return jj_scan_token(108) || jj_3R_132();
    }

    private boolean jj_3R_196() {
        Token token = this.jj_scanpos;
        if (!jj_3R_239()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_240()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_241()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_242();
    }

    private boolean jj_3R_197() {
        return jj_3R_128();
    }

    private boolean jj_3R_198() {
        return jj_3R_243();
    }

    private boolean jj_3R_199() {
        return jj_scan_token(113) || jj_3R_94();
    }

    private boolean jj_3R_200() {
        return jj_3R_137();
    }

    private boolean jj_3R_201() {
        return jj_3R_244();
    }

    private boolean jj_3R_202() {
        return jj_3R_173();
    }

    private boolean jj_3R_203() {
        return jj_3R_139();
    }

    private boolean jj_3R_204() {
        return jj_3R_245();
    }

    private boolean jj_3R_205() {
        Token token;
        if (jj_scan_token(103)) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_246());
        this.jj_scanpos = token;
        return jj_scan_token(104);
    }

    private boolean jj_3R_206() {
        if (jj_3R_89()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_250()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_207() {
        return jj_scan_token(108) || jj_3R_102() || jj_3R_206();
    }

    private boolean jj_3R_208() {
        Token token = this.jj_scanpos;
        if (!jj_3R_251()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_252();
    }

    private boolean jj_3R_209() {
        Token token;
        do {
            token = this.jj_scanpos;
        } while (!jj_3_25());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_210() {
        return jj_3R_103();
    }

    private boolean jj_3R_211() {
        if (jj_scan_token(101)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_253()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(102);
    }

    private boolean jj_3R_212() {
        return jj_3R_97() || jj_scan_token(109);
    }

    private boolean jj_3R_213() {
        return jj_3R_103();
    }

    private boolean jj_3R_214() {
        return jj_3R_95();
    }

    private boolean jj_3R_215() {
        return jj_3R_117();
    }

    private boolean jj_3R_216() {
        return jj_scan_token(108) || jj_3R_117();
    }

    private boolean jj_3R_217() {
        if (jj_scan_token(103)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_386()) {
            this.jj_scanpos = token;
        }
        Token token2 = this.jj_scanpos;
        if (jj_scan_token(108)) {
            this.jj_scanpos = token2;
        }
        return jj_scan_token(104);
    }

    private boolean jj_3R_218() {
        return jj_3R_96() || jj_scan_token(109);
    }

    private boolean jj_3R_219() {
        return jj_3R_254();
    }

    private boolean jj_3R_220() {
        return jj_scan_token(59);
    }

    private boolean jj_3R_221() {
        if (jj_scan_token(56)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_255()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_256();
    }

    private boolean jj_3R_222() {
        if (jj_scan_token(101)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_257()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_258()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_259()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_260();
    }

    private boolean jj_3R_223() {
        return jj_3R_261();
    }

    private boolean jj_3R_224() {
        return jj_3R_119() || jj_scan_token(109) || jj_scan_token(19);
    }

    private boolean jj_3R_225() {
        if (jj_3R_120() || jj_scan_token(112)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_262()) {
            this.jj_scanpos = token;
        }
        Token token2 = this.jj_scanpos;
        if (!jj_3R_263()) {
            return false;
        }
        this.jj_scanpos = token2;
        return jj_scan_token(42);
    }

    private boolean jj_3R_226() {
        if (jj_3R_89()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_264()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_227() {
        Token token = this.jj_scanpos;
        if (jj_3R_266()) {
            this.jj_scanpos = token;
            if (jj_3R_267()) {
                return true;
            }
        }
        if (jj_3R_89()) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (jj_3R_304()) {
            this.jj_scanpos = token2;
        }
        Token token3 = this.jj_scanpos;
        if (jj_3R_305()) {
            this.jj_scanpos = token3;
        }
        Token token4 = this.jj_scanpos;
        if (jj_3R_306()) {
            this.jj_scanpos = token4;
        }
        Token token5 = this.jj_scanpos;
        if (jj_3R_307()) {
            this.jj_scanpos = token5;
        }
        return jj_3R_122();
    }

    private boolean jj_3R_228() {
        Token token = this.jj_scanpos;
        if (!jj_3_52()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_268()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3_53()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_269()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_270()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_271()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_272()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_273()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_274()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_275()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_276()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_277()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_278()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_279()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_280()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_281()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_282();
    }

    private boolean jj_3R_229() {
        if (jj_3R_102()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_283()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_284();
    }

    private boolean jj_3R_230() {
        Token token;
        if (jj_3R_285()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_352());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_231() {
        return jj_3R_126() || jj_3R_208() || jj_3R_286();
    }

    private boolean jj_3R_232() {
        return jj_scan_token(132) || jj_3R_287();
    }

    private boolean jj_3R_233() {
        Token token = this.jj_scanpos;
        if (!jj_3R_288()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_289()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_290()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_291();
    }

    private boolean jj_3R_234() {
        return jj_scan_token(59);
    }

    private boolean jj_3R_235() {
        return jj_3R_261();
    }

    private boolean jj_3R_236() {
        Token token = this.jj_scanpos;
        if (jj_3R_292()) {
            this.jj_scanpos = token;
        }
        if (jj_3R_89()) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (!jj_3R_293()) {
            return false;
        }
        this.jj_scanpos = token2;
        return false;
    }

    private boolean jj_3R_237() {
        return jj_3R_294();
    }

    private boolean jj_3R_238() {
        Token token = this.jj_scanpos;
        if (!jj_3_33()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_296()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_297();
    }

    private boolean jj_3R_239() {
        return jj_3R_129();
    }

    private boolean jj_3R_240() {
        return jj_3R_298();
    }

    private boolean jj_3R_241() {
        Token token = this.jj_scanpos;
        if (jj_3R_299()) {
            this.jj_scanpos = token;
            if (jj_3R_300()) {
                return true;
            }
        }
        return jj_3R_196();
    }

    private boolean jj_3R_242() {
        return jj_3R_233();
    }

    private boolean jj_3R_243() {
        Token token;
        if (jj_3R_151()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3_42());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_244() {
        if (jj_scan_token(103)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_416()) {
            this.jj_scanpos = token;
        }
        Token token2 = this.jj_scanpos;
        if (jj_scan_token(108)) {
            this.jj_scanpos = token2;
        }
        return jj_scan_token(104);
    }

    private boolean jj_3R_245() {
        Token token;
        if (jj_scan_token(35) || jj_3R_301()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_302());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_246() {
        Token token = this.jj_scanpos;
        if (!jj_3R_303()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_scan_token(107);
    }

    private boolean jj_3R_247() {
        if (jj_scan_token(101)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_308()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(102);
    }

    private boolean jj_3R_248() {
        return jj_scan_token(101) || jj_3R_134() || jj_scan_token(102);
    }

    private boolean jj_3R_249() {
        return false;
    }

    private boolean jj_3R_250() {
        return jj_3R_309();
    }

    private boolean jj_3R_251() {
        Token token;
        if (jj_3R_114() || jj_3R_310()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_310());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_252() {
        Token token;
        if (jj_3R_158()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_311());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_253() {
        return jj_3R_312();
    }

    private boolean jj_3R_254() {
        Token token = this.jj_scanpos;
        if (!jj_3R_313()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_314()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_315()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_316()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_317()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_318()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_319()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_320();
    }

    private boolean jj_3R_255() {
        if (jj_scan_token(109)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_321()) {
            this.jj_scanpos = token;
        }
        if (jj_3R_89()) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (!jj_3R_322()) {
            return false;
        }
        this.jj_scanpos = token2;
        return false;
    }

    private boolean jj_3R_256() {
        if (jj_scan_token(112)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_323()) {
            this.jj_scanpos = token;
        }
        Token token2 = this.jj_scanpos;
        if (!jj_3R_324()) {
            return false;
        }
        this.jj_scanpos = token2;
        return jj_scan_token(42);
    }

    private boolean jj_3R_257() {
        return jj_scan_token(102);
    }

    private boolean jj_3R_258() {
        return jj_3R_325() || jj_scan_token(102);
    }

    private boolean jj_3R_259() {
        return jj_3R_326() || jj_scan_token(102);
    }

    private boolean jj_3R_260() {
        return jj_3R_105() || jj_scan_token(102);
    }

    private boolean jj_3R_261() {
        if (jj_scan_token(42)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_327()) {
            this.jj_scanpos = token;
        }
        if (jj_3R_102()) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (!jj_3R_328()) {
            return false;
        }
        this.jj_scanpos = token2;
        return jj_3R_329();
    }

    private boolean jj_3R_262() {
        return jj_3R_103();
    }

    private boolean jj_3R_263() {
        return jj_3R_83();
    }

    private boolean jj_3R_264() {
        return jj_3R_211();
    }

    private boolean jj_3R_265() {
        return jj_scan_token(108) || jj_3R_229();
    }

    private boolean jj_3R_266() {
        return jj_scan_token(19);
    }

    private boolean jj_3R_267() {
        return jj_scan_token(39);
    }

    private boolean jj_3R_268() {
        return jj_3R_330();
    }

    private boolean jj_3R_269() {
        return jj_3R_144();
    }

    private boolean jj_3R_270() {
        return jj_3R_331();
    }

    private boolean jj_3R_271() {
        return jj_3R_332();
    }

    private boolean jj_3R_272() {
        return jj_3R_333();
    }

    private boolean jj_3R_273() {
        return jj_3R_334();
    }

    private boolean jj_3R_274() {
        return jj_3R_335();
    }

    private boolean jj_3R_275() {
        return jj_3R_336();
    }

    private boolean jj_3R_276() {
        return jj_3R_337();
    }

    private boolean jj_3R_277() {
        return jj_3R_338();
    }

    private boolean jj_3R_278() {
        return jj_3R_339();
    }

    private boolean jj_3R_279() {
        return jj_3R_340();
    }

    private boolean jj_3R_280() {
        return jj_3R_341();
    }

    private boolean jj_3R_281() {
        return jj_3R_342();
    }

    private boolean jj_3R_282() {
        return jj_3R_343();
    }

    private boolean jj_3R_283() {
        return jj_3R_85();
    }

    private boolean jj_3R_284() {
        return jj_3R_344();
    }

    private boolean jj_3R_285() {
        Token token;
        if (jj_3R_345()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_383());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_286() {
        Token token;
        if (jj_scan_token(101) || jj_3R_107()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_346());
        this.jj_scanpos = token;
        return jj_scan_token(102);
    }

    private boolean jj_3R_287() {
        return jj_3R_102() || jj_3R_208();
    }

    private boolean jj_3R_288() {
        Token token = this.jj_scanpos;
        if (jj_3R_347()) {
            this.jj_scanpos = token;
            if (jj_3R_348()) {
                return true;
            }
        }
        return jj_3R_196();
    }

    private boolean jj_3R_289() {
        return jj_3R_111();
    }

    private boolean jj_3R_290() {
        return jj_3R_349();
    }

    private boolean jj_3R_291() {
        return jj_3R_350();
    }

    private boolean jj_3R_292() {
        return jj_3R_103();
    }

    private boolean jj_3R_293() {
        return jj_3R_211();
    }

    private boolean jj_3R_294() {
        Token token = this.jj_scanpos;
        if (!jj_3_18()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_351();
    }

    private boolean jj_3R_295() {
        return jj_scan_token(117) || jj_3R_105() || jj_scan_token(118) || jj_3R_105();
    }

    private boolean jj_3R_296() {
        return jj_scan_token(119) || jj_3R_353();
    }

    private boolean jj_3R_297() {
        if (jj_scan_token(112)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_354()) {
            this.jj_scanpos = token;
        }
        Token token2 = this.jj_scanpos;
        if (!jj_3R_355()) {
            return false;
        }
        this.jj_scanpos = token2;
        return jj_scan_token(42);
    }

    private boolean jj_3R_298() {
        return jj_scan_token(127) || jj_3R_196();
    }

    private boolean jj_3R_299() {
        return jj_scan_token(128);
    }

    private boolean jj_3R_300() {
        return jj_scan_token(129);
    }

    private boolean jj_3R_301() {
        return jj_3R_102() || jj_3R_158();
    }

    private boolean jj_3R_302() {
        return jj_scan_token(108) || jj_3R_301();
    }

    private boolean jj_3R_303() {
        return jj_3R_356();
    }

    private boolean jj_3R_304() {
        return jj_3R_139();
    }

    private boolean jj_3R_305() {
        return jj_3R_357();
    }

    private boolean jj_3R_306() {
        return jj_3R_245();
    }

    private boolean jj_3R_307() {
        return jj_3R_358();
    }

    private boolean jj_3R_308() {
        return jj_3R_359();
    }

    private boolean jj_3R_309() {
        Token token;
        if (jj_scan_token(27) || jj_3R_301()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_360());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_310() {
        return jj_3R_142();
    }

    private boolean jj_3R_311() {
        return jj_3R_142();
    }

    private boolean jj_3R_312() {
        Token token;
        if (jj_3R_105()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_361());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_313() {
        return jj_scan_token(81);
    }

    private boolean jj_3R_314() {
        return jj_scan_token(80);
    }

    private boolean jj_3R_315() {
        return jj_scan_token(86);
    }

    private boolean jj_3R_316() {
        return jj_scan_token(93);
    }

    private boolean jj_3R_317() {
        return jj_scan_token(94);
    }

    private boolean jj_3R_318() {
        return jj_scan_token(96);
    }

    private boolean jj_3R_319() {
        return jj_3R_362();
    }

    private boolean jj_3R_320() {
        return jj_3R_130();
    }

    private boolean jj_3R_321() {
        return jj_3R_103();
    }

    private boolean jj_3R_322() {
        return jj_3R_211();
    }

    private boolean jj_3R_323() {
        return jj_3R_103();
    }

    private boolean jj_3R_324() {
        return jj_3R_83();
    }

    private boolean jj_3R_325() {
        Token token;
        if (jj_3R_117()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_363());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_326() {
        Token token;
        if (jj_3R_118()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_364());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_327() {
        return jj_3R_103();
    }

    private boolean jj_3R_328() {
        return jj_3R_114() || jj_3R_365();
    }

    private boolean jj_3R_329() {
        if (jj_3R_158()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_366()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_367();
    }

    private boolean jj_3R_330() {
        if (jj_scan_token(12) || jj_3R_105()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_388()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(107);
    }

    private boolean jj_3R_331() {
        return jj_scan_token(107);
    }

    private boolean jj_3R_332() {
        Token token = this.jj_scanpos;
        if (jj_3_58()) {
            this.jj_scanpos = token;
            if (jj_3R_368()) {
                this.jj_scanpos = token;
                if (jj_3R_369()) {
                    return true;
                }
            }
        }
        return jj_scan_token(107);
    }

    private boolean jj_3R_333() {
        Token token;
        if (jj_scan_token(57) || jj_scan_token(101) || jj_3R_105() || jj_scan_token(102) || jj_scan_token(103)) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_497());
        this.jj_scanpos = token;
        return jj_scan_token(104);
    }

    private boolean jj_3R_334() {
        if (jj_scan_token(34) || jj_scan_token(101) || jj_3R_105() || jj_scan_token(102) || jj_3R_228()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_498()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_335() {
        return jj_scan_token(67) || jj_scan_token(101) || jj_3R_105() || jj_scan_token(102) || jj_3R_228();
    }

    private boolean jj_3R_336() {
        return jj_scan_token(23) || jj_3R_228() || jj_scan_token(67) || jj_scan_token(101) || jj_3R_105() || jj_scan_token(102) || jj_scan_token(107);
    }

    private boolean jj_3R_337() {
        if (jj_scan_token(32) || jj_scan_token(101)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_389()) {
            this.jj_scanpos = token;
            if (jj_3R_390()) {
                return true;
            }
        }
        return jj_scan_token(102) || jj_3R_228();
    }

    private boolean jj_3R_338() {
        if (jj_scan_token(14)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_370()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(107);
    }

    private boolean jj_3R_339() {
        if (jj_scan_token(21)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_371()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(107);
    }

    private boolean jj_3R_340() {
        if (jj_scan_token(51)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_372()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(107);
    }

    private boolean jj_3R_341() {
        return jj_scan_token(60) || jj_3R_105() || jj_scan_token(107);
    }

    private boolean jj_3R_342() {
        return jj_scan_token(58) || jj_scan_token(101) || jj_3R_105() || jj_scan_token(102) || jj_3R_144();
    }

    private boolean jj_3R_343() {
        if (jj_scan_token(64)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_373()) {
            this.jj_scanpos = token;
        }
        if (jj_3R_144()) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (!jj_3R_499()) {
            return false;
        }
        this.jj_scanpos = token2;
        return jj_3R_500();
    }

    private boolean jj_3R_344() {
        if (jj_scan_token(117)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_396()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_345() {
        Token token;
        if (jj_3R_374()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_406());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_346() {
        return jj_scan_token(108) || jj_3R_107();
    }

    private boolean jj_3R_347() {
        return jj_scan_token(116);
    }

    private boolean jj_3R_348() {
        return jj_scan_token(115);
    }

    private boolean jj_3R_349() {
        if (jj_3R_243()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3_40()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_350() {
        Token token;
        if (jj_scan_token(57) || jj_scan_token(101) || jj_3R_105() || jj_scan_token(102) || jj_scan_token(103)) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_375());
        this.jj_scanpos = token;
        return jj_scan_token(104);
    }

    private boolean jj_3R_351() {
        if (jj_3R_126()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_376()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_377()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_378()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_379()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_380()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_381()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_382();
    }

    private boolean jj_3R_352() {
        return jj_scan_token(125) || jj_3R_285();
    }

    private boolean jj_3R_353() {
        Token token = this.jj_scanpos;
        if (!jj_3R_384()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_385();
    }

    private boolean jj_3R_354() {
        return jj_3R_103();
    }

    private boolean jj_3R_355() {
        return jj_3R_83();
    }

    private boolean jj_3R_356() {
        Token token = this.jj_scanpos;
        if (!jj_3_11()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_387();
    }

    private boolean jj_3R_357() {
        Token token;
        if (jj_scan_token(27) || jj_3R_301()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_470());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_358() {
        Token token;
        if (jj_scan_token(46) || jj_3R_301()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_471());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_359() {
        Token token;
        if (jj_3R_391()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_392());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_360() {
        return jj_scan_token(132) || jj_3R_301();
    }

    private boolean jj_3R_361() {
        return jj_scan_token(108) || jj_3R_105();
    }

    private boolean jj_3R_362() {
        Token token = this.jj_scanpos;
        if (!jj_3R_393()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_394();
    }

    private boolean jj_3R_363() {
        return jj_scan_token(108) || jj_3R_117();
    }

    private boolean jj_3R_364() {
        return jj_scan_token(108) || jj_3R_118();
    }

    private boolean jj_3R_365() {
        Token token;
        if (jj_3_51()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3_51());
        this.jj_scanpos = token;
        if (!jj_3R_395()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_366() {
        return jj_3R_365();
    }

    private boolean jj_3R_367() {
        if (jj_3R_211()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3_50()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_368() {
        return jj_3R_298();
    }

    private boolean jj_3R_369() {
        if (jj_3R_243()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_397()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_370() {
        return jj_3R_89();
    }

    private boolean jj_3R_371() {
        return jj_3R_89();
    }

    private boolean jj_3R_372() {
        return jj_3R_105();
    }

    private boolean jj_3R_373() {
        return jj_3R_398();
    }

    private boolean jj_3R_374() {
        Token token;
        if (jj_3R_399()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_429());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_375() {
        return jj_3R_400();
    }

    private boolean jj_3R_376() {
        return jj_3R_227();
    }

    private boolean jj_3R_377() {
        return jj_3R_135();
    }

    private boolean jj_3R_378() {
        return jj_3R_401();
    }

    private boolean jj_3R_379() {
        return jj_3R_402();
    }

    private boolean jj_3R_380() {
        return jj_3R_403();
    }

    private boolean jj_3R_381() {
        return jj_3R_404();
    }

    private boolean jj_3R_382() {
        return jj_3R_405();
    }

    private boolean jj_3R_383() {
        return jj_scan_token(124) || jj_3R_345();
    }

    private boolean jj_3R_384() {
        return jj_3R_105();
    }

    private boolean jj_3R_385() {
        return jj_3R_144();
    }

    private boolean jj_3R_386() {
        Token token;
        if (jj_3R_94()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3_19());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_387() {
        if (jj_3R_126()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_407()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_408()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_409()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_410()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_411()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_412()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_413()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_414();
    }

    private boolean jj_3R_388() {
        return jj_scan_token(118) || jj_3R_105();
    }

    private boolean jj_3R_389() {
        return jj_3R_128() || jj_scan_token(118) || jj_3R_105();
    }

    private boolean jj_3R_390() {
        Token token = this.jj_scanpos;
        if (jj_3R_415()) {
            this.jj_scanpos = token;
        }
        if (jj_scan_token(107)) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (jj_3R_505()) {
            this.jj_scanpos = token2;
        }
        if (jj_scan_token(107)) {
            return true;
        }
        Token token3 = this.jj_scanpos;
        if (!jj_3R_506()) {
            return false;
        }
        this.jj_scanpos = token3;
        return false;
    }

    private boolean jj_3R_391() {
        return jj_3R_89() || jj_scan_token(113) || jj_3R_134();
    }

    private boolean jj_3R_392() {
        return jj_scan_token(108) || jj_3R_391();
    }

    private boolean jj_3R_393() {
        return jj_scan_token(63);
    }

    private boolean jj_3R_394() {
        return jj_scan_token(28);
    }

    private boolean jj_3R_395() {
        return jj_3R_217();
    }

    private boolean jj_3R_396() {
        Token token = this.jj_scanpos;
        if (!jj_3R_417()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_418();
    }

    private boolean jj_3R_397() {
        Token token = this.jj_scanpos;
        if (!jj_3R_419()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_420()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_421();
    }

    private boolean jj_3R_398() {
        if (jj_scan_token(101) || jj_3R_432()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3_63()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(102);
    }

    private boolean jj_3R_399() {
        Token token;
        if (jj_3R_422()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_439());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_400() {
        Token token = this.jj_scanpos;
        if (jj_3R_423()) {
            this.jj_scanpos = token;
            if (jj_3R_424()) {
                return true;
            }
        }
        Token token2 = this.jj_scanpos;
        if (!jj_3R_425()) {
            return false;
        }
        this.jj_scanpos = token2;
        return jj_3R_426();
    }

    private boolean jj_3R_401() {
        if (jj_scan_token(26) || jj_3R_89()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_440()) {
            this.jj_scanpos = token;
        }
        if (jj_scan_token(103)) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (jj_3R_441()) {
            this.jj_scanpos = token2;
        }
        Token token3 = this.jj_scanpos;
        if (jj_scan_token(108)) {
            this.jj_scanpos = token3;
        }
        Token token4 = this.jj_scanpos;
        if (jj_3R_442()) {
            this.jj_scanpos = token4;
        }
        return jj_scan_token(104);
    }

    private boolean jj_3R_402() {
        return jj_scan_token(111) || jj_scan_token(39) || jj_3R_89() || jj_3R_443();
    }

    private boolean jj_3R_403() {
        Token token = this.jj_scanpos;
        if (jj_3R_427()) {
            this.jj_scanpos = token;
        }
        if (jj_3R_89() || jj_3R_91()) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (jj_3R_447()) {
            this.jj_scanpos = token2;
        }
        if (jj_scan_token(103)) {
            return true;
        }
        Token token3 = this.jj_scanpos;
        if (jj_3R_448()) {
            this.jj_scanpos = token3;
        }
        return jj_3R_209() || jj_scan_token(104);
    }

    private boolean jj_3R_404() {
        Token token;
        if (jj_3R_85() || jj_3R_132()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_449());
        this.jj_scanpos = token;
        return jj_scan_token(107);
    }

    private boolean jj_3R_405() {
        Token token;
        Token token2 = this.jj_scanpos;
        if (jj_3R_428()) {
            this.jj_scanpos = token2;
        }
        if (jj_3R_102() || jj_3R_119() || jj_3R_89() || jj_3R_91()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_450());
        this.jj_scanpos = token;
        if (jj_3R_451()) {
            this.jj_scanpos = token;
        }
        Token token3 = this.jj_scanpos;
        if (!jj_3R_452()) {
            return false;
        }
        this.jj_scanpos = token3;
        return jj_scan_token(107);
    }

    private boolean jj_3R_406() {
        return jj_scan_token(133) || jj_3R_374();
    }

    private boolean jj_3R_407() {
        return jj_3R_227();
    }

    private boolean jj_3R_408() {
        return jj_3R_401();
    }

    private boolean jj_3R_409() {
        return jj_3R_135();
    }

    private boolean jj_3R_410() {
        return jj_3R_402();
    }

    private boolean jj_3R_411() {
        return jj_3R_430();
    }

    private boolean jj_3R_412() {
        return jj_3R_403();
    }

    private boolean jj_3R_413() {
        return jj_3R_404();
    }

    private boolean jj_3R_414() {
        return jj_3R_405();
    }

    private boolean jj_3R_415() {
        return jj_3R_431();
    }

    private boolean jj_3R_416() {
        Token token;
        if (jj_3R_134()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3_70());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_417() {
        return jj_scan_token(27) || jj_3R_102() || jj_3R_208();
    }

    private boolean jj_3R_418() {
        return jj_scan_token(56) || jj_3R_102() || jj_3R_208();
    }

    private boolean jj_3R_419() {
        return jj_scan_token(126);
    }

    private boolean jj_3R_420() {
        return jj_scan_token(127);
    }

    private boolean jj_3R_421() {
        return jj_3R_104() || jj_3R_105();
    }

    private boolean jj_3R_422() {
        Token token;
        if (jj_3R_433()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_459());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_423() {
        if (jj_scan_token(16)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3_59()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_434()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_435();
    }

    private boolean jj_3R_424() {
        return jj_scan_token(22);
    }

    private boolean jj_3R_425() {
        return jj_scan_token(118) || jj_3R_209();
    }

    private boolean jj_3R_426() {
        if (jj_scan_token(119)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_436()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_437()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_438();
    }

    private boolean jj_3R_427() {
        return jj_3R_139();
    }

    private boolean jj_3R_428() {
        return jj_3R_139();
    }

    private boolean jj_3R_429() {
        return jj_scan_token(134) || jj_3R_399();
    }

    private boolean jj_3R_430() {
        Token token = this.jj_scanpos;
        if (jj_3R_444()) {
            this.jj_scanpos = token;
        }
        if (jj_3R_89()) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (jj_3R_445()) {
            this.jj_scanpos = token2;
        }
        if (jj_scan_token(103)) {
            return true;
        }
        Token token3 = this.jj_scanpos;
        if (jj_3R_446()) {
            this.jj_scanpos = token3;
        }
        return jj_3R_209() || jj_scan_token(104);
    }

    private boolean jj_3R_431() {
        Token token = this.jj_scanpos;
        if (!jj_3R_453()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_454();
    }

    private boolean jj_3R_432() {
        Token token;
        if (jj_3R_131()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3_64());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_433() {
        if (jj_3R_455()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_467()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_434() {
        if (jj_3R_107()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_456()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_435() {
        Token token;
        if (jj_3R_173()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_457());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_436() {
        return jj_3R_458();
    }

    private boolean jj_3R_437() {
        return jj_3R_144();
    }

    private boolean jj_3R_438() {
        return jj_3R_341();
    }

    private boolean jj_3R_439() {
        return jj_scan_token(132) || jj_3R_422();
    }

    private boolean jj_3R_440() {
        return jj_3R_245();
    }

    private boolean jj_3R_441() {
        Token token;
        if (jj_3R_81()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3_4());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_442() {
        Token token;
        if (jj_scan_token(107)) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_460());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_443() {
        Token token;
        if (jj_scan_token(103)) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_461());
        this.jj_scanpos = token;
        return jj_scan_token(104);
    }

    private boolean jj_3R_444() {
        return jj_3R_139();
    }

    private boolean jj_3R_445() {
        Token token;
        if (jj_scan_token(61) || jj_3R_287()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_462());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_446() {
        return jj_3R_88();
    }

    private boolean jj_3R_447() {
        Token token;
        if (jj_scan_token(61) || jj_3R_287()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_463());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_448() {
        return jj_3R_88();
    }

    private boolean jj_3R_449() {
        return jj_scan_token(108) || jj_3R_132();
    }

    private boolean jj_3R_450() {
        return jj_3R_142();
    }

    private boolean jj_3R_451() {
        Token token;
        if (jj_scan_token(61) || jj_3R_287()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_464());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_452() {
        return jj_3R_144();
    }

    private boolean jj_3R_453() {
        return jj_3R_128();
    }

    private boolean jj_3R_454() {
        return jj_3R_465();
    }

    private boolean jj_3R_455() {
        Token token;
        if (jj_3R_466()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_477());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_456() {
        return jj_scan_token(79) || jj_3R_173();
    }

    private boolean jj_3R_457() {
        return jj_scan_token(108) || jj_3R_173();
    }

    private boolean jj_3R_458() {
        return jj_3R_105() || jj_scan_token(107);
    }

    private boolean jj_3R_459() {
        Token token = this.jj_scanpos;
        if (jj_3R_468()) {
            this.jj_scanpos = token;
            if (jj_3R_469()) {
                return true;
            }
        }
        return jj_3R_433();
    }

    private boolean jj_3R_460() {
        Token token = this.jj_scanpos;
        if (!jj_3R_474()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_scan_token(107);
    }

    private boolean jj_3R_461() {
        Token token = this.jj_scanpos;
        if (!jj_3R_475()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_scan_token(107);
    }

    private boolean jj_3R_462() {
        return jj_scan_token(108) || jj_3R_287();
    }

    private boolean jj_3R_463() {
        return jj_scan_token(108) || jj_3R_287();
    }

    private boolean jj_3R_464() {
        return jj_scan_token(108) || jj_3R_287();
    }

    private boolean jj_3R_465() {
        Token token;
        if (jj_3R_105()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_512());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_466() {
        Token token;
        if (jj_3R_476()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3_36());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_467() {
        if (jj_scan_token(37)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_478()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_479();
    }

    private boolean jj_3R_468() {
        return jj_scan_token(120);
    }

    private boolean jj_3R_469() {
        return jj_scan_token(123);
    }

    private boolean jj_3R_470() {
        return jj_scan_token(108) || jj_3R_301();
    }

    private boolean jj_3R_471() {
        return jj_scan_token(108) || jj_3R_301();
    }

    private boolean jj_3R_472() {
        return jj_3R_211();
    }

    private boolean jj_3R_473() {
        return jj_3R_122();
    }

    private boolean jj_3R_474() {
        return jj_3R_294();
    }

    private boolean jj_3R_475() {
        return jj_3R_480();
    }

    private boolean jj_3R_476() {
        Token token;
        if (jj_3R_481()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_492());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_477() {
        Token token = this.jj_scanpos;
        if (jj_3R_482()) {
            this.jj_scanpos = token;
            if (jj_3R_483()) {
                this.jj_scanpos = token;
                if (jj_3R_484()) {
                    this.jj_scanpos = token;
                    if (jj_3R_485()) {
                        return true;
                    }
                }
            }
        }
        return jj_3R_466();
    }

    private boolean jj_3R_478() {
        return jj_3R_107();
    }

    private boolean jj_3R_479() {
        return jj_3R_287();
    }

    private boolean jj_3R_480() {
        if (jj_3R_126()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_486()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_487()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_488()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_489()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_490()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_491();
    }

    private boolean jj_3R_481() {
        Token token;
        if (jj_3R_196()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_494());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_482() {
        return jj_scan_token(114);
    }

    private boolean jj_3R_483() {
        return jj_scan_token(150);
    }

    private boolean jj_3R_484() {
        return jj_scan_token(122);
    }

    private boolean jj_3R_485() {
        return jj_scan_token(121);
    }

    private boolean jj_3R_486() {
        return jj_3R_135();
    }

    private boolean jj_3R_487() {
        return jj_3R_493();
    }

    private boolean jj_3R_488() {
        return jj_3R_227();
    }

    private boolean jj_3R_489() {
        return jj_3R_401();
    }

    private boolean jj_3R_490() {
        return jj_3R_402();
    }

    private boolean jj_3R_491() {
        return jj_3R_404();
    }

    private boolean jj_3R_492() {
        Token token = this.jj_scanpos;
        if (jj_3R_495()) {
            this.jj_scanpos = token;
            if (jj_3R_496()) {
                return true;
            }
        }
        return jj_3R_481();
    }

    private boolean jj_3R_493() {
        if (jj_3R_85() || jj_3R_89() || jj_scan_token(101) || jj_scan_token(102)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_501()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(107);
    }

    private boolean jj_3R_494() {
        Token token = this.jj_scanpos;
        if (jj_3R_502()) {
            this.jj_scanpos = token;
            if (jj_3R_503()) {
                this.jj_scanpos = token;
                if (jj_3R_504()) {
                    return true;
                }
            }
        }
        return jj_3R_196();
    }

    private boolean jj_3R_495() {
        return jj_scan_token(128);
    }

    private boolean jj_3R_496() {
        return jj_scan_token(129);
    }

    private boolean jj_3R_497() {
        return jj_3R_400();
    }

    private boolean jj_3R_498() {
        return jj_scan_token(25) || jj_3R_228();
    }

    private boolean jj_3R_499() {
        Token token;
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_507());
        this.jj_scanpos = token;
        if (!jj_3R_508()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_500() {
        return jj_scan_token(30) || jj_3R_144();
    }

    private boolean jj_3R_501() {
        return jj_3R_509();
    }

    private boolean jj_3R_502() {
        return jj_scan_token(130);
    }

    private boolean jj_3R_503() {
        return jj_scan_token(131);
    }

    private boolean jj_3R_504() {
        return jj_scan_token(135);
    }

    private boolean jj_3R_505() {
        return jj_3R_105();
    }

    private boolean jj_3R_506() {
        return jj_3R_510();
    }

    private boolean jj_3R_507() {
        Token token;
        if (jj_scan_token(17) || jj_scan_token(101) || jj_3R_126() || jj_3R_208()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_511());
        this.jj_scanpos = token;
        return jj_3R_118() || jj_scan_token(102) || jj_3R_144();
    }

    private boolean jj_3R_508() {
        return jj_scan_token(30) || jj_3R_144();
    }

    private boolean jj_3R_509() {
        return jj_scan_token(22) || jj_3R_134();
    }

    private boolean jj_3R_510() {
        return jj_3R_465();
    }

    private boolean jj_3R_511() {
        return jj_scan_token(133) || jj_3R_287();
    }

    private boolean jj_3R_512() {
        return jj_scan_token(108) || jj_3R_105();
    }

    private boolean jj_3R_64() {
        Token token;
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_136());
        this.jj_scanpos = token;
        return jj_scan_token(45) || jj_3R_96() || jj_scan_token(107);
    }

    private boolean jj_3R_65() {
        return jj_scan_token(49);
    }

    private boolean jj_3R_66() {
        return jj_scan_token(54);
    }

    private boolean jj_3R_67() {
        return jj_scan_token(48);
    }

    private boolean jj_3R_68() {
        return jj_scan_token(47);
    }

    private boolean jj_3R_69() {
        return jj_scan_token(29);
    }

    private boolean jj_3R_70() {
        return jj_scan_token(11);
    }

    private boolean jj_3R_71() {
        return jj_scan_token(58);
    }

    private boolean jj_3R_72() {
        return jj_scan_token(41);
    }

    private boolean jj_3R_73() {
        return jj_scan_token(62);
    }

    private boolean jj_3R_74() {
        return jj_scan_token(66);
    }

    private boolean jj_3R_75() {
        return jj_scan_token(55);
    }

    private boolean jj_3R_76() {
        return jj_scan_token(78);
    }

    private boolean jj_3R_77() {
        return jj_scan_token(22);
    }

    private boolean jj_3R_78() {
        return jj_scan_token(52);
    }

    private boolean jj_3R_79() {
        return jj_scan_token(43);
    }

    private boolean jj_3R_80() {
        return jj_3R_137();
    }

    private boolean jj_3R_81() {
        Token token;
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_138());
        this.jj_scanpos = token;
        if (jj_3R_89()) {
            return true;
        }
        Token token2 = this.jj_scanpos;
        if (jj_3R_472()) {
            this.jj_scanpos = token2;
        }
        Token token3 = this.jj_scanpos;
        if (!jj_3R_473()) {
            return false;
        }
        this.jj_scanpos = token3;
        return false;
    }

    private boolean jj_3R_82() {
        return jj_3R_139();
    }

    private boolean jj_3R_83() {
        Token token = this.jj_scanpos;
        if (!jj_scan_token(75)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(69)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(70)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(71)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(72)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(73)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(74)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(76)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(77)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(78)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(26)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(55)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(68)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(50)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(46)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(52)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(79)) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_scan_token(98);
    }

    private boolean jj_3R_84() {
        return jj_3R_139();
    }

    private boolean jj_3R_85() {
        Token token = this.jj_scanpos;
        if (!jj_3R_140()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_141();
    }

    private boolean jj_3R_86() {
        return jj_3R_142();
    }

    private boolean jj_3R_87() {
        Token token = this.jj_scanpos;
        if (jj_3R_143()) {
            this.jj_scanpos = token;
        }
        return jj_3R_144();
    }

    private boolean jj_3R_88() {
        Token token = this.jj_scanpos;
        if (!jj_3R_145()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_146();
    }

    private boolean jj_3R_89() {
        return jj_3R_83();
    }

    private boolean jj_3R_90() {
        return jj_3R_139();
    }

    private boolean jj_3R_91() {
        if (jj_scan_token(101)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_147()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(102);
    }

    private boolean jj_3R_92() {
        return jj_3R_139();
    }

    private boolean jj_3R_93() {
        return jj_3R_142();
    }

    private boolean jj_3R_94() {
        Token token = this.jj_scanpos;
        if (!jj_3R_148()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_149();
    }

    private boolean jj_3R_95() {
        return jj_3R_102() || jj_3R_85() || jj_3R_150();
    }

    private boolean jj_3R_96() {
        Token token;
        if (jj_3R_83()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3_32());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_97() {
        Token token;
        if (jj_3R_151()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_152());
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3R_98() {
        return jj_3R_103();
    }

    private boolean jj_3R_99() {
        Token token = this.jj_scanpos;
        if (!jj_3R_153()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_154()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_155()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_156()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_157();
    }

    private boolean jj_3_1() {
        return jj_scan_token(107);
    }

    private boolean jj_3_10() {
        Token token;
        if (jj_3R_85() || jj_3R_83()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_86());
        this.jj_scanpos = token;
        if (!jj_scan_token(108)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(113)) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_scan_token(107);
    }

    private boolean jj_3_11() {
        return jj_3R_87();
    }

    private boolean jj_3_12() {
        return jj_3R_88();
    }

    private boolean jj_3_13() {
        if (jj_scan_token(50) || jj_3R_89()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_90()) {
            this.jj_scanpos = token;
        }
        return jj_3R_91();
    }

    private boolean jj_3_14() {
        return jj_scan_token(26);
    }

    private boolean jj_3_15() {
        return jj_scan_token(111) || jj_scan_token(39);
    }

    private boolean jj_3_16() {
        Token token = this.jj_scanpos;
        if (jj_3R_92()) {
            this.jj_scanpos = token;
        }
        return jj_3R_83() || jj_scan_token(101);
    }

    private boolean jj_3_17() {
        Token token;
        if (jj_3R_85() || jj_3R_83()) {
            return true;
        }
        do {
            token = this.jj_scanpos;
        } while (!jj_3R_93());
        this.jj_scanpos = token;
        if (!jj_scan_token(108)) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_scan_token(113)) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_scan_token(107);
    }

    private boolean jj_3_18() {
        return jj_3R_87();
    }

    private boolean jj_3_19() {
        return jj_scan_token(108) || jj_3R_94();
    }

    private boolean jj_3_2() {
        return jj_3R_64();
    }

    private boolean jj_3_20() {
        return jj_3R_95();
    }

    private boolean jj_3_21() {
        return jj_3R_96();
    }

    private boolean jj_3_22() {
        return jj_3R_88();
    }

    private boolean jj_3_23() {
        return jj_3R_97() || jj_scan_token(109);
    }

    private boolean jj_3_24() {
        Token token = this.jj_scanpos;
        if (jj_3R_98()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(59) || jj_scan_token(101);
    }

    private boolean jj_3_25() {
        return jj_3R_99();
    }

    private boolean jj_3_26() {
        Token token = this.jj_scanpos;
        if (!jj_3R_100()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_101();
    }

    private boolean jj_3_27() {
        return jj_3R_102() || jj_scan_token(105);
    }

    private boolean jj_3_28() {
        return jj_3R_102() || jj_scan_token(105);
    }

    private boolean jj_3_29() {
        return jj_3R_103();
    }

    private boolean jj_3_3() {
        Token token = this.jj_scanpos;
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
        if (!jj_3R_69()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_70()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_71()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_72()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_73()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_74()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_75()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_76()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_77()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_78()) {
            return false;
        }
        this.jj_scanpos = token;
        if (!jj_3R_79()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_80();
    }

    private boolean jj_3_30() {
        if (jj_scan_token(109) || jj_3R_102() || jj_3R_89()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3_31()) {
            return false;
        }
        this.jj_scanpos = token;
        return false;
    }

    private boolean jj_3_31() {
        return jj_3R_103();
    }

    private boolean jj_3_32() {
        return jj_scan_token(109) || jj_3R_83();
    }

    private boolean jj_3_33() {
        return jj_3R_104() || jj_3R_105();
    }

    private boolean jj_3_34() {
        return jj_3R_106();
    }

    private boolean jj_3_35() {
        return jj_3R_107();
    }

    private boolean jj_3_36() {
        Token token = this.jj_scanpos;
        if (jj_3R_108()) {
            this.jj_scanpos = token;
            if (jj_3_37()) {
                this.jj_scanpos = token;
                if (jj_3_38()) {
                    return true;
                }
            }
        }
        return jj_3R_476();
    }

    private boolean jj_3_37() {
        return jj_3R_109();
    }

    private boolean jj_3_38() {
        return jj_3R_110();
    }

    private boolean jj_3_39() {
        return jj_3R_111();
    }

    private boolean jj_3_4() {
        return jj_scan_token(108) || jj_3R_81();
    }

    private boolean jj_3_40() {
        Token token = this.jj_scanpos;
        if (!jj_3R_112()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_3R_113();
    }

    private boolean jj_3_41() {
        return jj_3R_114() || jj_scan_token(102) || jj_3R_196();
    }

    private boolean jj_3_42() {
        return jj_3R_115();
    }

    private boolean jj_3_43() {
        return jj_3R_116();
    }

    private boolean jj_3_44() {
        return jj_3R_117();
    }

    private boolean jj_3_45() {
        return jj_3R_118() || jj_scan_token(108);
    }

    private boolean jj_3_46() {
        return jj_3R_119() || jj_scan_token(109) || jj_scan_token(19);
    }

    private boolean jj_3_47() {
        return jj_3R_120() || jj_scan_token(112);
    }

    private boolean jj_3_48() {
        return jj_3R_116();
    }

    private boolean jj_3_49() {
        Token token = this.jj_scanpos;
        if (jj_3R_121()) {
            this.jj_scanpos = token;
        }
        return jj_3R_83();
    }

    private boolean jj_3_5() {
        return jj_scan_token(26);
    }

    private boolean jj_3_50() {
        return jj_3R_122();
    }

    private boolean jj_3_51() {
        if (jj_3R_102() || jj_scan_token(105)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_123()) {
            this.jj_scanpos = token;
        }
        return jj_scan_token(106);
    }

    private boolean jj_3_52() {
        return jj_3R_124();
    }

    private boolean jj_3_53() {
        return jj_3R_125();
    }

    private boolean jj_3_54() {
        if (jj_3R_126()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_scan_token(19)) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_scan_token(39);
    }

    private boolean jj_3_55() {
        if (jj_3R_126() || jj_scan_token(50) || jj_3R_89()) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (jj_3R_127()) {
            this.jj_scanpos = token;
        }
        return jj_3R_91();
    }

    private boolean jj_3_56() {
        return jj_3R_125();
    }

    private boolean jj_3_57() {
        return jj_3R_128();
    }

    private boolean jj_3_58() {
        return jj_3R_129();
    }

    private boolean jj_3_59() {
        return jj_3R_130() || jj_scan_token(108) || jj_scan_token(22);
    }

    private boolean jj_3_6() {
        return jj_scan_token(50);
    }

    private boolean jj_3_60() {
        return jj_3R_107();
    }

    private boolean jj_3_61() {
        return jj_3R_128() || jj_scan_token(118);
    }

    private boolean jj_3_62() {
        return jj_3R_126() || jj_3R_85() || jj_3R_83();
    }

    private boolean jj_3_63() {
        return jj_scan_token(107);
    }

    private boolean jj_3_64() {
        return jj_scan_token(107) || jj_3R_131();
    }

    private boolean jj_3_65() {
        return jj_3R_126() || jj_3R_85() || jj_3R_132();
    }

    private boolean jj_3_66() {
        return jj_scan_token(111);
    }

    private boolean jj_3_67() {
        if (jj_scan_token(101)) {
            return true;
        }
        Token token = this.jj_scanpos;
        if (!jj_3R_133()) {
            return false;
        }
        this.jj_scanpos = token;
        return jj_scan_token(102);
    }

    private boolean jj_3_68() {
        return jj_scan_token(101);
    }

    private boolean jj_3_69() {
        return jj_scan_token(111);
    }

    private boolean jj_3_7() {
        return jj_scan_token(111) || jj_scan_token(39);
    }

    private boolean jj_3_70() {
        return jj_scan_token(108) || jj_3R_134();
    }

    private boolean jj_3_71() {
        return jj_3R_135();
    }

    private boolean jj_3_72() {
        return jj_3R_85() || jj_3R_83() || jj_scan_token(101);
    }

    private boolean jj_3_73() {
        return jj_scan_token(26);
    }

    private boolean jj_3_74() {
        return jj_scan_token(69) || jj_scan_token(78) || jj_scan_token(107);
    }

    private boolean jj_3_75() {
        return jj_3R_99();
    }

    private boolean jj_3_8() {
        Token token = this.jj_scanpos;
        if (jj_3R_82()) {
            this.jj_scanpos = token;
        }
        return jj_3R_83() || jj_scan_token(103);
    }

    private boolean jj_3_9() {
        Token token = this.jj_scanpos;
        if (jj_3R_84()) {
            this.jj_scanpos = token;
        }
        return jj_3R_83() || jj_scan_token(101);
    }

    private void jj_add_error_token(int kind, int pos) {
        if (pos >= 100) {
            return;
        }
        int i10 = this.jj_endpos;
        if (pos == i10 + 1) {
            int[] iArr = this.jj_lasttokens;
            this.jj_endpos = i10 + 1;
            iArr[i10] = kind;
            return;
        }
        if (i10 != 0) {
            this.jj_expentry = new int[i10];
            for (int i11 = 0; i11 < this.jj_endpos; i11++) {
                this.jj_expentry[i11] = this.jj_lasttokens[i11];
            }
            Iterator<int[]> it = this.jj_expentries.iterator();
            loop1: while (true) {
                if (!it.hasNext()) {
                    break;
                }
                int[] next = it.next();
                if (next.length == this.jj_expentry.length) {
                    int i12 = 0;
                    while (true) {
                        int[] iArr2 = this.jj_expentry;
                        if (i12 >= iArr2.length) {
                            this.jj_expentries.add(iArr2);
                            break loop1;
                        } else if (next[i12] != iArr2[i12]) {
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
            }
            if (pos != 0) {
                this.jj_endpos = pos;
                this.jj_lasttokens[pos - 1] = kind;
            }
        }
    }

    private Token jj_consume_token(final int kind) throws ParseException {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 != null) {
            this.token = token2;
        } else {
            token.next = this.token_source.getNextToken();
            this.token = this.token.next;
        }
        this.jj_ntk = -1;
        if (this.token.kind != kind) {
            this.token = token;
            this.jj_kind = kind;
            throw generateParseException();
        }
        this.jj_gen++;
        int i10 = this.jj_gc + 1;
        this.jj_gc = i10;
        if (i10 > 100) {
            int i11 = 0;
            this.jj_gc = 0;
            while (true) {
                JJCalls[] jJCallsArr = this.jj_2_rtns;
                if (i11 >= jJCallsArr.length) {
                    break;
                }
                for (JJCalls jJCalls = jJCallsArr[i11]; jJCalls != null; jJCalls = jJCalls.next) {
                    if (jJCalls.gen < this.jj_gen) {
                        jJCalls.first = null;
                    }
                }
                i11++;
            }
        }
        return this.token;
    }

    private static void jj_la1_init_0() {
        jj_la1_0 = new int[]{608700416, 67633152, 608700416, 1, 0, 0, 0, 541067264, 524288, 0, 134217728, 0, 0, 0, 0, 0, 0, 0, 0, 67108864, 0, -1521702912, -1521702912, 0, 0, 0, 0, 0, 134217728, 0, -1521702912, -1521702912, -1521702912, -1521702912, 524288, -2063294464, -1521702912, 0, 0, 0, 524288, -2063294464, -1521702912, 0, 0, 0, -1794859008, -1794859008, 0, 0, 0, 0, 0, 0, -1522227200, 0, -1522227200, 0, 0, 0, 0, 0, 0, 0, 0, -1794859008, 0, -2130403328, -2063294464, -2063294464, 0, -2063294464, -2063294464, 134217728, 134217728, -2130403328, -2063294464, 67108864, 0, 67108864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1522227200, 0, -2063294464, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1794859008, 0, 0, -1794859008, 0, 0, -2063294464, 0, 0, 0, 67108864, 0, 0, -1794859008, 0, 67108864, 0, 268435456, 67108864, 0, 0, 0, 0, 0, 268435456, 268435456, -1794859008, 0, 0, 0, -2063294464, -1794859008, 0, 4096, -1784356864, 0, -1784352768, 0, -1794859008, 0, 0, -1794859008, 4259840, 4259840, 0, 0, -1794859008, 4259840, -1794859008, 0, 33554432, -1253791744, -1794859008, -1794859008, -1253791744, -1794859008, 0, 67108864, 67108864, -1794859008, 0, 131072, 0, 1073741824, -1794859008, 67108864, 0, -1794859008, -1794859008, 0, -1521702912, -1521702912, 524288, -2063294464, 4194304, 0, 0, 0, 0, 0, 0, 0, 0, -1794859008, 67633152};
    }

    private static void jj_la1_init_1() {
        jj_la1_1 = new int[]{1154976400, 262272, 1154976400, 0, 0, 4194304, 0, 1154714112, 128, 0, 0, 8, 16384, 0, 8, 0, 0, 0, 8, 9715712, 0, 1157090240, 1157090240, 0, 0, 0, 0, 0, 0, 0, 1157090240, 1157090240, 1157090240, 1157090240, 128, 11813184, 1157090240, 0, 0, 536870912, 128, 11813184, 1157090240, 0, 0, 0, -1951115968, -1951115968, 0, 0, 0, 0, 536870912, 0, 1157090112, 0, 1157090112, 0, 0, 0, 0, 0, 536870912, 0, 0, -1984670400, 4194304, 2097472, 11813184, 11813184, 0, 11813184, 11813184, 16777216, 16777216, 2097472, 11813184, 9715712, 0, 9716736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1157090112, 0, 11813184, 32, 0, 0, 0, 0, 0, 0, 0, 0, -1951115968, 0, 0, -1951115968, 0, 0, 11813184, 0, 0, 0, 9716736, 0, 0, -1951115968, 0, 9716736, 0, -1996483584, 9715712, 0, 0, 0, 134218752, 0, -2147479552, Integer.MIN_VALUE, -1951115968, 0, 0, 0, 11813184, -1951115968, 0, 0, -1615047355, 0, -1615047355, 0, -1951115968, 0, 0, -1984670400, 0, 0, 0, 0, -1951115968, 0, -1682680512, 0, 0, -805839040, -1951115968, -1951115968, -805839040, -1951115968, 0, 9715712, 9715712, -1951115968, 0, 0, 0, 0, -1984670400, 9715712, 0, -1951115968, -1951115968, 0, 1157090240, 1157090240, 128, 11813184, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1984670400, 128};
    }

    private static void jj_la1_init_2() {
        jj_la1_2 = new int[]{18692, 2304, 18692, 0, 0, 0, 0, 16388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65520, 0, 65526, 65526, 0, 0, 0, 0, 0, 0, 0, 65526, 65526, 65526, 65526, 0, 65522, 65526, 0, 0, 0, 0, 65522, 65526, 0, 0, 0, 1615069170, 1615069170, 0, 0, 0, 0, 0, 0, 65524, 0, 65524, 0, 0, 0, 0, 0, 0, 0, 0, 1615069170, 0, 0, 65520, 65520, 0, 65520, 65520, 0, 0, 0, 65522, 65520, 0, 65520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 65524, 0, 65520, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1615069170, 0, 0, 1615069170, 0, 0, 65520, 0, 0, 0, 65520, 0, 0, 1615069170, 0, 65520, 0, 1615003648, 65520, 0, 0, 0, 0, 0, 1615003648, 0, 1615069170, 0, 0, 0, 65520, 1615069170, 0, 0, 1615069179, 0, 1615069179, 0, 1615069170, 0, 0, 1615069170, 0, 0, 32768, 0, 1615069170, 0, 1615069170, 0, 0, 1615069174, 1615069170, 1615069170, 1615069174, 1615069170, 0, 65520, 65520, 1615069170, 0, 0, 0, 0, 1615069170, 65520, 0, 1615069170, 1615069170, 0, 65524, 65524, 0, 65520, 0, 0, 64, 0, 64, 0, 13856, 256, 13856, 1615069170, 0};
    }

    private static void jj_la1_init_3() {
        jj_la1_3 = new int[]{GLES20.GL_STENCIL_BACK_FUNC, GLES20.GL_STENCIL_BACK_FUNC, GLES20.GL_STENCIL_BACK_FUNC, 0, 32768, 0, 8192, 32768, 0, 262144, 0, 0, 0, 262144, 0, 4096, 4096, 4096, 0, 32772, 4096, 297092, 297092, 2048, 32768, 32, 128, 4096, 0, 0, 297092, 297092, 297092, 297092, 0, 294916, 294916, 262144, 4096, 0, 0, 294916, 294916, 4096, 131072, 33280, -1072136027, -1072136027, 4096, 262144, 33280, 4096, 0, 2176, 32772, 4096, 32772, 4096, 4096, AL.AL_DOPPLER_FACTOR, 262144, 4096, 0, 262144, 262144, 294949, 0, 0, 4, 32772, 4096, 2129924, 2097156, 0, 0, 0, 4, 4, 262144, 4, 8454144, 8585216, 131072, 2097152, 536870912, 268435456, 0, 0, 0, 150994944, 150994944, 32772, 4096, 32772, 0, 100925440, 100925440, 0, 0, 0, 0, 0, 0, -1072136155, 1572864, 1572864, 32805, -1073741824, 0, 4, 262144, 32, 262144, 4, 73728, 64, -1072136155, 262144, 4, 32, 33, 4, 8192, 262144, 32, 0, 8704, 1, 0, -1072136155, 4096, 262144, 33312, 4, -1072136155, 128, 0, -1073706843, 4194304, -1073706843, 4096, -1072136027, -1073610752, -1073610752, -2147450843, 0, 0, 0, 4096, -1072136155, 0, -1072136027, 12582912, 0, -1072136155, -1072136155, -1072136155, -1072134107, -1072136155, 4096, 4, 4, -1072136155, 32, 0, 0, 0, 32805, 4, 4096, -1072136027, -1072136027, 4096, 34820, 34820, 0, 32772, 0, 4096, 0, 4096, 0, 4096, 0, 0, 0, 294949, 32768};
    }

    private static void jj_la1_init_4() {
        jj_la1_4 = new int[]{0, 0, 0, 8388608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1048064, 1048064, 0, 0, 0, 32, 64, 16, 0, 0, 0, 0, 0, 0, 4194304, 4194304, 256, 3, 3, 140, 140, 3, 3, 0, 0, 0, 0, 16, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 3, 1048064, 1048064, 0, 0, 0, 0, 0, 3, 0, 3, 0, 0, 3, 3, 3, 3, 3, 0, 0, 0, 3, 0, 0, 32, 0, 0, 0, 0, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    }

    private int jj_ntk_f() {
        Token token = this.token;
        Token token2 = token.next;
        this.jj_nt = token2;
        if (token2 != null) {
            int i10 = token2.kind;
            this.jj_ntk = i10;
            return i10;
        }
        token.next = this.token_source.getNextToken();
        int i11 = this.token.next.kind;
        this.jj_ntk = i11;
        return i11;
    }

    private void jj_rescan_token() {
        this.jj_rescan = true;
        for (int i10 = 0; i10 < 75; i10++) {
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
                            case 7:
                                jj_3_8();
                                break;
                            case 8:
                                jj_3_9();
                                break;
                            case 9:
                                jj_3_10();
                                break;
                            case 10:
                                jj_3_11();
                                break;
                            case 11:
                                jj_3_12();
                                break;
                            case 12:
                                jj_3_13();
                                break;
                            case 13:
                                jj_3_14();
                                break;
                            case 14:
                                jj_3_15();
                                break;
                            case 15:
                                jj_3_16();
                                break;
                            case 16:
                                jj_3_17();
                                break;
                            case 17:
                                jj_3_18();
                                break;
                            case 18:
                                jj_3_19();
                                break;
                            case 19:
                                jj_3_20();
                                break;
                            case 20:
                                jj_3_21();
                                break;
                            case 21:
                                jj_3_22();
                                break;
                            case 22:
                                jj_3_23();
                                break;
                            case 23:
                                jj_3_24();
                                break;
                            case 24:
                                jj_3_25();
                                break;
                            case 25:
                                jj_3_26();
                                break;
                            case 26:
                                jj_3_27();
                                break;
                            case 27:
                                jj_3_28();
                                break;
                            case 28:
                                jj_3_29();
                                break;
                            case 29:
                                jj_3_30();
                                break;
                            case 30:
                                jj_3_31();
                                break;
                            case 31:
                                jj_3_32();
                                break;
                            case 32:
                                jj_3_33();
                                break;
                            case 33:
                                jj_3_34();
                                break;
                            case 34:
                                jj_3_35();
                                break;
                            case 35:
                                jj_3_36();
                                break;
                            case 36:
                                jj_3_37();
                                break;
                            case 37:
                                jj_3_38();
                                break;
                            case 38:
                                jj_3_39();
                                break;
                            case 39:
                                jj_3_40();
                                break;
                            case 40:
                                jj_3_41();
                                break;
                            case 41:
                                jj_3_42();
                                break;
                            case 42:
                                jj_3_43();
                                break;
                            case 43:
                                jj_3_44();
                                break;
                            case 44:
                                jj_3_45();
                                break;
                            case 45:
                                jj_3_46();
                                break;
                            case 46:
                                jj_3_47();
                                break;
                            case 47:
                                jj_3_48();
                                break;
                            case 48:
                                jj_3_49();
                                break;
                            case 49:
                                jj_3_50();
                                break;
                            case 50:
                                jj_3_51();
                                break;
                            case 51:
                                jj_3_52();
                                break;
                            case 52:
                                jj_3_53();
                                break;
                            case 53:
                                jj_3_54();
                                break;
                            case 54:
                                jj_3_55();
                                break;
                            case 55:
                                jj_3_56();
                                break;
                            case 56:
                                jj_3_57();
                                break;
                            case 57:
                                jj_3_58();
                                break;
                            case 58:
                                jj_3_59();
                                break;
                            case 59:
                                jj_3_60();
                                break;
                            case 60:
                                jj_3_61();
                                break;
                            case 61:
                                jj_3_62();
                                break;
                            case 62:
                                jj_3_63();
                                break;
                            case 63:
                                jj_3_64();
                                break;
                            case 64:
                                jj_3_65();
                                break;
                            case 65:
                                jj_3_66();
                                break;
                            case 66:
                                jj_3_67();
                                break;
                            case 67:
                                jj_3_68();
                                break;
                            case 68:
                                jj_3_69();
                                break;
                            case 69:
                                jj_3_70();
                                break;
                            case 70:
                                jj_3_71();
                                break;
                            case 71:
                                jj_3_72();
                                break;
                            case 72:
                                jj_3_73();
                                break;
                            case 73:
                                jj_3_74();
                                break;
                            case 74:
                                jj_3_75();
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

    private void jj_save(int index, int xla) {
        JJCalls jJCalls = this.jj_2_rtns[index];
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
        jJCalls.gen = (this.jj_gen + xla) - this.jj_la;
        jJCalls.first = this.token;
        jJCalls.arg = xla;
    }

    private boolean jj_scan_token(int kind) {
        Token token = this.jj_scanpos;
        if (token == this.jj_lastpos) {
            this.jj_la--;
            Token token2 = token.next;
            if (token2 == null) {
                Token nextToken = this.token_source.getNextToken();
                token.next = nextToken;
                this.jj_scanpos = nextToken;
                this.jj_lastpos = nextToken;
            } else {
                this.jj_scanpos = token2;
                this.jj_lastpos = token2;
            }
        } else {
            this.jj_scanpos = token.next;
        }
        if (this.jj_rescan) {
            Token token3 = this.token;
            int i10 = 0;
            while (token3 != null && token3 != this.jj_scanpos) {
                i10++;
                token3 = token3.next;
            }
            if (token3 != null) {
                jj_add_error_token(kind, i10);
            }
        }
        Token token4 = this.jj_scanpos;
        if (token4.kind != kind) {
            return true;
        }
        if (this.jj_la == 0 && token4 == this.jj_lastpos) {
            throw this.jj_ls;
        }
        return false;
    }

    public final Expression AdditiveExpression() throws ParseException {
        BinaryExpr.Operator operator;
        Expression MultiplicativeExpression = MultiplicativeExpression();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 128 && i10 != 129) {
                this.jj_la1[98] = this.jj_gen;
                return MultiplicativeExpression;
            }
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 == 128) {
                jj_consume_token(128);
                operator = BinaryExpr.Operator.PLUS;
            } else {
                if (i11 != 129) {
                    this.jj_la1[99] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
                }
                jj_consume_token(129);
                operator = BinaryExpr.Operator.MINUS;
            }
            MultiplicativeExpression = new BinaryExpr(range(MultiplicativeExpression, token()), MultiplicativeExpression, MultiplicativeExpression(), operator);
        }
    }

    public final Expression AllocationExpression(Expression scope) throws ParseException {
        RangedList<Type> rangedList = new RangedList<>(null);
        JavaToken javaToken = JavaToken.INVALID;
        new NodeList();
        jj_consume_token(42);
        JavaToken orIfInvalid = scope == null ? token() : orIfInvalid(javaToken, scope);
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 114) {
            this.jj_la1[131] = this.jj_gen;
        } else {
            rangedList = TypeArguments();
        }
        NodeList<AnnotationExpr> Annotations = Annotations();
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 52) {
            if (i11 != 53) {
                switch (i11) {
                    case 13:
                    case 15:
                    case 18:
                    case 24:
                    case 31:
                    case 38:
                    case 40:
                        break;
                    case 26:
                    case 46:
                    case 50:
                    case 55:
                    case 98:
                        break;
                    default:
                        switch (i11) {
                            case 68:
                            case 69:
                            case 70:
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                            case 76:
                            case 77:
                            case 78:
                            case 79:
                                break;
                            default:
                                this.jj_la1[133] = this.jj_gen;
                                jj_consume_token(-1);
                                throw new ParseException();
                        }
                }
            }
            return ArrayCreation(orIfInvalid, PrimitiveType(Annotations));
        }
        ClassOrInterfaceType ClassOrInterfaceType = ClassOrInterfaceType(Annotations);
        int i12 = this.jj_ntk;
        if (i12 == -1) {
            i12 = jj_ntk_f();
        }
        if (i12 == 101) {
            return new ObjectCreationExpr(range(orIfInvalid, token()), scope, ClassOrInterfaceType, rangedList.list, Arguments(), jj_2_50(2) ? ClassOrInterfaceBody() : null);
        }
        if (i12 == 105 || i12 == 111) {
            return ArrayCreation(orIfInvalid, ClassOrInterfaceType);
        }
        this.jj_la1[132] = this.jj_gen;
        jj_consume_token(-1);
        throw new ParseException();
    }

    public final Expression AndExpression() throws ParseException {
        Expression EqualityExpression = EqualityExpression();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 132) {
                this.jj_la1[88] = this.jj_gen;
                return EqualityExpression;
            }
            jj_consume_token(132);
            EqualityExpression = new BinaryExpr(range(EqualityExpression, token()), EqualityExpression, EqualityExpression(), BinaryExpr.Operator.BINARY_AND);
        }
    }

    public final ClassOrInterfaceType AnnotatedClassOrInterfaceType() throws ParseException {
        new NodeList();
        return ClassOrInterfaceType(Annotations());
    }

    public final ReferenceType AnnotatedReferenceType() throws ParseException {
        return ReferenceType(Annotations());
    }

    public final Type AnnotatedType() throws ParseException {
        return Type(Annotations());
    }

    public final AnnotationExpr Annotation() throws ParseException {
        NodeList<MemberValuePair> emptyNodeList = emptyNodeList();
        jj_consume_token(111);
        JavaToken javaToken = token();
        Name Name = Name();
        if (!jj_2_67(Integer.MAX_VALUE)) {
            if (!jj_2_68(Integer.MAX_VALUE)) {
                return new MarkerAnnotationExpr(range(javaToken, token()), Name);
            }
            jj_consume_token(101);
            Expression MemberValue = MemberValue();
            jj_consume_token(102);
            return new SingleMemberAnnotationExpr(range(javaToken, token()), Name, MemberValue);
        }
        jj_consume_token(101);
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 26 && i10 != 46 && i10 != 50 && i10 != 52 && i10 != 55 && i10 != 98) {
            switch (i10) {
                case 68:
                case 69:
                case 70:
                case 71:
                case 72:
                case 73:
                case 74:
                case 75:
                case 76:
                case 77:
                case 78:
                case 79:
                    break;
                default:
                    this.jj_la1[168] = this.jj_gen;
                    break;
            }
            jj_consume_token(102);
            return new NormalAnnotationExpr(range(javaToken, token()), Name, emptyNodeList);
        }
        emptyNodeList = MemberValuePairs();
        jj_consume_token(102);
        return new NormalAnnotationExpr(range(javaToken, token()), Name, emptyNodeList);
    }

    public final BodyDeclaration<?> AnnotationBodyDeclaration() throws ParseException {
        ModifierHolder Modifiers = Modifiers();
        if (jj_2_71(Integer.MAX_VALUE)) {
            return RecordDeclaration(Modifiers);
        }
        if (jj_2_72(Integer.MAX_VALUE)) {
            return AnnotationTypeMemberDeclaration(Modifiers);
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 19 || i10 == 39) {
            return ClassOrInterfaceDeclaration(Modifiers);
        }
        this.jj_la1[175] = this.jj_gen;
        if (jj_2_73(Integer.MAX_VALUE)) {
            return EnumDeclaration(Modifiers);
        }
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 52 && i11 != 53) {
            switch (i11) {
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 31:
                case 38:
                case 40:
                case 46:
                case 50:
                case 55:
                case 98:
                    break;
                case 111:
                    return AnnotationTypeDeclaration(Modifiers);
                default:
                    switch (i11) {
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                            break;
                        default:
                            this.jj_la1[176] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                    }
            }
        }
        return FieldDeclaration(Modifiers);
    }

    public final BodyDeclaration<?> AnnotationBodyDeclarationParseStart() throws ParseException {
        BodyDeclaration<?> AnnotationBodyDeclaration = AnnotationBodyDeclaration();
        jj_consume_token(0);
        return AnnotationBodyDeclaration;
    }

    public final AnnotationExpr AnnotationParseStart() throws ParseException {
        AnnotationExpr Annotation = Annotation();
        jj_consume_token(0);
        return Annotation;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0020. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0023. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0043. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x0046. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0049. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x004c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x001a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x001d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0037 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0069 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0069 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0063 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final NodeList<BodyDeclaration<?>> AnnotationTypeBody() throws ParseException {
        int i10;
        NodeList<BodyDeclaration<?>> emptyNodeList = emptyNodeList();
        jj_consume_token(103);
        while (true) {
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 != 18 && i11 != 19) {
                switch (i11) {
                    default:
                        switch (i11) {
                            default:
                                switch (i11) {
                                    default:
                                        switch (i11) {
                                            default:
                                                switch (i11) {
                                                    case 68:
                                                    case 69:
                                                    case 70:
                                                    case 71:
                                                    case 72:
                                                    case 73:
                                                    case 74:
                                                    case 75:
                                                    case 76:
                                                    case 77:
                                                    case 78:
                                                    case 79:
                                                        break;
                                                    default:
                                                        this.jj_la1[173] = this.jj_gen;
                                                        jj_consume_token(104);
                                                        return emptyNodeList;
                                                }
                                            case 52:
                                            case 53:
                                            case 54:
                                            case 55:
                                                i10 = this.jj_ntk;
                                                if (i10 == -1) {
                                                    i10 = jj_ntk_f();
                                                }
                                                if (i10 != 18 && i10 != 19) {
                                                    switch (i10) {
                                                        case 11:
                                                        case 13:
                                                        case 15:
                                                        case 22:
                                                        case 24:
                                                        case 26:
                                                        case 29:
                                                        case 31:
                                                        case 43:
                                                        case 58:
                                                        case 62:
                                                        case 66:
                                                        case 98:
                                                        case 111:
                                                        case 107:
                                                            jj_consume_token(107);
                                                        default:
                                                            switch (i10) {
                                                                default:
                                                                    switch (i10) {
                                                                        default:
                                                                            switch (i10) {
                                                                                default:
                                                                                    switch (i10) {
                                                                                        case 68:
                                                                                        case 69:
                                                                                        case 70:
                                                                                        case 71:
                                                                                        case 72:
                                                                                        case 73:
                                                                                        case 74:
                                                                                        case 75:
                                                                                        case 76:
                                                                                        case 77:
                                                                                        case 78:
                                                                                        case 79:
                                                                                            break;
                                                                                        default:
                                                                                            this.jj_la1[174] = this.jj_gen;
                                                                                            jj_consume_token(-1);
                                                                                            throw new ParseException();
                                                                                    }
                                                                                case 52:
                                                                                case 53:
                                                                                case 54:
                                                                                case 55:
                                                                                    emptyNodeList = addWhenNotNull(emptyNodeList, AnnotationBodyDeclaration());
                                                                            }
                                                                        case 46:
                                                                        case 47:
                                                                        case 48:
                                                                        case 49:
                                                                        case 50:
                                                                            break;
                                                                    }
                                                                case 38:
                                                                case 39:
                                                                case 40:
                                                                case 41:
                                                                    break;
                                                            }
                                                    }
                                                }
                                                emptyNodeList = addWhenNotNull(emptyNodeList, AnnotationBodyDeclaration());
                                                break;
                                        }
                                    case 46:
                                    case 47:
                                    case 48:
                                    case 49:
                                    case 50:
                                        break;
                                }
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                                break;
                        }
                    case 11:
                    case 13:
                    case 15:
                    case 22:
                    case 24:
                    case 26:
                    case 29:
                    case 31:
                    case 43:
                    case 58:
                    case 62:
                    case 66:
                    case 98:
                    case 107:
                    case 111:
                        break;
                }
            }
            i10 = this.jj_ntk;
            if (i10 == -1) {
            }
            if (i10 != 18) {
                switch (i10) {
                    case 11:
                    case 13:
                    case 15:
                    case 22:
                    case 24:
                    case 26:
                    case 29:
                    case 31:
                    case 43:
                    case 58:
                    case 62:
                    case 66:
                    case 98:
                    case 111:
                        break;
                    case 107:
                        break;
                }
            }
            emptyNodeList = addWhenNotNull(emptyNodeList, AnnotationBodyDeclaration());
        }
    }

    public final AnnotationDeclaration AnnotationTypeDeclaration(ModifierHolder modifier) throws ParseException {
        emptyNodeList();
        JavaToken javaToken = modifier.begin;
        jj_consume_token(111);
        JavaToken orIfInvalid = orIfInvalid(javaToken, token());
        jj_consume_token(39);
        return new AnnotationDeclaration(range(orIfInvalid, token()), modifier.modifiers, modifier.annotations, SimpleName(), AnnotationTypeBody());
    }

    public final AnnotationMemberDeclaration AnnotationTypeMemberDeclaration(ModifierHolder modifier) throws ParseException {
        Expression DefaultValue;
        Type Type = Type(emptyNodeList());
        SimpleName SimpleName = SimpleName();
        jj_consume_token(101);
        jj_consume_token(102);
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 22) {
            this.jj_la1[177] = this.jj_gen;
            DefaultValue = null;
        } else {
            DefaultValue = DefaultValue();
        }
        Expression expression = DefaultValue;
        jj_consume_token(107);
        return new AnnotationMemberDeclaration(range(orIfInvalid(modifier.begin, Type), token()), modifier.modifiers, modifier.annotations, Type, SimpleName, expression);
    }

    public final NodeList<AnnotationExpr> Annotations() throws ParseException {
        NodeList<AnnotationExpr> nodeList = new NodeList<>();
        while (jj_2_66(Integer.MAX_VALUE)) {
            nodeList = add((NodeList<NodeList<AnnotationExpr>>) nodeList, (NodeList<AnnotationExpr>) Annotation());
        }
        return nodeList;
    }

    public final NodeList<Expression> ArgumentList() throws ParseException {
        NodeList<Expression> emptyNodeList = emptyNodeList();
        emptyNodeList.add((NodeList<Expression>) Expression());
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[130] = this.jj_gen;
                return emptyNodeList;
            }
            jj_consume_token(108);
            emptyNodeList.add((NodeList<Expression>) Expression());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x003f A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final NodeList<Expression> Arguments() throws ParseException {
        NodeList<Expression> emptyNodeList = emptyNodeList();
        jj_consume_token(101);
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52 && i10 != 53 && i10 != 93 && i10 != 94 && i10 != 115 && i10 != 116) {
            switch (i10) {
                default:
                    switch (i10) {
                        default:
                            switch (i10) {
                                default:
                                    switch (i10) {
                                        case 126:
                                        case 127:
                                        case 128:
                                        case 129:
                                            break;
                                        default:
                                            this.jj_la1[129] = this.jj_gen;
                                            break;
                                    }
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                case 80:
                                case 81:
                                    emptyNodeList = ArgumentList();
                                    break;
                            }
                        case 55:
                        case 56:
                        case 57:
                            break;
                    }
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 28:
                case 31:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 50:
                case 59:
                case 63:
                case 65:
                case 86:
                case 96:
                case 98:
                case 101:
                case 111:
                    break;
            }
            jj_consume_token(102);
            return emptyNodeList;
        }
        emptyNodeList = ArgumentList();
        jj_consume_token(102);
        return emptyNodeList;
    }

    public final ArrayType.ArrayBracketPair ArrayBracketPair(ArrayType.Origin origin) throws ParseException {
        JavaToken javaToken = JavaToken.INVALID;
        NodeList<AnnotationExpr> Annotations = Annotations();
        jj_consume_token(105);
        JavaToken orIfInvalid = orIfInvalid(javaToken, token());
        jj_consume_token(106);
        return new ArrayType.ArrayBracketPair(range(orIfInvalid, token()), origin, Annotations);
    }

    public final ArrayCreationExpr ArrayCreation(JavaToken begin, Type type) throws ParseException {
        Expression Expression;
        ArrayInitializerExpr ArrayInitializer;
        NodeList<Expression> emptyNodeList = emptyNodeList();
        List<NodeList<AnnotationExpr>> arrayList = new ArrayList<>();
        new NodeList();
        JavaToken javaToken = JavaToken.INVALID;
        ArrayList arrayList2 = new ArrayList();
        do {
            NodeList<AnnotationExpr> Annotations = Annotations();
            jj_consume_token(105);
            javaToken = Annotations.isEmpty() ? token() : orIfInvalid(javaToken, Annotations.get(0));
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 52 && i10 != 53 && i10 != 93 && i10 != 94 && i10 != 115 && i10 != 116) {
                switch (i10) {
                    case 13:
                    case 15:
                    case 18:
                    case 24:
                    case 26:
                    case 28:
                    case 31:
                    case 38:
                    case 40:
                    case 42:
                    case 44:
                    case 46:
                    case 50:
                    case 59:
                    case 63:
                    case 65:
                    case 86:
                    case 96:
                    case 98:
                    case 101:
                    case 111:
                        break;
                    default:
                        switch (i10) {
                            case 55:
                            case 56:
                            case 57:
                                break;
                            default:
                                switch (i10) {
                                    case 68:
                                    case 69:
                                    case 70:
                                    case 71:
                                    case 72:
                                    case 73:
                                    case 74:
                                    case 75:
                                    case 76:
                                    case 77:
                                    case 78:
                                    case 79:
                                    case 80:
                                    case 81:
                                        break;
                                    default:
                                        switch (i10) {
                                            case 126:
                                            case 127:
                                            case 128:
                                            case 129:
                                                break;
                                            default:
                                                this.jj_la1[134] = this.jj_gen;
                                                Expression = null;
                                                break;
                                        }
                                }
                        }
                }
            }
            Expression = Expression();
            arrayList = add(arrayList, Annotations);
            emptyNodeList = add((NodeList<NodeList<Expression>>) emptyNodeList, (NodeList<Expression>) Expression);
            jj_consume_token(106);
            arrayList2.add(range(javaToken, token()));
        } while (jj_2_51(2));
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 103) {
            this.jj_la1[135] = this.jj_gen;
            ArrayInitializer = null;
        } else {
            ArrayInitializer = ArrayInitializer();
        }
        return juggleArrayCreation(range(begin, token()), arrayList2, type, emptyNodeList, arrayList, ArrayInitializer);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0045 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0054 A[LOOP:0: B:31:0x004d->B:33:0x0054, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ArrayInitializerExpr ArrayInitializer() throws ParseException {
        int i10;
        NodeList emptyNodeList = emptyNodeList();
        jj_consume_token(103);
        JavaToken javaToken = token();
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 52 && i11 != 53 && i11 != 93 && i11 != 94 && i11 != 115 && i11 != 116) {
            switch (i11) {
                default:
                    switch (i11) {
                        default:
                            switch (i11) {
                                default:
                                    switch (i11) {
                                        case 126:
                                        case 127:
                                        case 128:
                                        case 129:
                                            break;
                                        default:
                                            this.jj_la1[47] = this.jj_gen;
                                            break;
                                    }
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                case 80:
                                case 81:
                                    emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) VariableInitializer());
                                    while (jj_2_19(2)) {
                                        jj_consume_token(108);
                                        emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) VariableInitializer());
                                    }
                                    break;
                            }
                        case 55:
                        case 56:
                        case 57:
                            break;
                    }
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 28:
                case 31:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 50:
                case 59:
                case 63:
                case 65:
                case 86:
                case 96:
                case 98:
                case 101:
                case 103:
                case 111:
                    break;
            }
            i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 == 108) {
                this.jj_la1[48] = this.jj_gen;
            } else {
                jj_consume_token(108);
            }
            jj_consume_token(104);
            return new ArrayInitializerExpr(range(javaToken, token()), emptyNodeList);
        }
        emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) VariableInitializer());
        while (jj_2_19(2)) {
        }
        i10 = this.jj_ntk;
        if (i10 == -1) {
        }
        if (i10 == 108) {
        }
        jj_consume_token(104);
        return new ArrayInitializerExpr(range(javaToken, token()), emptyNodeList);
    }

    public final AssertStmt AssertStatement() throws ParseException {
        Expression Expression;
        jj_consume_token(12);
        JavaToken javaToken = token();
        Expression Expression2 = Expression();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 118) {
            this.jj_la1[138] = this.jj_gen;
            Expression = null;
        } else {
            jj_consume_token(118);
            Expression = Expression();
        }
        jj_consume_token(107);
        return new AssertStmt(range(javaToken, token()), Expression2, Expression);
    }

    public final AssignExpr.Operator AssignmentOperator() throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 113) {
            jj_consume_token(113);
            return AssignExpr.Operator.ASSIGN;
        }
        switch (i10) {
            case 137:
                jj_consume_token(137);
                return AssignExpr.Operator.PLUS;
            case 138:
                jj_consume_token(138);
                return AssignExpr.Operator.MINUS;
            case 139:
                jj_consume_token(139);
                return AssignExpr.Operator.MULTIPLY;
            case 140:
                jj_consume_token(140);
                return AssignExpr.Operator.DIVIDE;
            case 141:
                jj_consume_token(141);
                return AssignExpr.Operator.BINARY_AND;
            case 142:
                jj_consume_token(142);
                return AssignExpr.Operator.BINARY_OR;
            case 143:
                jj_consume_token(143);
                return AssignExpr.Operator.XOR;
            case 144:
                jj_consume_token(144);
                return AssignExpr.Operator.REMAINDER;
            case 145:
                jj_consume_token(145);
                return AssignExpr.Operator.LEFT_SHIFT;
            case 146:
                jj_consume_token(146);
                return AssignExpr.Operator.SIGNED_RIGHT_SHIFT;
            case 147:
                jj_consume_token(147);
                return AssignExpr.Operator.UNSIGNED_RIGHT_SHIFT;
            default:
                this.jj_la1[82] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
        }
    }

    public final BlockStmt Block() throws ParseException {
        emptyNodeList();
        jj_consume_token(103);
        JavaToken javaToken = token();
        try {
            NodeList<Statement> Statements = Statements();
            jj_consume_token(104);
            return new BlockStmt(range(javaToken, token()), Statements);
        } catch (ParseException e10) {
            recover(104, e10);
            BlockStmt blockStmt = new BlockStmt(range(javaToken, token()), new NodeList());
            blockStmt.setParsed(Node.Parsedness.UNPARSABLE);
            return blockStmt;
        }
    }

    public final BlockStmt BlockParseStart() throws ParseException {
        BlockStmt Block = Block();
        jj_consume_token(0);
        return Block;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:39:0x0091. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:40:0x0094. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:41:0x0097. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:42:0x009a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:43:0x009d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b4 A[Catch: ParseException -> 0x0022, FALL_THROUGH, TRY_LEAVE, TryCatch #0 {ParseException -> 0x0022, blocks: (B:3:0x0005, B:5:0x000b, B:8:0x0025, B:10:0x002b, B:12:0x0042, B:14:0x0048, B:16:0x004d, B:18:0x0053, B:20:0x0068, B:22:0x006d, B:39:0x0091, B:40:0x0094, B:41:0x0097, B:42:0x009a, B:43:0x009d, B:44:0x00a0, B:45:0x00a3, B:46:0x00b3, B:47:0x00b4), top: B:2:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Statement BlockStatement() throws ParseException {
        try {
            if (jj_2_54(Integer.MAX_VALUE)) {
                ClassOrInterfaceDeclaration ClassOrInterfaceDeclaration = ClassOrInterfaceDeclaration(Modifiers());
                return new LocalClassDeclarationStmt(range(ClassOrInterfaceDeclaration, token()), ClassOrInterfaceDeclaration);
            }
            if (jj_2_55(Integer.MAX_VALUE)) {
                RecordDeclaration RecordDeclaration = RecordDeclaration(Modifiers());
                return new LocalRecordDeclarationStmt(range(RecordDeclaration, token()), RecordDeclaration);
            }
            if (jj_2_56(Integer.MAX_VALUE)) {
                return YieldStatement();
            }
            if (jj_2_57(Integer.MAX_VALUE)) {
                VariableDeclarationExpr VariableDeclarationExpression = VariableDeclarationExpression();
                jj_consume_token(107);
                return new ExpressionStmt(range(VariableDeclarationExpression, token()), VariableDeclarationExpression);
            }
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 23 && i10 != 24 && i10 != 31 && i10 != 32 && i10 != 93 && i10 != 94 && i10 != 126 && i10 != 127) {
                switch (i10) {
                    default:
                        switch (i10) {
                            default:
                                switch (i10) {
                                    default:
                                        switch (i10) {
                                            default:
                                                switch (i10) {
                                                    default:
                                                        switch (i10) {
                                                            case 67:
                                                            case 68:
                                                            case 69:
                                                            case 70:
                                                            case 71:
                                                            case 72:
                                                            case 73:
                                                            case 74:
                                                            case 75:
                                                            case 76:
                                                            case 77:
                                                            case 78:
                                                            case 79:
                                                            case 80:
                                                            case 81:
                                                                break;
                                                            default:
                                                                this.jj_la1[139] = this.jj_gen;
                                                                jj_consume_token(-1);
                                                                throw new ParseException();
                                                        }
                                                    case 63:
                                                    case 64:
                                                    case 65:
                                                        return Statement();
                                                }
                                            case 55:
                                            case 56:
                                            case 57:
                                            case 58:
                                            case 59:
                                            case 60:
                                                break;
                                        }
                                    case 50:
                                    case 51:
                                    case 52:
                                    case 53:
                                        break;
                                }
                            case 18:
                            case 21:
                            case 26:
                            case 28:
                            case 34:
                            case 38:
                            case 40:
                            case 42:
                            case 44:
                            case 46:
                            case 86:
                            case 96:
                            case 98:
                            case 101:
                            case 103:
                            case 107:
                            case 111:
                                break;
                        }
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        break;
                }
            }
            return Statement();
        } catch (ParseException e10) {
            return new UnparsableStmt(recoverStatement(107, 103, 104, e10));
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x002d. Please report as an issue. */
    public final Statement BlockStatementParseStart() throws ParseException {
        Statement ExplicitConstructorInvocation;
        if (jj_2_75(3)) {
            ExplicitConstructorInvocation = BlockStatement();
        } else {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 52 && i10 != 53 && i10 != 55 && i10 != 56 && i10 != 93 && i10 != 94) {
                switch (i10) {
                    default:
                        switch (i10) {
                            case 68:
                            case 69:
                            case 70:
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                            case 76:
                            case 77:
                            case 78:
                            case 79:
                            case 80:
                            case 81:
                                break;
                            default:
                                this.jj_la1[186] = this.jj_gen;
                                jj_consume_token(-1);
                                throw new ParseException();
                        }
                    case 13:
                    case 15:
                    case 18:
                    case 24:
                    case 26:
                    case 28:
                    case 31:
                    case 38:
                    case 40:
                    case 42:
                    case 44:
                    case 46:
                    case 50:
                    case 59:
                    case 63:
                    case 65:
                    case 86:
                    case 96:
                    case 98:
                    case 101:
                    case 111:
                    case 114:
                        ExplicitConstructorInvocation = ExplicitConstructorInvocation();
                        break;
                }
            }
            ExplicitConstructorInvocation = ExplicitConstructorInvocation();
        }
        jj_consume_token(0);
        return ExplicitConstructorInvocation;
    }

    public final Expression BooleanLiteral() throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 28) {
            jj_consume_token(28);
            return new BooleanLiteralExpr(tokenRange(), false);
        }
        if (i10 == 63) {
            jj_consume_token(63);
            return new BooleanLiteralExpr(tokenRange(), true);
        }
        this.jj_la1[128] = this.jj_gen;
        jj_consume_token(-1);
        throw new ParseException();
    }

    public final BreakStmt BreakStatement() throws ParseException {
        SimpleName SimpleName;
        jj_consume_token(14);
        JavaToken javaToken = token();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 26 && i10 != 46 && i10 != 50 && i10 != 52 && i10 != 55 && i10 != 98) {
            switch (i10) {
                case 68:
                case 69:
                case 70:
                case 71:
                case 72:
                case 73:
                case 74:
                case 75:
                case 76:
                case 77:
                case 78:
                case 79:
                    break;
                default:
                    this.jj_la1[160] = this.jj_gen;
                    SimpleName = null;
                    break;
            }
            jj_consume_token(107);
            return new BreakStmt(range(javaToken, token()), SimpleName);
        }
        SimpleName = SimpleName();
        jj_consume_token(107);
        return new BreakStmt(range(javaToken, token()), SimpleName);
    }

    public final Expression CastExpression() throws ParseException {
        JavaToken javaToken = JavaToken.INVALID;
        NodeList emptyNodeList = emptyNodeList();
        jj_consume_token(101);
        JavaToken javaToken2 = token();
        NodeList<AnnotationExpr> Annotations = Annotations();
        if (jj_2_41(2)) {
            PrimitiveType PrimitiveType = PrimitiveType(Annotations);
            jj_consume_token(102);
            return new CastExpr(range(javaToken2, token()), PrimitiveType, UnaryExpression());
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52 && i10 != 53) {
            switch (i10) {
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 31:
                case 38:
                case 40:
                case 46:
                case 50:
                case 55:
                case 98:
                    break;
                default:
                    switch (i10) {
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                            break;
                        default:
                            this.jj_la1[109] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                    }
            }
        }
        ReferenceType ReferenceType = ReferenceType(Annotations);
        NodeList add = add((NodeList<NodeList>) emptyNodeList, (NodeList) ReferenceType);
        while (true) {
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 != 132) {
                this.jj_la1[108] = this.jj_gen;
                jj_consume_token(102);
                Expression UnaryExpressionNotPlusMinus = UnaryExpressionNotPlusMinus();
                return add.size() > 1 ? new CastExpr(range(javaToken2, token()), new IntersectionType(range(add.get(0), add.get(add.size() - 1)), add), UnaryExpressionNotPlusMinus) : new CastExpr(range(javaToken2, token()), ReferenceType, UnaryExpressionNotPlusMinus);
            }
            jj_consume_token(132);
            ReferenceType = AnnotatedReferenceType();
            add = add((NodeList<NodeList>) add, (NodeList) ReferenceType);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0022. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0025. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0028. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x002b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x004f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x0052. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x0055. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x0058. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003f A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0052 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0075 A[ADDED_TO_REGION, FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0075 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x006f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final NodeList<BodyDeclaration<?>> ClassOrInterfaceBody() throws ParseException {
        int i10;
        NodeList<BodyDeclaration<?>> emptyNodeList = emptyNodeList();
        jj_consume_token(103);
        while (true) {
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 != 18 && i11 != 19 && i11 != 65 && i11 != 66) {
                switch (i11) {
                    default:
                        switch (i11) {
                            default:
                                switch (i11) {
                                    default:
                                        switch (i11) {
                                            default:
                                                switch (i11) {
                                                    case 68:
                                                    case 69:
                                                    case 70:
                                                    case 71:
                                                    case 72:
                                                    case 73:
                                                    case 74:
                                                    case 75:
                                                    case 76:
                                                    case 77:
                                                    case 78:
                                                    case 79:
                                                        break;
                                                    default:
                                                        this.jj_la1[30] = this.jj_gen;
                                                        jj_consume_token(104);
                                                        return emptyNodeList;
                                                }
                                            case 52:
                                            case 53:
                                            case 54:
                                            case 55:
                                                i10 = this.jj_ntk;
                                                if (i10 == -1) {
                                                    i10 = jj_ntk_f();
                                                }
                                                if (i10 != 18 && i10 != 19 && i10 != 65 && i10 != 66) {
                                                    switch (i10) {
                                                        case 11:
                                                        case 13:
                                                        case 15:
                                                        case 22:
                                                        case 24:
                                                        case 26:
                                                        case 29:
                                                        case 31:
                                                        case 43:
                                                        case 58:
                                                        case 62:
                                                        case 98:
                                                        case 103:
                                                        case 111:
                                                        case 114:
                                                        case 107:
                                                            jj_consume_token(107);
                                                        default:
                                                            switch (i10) {
                                                                default:
                                                                    switch (i10) {
                                                                        default:
                                                                            switch (i10) {
                                                                                default:
                                                                                    switch (i10) {
                                                                                        case 68:
                                                                                        case 69:
                                                                                        case 70:
                                                                                        case 71:
                                                                                        case 72:
                                                                                        case 73:
                                                                                        case 74:
                                                                                        case 75:
                                                                                        case 76:
                                                                                        case 77:
                                                                                        case 78:
                                                                                        case 79:
                                                                                            break;
                                                                                        default:
                                                                                            this.jj_la1[31] = this.jj_gen;
                                                                                            jj_consume_token(-1);
                                                                                            throw new ParseException();
                                                                                    }
                                                                                case 52:
                                                                                case 53:
                                                                                case 54:
                                                                                case 55:
                                                                                    emptyNodeList.add((NodeList<BodyDeclaration<?>>) ClassOrInterfaceBodyDeclaration());
                                                                            }
                                                                        case 46:
                                                                        case 47:
                                                                        case 48:
                                                                        case 49:
                                                                        case 50:
                                                                            break;
                                                                    }
                                                                case 38:
                                                                case 39:
                                                                case 40:
                                                                case 41:
                                                                    break;
                                                            }
                                                    }
                                                }
                                                emptyNodeList.add((NodeList<BodyDeclaration<?>>) ClassOrInterfaceBodyDeclaration());
                                                break;
                                        }
                                    case 46:
                                    case 47:
                                    case 48:
                                    case 49:
                                    case 50:
                                        break;
                                }
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                                break;
                        }
                    case 11:
                    case 13:
                    case 15:
                    case 22:
                    case 24:
                    case 26:
                    case 29:
                    case 31:
                    case 43:
                    case 58:
                    case 62:
                    case 98:
                    case 103:
                    case 107:
                    case 111:
                    case 114:
                        break;
                }
            }
            i10 = this.jj_ntk;
            if (i10 == -1) {
            }
            if (i10 != 18) {
                switch (i10) {
                    case 11:
                    case 13:
                    case 15:
                    case 22:
                    case 24:
                    case 26:
                    case 29:
                    case 31:
                    case 43:
                    case 58:
                    case 62:
                    case 98:
                    case 103:
                    case 111:
                    case 114:
                        break;
                    case 107:
                        break;
                }
            }
            emptyNodeList.add((NodeList<BodyDeclaration<?>>) ClassOrInterfaceBodyDeclaration());
        }
    }

    public final BodyDeclaration<?> ClassOrInterfaceBodyDeclaration() throws ParseException {
        if (jj_2_18(2)) {
            return InitializerDeclaration();
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 18 && i10 != 19 && i10 != 65 && i10 != 66) {
            switch (i10) {
                case 11:
                case 13:
                case 15:
                case 22:
                case 24:
                case 26:
                case 29:
                case 31:
                case 43:
                case 58:
                case 62:
                case 98:
                case 111:
                case 114:
                    break;
                default:
                    switch (i10) {
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                            break;
                        default:
                            switch (i10) {
                                case 46:
                                case 47:
                                case 48:
                                case 49:
                                case 50:
                                    break;
                                default:
                                    switch (i10) {
                                        case 52:
                                        case 53:
                                        case 54:
                                        case 55:
                                            break;
                                        default:
                                            switch (i10) {
                                                case 68:
                                                case 69:
                                                case 70:
                                                case 71:
                                                case 72:
                                                case 73:
                                                case 74:
                                                case 75:
                                                case 76:
                                                case 77:
                                                case 78:
                                                case 79:
                                                    break;
                                                default:
                                                    this.jj_la1[42] = this.jj_gen;
                                                    jj_consume_token(-1);
                                                    throw new ParseException();
                                            }
                                    }
                            }
                    }
            }
        }
        ModifierHolder Modifiers = Modifiers();
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 == 19 || i11 == 39) {
            return ClassOrInterfaceDeclaration(Modifiers);
        }
        this.jj_la1[40] = this.jj_gen;
        if (jj_2_13(Integer.MAX_VALUE)) {
            return RecordDeclaration(Modifiers);
        }
        if (jj_2_14(Integer.MAX_VALUE)) {
            return EnumDeclaration(Modifiers);
        }
        if (jj_2_15(Integer.MAX_VALUE)) {
            return AnnotationTypeDeclaration(Modifiers);
        }
        if (jj_2_16(Integer.MAX_VALUE)) {
            return ConstructorDeclaration(Modifiers);
        }
        if (jj_2_17(Integer.MAX_VALUE)) {
            return FieldDeclaration(Modifiers);
        }
        int i12 = this.jj_ntk;
        if (i12 == -1) {
            i12 = jj_ntk_f();
        }
        if (i12 != 52 && i12 != 53) {
            switch (i12) {
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 31:
                case 38:
                case 40:
                case 46:
                case 50:
                case 55:
                case 65:
                case 98:
                case 111:
                case 114:
                    break;
                default:
                    switch (i12) {
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                            break;
                        default:
                            this.jj_la1[41] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                    }
            }
        }
        return MethodDeclaration(Modifiers);
    }

    public final BodyDeclaration<?> ClassOrInterfaceBodyDeclarationParseStart() throws ParseException {
        BodyDeclaration<?> ClassOrInterfaceBodyDeclaration = ClassOrInterfaceBodyDeclaration();
        jj_consume_token(0);
        return ClassOrInterfaceBodyDeclaration;
    }

    public final ClassOrInterfaceDeclaration ClassOrInterfaceDeclaration(ModifierHolder modifier) throws ParseException {
        boolean z10;
        RangedList<TypeParameter> rangedList = new RangedList<>(emptyNodeList());
        NodeList<ClassOrInterfaceType> emptyNodeList = emptyNodeList();
        NodeList<ClassOrInterfaceType> emptyNodeList2 = emptyNodeList();
        NodeList<ClassOrInterfaceType> emptyNodeList3 = emptyNodeList();
        emptyNodeList();
        JavaToken javaToken = modifier.begin;
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 19) {
            jj_consume_token(19);
            z10 = false;
        } else {
            if (i10 != 39) {
                this.jj_la1[8] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
            }
            jj_consume_token(39);
            z10 = true;
        }
        boolean z11 = z10;
        JavaToken orIfInvalid = orIfInvalid(javaToken, token());
        SimpleName SimpleName = SimpleName();
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 114) {
            this.jj_la1[9] = this.jj_gen;
        } else {
            rangedList = TypeParameters();
        }
        int i12 = this.jj_ntk;
        if (i12 == -1) {
            i12 = jj_ntk_f();
        }
        if (i12 != 27) {
            this.jj_la1[10] = this.jj_gen;
        } else {
            emptyNodeList = ExtendsList();
        }
        NodeList<ClassOrInterfaceType> nodeList = emptyNodeList;
        int i13 = this.jj_ntk;
        if (i13 == -1) {
            i13 = jj_ntk_f();
        }
        if (i13 != 35) {
            this.jj_la1[11] = this.jj_gen;
        } else {
            emptyNodeList2 = ImplementsList();
        }
        NodeList<ClassOrInterfaceType> nodeList2 = emptyNodeList2;
        int i14 = this.jj_ntk;
        if (i14 == -1) {
            i14 = jj_ntk_f();
        }
        if (i14 != 46) {
            this.jj_la1[12] = this.jj_gen;
        } else {
            emptyNodeList3 = PermitsList();
        }
        return new ClassOrInterfaceDeclaration(range(orIfInvalid, token()), modifier.modifiers, modifier.annotations, z11, SimpleName, rangedList.list, nodeList, nodeList2, emptyNodeList3, ClassOrInterfaceBody());
    }

    public final ClassOrInterfaceType ClassOrInterfaceType(NodeList<AnnotationExpr> firstAnnotations) throws ParseException {
        RangedList<Type> rangedList = new RangedList<>(null);
        new NodeList();
        SimpleName SimpleName = SimpleName();
        JavaToken javaToken = token();
        if (jj_2_29(2)) {
            rangedList = TypeArguments();
        }
        ClassOrInterfaceType classOrInterfaceType = new ClassOrInterfaceType(range(javaToken, token()), null, SimpleName, rangedList.list, firstAnnotations);
        RangedList<Type> rangedList2 = new RangedList<>(null);
        while (true) {
            ClassOrInterfaceType classOrInterfaceType2 = classOrInterfaceType;
            if (!jj_2_30(2)) {
                return classOrInterfaceType2;
            }
            jj_consume_token(109);
            NodeList<AnnotationExpr> Annotations = Annotations();
            SimpleName SimpleName2 = SimpleName();
            if (jj_2_31(2)) {
                rangedList2 = TypeArguments();
            }
            classOrInterfaceType = new ClassOrInterfaceType(range(javaToken, token()), classOrInterfaceType2, SimpleName2, rangedList2.list, Annotations);
            rangedList2 = new RangedList<>(null);
        }
    }

    public final ClassOrInterfaceType ClassOrInterfaceTypeParseStart() throws ParseException {
        ClassOrInterfaceType AnnotatedClassOrInterfaceType = AnnotatedClassOrInterfaceType();
        jj_consume_token(0);
        return AnnotatedClassOrInterfaceType;
    }

    public final CompactConstructorDeclaration CompactConstructorDeclaration(ModifierHolder modifier) throws ParseException {
        RangedList<TypeParameter> rangedList = new RangedList<>(emptyNodeList());
        new Pair(emptyNodeList(), null);
        NodeList emptyNodeList = emptyNodeList();
        emptyNodeList();
        JavaToken javaToken = modifier.begin;
        JavaToken javaToken2 = JavaToken.INVALID;
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 114) {
            this.jj_la1[37] = this.jj_gen;
        } else {
            rangedList = TypeParameters();
            javaToken = orIfInvalid(javaToken, rangedList.range.getBegin());
        }
        SimpleName SimpleName = SimpleName();
        JavaToken orIfInvalid = orIfInvalid(orIfInvalid(javaToken, rangedList.range.getBegin()), token());
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 61) {
            this.jj_la1[39] = this.jj_gen;
        } else {
            jj_consume_token(61);
            emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) AnnotatedReferenceType());
            while (true) {
                int i12 = this.jj_ntk;
                if (i12 == -1) {
                    i12 = jj_ntk_f();
                }
                if (i12 != 108) {
                    break;
                }
                jj_consume_token(108);
                emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) AnnotatedReferenceType());
            }
            this.jj_la1[38] = this.jj_gen;
        }
        NodeList nodeList = emptyNodeList;
        jj_consume_token(103);
        JavaToken javaToken3 = token();
        ExplicitConstructorInvocationStmt ExplicitConstructorInvocation = jj_2_12(Integer.MAX_VALUE) ? ExplicitConstructorInvocation() : null;
        NodeList<Statement> Statements = Statements();
        jj_consume_token(104);
        if (ExplicitConstructorInvocation != null) {
            Statements = prepend(Statements, ExplicitConstructorInvocation);
        }
        return new CompactConstructorDeclaration(range(orIfInvalid, token()), modifier.modifiers, modifier.annotations, rangedList.list, SimpleName, nodeList, new BlockStmt(range(javaToken3, token()), Statements));
    }

    public final CompilationUnit CompilationUnit() throws ParseException {
        NodeList nodeList;
        NodeList nodeList2;
        ModuleDeclaration moduleDeclaration;
        NodeList emptyNodeList = emptyNodeList();
        NodeList emptyNodeList2 = emptyNodeList();
        while (jj_2_1(2)) {
            try {
                jj_consume_token(107);
            } catch (ParseException e10) {
                recover(0, e10);
                CompilationUnit compilationUnit = new CompilationUnit(range(this.token_source.getHomeToken(), token()), null, new NodeList(), new NodeList(), null);
                compilationUnit.setParsed(Node.Parsedness.UNPARSABLE);
                return compilationUnit;
            }
        }
        PackageDeclaration packageDeclaration = null;
        if (jj_2_2(Integer.MAX_VALUE)) {
            nodeList = emptyNodeList;
            nodeList2 = emptyNodeList2;
            moduleDeclaration = null;
            packageDeclaration = PackageDeclaration();
        } else {
            nodeList = emptyNodeList;
            nodeList2 = emptyNodeList2;
            moduleDeclaration = null;
        }
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            switch (i10) {
                case 11:
                case 19:
                case 22:
                case 26:
                case 29:
                case 36:
                case 39:
                case 41:
                case 43:
                case 47:
                case 48:
                case 49:
                case 50:
                case 52:
                case 54:
                case 55:
                case 58:
                case 62:
                case 66:
                case 72:
                case 75:
                case 78:
                case 107:
                case 111:
                    int i11 = this.jj_ntk;
                    if (i11 == -1) {
                        i11 = jj_ntk_f();
                    }
                    switch (i11) {
                        case 11:
                        case 19:
                        case 22:
                        case 26:
                        case 29:
                        case 39:
                        case 41:
                        case 43:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                        case 52:
                        case 54:
                        case 55:
                        case 58:
                        case 62:
                        case 66:
                        case 72:
                        case 75:
                        case 78:
                        case 107:
                        case 111:
                            ModifierHolder Modifiers = Modifiers();
                            int i12 = this.jj_ntk;
                            if (i12 == -1) {
                                i12 = jj_ntk_f();
                            }
                            if (i12 != 19) {
                                if (i12 == 26) {
                                    nodeList2 = add((NodeList<NodeList>) nodeList2, (NodeList) EnumDeclaration(Modifiers));
                                    break;
                                } else if (i12 != 39) {
                                    if (i12 == 50) {
                                        nodeList2 = add((NodeList<NodeList>) nodeList2, (NodeList) RecordDeclaration(Modifiers));
                                        break;
                                    } else if (i12 != 72 && i12 != 75) {
                                        if (i12 == 107) {
                                            jj_consume_token(107);
                                            break;
                                        } else {
                                            if (i12 != 111) {
                                                this.jj_la1[1] = this.jj_gen;
                                                jj_consume_token(-1);
                                                throw new ParseException();
                                            }
                                            nodeList2 = add((NodeList<NodeList>) nodeList2, (NodeList) AnnotationTypeDeclaration(Modifiers));
                                            break;
                                        }
                                    } else {
                                        moduleDeclaration = ModuleDeclaration(Modifiers);
                                        break;
                                    }
                                }
                            }
                            nodeList2 = add((NodeList<NodeList>) nodeList2, (NodeList) ClassOrInterfaceDeclaration(Modifiers));
                            break;
                        case 36:
                            nodeList = add((NodeList<NodeList>) nodeList, (NodeList) ImportDeclaration());
                            break;
                        default:
                            this.jj_la1[2] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                    }
                    break;
                default:
                    this.jj_la1[0] = this.jj_gen;
                    int i13 = this.jj_ntk;
                    if (i13 == -1) {
                        i13 = jj_ntk_f();
                    }
                    if (i13 == 0) {
                        jj_consume_token(0);
                    } else {
                        if (i13 != 151) {
                            this.jj_la1[3] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                        }
                        jj_consume_token(151);
                    }
                    return new CompilationUnit(range(this.token_source.getHomeToken(), token()), packageDeclaration, nodeList, nodeList2, moduleDeclaration);
            }
        }
    }

    public final Expression ConditionalAndExpression() throws ParseException {
        Expression InclusiveOrExpression = InclusiveOrExpression();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 124) {
                this.jj_la1[85] = this.jj_gen;
                return InclusiveOrExpression;
            }
            jj_consume_token(124);
            InclusiveOrExpression = new BinaryExpr(range(InclusiveOrExpression, token()), InclusiveOrExpression, InclusiveOrExpression(), BinaryExpr.Operator.AND);
        }
    }

    public final Expression ConditionalExpression() throws ParseException {
        Expression ConditionalOrExpression = ConditionalOrExpression();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 117) {
            this.jj_la1[83] = this.jj_gen;
            return ConditionalOrExpression;
        }
        jj_consume_token(117);
        Expression Expression = Expression();
        jj_consume_token(118);
        return new ConditionalExpr(range(ConditionalOrExpression, token()), ConditionalOrExpression, Expression, Expression());
    }

    public final Expression ConditionalOrExpression() throws ParseException {
        Expression ConditionalAndExpression = ConditionalAndExpression();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 125) {
                this.jj_la1[84] = this.jj_gen;
                return ConditionalAndExpression;
            }
            jj_consume_token(125);
            ConditionalAndExpression = new BinaryExpr(range(ConditionalAndExpression, token()), ConditionalAndExpression, ConditionalAndExpression(), BinaryExpr.Operator.OR);
        }
    }

    public final ConstructorDeclaration ConstructorDeclaration(ModifierHolder modifier) throws ParseException {
        RangedList<TypeParameter> rangedList = new RangedList<>(emptyNodeList());
        new Pair(emptyNodeList(), null);
        NodeList emptyNodeList = emptyNodeList();
        emptyNodeList();
        JavaToken javaToken = modifier.begin;
        JavaToken javaToken2 = JavaToken.INVALID;
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 114) {
            this.jj_la1[60] = this.jj_gen;
        } else {
            rangedList = TypeParameters();
            javaToken = orIfInvalid(javaToken, rangedList.range.getBegin());
        }
        SimpleName SimpleName = SimpleName();
        JavaToken orIfInvalid = orIfInvalid(orIfInvalid(javaToken, rangedList.range.getBegin()), token());
        Pair<NodeList<Parameter>, ReceiverParameter> Parameters = Parameters();
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 61) {
            this.jj_la1[62] = this.jj_gen;
        } else {
            jj_consume_token(61);
            emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) AnnotatedReferenceType());
            while (true) {
                int i12 = this.jj_ntk;
                if (i12 == -1) {
                    i12 = jj_ntk_f();
                }
                if (i12 != 108) {
                    break;
                }
                jj_consume_token(108);
                emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) AnnotatedReferenceType());
            }
            this.jj_la1[61] = this.jj_gen;
        }
        NodeList nodeList = emptyNodeList;
        jj_consume_token(103);
        JavaToken javaToken3 = token();
        ExplicitConstructorInvocationStmt ExplicitConstructorInvocation = jj_2_22(Integer.MAX_VALUE) ? ExplicitConstructorInvocation() : null;
        NodeList<Statement> Statements = Statements();
        jj_consume_token(104);
        if (ExplicitConstructorInvocation != null) {
            Statements = prepend(Statements, ExplicitConstructorInvocation);
        }
        return new ConstructorDeclaration(range(orIfInvalid, token()), modifier.modifiers, modifier.annotations, rangedList.list, SimpleName, Parameters.f59826a, nodeList, new BlockStmt(range(javaToken3, token()), Statements), Parameters.f59827b);
    }

    public final ContinueStmt ContinueStatement() throws ParseException {
        SimpleName SimpleName;
        jj_consume_token(21);
        JavaToken javaToken = token();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 26 && i10 != 46 && i10 != 50 && i10 != 52 && i10 != 55 && i10 != 98) {
            switch (i10) {
                case 68:
                case 69:
                case 70:
                case 71:
                case 72:
                case 73:
                case 74:
                case 75:
                case 76:
                case 77:
                case 78:
                case 79:
                    break;
                default:
                    this.jj_la1[161] = this.jj_gen;
                    SimpleName = null;
                    break;
            }
            jj_consume_token(107);
            return new ContinueStmt(range(javaToken, token()), SimpleName);
        }
        SimpleName = SimpleName();
        jj_consume_token(107);
        return new ContinueStmt(range(javaToken, token()), SimpleName);
    }

    public final Expression DefaultValue() throws ParseException {
        jj_consume_token(22);
        return MemberValue();
    }

    public final DoStmt DoStatement() throws ParseException {
        jj_consume_token(23);
        JavaToken javaToken = token();
        Statement Statement = Statement();
        jj_consume_token(67);
        jj_consume_token(101);
        Expression Expression = Expression();
        jj_consume_token(102);
        jj_consume_token(107);
        return new DoStmt(range(javaToken, token()), Statement, Expression);
    }

    public final EmptyStmt EmptyStatement() throws ParseException {
        jj_consume_token(107);
        return new EmptyStmt(tokenRange());
    }

    public final EnumConstantDeclaration EnumConstantDeclaration() throws ParseException {
        NodeList nodeList = new NodeList();
        NodeList<Expression> emptyNodeList = emptyNodeList();
        NodeList<BodyDeclaration<?>> emptyNodeList2 = emptyNodeList();
        JavaToken javaToken = JavaToken.INVALID;
        NodeList nodeList2 = nodeList;
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 111) {
                break;
            }
            AnnotationExpr Annotation = Annotation();
            nodeList2 = add((NodeList<NodeList>) nodeList2, (NodeList) Annotation);
            javaToken = orIfInvalid(javaToken, Annotation);
        }
        this.jj_la1[24] = this.jj_gen;
        SimpleName SimpleName = SimpleName();
        JavaToken orIfInvalid = orIfInvalid(javaToken, token());
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 101) {
            this.jj_la1[25] = this.jj_gen;
        } else {
            emptyNodeList = Arguments();
        }
        NodeList<Expression> nodeList3 = emptyNodeList;
        int i12 = this.jj_ntk;
        if (i12 == -1) {
            i12 = jj_ntk_f();
        }
        if (i12 != 103) {
            this.jj_la1[26] = this.jj_gen;
        } else {
            emptyNodeList2 = ClassOrInterfaceBody();
        }
        return new EnumConstantDeclaration(range(orIfInvalid, token()), nodeList2, SimpleName, nodeList3, emptyNodeList2);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:50:0x00ca. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:51:0x00cd. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:52:0x00d0. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:53:0x00d3. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:54:0x00d6. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:64:0x010b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:66:0x010e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:67:0x0111. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:68:0x0114. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:28:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00fb A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x010e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x012f A[ADDED_TO_REGION, FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x012f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x012b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final EnumDeclaration EnumDeclaration(ModifierHolder modifier) throws ParseException {
        int i10;
        int i11;
        int i12;
        NodeList<ClassOrInterfaceType> emptyNodeList = emptyNodeList();
        NodeList emptyNodeList2 = emptyNodeList();
        NodeList emptyNodeList3 = emptyNodeList();
        JavaToken javaToken = modifier.begin;
        jj_consume_token(26);
        JavaToken orIfInvalid = orIfInvalid(javaToken, token());
        SimpleName SimpleName = SimpleName();
        int i13 = this.jj_ntk;
        if (i13 == -1) {
            i13 = jj_ntk_f();
        }
        if (i13 != 35) {
            this.jj_la1[18] = this.jj_gen;
        } else {
            emptyNodeList = ImplementsList();
        }
        jj_consume_token(103);
        int i14 = this.jj_ntk;
        if (i14 == -1) {
            i14 = jj_ntk_f();
        }
        if (i14 != 26 && i14 != 46 && i14 != 50 && i14 != 52 && i14 != 55 && i14 != 98 && i14 != 111) {
            switch (i14) {
                case 68:
                case 69:
                case 70:
                case 71:
                case 72:
                case 73:
                case 74:
                case 75:
                case 76:
                case 77:
                case 78:
                case 79:
                    break;
                default:
                    this.jj_la1[19] = this.jj_gen;
                    break;
            }
            i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 == 108) {
                this.jj_la1[20] = this.jj_gen;
            } else {
                jj_consume_token(108);
            }
            i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 == 107) {
                this.jj_la1[23] = this.jj_gen;
            } else {
                jj_consume_token(107);
                while (true) {
                    int i15 = this.jj_ntk;
                    if (i15 == -1) {
                        i15 = jj_ntk_f();
                    }
                    if (i15 != 18 && i15 != 19 && i15 != 65 && i15 != 66) {
                        switch (i15) {
                            default:
                                switch (i15) {
                                    default:
                                        switch (i15) {
                                            default:
                                                switch (i15) {
                                                    default:
                                                        switch (i15) {
                                                            case 68:
                                                            case 69:
                                                            case 70:
                                                            case 71:
                                                            case 72:
                                                            case 73:
                                                            case 74:
                                                            case 75:
                                                            case 76:
                                                            case 77:
                                                            case 78:
                                                            case 79:
                                                                break;
                                                            default:
                                                                this.jj_la1[21] = this.jj_gen;
                                                                break;
                                                        }
                                                    case 52:
                                                    case 53:
                                                    case 54:
                                                    case 55:
                                                        i12 = this.jj_ntk;
                                                        if (i12 == -1) {
                                                            i12 = jj_ntk_f();
                                                        }
                                                        if (i12 != 18 && i12 != 19 && i12 != 65 && i12 != 66) {
                                                            switch (i12) {
                                                                case 11:
                                                                case 13:
                                                                case 15:
                                                                case 22:
                                                                case 24:
                                                                case 26:
                                                                case 29:
                                                                case 31:
                                                                case 43:
                                                                case 58:
                                                                case 62:
                                                                case 98:
                                                                case 103:
                                                                case 111:
                                                                case 114:
                                                                case 107:
                                                                    jj_consume_token(107);
                                                                default:
                                                                    switch (i12) {
                                                                        default:
                                                                            switch (i12) {
                                                                                default:
                                                                                    switch (i12) {
                                                                                        default:
                                                                                            switch (i12) {
                                                                                                case 68:
                                                                                                case 69:
                                                                                                case 70:
                                                                                                case 71:
                                                                                                case 72:
                                                                                                case 73:
                                                                                                case 74:
                                                                                                case 75:
                                                                                                case 76:
                                                                                                case 77:
                                                                                                case 78:
                                                                                                case 79:
                                                                                                    break;
                                                                                                default:
                                                                                                    this.jj_la1[22] = this.jj_gen;
                                                                                                    jj_consume_token(-1);
                                                                                                    throw new ParseException();
                                                                                            }
                                                                                        case 52:
                                                                                        case 53:
                                                                                        case 54:
                                                                                        case 55:
                                                                                            emptyNodeList3 = add((NodeList<NodeList>) emptyNodeList3, (NodeList) ClassOrInterfaceBodyDeclaration());
                                                                                    }
                                                                                case 46:
                                                                                case 47:
                                                                                case 48:
                                                                                case 49:
                                                                                case 50:
                                                                                    break;
                                                                            }
                                                                        case 38:
                                                                        case 39:
                                                                        case 40:
                                                                        case 41:
                                                                            break;
                                                                    }
                                                            }
                                                        }
                                                        emptyNodeList3 = add((NodeList<NodeList>) emptyNodeList3, (NodeList) ClassOrInterfaceBodyDeclaration());
                                                        break;
                                                }
                                            case 46:
                                            case 47:
                                            case 48:
                                            case 49:
                                            case 50:
                                                break;
                                        }
                                    case 38:
                                    case 39:
                                    case 40:
                                    case 41:
                                        break;
                                }
                            case 11:
                            case 13:
                            case 15:
                            case 22:
                            case 24:
                            case 26:
                            case 29:
                            case 31:
                            case 43:
                            case 58:
                            case 62:
                            case 98:
                            case 103:
                            case 107:
                            case 111:
                            case 114:
                                break;
                        }
                    }
                    i12 = this.jj_ntk;
                    if (i12 == -1) {
                    }
                    if (i12 != 18) {
                        switch (i12) {
                            case 11:
                            case 13:
                            case 15:
                            case 22:
                            case 24:
                            case 26:
                            case 29:
                            case 31:
                            case 43:
                            case 58:
                            case 62:
                            case 98:
                            case 103:
                            case 111:
                            case 114:
                                break;
                            case 107:
                                break;
                        }
                    }
                    emptyNodeList3 = add((NodeList<NodeList>) emptyNodeList3, (NodeList) ClassOrInterfaceBodyDeclaration());
                }
            }
            NodeList nodeList = emptyNodeList3;
            jj_consume_token(104);
            return new EnumDeclaration(range(orIfInvalid, token()), modifier.modifiers, modifier.annotations, SimpleName, emptyNodeList, emptyNodeList2, nodeList);
        }
        emptyNodeList2.add((NodeList) EnumConstantDeclaration());
        while (jj_2_4(2)) {
            jj_consume_token(108);
            emptyNodeList2.add((NodeList) EnumConstantDeclaration());
        }
        i10 = this.jj_ntk;
        if (i10 == -1) {
        }
        if (i10 == 108) {
        }
        i11 = this.jj_ntk;
        if (i11 == -1) {
        }
        if (i11 == 107) {
        }
        NodeList nodeList2 = emptyNodeList3;
        jj_consume_token(104);
        return new EnumDeclaration(range(orIfInvalid, token()), modifier.modifiers, modifier.annotations, SimpleName, emptyNodeList, emptyNodeList2, nodeList2);
    }

    public final Expression EqualityExpression() throws ParseException {
        BinaryExpr.Operator operator;
        Expression InstanceOfExpression = InstanceOfExpression();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 120 && i10 != 123) {
                this.jj_la1[89] = this.jj_gen;
                return InstanceOfExpression;
            }
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 == 120) {
                jj_consume_token(120);
                operator = BinaryExpr.Operator.EQUALS;
            } else {
                if (i11 != 123) {
                    this.jj_la1[90] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
                }
                jj_consume_token(123);
                operator = BinaryExpr.Operator.NOT_EQUALS;
            }
            InstanceOfExpression = new BinaryExpr(range(InstanceOfExpression, token()), InstanceOfExpression, InstanceOfExpression(), operator);
        }
    }

    public final Expression ExclusiveOrExpression() throws ParseException {
        Expression AndExpression = AndExpression();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 134) {
                this.jj_la1[87] = this.jj_gen;
                return AndExpression;
            }
            jj_consume_token(134);
            AndExpression = new BinaryExpr(range(AndExpression, token()), AndExpression, AndExpression(), BinaryExpr.Operator.XOR);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x006c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ExplicitConstructorInvocationStmt ExplicitConstructorInvocation() throws ParseException {
        int i10;
        JavaToken orIfInvalid;
        NodeList<Expression> Arguments;
        boolean z10;
        Expression expression = null;
        RangedList<Type> rangedList = new RangedList<>(null);
        JavaToken javaToken = JavaToken.INVALID;
        if (jj_2_24(Integer.MAX_VALUE)) {
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 != 114) {
                this.jj_la1[63] = this.jj_gen;
            } else {
                rangedList = TypeArguments();
                javaToken = rangedList.range.getBegin();
            }
            jj_consume_token(59);
            orIfInvalid = orIfInvalid(javaToken, token());
            Arguments = Arguments();
            jj_consume_token(107);
            z10 = true;
        } else {
            int i12 = this.jj_ntk;
            if (i12 == -1) {
                i12 = jj_ntk_f();
            }
            if (i12 != 52 && i12 != 53 && i12 != 55 && i12 != 56 && i12 != 93 && i12 != 94) {
                switch (i12) {
                    default:
                        switch (i12) {
                            case 68:
                            case 69:
                            case 70:
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                            case 76:
                            case 77:
                            case 78:
                            case 79:
                            case 80:
                            case 81:
                                break;
                            default:
                                this.jj_la1[65] = this.jj_gen;
                                jj_consume_token(-1);
                                throw new ParseException();
                        }
                    case 13:
                    case 15:
                    case 18:
                    case 24:
                    case 26:
                    case 28:
                    case 31:
                    case 38:
                    case 40:
                    case 42:
                    case 44:
                    case 46:
                    case 50:
                    case 59:
                    case 63:
                    case 65:
                    case 86:
                    case 96:
                    case 98:
                    case 101:
                    case 111:
                    case 114:
                        if (jj_2_23(Integer.MAX_VALUE)) {
                            expression = PrimaryExpressionWithoutSuperSuffix();
                            jj_consume_token(109);
                            javaToken = orIfInvalid(javaToken, expression);
                        }
                        i10 = this.jj_ntk;
                        if (i10 == -1) {
                            i10 = jj_ntk_f();
                        }
                        if (i10 == 114) {
                            this.jj_la1[64] = this.jj_gen;
                        } else {
                            rangedList = TypeArguments();
                            javaToken = orIfInvalid(javaToken, rangedList.range.getBegin());
                        }
                        jj_consume_token(56);
                        orIfInvalid = orIfInvalid(javaToken, token());
                        Arguments = Arguments();
                        jj_consume_token(107);
                        z10 = false;
                        break;
                }
            }
            if (jj_2_23(Integer.MAX_VALUE)) {
            }
            i10 = this.jj_ntk;
            if (i10 == -1) {
            }
            if (i10 == 114) {
            }
            jj_consume_token(56);
            orIfInvalid = orIfInvalid(javaToken, token());
            Arguments = Arguments();
            jj_consume_token(107);
            z10 = false;
        }
        return new ExplicitConstructorInvocationStmt(range(orIfInvalid, token()), rangedList.list, z10, expression, Arguments);
    }

    public final ExplicitConstructorInvocationStmt ExplicitConstructorInvocationParseStart() throws ParseException {
        ExplicitConstructorInvocationStmt ExplicitConstructorInvocation = ExplicitConstructorInvocation();
        jj_consume_token(0);
        return ExplicitConstructorInvocation;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:49:0x00b5. Please report as an issue. */
    public final Expression Expression() throws ParseException {
        RangedList<Type> rangedList = new RangedList<>(null);
        Expression ConditionalExpression = ConditionalExpression();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 112 && i10 != 113 && i10 != 119) {
            switch (i10) {
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
                    break;
                default:
                    this.jj_la1[81] = this.jj_gen;
                    return ConditionalExpression;
            }
        }
        if (jj_2_33(2)) {
            AssignExpr.Operator AssignmentOperator = AssignmentOperator();
            return new AssignExpr(range(ConditionalExpression, token()), ConditionalExpression, Expression(), AssignmentOperator);
        }
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 112) {
            if (i11 == 119) {
                jj_consume_token(119);
                return generateLambda(ConditionalExpression, LambdaBody());
            }
            this.jj_la1[80] = this.jj_gen;
            jj_consume_token(-1);
            throw new ParseException();
        }
        jj_consume_token(112);
        int i12 = this.jj_ntk;
        if (i12 == -1) {
            i12 = jj_ntk_f();
        }
        if (i12 != 114) {
            this.jj_la1[78] = this.jj_gen;
        } else {
            rangedList = TypeArguments();
        }
        int i13 = this.jj_ntk;
        if (i13 == -1) {
            i13 = jj_ntk_f();
        }
        if (i13 != 26) {
            if (i13 == 42) {
                jj_consume_token(42);
                return new MethodReferenceExpr(range(ConditionalExpression, token()), ConditionalExpression, rangedList.list, this.token.image);
            }
            if (i13 != 46 && i13 != 50 && i13 != 52 && i13 != 55 && i13 != 98) {
                switch (i13) {
                    case 68:
                    case 69:
                    case 70:
                    case 71:
                    case 72:
                    case 73:
                    case 74:
                    case 75:
                    case 76:
                    case 77:
                    case 78:
                    case 79:
                        break;
                    default:
                        this.jj_la1[79] = this.jj_gen;
                        jj_consume_token(-1);
                        throw new ParseException();
                }
            }
        }
        Identifier();
        return new MethodReferenceExpr(range(ConditionalExpression, token()), ConditionalExpression, rangedList.list, this.token.image);
    }

    public final NodeList<Expression> ExpressionList() throws ParseException {
        NodeList<Expression> nodeList = new NodeList<>();
        nodeList.add((NodeList<Expression>) Expression());
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[159] = this.jj_gen;
                return nodeList;
            }
            jj_consume_token(108);
            nodeList.add((NodeList<Expression>) Expression());
        }
    }

    public final Expression ExpressionParseStart() throws ParseException {
        Expression Expression = Expression();
        jj_consume_token(0);
        return Expression;
    }

    public final NodeList<ClassOrInterfaceType> ExtendsList() throws ParseException {
        NodeList<ClassOrInterfaceType> nodeList = new NodeList<>();
        jj_consume_token(27);
        nodeList.add((NodeList<ClassOrInterfaceType>) AnnotatedClassOrInterfaceType());
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[15] = this.jj_gen;
                return nodeList;
            }
            jj_consume_token(108);
            nodeList.add((NodeList<ClassOrInterfaceType>) AnnotatedClassOrInterfaceType());
        }
    }

    public final FieldDeclaration FieldDeclaration(ModifierHolder modifier) throws ParseException {
        NodeList nodeList = new NodeList();
        Type Type = Type(emptyNodeList());
        nodeList.add((NodeList) VariableDeclarator(Type));
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[43] = this.jj_gen;
                jj_consume_token(107);
                return new FieldDeclaration(range(orIfInvalid(modifier.begin, Type), token()), modifier.modifiers, modifier.annotations, nodeList);
            }
            jj_consume_token(108);
            nodeList.add((NodeList) VariableDeclarator(Type));
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0037. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x003a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x003d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0054 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final NodeList<Expression> ForInit() throws ParseException {
        if (jj_2_62(Integer.MAX_VALUE)) {
            VariableDeclarationExpr VariableDeclarationExpression = VariableDeclarationExpression();
            NodeList<Expression> nodeList = new NodeList<>();
            nodeList.add((NodeList<Expression>) VariableDeclarationExpression);
            return nodeList;
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52 && i10 != 53 && i10 != 93 && i10 != 94 && i10 != 115 && i10 != 116) {
            switch (i10) {
                default:
                    switch (i10) {
                        default:
                            switch (i10) {
                                default:
                                    switch (i10) {
                                        case 126:
                                        case 127:
                                        case 128:
                                        case 129:
                                            break;
                                        default:
                                            this.jj_la1[158] = this.jj_gen;
                                            jj_consume_token(-1);
                                            throw new ParseException();
                                    }
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                case 80:
                                case 81:
                                    return ExpressionList();
                            }
                        case 55:
                        case 56:
                        case 57:
                            break;
                    }
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 28:
                case 31:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 50:
                case 59:
                case 63:
                case 65:
                case 86:
                case 96:
                case 98:
                case 101:
                case 111:
                    break;
            }
        }
        return ExpressionList();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x0062. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x0065. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:27:0x0068. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x006b. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0082 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00ce A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ff A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0122 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x00ee A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00b6 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Statement ForStatement() throws ParseException {
        int i10;
        int i11;
        Expression Expression;
        int i12;
        NodeList<Expression> nodeList;
        NodeList<Expression> nodeList2;
        Expression expression;
        VariableDeclarationExpr variableDeclarationExpr;
        NodeList<Expression> emptyNodeList = emptyNodeList();
        NodeList<Expression> emptyNodeList2 = emptyNodeList();
        jj_consume_token(32);
        JavaToken javaToken = token();
        jj_consume_token(101);
        if (jj_2_61(Integer.MAX_VALUE)) {
            variableDeclarationExpr = VariableDeclarationExpression();
            jj_consume_token(118);
            nodeList = emptyNodeList;
            nodeList2 = emptyNodeList2;
            expression = Expression();
        } else {
            int i13 = this.jj_ntk;
            if (i13 == -1) {
                i13 = jj_ntk_f();
            }
            if (i13 != 28 && i13 != 29 && i13 != 62 && i13 != 63 && i13 != 65 && i13 != 66 && i13 != 93 && i13 != 94 && i13 != 115 && i13 != 116) {
                switch (i13) {
                    default:
                        switch (i13) {
                            default:
                                switch (i13) {
                                    default:
                                        switch (i13) {
                                            default:
                                                switch (i13) {
                                                    case 126:
                                                    case 127:
                                                    case 128:
                                                    case 129:
                                                        break;
                                                    default:
                                                        this.jj_la1[157] = this.jj_gen;
                                                        jj_consume_token(-1);
                                                        throw new ParseException();
                                                }
                                            case 52:
                                            case 53:
                                            case 54:
                                            case 55:
                                            case 56:
                                            case 57:
                                            case 58:
                                            case 59:
                                                i10 = this.jj_ntk;
                                                if (i10 == -1) {
                                                    i10 = jj_ntk_f();
                                                }
                                                if (i10 != 28 && i10 != 29 && i10 != 62 && i10 != 63 && i10 != 65 && i10 != 66 && i10 != 93 && i10 != 94 && i10 != 115 && i10 != 116) {
                                                    switch (i10) {
                                                        default:
                                                            switch (i10) {
                                                                default:
                                                                    switch (i10) {
                                                                        default:
                                                                            switch (i10) {
                                                                                default:
                                                                                    switch (i10) {
                                                                                        case 126:
                                                                                        case 127:
                                                                                        case 128:
                                                                                        case 129:
                                                                                            break;
                                                                                        default:
                                                                                            this.jj_la1[154] = this.jj_gen;
                                                                                            break;
                                                                                    }
                                                                                case 52:
                                                                                case 53:
                                                                                case 54:
                                                                                case 55:
                                                                                case 56:
                                                                                case 57:
                                                                                case 58:
                                                                                case 59:
                                                                                    emptyNodeList = ForInit();
                                                                                    break;
                                                                            }
                                                                        case 46:
                                                                        case 47:
                                                                        case 48:
                                                                        case 49:
                                                                        case 50:
                                                                            break;
                                                                    }
                                                                case 40:
                                                                case 41:
                                                                case 42:
                                                                case 43:
                                                                case 44:
                                                                    break;
                                                            }
                                                        case 11:
                                                        case 13:
                                                        case 15:
                                                        case 18:
                                                        case 22:
                                                        case 24:
                                                        case 26:
                                                        case 31:
                                                        case 38:
                                                        case 68:
                                                        case 69:
                                                        case 70:
                                                        case 71:
                                                        case 72:
                                                        case 73:
                                                        case 74:
                                                        case 75:
                                                        case 76:
                                                        case 77:
                                                        case 78:
                                                        case 79:
                                                        case 80:
                                                        case 81:
                                                        case 86:
                                                        case 96:
                                                        case 98:
                                                        case 101:
                                                        case 111:
                                                            break;
                                                    }
                                                    jj_consume_token(107);
                                                    i11 = this.jj_ntk;
                                                    if (i11 == -1) {
                                                        i11 = jj_ntk_f();
                                                    }
                                                    if (i11 != 52 && i11 != 53 && i11 != 93 && i11 != 94 && i11 != 115 && i11 != 116) {
                                                        switch (i11) {
                                                            default:
                                                                switch (i11) {
                                                                    default:
                                                                        switch (i11) {
                                                                            default:
                                                                                switch (i11) {
                                                                                    case 126:
                                                                                    case 127:
                                                                                    case 128:
                                                                                    case 129:
                                                                                        break;
                                                                                    default:
                                                                                        this.jj_la1[155] = this.jj_gen;
                                                                                        Expression = null;
                                                                                        break;
                                                                                }
                                                                            case 68:
                                                                            case 69:
                                                                            case 70:
                                                                            case 71:
                                                                            case 72:
                                                                            case 73:
                                                                            case 74:
                                                                            case 75:
                                                                            case 76:
                                                                            case 77:
                                                                            case 78:
                                                                            case 79:
                                                                            case 80:
                                                                            case 81:
                                                                                Expression = Expression();
                                                                                break;
                                                                        }
                                                                    case 55:
                                                                    case 56:
                                                                    case 57:
                                                                        break;
                                                                }
                                                            case 13:
                                                            case 15:
                                                            case 18:
                                                            case 24:
                                                            case 26:
                                                            case 28:
                                                            case 31:
                                                            case 38:
                                                            case 40:
                                                            case 42:
                                                            case 44:
                                                            case 46:
                                                            case 50:
                                                            case 59:
                                                            case 63:
                                                            case 65:
                                                            case 86:
                                                            case 96:
                                                            case 98:
                                                            case 101:
                                                            case 111:
                                                                break;
                                                        }
                                                        jj_consume_token(107);
                                                        i12 = this.jj_ntk;
                                                        if (i12 == -1) {
                                                            i12 = jj_ntk_f();
                                                        }
                                                        if (i12 != 52 && i12 != 53 && i12 != 93 && i12 != 94 && i12 != 115 && i12 != 116) {
                                                            switch (i12) {
                                                                default:
                                                                    switch (i12) {
                                                                        default:
                                                                            switch (i12) {
                                                                                default:
                                                                                    switch (i12) {
                                                                                        case 126:
                                                                                        case 127:
                                                                                        case 128:
                                                                                        case 129:
                                                                                            break;
                                                                                        default:
                                                                                            this.jj_la1[156] = this.jj_gen;
                                                                                            break;
                                                                                    }
                                                                                case 68:
                                                                                case 69:
                                                                                case 70:
                                                                                case 71:
                                                                                case 72:
                                                                                case 73:
                                                                                case 74:
                                                                                case 75:
                                                                                case 76:
                                                                                case 77:
                                                                                case 78:
                                                                                case 79:
                                                                                case 80:
                                                                                case 81:
                                                                                    emptyNodeList2 = ForUpdate();
                                                                                    break;
                                                                            }
                                                                        case 55:
                                                                        case 56:
                                                                        case 57:
                                                                            break;
                                                                    }
                                                                case 13:
                                                                case 15:
                                                                case 18:
                                                                case 24:
                                                                case 26:
                                                                case 28:
                                                                case 31:
                                                                case 38:
                                                                case 40:
                                                                case 42:
                                                                case 44:
                                                                case 46:
                                                                case 50:
                                                                case 59:
                                                                case 63:
                                                                case 65:
                                                                case 86:
                                                                case 96:
                                                                case 98:
                                                                case 101:
                                                                case 111:
                                                                    break;
                                                            }
                                                            nodeList = emptyNodeList;
                                                            nodeList2 = emptyNodeList2;
                                                            expression = Expression;
                                                            variableDeclarationExpr = null;
                                                            break;
                                                        }
                                                        emptyNodeList2 = ForUpdate();
                                                        nodeList = emptyNodeList;
                                                        nodeList2 = emptyNodeList2;
                                                        expression = Expression;
                                                        variableDeclarationExpr = null;
                                                    }
                                                    Expression = Expression();
                                                    jj_consume_token(107);
                                                    i12 = this.jj_ntk;
                                                    if (i12 == -1) {
                                                    }
                                                    if (i12 != 52) {
                                                        switch (i12) {
                                                            case 13:
                                                            case 15:
                                                            case 18:
                                                            case 24:
                                                            case 26:
                                                            case 28:
                                                            case 31:
                                                            case 38:
                                                            case 40:
                                                            case 42:
                                                            case 44:
                                                            case 46:
                                                            case 50:
                                                            case 59:
                                                            case 63:
                                                            case 65:
                                                            case 86:
                                                            case 96:
                                                            case 98:
                                                            case 101:
                                                            case 111:
                                                                break;
                                                        }
                                                        nodeList = emptyNodeList;
                                                        nodeList2 = emptyNodeList2;
                                                        expression = Expression;
                                                        variableDeclarationExpr = null;
                                                    }
                                                    emptyNodeList2 = ForUpdate();
                                                    nodeList = emptyNodeList;
                                                    nodeList2 = emptyNodeList2;
                                                    expression = Expression;
                                                    variableDeclarationExpr = null;
                                                }
                                                emptyNodeList = ForInit();
                                                jj_consume_token(107);
                                                i11 = this.jj_ntk;
                                                if (i11 == -1) {
                                                }
                                                if (i11 != 52) {
                                                    switch (i11) {
                                                        case 13:
                                                        case 15:
                                                        case 18:
                                                        case 24:
                                                        case 26:
                                                        case 28:
                                                        case 31:
                                                        case 38:
                                                        case 40:
                                                        case 42:
                                                        case 44:
                                                        case 46:
                                                        case 50:
                                                        case 59:
                                                        case 63:
                                                        case 65:
                                                        case 86:
                                                        case 96:
                                                        case 98:
                                                        case 101:
                                                        case 111:
                                                            break;
                                                    }
                                                    jj_consume_token(107);
                                                    i12 = this.jj_ntk;
                                                    if (i12 == -1) {
                                                    }
                                                    if (i12 != 52) {
                                                    }
                                                    emptyNodeList2 = ForUpdate();
                                                    nodeList = emptyNodeList;
                                                    nodeList2 = emptyNodeList2;
                                                    expression = Expression;
                                                    variableDeclarationExpr = null;
                                                }
                                                Expression = Expression();
                                                jj_consume_token(107);
                                                i12 = this.jj_ntk;
                                                if (i12 == -1) {
                                                }
                                                if (i12 != 52) {
                                                }
                                                emptyNodeList2 = ForUpdate();
                                                nodeList = emptyNodeList;
                                                nodeList2 = emptyNodeList2;
                                                expression = Expression;
                                                variableDeclarationExpr = null;
                                        }
                                    case 46:
                                    case 47:
                                    case 48:
                                    case 49:
                                    case 50:
                                        break;
                                }
                            case 40:
                            case 41:
                            case 42:
                            case 43:
                            case 44:
                                break;
                        }
                    case 11:
                    case 13:
                    case 15:
                    case 18:
                    case 22:
                    case 24:
                    case 26:
                    case 31:
                    case 38:
                    case 68:
                    case 69:
                    case 70:
                    case 71:
                    case 72:
                    case 73:
                    case 74:
                    case 75:
                    case 76:
                    case 77:
                    case 78:
                    case 79:
                    case 80:
                    case 81:
                    case 86:
                    case 96:
                    case 98:
                    case 101:
                    case 107:
                    case 111:
                        break;
                }
            }
            i10 = this.jj_ntk;
            if (i10 == -1) {
            }
            if (i10 != 28) {
                switch (i10) {
                    case 11:
                    case 13:
                    case 15:
                    case 18:
                    case 22:
                    case 24:
                    case 26:
                    case 31:
                    case 38:
                    case 68:
                    case 69:
                    case 70:
                    case 71:
                    case 72:
                    case 73:
                    case 74:
                    case 75:
                    case 76:
                    case 77:
                    case 78:
                    case 79:
                    case 80:
                    case 81:
                    case 86:
                    case 96:
                    case 98:
                    case 101:
                    case 111:
                        break;
                }
                jj_consume_token(107);
                i11 = this.jj_ntk;
                if (i11 == -1) {
                }
                if (i11 != 52) {
                }
                Expression = Expression();
                jj_consume_token(107);
                i12 = this.jj_ntk;
                if (i12 == -1) {
                }
                if (i12 != 52) {
                }
                emptyNodeList2 = ForUpdate();
                nodeList = emptyNodeList;
                nodeList2 = emptyNodeList2;
                expression = Expression;
                variableDeclarationExpr = null;
            }
            emptyNodeList = ForInit();
            jj_consume_token(107);
            i11 = this.jj_ntk;
            if (i11 == -1) {
            }
            if (i11 != 52) {
            }
            Expression = Expression();
            jj_consume_token(107);
            i12 = this.jj_ntk;
            if (i12 == -1) {
            }
            if (i12 != 52) {
            }
            emptyNodeList2 = ForUpdate();
            nodeList = emptyNodeList;
            nodeList2 = emptyNodeList2;
            expression = Expression;
            variableDeclarationExpr = null;
        }
        jj_consume_token(102);
        Statement Statement = Statement();
        return variableDeclarationExpr != null ? new ForEachStmt(range(javaToken, token()), variableDeclarationExpr, expression, Statement) : new ForStmt(range(javaToken, token()), nodeList, expression, nodeList2, Statement);
    }

    public final NodeList<Expression> ForUpdate() throws ParseException {
        return ExpressionList();
    }

    public final String Identifier() throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 26) {
            jj_consume_token(26);
        } else if (i10 == 46) {
            jj_consume_token(46);
        } else if (i10 == 50) {
            jj_consume_token(50);
        } else if (i10 == 52) {
            jj_consume_token(52);
        } else if (i10 == 55) {
            jj_consume_token(55);
        } else if (i10 != 98) {
            switch (i10) {
                case 68:
                    jj_consume_token(68);
                    break;
                case 69:
                    jj_consume_token(69);
                    break;
                case 70:
                    jj_consume_token(70);
                    break;
                case 71:
                    jj_consume_token(71);
                    break;
                case 72:
                    jj_consume_token(72);
                    break;
                case 73:
                    jj_consume_token(73);
                    break;
                case 74:
                    jj_consume_token(74);
                    break;
                case 75:
                    jj_consume_token(75);
                    break;
                case 76:
                    jj_consume_token(76);
                    break;
                case 77:
                    jj_consume_token(77);
                    break;
                case 78:
                    jj_consume_token(78);
                    break;
                case 79:
                    jj_consume_token(79);
                    break;
                default:
                    this.jj_la1[77] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
            }
        } else {
            jj_consume_token(98);
        }
        String str = this.token.image;
        setTokenKind(98);
        return str;
    }

    public final IfStmt IfStatement() throws ParseException {
        Statement Statement;
        jj_consume_token(34);
        JavaToken javaToken = token();
        jj_consume_token(101);
        Expression Expression = Expression();
        jj_consume_token(102);
        Statement Statement2 = Statement();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 25) {
            this.jj_la1[153] = this.jj_gen;
            Statement = null;
        } else {
            jj_consume_token(25);
            Statement = Statement();
        }
        return new IfStmt(range(javaToken, token()), Expression, Statement2, Statement);
    }

    public final NodeList<ClassOrInterfaceType> ImplementsList() throws ParseException {
        NodeList<ClassOrInterfaceType> nodeList = new NodeList<>();
        jj_consume_token(35);
        nodeList.add((NodeList<ClassOrInterfaceType>) AnnotatedClassOrInterfaceType());
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[16] = this.jj_gen;
                return nodeList;
            }
            jj_consume_token(108);
            nodeList.add((NodeList<ClassOrInterfaceType>) AnnotatedClassOrInterfaceType());
        }
    }

    public final ImportDeclaration ImportDeclaration() throws ParseException {
        boolean z10;
        jj_consume_token(36);
        JavaToken javaToken = token();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        boolean z11 = true;
        if (i10 != 54) {
            this.jj_la1[5] = this.jj_gen;
            z10 = false;
        } else {
            jj_consume_token(54);
            z10 = true;
        }
        Name Name = Name();
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 109) {
            this.jj_la1[6] = this.jj_gen;
            z11 = false;
        } else {
            jj_consume_token(109);
            jj_consume_token(130);
        }
        jj_consume_token(107);
        return new ImportDeclaration(range(javaToken, token()), Name, z10, z11);
    }

    public final ImportDeclaration ImportDeclarationParseStart() throws ParseException {
        ImportDeclaration ImportDeclaration = ImportDeclaration();
        jj_consume_token(0);
        return ImportDeclaration;
    }

    public final Expression InclusiveOrExpression() throws ParseException {
        Expression ExclusiveOrExpression = ExclusiveOrExpression();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 133) {
                this.jj_la1[86] = this.jj_gen;
                return ExclusiveOrExpression;
            }
            jj_consume_token(133);
            ExclusiveOrExpression = new BinaryExpr(range(ExclusiveOrExpression, token()), ExclusiveOrExpression, ExclusiveOrExpression(), BinaryExpr.Operator.BINARY_OR);
        }
    }

    public final NodeList<Parameter> InferredLambdaParameters() throws ParseException {
        Pair<SimpleName, List<ArrayType.ArrayBracketPair>> VariableDeclaratorId = VariableDeclaratorId();
        SimpleName simpleName = VariableDeclaratorId.f59826a;
        NodeList<Parameter> add = add((NodeList<NodeList>) null, (NodeList) new Parameter(range(simpleName, simpleName), new NodeList(), emptyNodeList(), new UnknownType(), false, emptyNodeList(), VariableDeclaratorId.f59826a));
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[58] = this.jj_gen;
                return add;
            }
            jj_consume_token(108);
            Pair<SimpleName, List<ArrayType.ArrayBracketPair>> VariableDeclaratorId2 = VariableDeclaratorId();
            SimpleName simpleName2 = VariableDeclaratorId2.f59826a;
            add = add((NodeList<NodeList<Parameter>>) add, (NodeList<Parameter>) new Parameter(range(simpleName2, simpleName2), new NodeList(), emptyNodeList(), new UnknownType(), false, emptyNodeList(), VariableDeclaratorId2.f59826a));
        }
    }

    public final InitializerDeclaration InitializerDeclaration() throws ParseException {
        boolean z10;
        JavaToken javaToken = JavaToken.INVALID;
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 54) {
            this.jj_la1[66] = this.jj_gen;
            z10 = false;
        } else {
            jj_consume_token(54);
            javaToken = token();
            z10 = true;
        }
        BlockStmt Block = Block();
        return new InitializerDeclaration(range(orIfInvalid(javaToken, Block), token()), z10, Block);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x0051. Please report as an issue. */
    public final Expression InstanceOfExpression() throws ParseException {
        InstanceOfExpr instanceOfExpr;
        Expression RelationalExpression = RelationalExpression();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 37) {
            this.jj_la1[94] = this.jj_gen;
            return RelationalExpression;
        }
        jj_consume_token(37);
        if (jj_2_35(Integer.MAX_VALUE)) {
            PatternExpr PatternExpression = PatternExpression();
            instanceOfExpr = new InstanceOfExpr(range(RelationalExpression, token()), RelationalExpression, PatternExpression.getType2().asReferenceType(), PatternExpression);
        } else {
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 != 52 && i11 != 53) {
                switch (i11) {
                    default:
                        switch (i11) {
                            case 68:
                            case 69:
                            case 70:
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                            case 76:
                            case 77:
                            case 78:
                            case 79:
                                break;
                            default:
                                this.jj_la1[93] = this.jj_gen;
                                jj_consume_token(-1);
                                throw new ParseException();
                        }
                    case 13:
                    case 15:
                    case 18:
                    case 24:
                    case 26:
                    case 31:
                    case 38:
                    case 40:
                    case 46:
                    case 50:
                    case 55:
                    case 98:
                    case 111:
                        instanceOfExpr = new InstanceOfExpr(range(RelationalExpression, token()), RelationalExpression, AnnotatedReferenceType(), null);
                        break;
                }
            }
            instanceOfExpr = new InstanceOfExpr(range(RelationalExpression, token()), RelationalExpression, AnnotatedReferenceType(), null);
        }
        return instanceOfExpr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0033, code lost:
    
        switch(r1) {
            case 68: goto L22;
            case 69: goto L22;
            case 70: goto L22;
            case 71: goto L22;
            case 72: goto L22;
            case 73: goto L22;
            case 74: goto L22;
            case 75: goto L22;
            case 76: goto L22;
            case 77: goto L22;
            case 78: goto L22;
            case 79: goto L22;
            default: goto L17;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
    
        r4.jj_la1[69] = r4.jj_gen;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
    
        return new com.github.javaparser.ast.type.IntersectionType(range(r0, token()), r5);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final IntersectionType IntersectionType(NodeList<AnnotationExpr> annotations) throws ParseException {
        JavaToken javaToken = JavaToken.INVALID;
        NodeList emptyNodeList = emptyNodeList();
        ReferenceType ReferenceType = ReferenceType(annotations);
        JavaToken orIfInvalid = orIfInvalid(javaToken, ReferenceType);
        NodeList add = add((NodeList<NodeList>) emptyNodeList, (NodeList) ReferenceType);
        jj_consume_token(132);
        while (true) {
            add = add((NodeList<NodeList>) add, (NodeList) AnnotatedReferenceType());
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 52 && i10 != 53) {
                switch (i10) {
                    case 13:
                    case 15:
                    case 18:
                    case 24:
                    case 26:
                    case 31:
                    case 38:
                    case 40:
                    case 46:
                    case 50:
                    case 55:
                    case 98:
                    case 111:
                        continue;
                }
            }
        }
    }

    public final LabeledStmt LabeledStatement() throws ParseException {
        SimpleName SimpleName = SimpleName();
        JavaToken javaToken = token();
        jj_consume_token(118);
        return new LabeledStmt(range(javaToken, token()), SimpleName, Statement());
    }

    public final Statement LambdaBody() throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52 && i10 != 53 && i10 != 93 && i10 != 94 && i10 != 115 && i10 != 116) {
            switch (i10) {
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 28:
                case 31:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 50:
                case 59:
                case 63:
                case 65:
                case 86:
                case 96:
                case 98:
                case 101:
                case 111:
                    break;
                case 103:
                    return Block();
                default:
                    switch (i10) {
                        case 55:
                        case 56:
                        case 57:
                            break;
                        default:
                            switch (i10) {
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                case 80:
                                case 81:
                                    break;
                                default:
                                    switch (i10) {
                                        case 126:
                                        case 127:
                                        case 128:
                                        case 129:
                                            break;
                                        default:
                                            this.jj_la1[141] = this.jj_gen;
                                            jj_consume_token(-1);
                                            throw new ParseException();
                                    }
                            }
                    }
            }
        }
        Expression Expression = Expression();
        return new ExpressionStmt(range(Expression, token()), Expression);
    }

    public final NodeList<Parameter> LambdaParameters() throws ParseException {
        NodeList<Parameter> add = add((NodeList<NodeList>) null, (NodeList) Parameter());
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[57] = this.jj_gen;
                return add;
            }
            jj_consume_token(108);
            add = add((NodeList<NodeList<Parameter>>) add, (NodeList<Parameter>) Parameter());
        }
    }

    public final Expression Literal() throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 28) {
            if (i10 == 44) {
                return NullLiteral();
            }
            if (i10 != 63) {
                if (i10 == 86) {
                    jj_consume_token(86);
                    return new DoubleLiteralExpr(tokenRange(), this.token.image);
                }
                if (i10 == 96) {
                    jj_consume_token(96);
                    return new TextBlockLiteralExpr(tokenRange(), unTripleQuote(this.token.image));
                }
                if (i10 == 80) {
                    jj_consume_token(80);
                    return new LongLiteralExpr(tokenRange(), this.token.image);
                }
                if (i10 == 81) {
                    jj_consume_token(81);
                    return new IntegerLiteralExpr(tokenRange(), this.token.image);
                }
                if (i10 == 93) {
                    jj_consume_token(93);
                    return new CharLiteralExpr(tokenRange(), unquote(this.token.image));
                }
                if (i10 == 94) {
                    jj_consume_token(94);
                    return new StringLiteralExpr(tokenRange(), unquote(this.token.image));
                }
                this.jj_la1[127] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
            }
        }
        return BooleanLiteral();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x002f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0032. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:23:0x0035. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0051 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Expression MemberValue() throws ParseException {
        if (jj_2_69(Integer.MAX_VALUE)) {
            return Annotation();
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52 && i10 != 53 && i10 != 93 && i10 != 94 && i10 != 115 && i10 != 116) {
            switch (i10) {
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 28:
                case 31:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 50:
                case 59:
                case 63:
                case 65:
                case 86:
                case 96:
                case 98:
                case 101:
                case 111:
                    break;
                case 103:
                    return MemberValueArrayInitializer();
                default:
                    switch (i10) {
                        default:
                            switch (i10) {
                                default:
                                    switch (i10) {
                                        case 126:
                                        case 127:
                                        case 128:
                                        case 129:
                                            break;
                                        default:
                                            this.jj_la1[170] = this.jj_gen;
                                            jj_consume_token(-1);
                                            throw new ParseException();
                                    }
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                case 80:
                                case 81:
                                    return ConditionalExpression();
                            }
                        case 55:
                        case 56:
                        case 57:
                            break;
                    }
            }
        }
        return ConditionalExpression();
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0045 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0053 A[LOOP:0: B:31:0x004c->B:33:0x0053, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Expression MemberValueArrayInitializer() throws ParseException {
        int i10;
        NodeList emptyNodeList = emptyNodeList();
        jj_consume_token(103);
        JavaToken javaToken = token();
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 52 && i11 != 53 && i11 != 93 && i11 != 94 && i11 != 115 && i11 != 116) {
            switch (i11) {
                default:
                    switch (i11) {
                        default:
                            switch (i11) {
                                default:
                                    switch (i11) {
                                        case 126:
                                        case 127:
                                        case 128:
                                        case 129:
                                            break;
                                        default:
                                            this.jj_la1[171] = this.jj_gen;
                                            break;
                                    }
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                case 80:
                                case 81:
                                    emptyNodeList.add((NodeList) MemberValue());
                                    while (jj_2_70(2)) {
                                        jj_consume_token(108);
                                        emptyNodeList.add((NodeList) MemberValue());
                                    }
                                    break;
                            }
                        case 55:
                        case 56:
                        case 57:
                            break;
                    }
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 28:
                case 31:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 50:
                case 59:
                case 63:
                case 65:
                case 86:
                case 96:
                case 98:
                case 101:
                case 103:
                case 111:
                    break;
            }
            i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 == 108) {
                this.jj_la1[172] = this.jj_gen;
            } else {
                jj_consume_token(108);
            }
            jj_consume_token(104);
            return new ArrayInitializerExpr(range(javaToken, token()), emptyNodeList);
        }
        emptyNodeList.add((NodeList) MemberValue());
        while (jj_2_70(2)) {
        }
        i10 = this.jj_ntk;
        if (i10 == -1) {
        }
        if (i10 == 108) {
        }
        jj_consume_token(104);
        return new ArrayInitializerExpr(range(javaToken, token()), emptyNodeList);
    }

    public final MemberValuePair MemberValuePair() throws ParseException {
        SimpleName SimpleName = SimpleName();
        JavaToken javaToken = token();
        jj_consume_token(113);
        return new MemberValuePair(range(javaToken, token()), SimpleName, MemberValue());
    }

    public final NodeList<MemberValuePair> MemberValuePairs() throws ParseException {
        NodeList<MemberValuePair> nodeList = new NodeList<>();
        nodeList.add((NodeList<MemberValuePair>) MemberValuePair());
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[169] = this.jj_gen;
                return nodeList;
            }
            jj_consume_token(108);
            nodeList.add((NodeList<MemberValuePair>) MemberValuePair());
        }
    }

    public final MethodDeclaration MethodDeclaration(ModifierHolder modifier) throws ParseException {
        RangedList<TypeParameter> rangedList = new RangedList<>(emptyNodeList());
        BlockStmt blockStmt = null;
        new Pair(emptyNodeList(), null);
        List<ArrayType.ArrayBracketPair> arrayList = new ArrayList<>(0);
        NodeList emptyNodeList = emptyNodeList();
        JavaToken javaToken = modifier.begin;
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 114) {
            this.jj_la1[49] = this.jj_gen;
        } else {
            rangedList = TypeParameters();
            javaToken = orIfInvalid(javaToken, rangedList.range.getBegin());
        }
        NodeList<AnnotationExpr> Annotations = Annotations();
        modifier.annotations.addAll(Annotations);
        JavaToken orIfInvalid = orIfInvalid(javaToken, nodeListBegin(Annotations));
        Type ResultType = ResultType(emptyNodeList());
        JavaToken orIfInvalid2 = orIfInvalid(orIfInvalid, ResultType);
        SimpleName SimpleName = SimpleName();
        Pair<NodeList<Parameter>, ReceiverParameter> Parameters = Parameters();
        while (true) {
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 != 105 && i11 != 111) {
                break;
            }
            arrayList = add((List<List<ArrayType.ArrayBracketPair>>) arrayList, (List<ArrayType.ArrayBracketPair>) ArrayBracketPair(ArrayType.Origin.NAME));
        }
        this.jj_la1[50] = this.jj_gen;
        int i12 = this.jj_ntk;
        if (i12 == -1) {
            i12 = jj_ntk_f();
        }
        if (i12 != 61) {
            this.jj_la1[52] = this.jj_gen;
        } else {
            jj_consume_token(61);
            emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) AnnotatedReferenceType());
            while (true) {
                int i13 = this.jj_ntk;
                if (i13 == -1) {
                    i13 = jj_ntk_f();
                }
                if (i13 != 108) {
                    break;
                }
                jj_consume_token(108);
                emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) AnnotatedReferenceType());
            }
            this.jj_la1[51] = this.jj_gen;
        }
        NodeList nodeList = emptyNodeList;
        int i14 = this.jj_ntk;
        if (i14 == -1) {
            i14 = jj_ntk_f();
        }
        if (i14 == 103) {
            blockStmt = Block();
        } else {
            if (i14 != 107) {
                this.jj_la1[53] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
            }
            jj_consume_token(107);
        }
        BlockStmt blockStmt2 = blockStmt;
        return new MethodDeclaration(range(orIfInvalid2, token()), modifier.modifiers, modifier.annotations, rangedList.list, juggleArrayType(ResultType, arrayList), SimpleName, Parameters.f59826a, nodeList, blockStmt2, Parameters.f59827b);
    }

    public final MethodDeclaration MethodDeclarationParseStart() throws ParseException {
        MethodDeclaration MethodDeclaration = MethodDeclaration(Modifiers());
        jj_consume_token(0);
        return MethodDeclaration;
    }

    public final ModifierHolder Modifiers() throws ParseException {
        JavaToken javaToken = JavaToken.INVALID;
        NodeList nodeList = new NodeList();
        NodeList nodeList2 = new NodeList();
        while (jj_2_3(2)) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            switch (i10) {
                case 11:
                    jj_consume_token(11);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.ABSTRACT));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 22:
                    jj_consume_token(22);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.DEFAULT));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 29:
                    jj_consume_token(29);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.FINAL));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 41:
                    jj_consume_token(41);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.NATIVE));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 43:
                    jj_consume_token(43);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.NON_SEALED));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 47:
                    jj_consume_token(47);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.PRIVATE));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 48:
                    jj_consume_token(48);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.PROTECTED));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 49:
                    jj_consume_token(49);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.PUBLIC));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 52:
                    jj_consume_token(52);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.SEALED));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 54:
                    jj_consume_token(54);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.STATIC));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 55:
                    jj_consume_token(55);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.STRICTFP));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 58:
                    jj_consume_token(58);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.SYNCHRONIZED));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 62:
                    jj_consume_token(62);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.TRANSIENT));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 66:
                    jj_consume_token(66);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.VOLATILE));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 78:
                    jj_consume_token(78);
                    add((NodeList<NodeList>) nodeList, (NodeList) new Modifier(tokenRange(), Modifier.Keyword.TRANSITIVE));
                    javaToken = orIfInvalid(javaToken, token());
                    break;
                case 111:
                    AnnotationExpr Annotation = Annotation();
                    nodeList2 = add((NodeList<NodeList>) nodeList2, (NodeList) Annotation);
                    javaToken = orIfInvalid(javaToken, Annotation);
                    break;
                default:
                    this.jj_la1[7] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
            }
        }
        return new ModifierHolder(javaToken, nodeList, nodeList2);
    }

    public final ModuleDeclaration ModuleDeclaration(ModifierHolder modifier) throws ParseException {
        boolean z10;
        NodeList nodeList = new NodeList();
        JavaToken javaToken = modifier.begin;
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 72) {
            this.jj_la1[184] = this.jj_gen;
            z10 = false;
        } else {
            jj_consume_token(72);
            javaToken = orIfInvalid(javaToken, token());
            z10 = true;
        }
        boolean z11 = z10;
        jj_consume_token(75);
        JavaToken orIfInvalid = orIfInvalid(javaToken, token());
        Name Name = Name();
        jj_consume_token(103);
        NodeList nodeList2 = nodeList;
        while (true) {
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 != 69 && i11 != 73 && i11 != 74 && i11 != 76 && i11 != 77) {
                this.jj_la1[185] = this.jj_gen;
                jj_consume_token(104);
                return new ModuleDeclaration(range(orIfInvalid, token()), modifier.annotations, Name, z11, nodeList2);
            }
            nodeList2 = add((NodeList<NodeList>) nodeList2, (NodeList) ModuleDirective());
        }
    }

    public final ModuleDeclaration ModuleDeclarationParseStart() throws ParseException {
        ModuleDeclaration ModuleDeclaration = ModuleDeclaration(Modifiers());
        jj_consume_token(0);
        return ModuleDeclaration;
    }

    public final ModuleDirective ModuleDirective() throws ParseException {
        ModuleDirective moduleRequiresDirective;
        NodeList emptyNodeList = emptyNodeList();
        if (jj_2_74(Integer.MAX_VALUE)) {
            jj_consume_token(69);
            JavaToken javaToken = token();
            jj_consume_token(78);
            JavaToken javaToken2 = token();
            setTokenKind(98);
            jj_consume_token(107);
            return new ModuleRequiresDirective(range(javaToken, token()), new NodeList(), new Name(range(javaToken2, javaToken2), null, javaToken2.getText()));
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 69) {
            jj_consume_token(69);
            JavaToken javaToken3 = token();
            ModifierHolder Modifiers = Modifiers();
            Name Name = Name();
            jj_consume_token(107);
            moduleRequiresDirective = new ModuleRequiresDirective(range(javaToken3, token()), Modifiers.modifiers, Name);
        } else {
            if (i10 == 73) {
                jj_consume_token(73);
                JavaToken javaToken4 = token();
                Name Name2 = Name();
                int i11 = this.jj_ntk;
                if (i11 == -1) {
                    i11 = jj_ntk_f();
                }
                if (i11 != 70) {
                    this.jj_la1[181] = this.jj_gen;
                } else {
                    jj_consume_token(70);
                    emptyNodeList.add((NodeList) Name());
                    while (true) {
                        int i12 = this.jj_ntk;
                        if (i12 == -1) {
                            i12 = jj_ntk_f();
                        }
                        if (i12 != 108) {
                            break;
                        }
                        jj_consume_token(108);
                        emptyNodeList.add((NodeList) Name());
                    }
                    this.jj_la1[180] = this.jj_gen;
                }
                jj_consume_token(107);
                return new ModuleOpensDirective(range(javaToken4, token()), Name2, emptyNodeList);
            }
            if (i10 == 74) {
                jj_consume_token(74);
                JavaToken javaToken5 = token();
                Name Name3 = Name();
                jj_consume_token(107);
                return new ModuleUsesDirective(range(javaToken5, token()), Name3);
            }
            if (i10 == 76) {
                jj_consume_token(76);
                JavaToken javaToken6 = token();
                Name Name4 = Name();
                int i13 = this.jj_ntk;
                if (i13 == -1) {
                    i13 = jj_ntk_f();
                }
                if (i13 != 70) {
                    this.jj_la1[179] = this.jj_gen;
                } else {
                    jj_consume_token(70);
                    emptyNodeList.add((NodeList) Name());
                    while (true) {
                        int i14 = this.jj_ntk;
                        if (i14 == -1) {
                            i14 = jj_ntk_f();
                        }
                        if (i14 != 108) {
                            break;
                        }
                        jj_consume_token(108);
                        emptyNodeList.add((NodeList) Name());
                    }
                    this.jj_la1[178] = this.jj_gen;
                }
                jj_consume_token(107);
                return new ModuleExportsDirective(range(javaToken6, token()), Name4, emptyNodeList);
            }
            if (i10 != 77) {
                this.jj_la1[183] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
            }
            jj_consume_token(77);
            JavaToken javaToken7 = token();
            Name Name5 = Name();
            jj_consume_token(71);
            emptyNodeList.add((NodeList) Name());
            while (true) {
                int i15 = this.jj_ntk;
                if (i15 == -1) {
                    i15 = jj_ntk_f();
                }
                if (i15 != 108) {
                    break;
                }
                jj_consume_token(108);
                emptyNodeList.add((NodeList) Name());
            }
            this.jj_la1[182] = this.jj_gen;
            jj_consume_token(107);
            moduleRequiresDirective = new ModuleProvidesDirective(range(javaToken7, token()), Name5, emptyNodeList);
        }
        return moduleRequiresDirective;
    }

    public final ModuleDirective ModuleDirectiveParseStart() throws ParseException {
        ModuleDirective ModuleDirective = ModuleDirective();
        jj_consume_token(0);
        return ModuleDirective;
    }

    public final Expression MultiplicativeExpression() throws ParseException {
        BinaryExpr.Operator operator;
        Expression UnaryExpression = UnaryExpression();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 130 && i10 != 131 && i10 != 135) {
                this.jj_la1[100] = this.jj_gen;
                return UnaryExpression;
            }
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 == 130) {
                jj_consume_token(130);
                operator = BinaryExpr.Operator.MULTIPLY;
            } else if (i11 == 131) {
                jj_consume_token(131);
                operator = BinaryExpr.Operator.DIVIDE;
            } else {
                if (i11 != 135) {
                    this.jj_la1[101] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
                }
                jj_consume_token(135);
                operator = BinaryExpr.Operator.REMAINDER;
            }
            UnaryExpression = new BinaryExpr(range(UnaryExpression, token()), UnaryExpression, UnaryExpression(), operator);
        }
    }

    public final Name Name() throws ParseException {
        Identifier();
        Name name = new Name(tokenRange(), null, this.token.image);
        while (jj_2_32(2)) {
            jj_consume_token(109);
            Identifier();
            name = new Name(range(name, token()), name, this.token.image);
        }
        return name;
    }

    public final Name NameParseStart() throws ParseException {
        Name Name = Name();
        jj_consume_token(0);
        return Name;
    }

    public final Expression NullLiteral() throws ParseException {
        jj_consume_token(44);
        return new NullLiteralExpr(tokenRange());
    }

    public final PackageDeclaration PackageDeclaration() throws ParseException {
        NodeList nodeList = new NodeList();
        JavaToken javaToken = JavaToken.INVALID;
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 111) {
                this.jj_la1[4] = this.jj_gen;
                jj_consume_token(45);
                JavaToken orIfInvalid = orIfInvalid(javaToken, token());
                Name Name = Name();
                jj_consume_token(107);
                return new PackageDeclaration(range(orIfInvalid, token()), nodeList, Name);
            }
            AnnotationExpr Annotation = Annotation();
            nodeList = add((NodeList<NodeList>) nodeList, (NodeList) Annotation);
            javaToken = orIfInvalid(javaToken, Annotation);
        }
    }

    public final PackageDeclaration PackageDeclarationParseStart() throws ParseException {
        PackageDeclaration PackageDeclaration = PackageDeclaration();
        jj_consume_token(0);
        return PackageDeclaration;
    }

    public final Parameter Parameter() throws ParseException {
        boolean z10;
        NodeList<AnnotationExpr> emptyNodeList = emptyNodeList();
        ModifierHolder Modifiers = Modifiers();
        Type Type = Type(emptyNodeList());
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 110 || i10 == 111) {
            emptyNodeList = Annotations();
            jj_consume_token(110);
            z10 = true;
        } else {
            this.jj_la1[59] = this.jj_gen;
            z10 = false;
        }
        NodeList<AnnotationExpr> nodeList = emptyNodeList;
        boolean z11 = z10;
        Pair<SimpleName, List<ArrayType.ArrayBracketPair>> VariableDeclaratorId = VariableDeclaratorId();
        return new Parameter(range(orIfInvalid(Modifiers.begin, Type), token()), Modifiers.modifiers, Modifiers.annotations, juggleArrayType(Type, VariableDeclaratorId.f59827b), z11, nodeList, VariableDeclaratorId.f59826a);
    }

    public final Parameter ParameterParseStart() throws ParseException {
        Parameter Parameter = Parameter();
        jj_consume_token(0);
        return Parameter;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x004a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:33:0x004d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:34:0x0050. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x001b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x001e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0021. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0030 A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008e A[LOOP:0: B:19:0x006f->B:24:0x008e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0067 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Pair<NodeList<Parameter>, ReceiverParameter> Parameters() throws ParseException {
        int i10;
        NodeList emptyNodeList = emptyNodeList();
        jj_consume_token(101);
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        ReceiverParameter receiverParameter = null;
        if (i11 != 40 && i11 != 41) {
            switch (i11) {
                default:
                    switch (i11) {
                        default:
                            switch (i11) {
                                default:
                                    switch (i11) {
                                        case 68:
                                        case 69:
                                        case 70:
                                        case 71:
                                        case 72:
                                        case 73:
                                        case 74:
                                        case 75:
                                        case 76:
                                        case 77:
                                        case 78:
                                        case 79:
                                            break;
                                        default:
                                            this.jj_la1[56] = this.jj_gen;
                                            break;
                                    }
                                    jj_consume_token(102);
                                    return new Pair<>(emptyNodeList, receiverParameter);
                                case 52:
                                case 53:
                                case 54:
                                case 55:
                                    if (jj_2_20(Integer.MAX_VALUE)) {
                                        int i12 = this.jj_ntk;
                                        if (i12 == -1) {
                                            i12 = jj_ntk_f();
                                        }
                                        if (i12 != 40 && i12 != 41) {
                                            switch (i12) {
                                                default:
                                                    switch (i12) {
                                                        default:
                                                            switch (i12) {
                                                                default:
                                                                    switch (i12) {
                                                                        case 68:
                                                                        case 69:
                                                                        case 70:
                                                                        case 71:
                                                                        case 72:
                                                                        case 73:
                                                                        case 74:
                                                                        case 75:
                                                                        case 76:
                                                                        case 77:
                                                                        case 78:
                                                                        case 79:
                                                                            break;
                                                                        default:
                                                                            this.jj_la1[54] = this.jj_gen;
                                                                            jj_consume_token(-1);
                                                                            throw new ParseException();
                                                                    }
                                                                case 52:
                                                                case 53:
                                                                case 54:
                                                                case 55:
                                                                    emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) Parameter());
                                                                    break;
                                                            }
                                                        case 46:
                                                        case 47:
                                                        case 48:
                                                        case 49:
                                                        case 50:
                                                            break;
                                                    }
                                                case 11:
                                                case 13:
                                                case 15:
                                                case 18:
                                                case 22:
                                                case 24:
                                                case 26:
                                                case 29:
                                                case 31:
                                                case 38:
                                                case 43:
                                                case 58:
                                                case 62:
                                                case 66:
                                                case 98:
                                                case 111:
                                                    break;
                                            }
                                        }
                                        emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) Parameter());
                                    } else {
                                        receiverParameter = ReceiverParameter();
                                    }
                                    while (true) {
                                        i10 = this.jj_ntk;
                                        if (i10 == -1) {
                                            i10 = jj_ntk_f();
                                        }
                                        if (i10 == 108) {
                                            this.jj_la1[55] = this.jj_gen;
                                            jj_consume_token(102);
                                            return new Pair<>(emptyNodeList, receiverParameter);
                                        }
                                        jj_consume_token(108);
                                        emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) Parameter());
                                    }
                            }
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                            break;
                    }
                case 11:
                case 13:
                case 15:
                case 18:
                case 22:
                case 24:
                case 26:
                case 29:
                case 31:
                case 38:
                case 43:
                case 58:
                case 62:
                case 66:
                case 98:
                case 111:
                    break;
            }
        }
        if (jj_2_20(Integer.MAX_VALUE)) {
        }
        while (true) {
            i10 = this.jj_ntk;
            if (i10 == -1) {
            }
            if (i10 == 108) {
            }
            jj_consume_token(108);
            emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) Parameter());
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x001f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x0022. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0025. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003c A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final PatternExpr PatternExpression() throws ParseException {
        if (jj_2_34(Integer.MAX_VALUE)) {
            return TypePatternExpression();
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 40 && i10 != 41) {
            switch (i10) {
                default:
                    switch (i10) {
                        default:
                            switch (i10) {
                                default:
                                    switch (i10) {
                                        case 68:
                                        case 69:
                                        case 70:
                                        case 71:
                                        case 72:
                                        case 73:
                                        case 74:
                                        case 75:
                                        case 76:
                                        case 77:
                                        case 78:
                                        case 79:
                                            break;
                                        default:
                                            this.jj_la1[91] = this.jj_gen;
                                            jj_consume_token(-1);
                                            throw new ParseException();
                                    }
                                case 52:
                                case 53:
                                case 54:
                                case 55:
                                    return RecordPatternExpression();
                            }
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                            break;
                    }
                case 11:
                case 13:
                case 15:
                case 18:
                case 22:
                case 24:
                case 26:
                case 29:
                case 31:
                case 38:
                case 43:
                case 58:
                case 62:
                case 66:
                case 98:
                case 111:
                    break;
            }
        }
        return RecordPatternExpression();
    }

    public final NodeList<PatternExpr> PatternList() throws ParseException {
        NodeList<PatternExpr> nodeList = new NodeList<>();
        jj_consume_token(101);
        nodeList.add((NodeList<PatternExpr>) PatternExpression());
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[92] = this.jj_gen;
                jj_consume_token(102);
                return nodeList;
            }
            jj_consume_token(108);
            nodeList.add((NodeList<PatternExpr>) PatternExpression());
        }
    }

    public final NodeList<ClassOrInterfaceType> PermitsList() throws ParseException {
        NodeList<ClassOrInterfaceType> nodeList = new NodeList<>();
        jj_consume_token(46);
        nodeList.add((NodeList<ClassOrInterfaceType>) AnnotatedClassOrInterfaceType());
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[17] = this.jj_gen;
                return nodeList;
            }
            jj_consume_token(108);
            nodeList.add((NodeList<ClassOrInterfaceType>) AnnotatedClassOrInterfaceType());
        }
    }

    public final Expression PostfixExpression() throws ParseException {
        UnaryExpr.Operator operator;
        Expression PrimaryExpression = PrimaryExpression();
        if (!jj_2_40(2)) {
            return PrimaryExpression;
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 126) {
            jj_consume_token(126);
            operator = UnaryExpr.Operator.POSTFIX_INCREMENT;
        } else {
            if (i10 != 127) {
                this.jj_la1[107] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
            }
            jj_consume_token(127);
            operator = UnaryExpr.Operator.POSTFIX_DECREMENT;
        }
        return new UnaryExpr(range(PrimaryExpression, token()), PrimaryExpression, operator);
    }

    public final Expression PreDecrementExpression() throws ParseException {
        jj_consume_token(127);
        JavaToken javaToken = token();
        return new UnaryExpr(range(javaToken, token()), UnaryExpression(), UnaryExpr.Operator.PREFIX_DECREMENT);
    }

    public final Expression PreIncrementExpression() throws ParseException {
        JavaToken javaToken = JavaToken.INVALID;
        jj_consume_token(126);
        JavaToken javaToken2 = token();
        return new UnaryExpr(range(javaToken2, token()), UnaryExpression(), UnaryExpr.Operator.PREFIX_INCREMENT);
    }

    public final Expression PrimaryExpression() throws ParseException {
        Expression PrimaryPrefix = PrimaryPrefix();
        while (jj_2_42(2)) {
            PrimaryPrefix = PrimarySuffix(PrimaryPrefix);
        }
        return PrimaryPrefix;
    }

    public final Expression PrimaryExpressionWithoutSuperSuffix() throws ParseException {
        Expression PrimaryPrefix = PrimaryPrefix();
        while (jj_2_43(Integer.MAX_VALUE)) {
            PrimaryPrefix = PrimarySuffixWithoutSuper(PrimaryPrefix);
        }
        return PrimaryPrefix;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:113:0x01ee. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:114:0x01f1. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:115:0x01f4. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0209 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Expression PrimaryPrefix() throws ParseException {
        NodeList<Expression> Arguments;
        Expression enclosedExpr;
        NodeList<Expression> Arguments2;
        boolean z10;
        RangedList<Type> rangedList = new RangedList<>(null);
        NodeList<Expression> emptyNodeList = emptyNodeList();
        NodeList emptyNodeList2 = emptyNodeList();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 28) {
            if (i10 == 42) {
                return AllocationExpression(null);
            }
            if (i10 != 44) {
                boolean z11 = false;
                if (i10 == 56) {
                    jj_consume_token(56);
                    SuperExpr superExpr = new SuperExpr(tokenRange(), null);
                    int i11 = this.jj_ntk;
                    if (i11 == -1) {
                        i11 = jj_ntk_f();
                    }
                    if (i11 == 109) {
                        jj_consume_token(109);
                        int i12 = this.jj_ntk;
                        if (i12 == -1) {
                            i12 = jj_ntk_f();
                        }
                        if (i12 != 114) {
                            this.jj_la1[110] = this.jj_gen;
                        } else {
                            rangedList = TypeArguments();
                        }
                        SimpleName SimpleName = SimpleName();
                        int i13 = this.jj_ntk;
                        if (i13 == -1) {
                            i13 = jj_ntk_f();
                        }
                        if (i13 != 101) {
                            this.jj_la1[111] = this.jj_gen;
                            Arguments = emptyNodeList;
                        } else {
                            Arguments = Arguments();
                            z11 = true;
                        }
                        return z11 ? new MethodCallExpr(range(superExpr, token()), superExpr, rangedList.list, SimpleName, Arguments) : new FieldAccessExpr(range(superExpr, token()), superExpr, emptyNodeList(), SimpleName);
                    }
                    if (i11 != 112) {
                        this.jj_la1[114] = this.jj_gen;
                        jj_consume_token(-1);
                        throw new ParseException();
                    }
                    jj_consume_token(112);
                    int i14 = this.jj_ntk;
                    if (i14 == -1) {
                        i14 = jj_ntk_f();
                    }
                    if (i14 != 114) {
                        this.jj_la1[112] = this.jj_gen;
                    } else {
                        rangedList = TypeArguments();
                    }
                    int i15 = this.jj_ntk;
                    if (i15 == -1) {
                        i15 = jj_ntk_f();
                    }
                    if (i15 != 26) {
                        if (i15 == 42) {
                            jj_consume_token(42);
                            return new MethodReferenceExpr(range(superExpr, token()), superExpr, rangedList.list, this.token.image);
                        }
                        if (i15 != 46 && i15 != 50 && i15 != 52 && i15 != 55 && i15 != 98) {
                            switch (i15) {
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                    break;
                                default:
                                    this.jj_la1[113] = this.jj_gen;
                                    jj_consume_token(-1);
                                    throw new ParseException();
                            }
                            return new MethodReferenceExpr(range(superExpr, token()), superExpr, rangedList.list, this.token.image);
                        }
                    }
                    Identifier();
                    return new MethodReferenceExpr(range(superExpr, token()), superExpr, rangedList.list, this.token.image);
                }
                if (i10 == 59) {
                    jj_consume_token(59);
                    return new ThisExpr(tokenRange(), null);
                }
                if (i10 != 63 && i10 != 86 && i10 != 96) {
                    if (i10 == 101) {
                        jj_consume_token(101);
                        JavaToken javaToken = token();
                        int i16 = this.jj_ntk;
                        if (i16 == -1) {
                            i16 = jj_ntk_f();
                        }
                        if (i16 == 102) {
                            jj_consume_token(102);
                            return new LambdaExpr(range(javaToken, token()), emptyNodeList2, new BlockStmt(), true);
                        }
                        this.jj_la1[115] = this.jj_gen;
                        if (jj_2_44(Integer.MAX_VALUE)) {
                            NodeList<Parameter> LambdaParameters = LambdaParameters();
                            jj_consume_token(102);
                            enclosedExpr = new LambdaExpr(range(javaToken, token()), LambdaParameters, new BlockStmt(), true);
                        } else if (jj_2_45(Integer.MAX_VALUE)) {
                            NodeList<Parameter> InferredLambdaParameters = InferredLambdaParameters();
                            jj_consume_token(102);
                            enclosedExpr = new LambdaExpr(range(javaToken, token()), InferredLambdaParameters, new BlockStmt(), true);
                        } else {
                            int i17 = this.jj_ntk;
                            if (i17 == -1) {
                                i17 = jj_ntk_f();
                            }
                            if (i17 != 52 && i17 != 53 && i17 != 93 && i17 != 94 && i17 != 115 && i17 != 116) {
                                switch (i17) {
                                    default:
                                        switch (i17) {
                                            default:
                                                switch (i17) {
                                                    default:
                                                        switch (i17) {
                                                            case 126:
                                                            case 127:
                                                            case 128:
                                                            case 129:
                                                                break;
                                                            default:
                                                                this.jj_la1[116] = this.jj_gen;
                                                                jj_consume_token(-1);
                                                                throw new ParseException();
                                                        }
                                                    case 68:
                                                    case 69:
                                                    case 70:
                                                    case 71:
                                                    case 72:
                                                    case 73:
                                                    case 74:
                                                    case 75:
                                                    case 76:
                                                    case 77:
                                                    case 78:
                                                    case 79:
                                                    case 80:
                                                    case 81:
                                                        Expression Expression = Expression();
                                                        jj_consume_token(102);
                                                        enclosedExpr = new EnclosedExpr(range(javaToken, token()), Expression);
                                                        break;
                                                }
                                            case 55:
                                            case 56:
                                            case 57:
                                                break;
                                        }
                                    case 13:
                                    case 15:
                                    case 18:
                                    case 24:
                                    case 26:
                                    case 28:
                                    case 31:
                                    case 38:
                                    case 40:
                                    case 42:
                                    case 44:
                                    case 46:
                                    case 50:
                                    case 59:
                                    case 63:
                                    case 65:
                                    case 86:
                                    case 96:
                                    case 98:
                                    case 101:
                                    case 111:
                                        break;
                                }
                            }
                            Expression Expression2 = Expression();
                            jj_consume_token(102);
                            enclosedExpr = new EnclosedExpr(range(javaToken, token()), Expression2);
                        }
                    } else if (i10 != 80 && i10 != 81 && i10 != 93 && i10 != 94) {
                        this.jj_la1[120] = this.jj_gen;
                        if (jj_2_46(Integer.MAX_VALUE)) {
                            Type ResultType = ResultType(emptyNodeList());
                            jj_consume_token(109);
                            jj_consume_token(19);
                            return new ClassExpr(range(ResultType, token()), ResultType);
                        }
                        if (!jj_2_47(Integer.MAX_VALUE)) {
                            int i18 = this.jj_ntk;
                            if (i18 == -1) {
                                i18 = jj_ntk_f();
                            }
                            if (i18 != 26 && i18 != 46 && i18 != 50 && i18 != 52 && i18 != 55 && i18 != 98) {
                                switch (i18) {
                                    case 68:
                                    case 69:
                                    case 70:
                                    case 71:
                                    case 72:
                                    case 73:
                                    case 74:
                                    case 75:
                                    case 76:
                                    case 77:
                                    case 78:
                                    case 79:
                                        break;
                                    default:
                                        this.jj_la1[121] = this.jj_gen;
                                        jj_consume_token(-1);
                                        throw new ParseException();
                                }
                            }
                            SimpleName SimpleName2 = SimpleName();
                            JavaToken javaToken2 = token();
                            int i19 = this.jj_ntk;
                            if (i19 == -1) {
                                i19 = jj_ntk_f();
                            }
                            if (i19 != 101) {
                                this.jj_la1[119] = this.jj_gen;
                                Arguments2 = emptyNodeList;
                                z10 = false;
                            } else {
                                Arguments2 = Arguments();
                                z10 = true;
                            }
                            return z10 ? new MethodCallExpr(range(javaToken2, token()), null, null, SimpleName2, Arguments2) : new NameExpr(SimpleName2);
                        }
                        Type AnnotatedType = AnnotatedType();
                        jj_consume_token(112);
                        int i20 = this.jj_ntk;
                        if (i20 == -1) {
                            i20 = jj_ntk_f();
                        }
                        if (i20 != 114) {
                            this.jj_la1[117] = this.jj_gen;
                        } else {
                            rangedList = TypeArguments();
                        }
                        int i21 = this.jj_ntk;
                        if (i21 == -1) {
                            i21 = jj_ntk_f();
                        }
                        if (i21 != 26) {
                            if (i21 == 42) {
                                jj_consume_token(42);
                                TypeExpr typeExpr = new TypeExpr(range(AnnotatedType, AnnotatedType), AnnotatedType);
                                enclosedExpr = new MethodReferenceExpr(range(typeExpr, token()), typeExpr, rangedList.list, this.token.image);
                            } else if (i21 != 46 && i21 != 50 && i21 != 52 && i21 != 55 && i21 != 98) {
                                switch (i21) {
                                    case 68:
                                    case 69:
                                    case 70:
                                    case 71:
                                    case 72:
                                    case 73:
                                    case 74:
                                    case 75:
                                    case 76:
                                    case 77:
                                    case 78:
                                    case 79:
                                        break;
                                    default:
                                        this.jj_la1[118] = this.jj_gen;
                                        jj_consume_token(-1);
                                        throw new ParseException();
                                }
                                TypeExpr typeExpr2 = new TypeExpr(range(AnnotatedType, AnnotatedType), AnnotatedType);
                                enclosedExpr = new MethodReferenceExpr(range(typeExpr2, token()), typeExpr2, rangedList.list, this.token.image);
                            }
                        }
                        Identifier();
                        TypeExpr typeExpr22 = new TypeExpr(range(AnnotatedType, AnnotatedType), AnnotatedType);
                        enclosedExpr = new MethodReferenceExpr(range(typeExpr22, token()), typeExpr22, rangedList.list, this.token.image);
                    }
                    return enclosedExpr;
                }
            }
        }
        return Literal();
    }

    public final Expression PrimarySuffix(Expression scope) throws ParseException {
        if (jj_2_48(2)) {
            return PrimarySuffixWithoutSuper(scope);
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 109) {
            jj_consume_token(109);
            jj_consume_token(56);
            return new SuperExpr(range(scope, token()), scopeToName(scope));
        }
        this.jj_la1[122] = this.jj_gen;
        jj_consume_token(-1);
        throw new ParseException();
    }

    public final Expression PrimarySuffixWithoutSuper(Expression scope) throws ParseException {
        boolean z10;
        RangedList<Type> rangedList = new RangedList<>(null);
        NodeList<Expression> emptyNodeList = emptyNodeList();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 105) {
            jj_consume_token(105);
            Expression Expression = Expression();
            jj_consume_token(106);
            return new ArrayAccessExpr(range(scope, token()), scope, Expression);
        }
        if (i10 != 109) {
            this.jj_la1[126] = this.jj_gen;
            jj_consume_token(-1);
            throw new ParseException();
        }
        jj_consume_token(109);
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 == 42) {
            return AllocationExpression(scope);
        }
        if (i11 == 59) {
            jj_consume_token(59);
            return new ThisExpr(range(scope, token()), scopeToName(scope));
        }
        this.jj_la1[125] = this.jj_gen;
        if (!jj_2_49(Integer.MAX_VALUE)) {
            jj_consume_token(-1);
            throw new ParseException();
        }
        int i12 = this.jj_ntk;
        if (i12 == -1) {
            i12 = jj_ntk_f();
        }
        if (i12 != 114) {
            this.jj_la1[123] = this.jj_gen;
        } else {
            rangedList = TypeArguments();
        }
        SimpleName SimpleName = SimpleName();
        int i13 = this.jj_ntk;
        if (i13 == -1) {
            i13 = jj_ntk_f();
        }
        if (i13 != 101) {
            this.jj_la1[124] = this.jj_gen;
            z10 = false;
        } else {
            emptyNodeList = Arguments();
            z10 = true;
        }
        return z10 ? new MethodCallExpr(range(scope, token()), scope, rangedList.list, SimpleName, emptyNodeList) : new FieldAccessExpr(range(scope, token()), scope, rangedList.list, SimpleName);
    }

    public final PrimitiveType PrimitiveType(NodeList<AnnotationExpr> annotations) throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 13) {
            jj_consume_token(13);
            return new PrimitiveType(tokenRange(), PrimitiveType.Primitive.BOOLEAN, annotations);
        }
        if (i10 == 15) {
            jj_consume_token(15);
            return new PrimitiveType(tokenRange(), PrimitiveType.Primitive.BYTE, annotations);
        }
        if (i10 == 18) {
            jj_consume_token(18);
            return new PrimitiveType(tokenRange(), PrimitiveType.Primitive.CHAR, annotations);
        }
        if (i10 == 24) {
            jj_consume_token(24);
            return new PrimitiveType(tokenRange(), PrimitiveType.Primitive.DOUBLE, annotations);
        }
        if (i10 == 31) {
            jj_consume_token(31);
            return new PrimitiveType(tokenRange(), PrimitiveType.Primitive.FLOAT, annotations);
        }
        if (i10 == 38) {
            jj_consume_token(38);
            return new PrimitiveType(tokenRange(), PrimitiveType.Primitive.INT, annotations);
        }
        if (i10 == 40) {
            jj_consume_token(40);
            return new PrimitiveType(tokenRange(), PrimitiveType.Primitive.LONG, annotations);
        }
        if (i10 == 53) {
            jj_consume_token(53);
            return new PrimitiveType(tokenRange(), PrimitiveType.Primitive.SHORT, annotations);
        }
        this.jj_la1[75] = this.jj_gen;
        jj_consume_token(-1);
        throw new ParseException();
    }

    public final void RSIGNEDSHIFT() throws ParseException {
        if (getToken(1).kind != 150 || getToken(1).realKind != 149) {
            jj_consume_token(-1);
            throw new ParseException();
        }
        jj_consume_token(150);
        jj_consume_token(150);
    }

    public final void RUNSIGNEDSHIFT() throws ParseException {
        if (getToken(1).kind != 150 || getToken(1).realKind != 148) {
            jj_consume_token(-1);
            throw new ParseException();
        }
        jj_consume_token(150);
        jj_consume_token(150);
        jj_consume_token(150);
    }

    public void ReInit(final String sDSL) {
        ReInit(new StringProvider(sDSL));
    }

    public final ReceiverParameter ReceiverParameter() throws ParseException {
        emptyNodeList();
        NodeList<AnnotationExpr> Annotations = Annotations();
        Type Type = Type(emptyNodeList());
        return new ReceiverParameter(range(Type, token()), Annotations, Type, ReceiverParameterId());
    }

    public final Name ReceiverParameterId() throws ParseException {
        Name name;
        if (jj_2_21(Integer.MAX_VALUE)) {
            name = Name();
            jj_consume_token(109);
        } else {
            name = null;
        }
        jj_consume_token(59);
        return new Name(tokenRange(), name, this.token.image);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0022. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0025. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0028. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x002b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x004f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x0052. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x0055. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x0058. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003f A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0052 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0075 A[ADDED_TO_REGION, FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0075 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x006f A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final NodeList<BodyDeclaration<?>> RecordBody() throws ParseException {
        int i10;
        NodeList<BodyDeclaration<?>> emptyNodeList = emptyNodeList();
        jj_consume_token(103);
        while (true) {
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 != 18 && i11 != 19 && i11 != 65 && i11 != 66) {
                switch (i11) {
                    default:
                        switch (i11) {
                            default:
                                switch (i11) {
                                    default:
                                        switch (i11) {
                                            default:
                                                switch (i11) {
                                                    case 68:
                                                    case 69:
                                                    case 70:
                                                    case 71:
                                                    case 72:
                                                    case 73:
                                                    case 74:
                                                    case 75:
                                                    case 76:
                                                    case 77:
                                                    case 78:
                                                    case 79:
                                                        break;
                                                    default:
                                                        this.jj_la1[32] = this.jj_gen;
                                                        jj_consume_token(104);
                                                        return emptyNodeList;
                                                }
                                            case 52:
                                            case 53:
                                            case 54:
                                            case 55:
                                                i10 = this.jj_ntk;
                                                if (i10 == -1) {
                                                    i10 = jj_ntk_f();
                                                }
                                                if (i10 != 18 && i10 != 19 && i10 != 65 && i10 != 66) {
                                                    switch (i10) {
                                                        case 11:
                                                        case 13:
                                                        case 15:
                                                        case 22:
                                                        case 24:
                                                        case 26:
                                                        case 29:
                                                        case 31:
                                                        case 43:
                                                        case 58:
                                                        case 62:
                                                        case 98:
                                                        case 103:
                                                        case 111:
                                                        case 114:
                                                        case 107:
                                                            jj_consume_token(107);
                                                        default:
                                                            switch (i10) {
                                                                default:
                                                                    switch (i10) {
                                                                        default:
                                                                            switch (i10) {
                                                                                default:
                                                                                    switch (i10) {
                                                                                        case 68:
                                                                                        case 69:
                                                                                        case 70:
                                                                                        case 71:
                                                                                        case 72:
                                                                                        case 73:
                                                                                        case 74:
                                                                                        case 75:
                                                                                        case 76:
                                                                                        case 77:
                                                                                        case 78:
                                                                                        case 79:
                                                                                            break;
                                                                                        default:
                                                                                            this.jj_la1[33] = this.jj_gen;
                                                                                            jj_consume_token(-1);
                                                                                            throw new ParseException();
                                                                                    }
                                                                                case 52:
                                                                                case 53:
                                                                                case 54:
                                                                                case 55:
                                                                                    emptyNodeList.add((NodeList<BodyDeclaration<?>>) RecordBodyDeclaration());
                                                                            }
                                                                        case 46:
                                                                        case 47:
                                                                        case 48:
                                                                        case 49:
                                                                        case 50:
                                                                            break;
                                                                    }
                                                                case 38:
                                                                case 39:
                                                                case 40:
                                                                case 41:
                                                                    break;
                                                            }
                                                    }
                                                }
                                                emptyNodeList.add((NodeList<BodyDeclaration<?>>) RecordBodyDeclaration());
                                                break;
                                        }
                                    case 46:
                                    case 47:
                                    case 48:
                                    case 49:
                                    case 50:
                                        break;
                                }
                            case 38:
                            case 39:
                            case 40:
                            case 41:
                                break;
                        }
                    case 11:
                    case 13:
                    case 15:
                    case 22:
                    case 24:
                    case 26:
                    case 29:
                    case 31:
                    case 43:
                    case 58:
                    case 62:
                    case 98:
                    case 103:
                    case 107:
                    case 111:
                    case 114:
                        break;
                }
            }
            i10 = this.jj_ntk;
            if (i10 == -1) {
            }
            if (i10 != 18) {
                switch (i10) {
                    case 11:
                    case 13:
                    case 15:
                    case 22:
                    case 24:
                    case 26:
                    case 29:
                    case 31:
                    case 43:
                    case 58:
                    case 62:
                    case 98:
                    case 103:
                    case 111:
                    case 114:
                        break;
                    case 107:
                        break;
                }
            }
            emptyNodeList.add((NodeList<BodyDeclaration<?>>) RecordBodyDeclaration());
        }
    }

    public final BodyDeclaration<?> RecordBodyDeclaration() throws ParseException {
        if (jj_2_11(2)) {
            return InitializerDeclaration();
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 18 && i10 != 19 && i10 != 65 && i10 != 66) {
            switch (i10) {
                case 11:
                case 13:
                case 15:
                case 22:
                case 24:
                case 26:
                case 29:
                case 31:
                case 43:
                case 58:
                case 62:
                case 98:
                case 111:
                case 114:
                    break;
                default:
                    switch (i10) {
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                            break;
                        default:
                            switch (i10) {
                                case 46:
                                case 47:
                                case 48:
                                case 49:
                                case 50:
                                    break;
                                default:
                                    switch (i10) {
                                        case 52:
                                        case 53:
                                        case 54:
                                        case 55:
                                            break;
                                        default:
                                            switch (i10) {
                                                case 68:
                                                case 69:
                                                case 70:
                                                case 71:
                                                case 72:
                                                case 73:
                                                case 74:
                                                case 75:
                                                case 76:
                                                case 77:
                                                case 78:
                                                case 79:
                                                    break;
                                                default:
                                                    this.jj_la1[36] = this.jj_gen;
                                                    jj_consume_token(-1);
                                                    throw new ParseException();
                                            }
                                    }
                            }
                    }
            }
        }
        ModifierHolder Modifiers = Modifiers();
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 == 19 || i11 == 39) {
            return ClassOrInterfaceDeclaration(Modifiers);
        }
        this.jj_la1[34] = this.jj_gen;
        if (jj_2_5(Integer.MAX_VALUE)) {
            return EnumDeclaration(Modifiers);
        }
        if (jj_2_6(Integer.MAX_VALUE)) {
            return RecordDeclaration(Modifiers);
        }
        if (jj_2_7(Integer.MAX_VALUE)) {
            return AnnotationTypeDeclaration(Modifiers);
        }
        if (jj_2_8(Integer.MAX_VALUE)) {
            return CompactConstructorDeclaration(Modifiers);
        }
        if (jj_2_9(Integer.MAX_VALUE)) {
            return ConstructorDeclaration(Modifiers);
        }
        if (jj_2_10(Integer.MAX_VALUE)) {
            return FieldDeclaration(Modifiers);
        }
        int i12 = this.jj_ntk;
        if (i12 == -1) {
            i12 = jj_ntk_f();
        }
        if (i12 != 52 && i12 != 53) {
            switch (i12) {
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 31:
                case 38:
                case 40:
                case 46:
                case 50:
                case 55:
                case 65:
                case 98:
                case 111:
                case 114:
                    break;
                default:
                    switch (i12) {
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                            break;
                        default:
                            this.jj_la1[35] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                    }
            }
        }
        return MethodDeclaration(Modifiers);
    }

    public final RecordDeclaration RecordDeclaration(ModifierHolder modifier) throws ParseException {
        RangedList<TypeParameter> rangedList = new RangedList<>(emptyNodeList());
        NodeList<ClassOrInterfaceType> emptyNodeList = emptyNodeList();
        emptyNodeList();
        JavaToken javaToken = modifier.begin;
        jj_consume_token(50);
        JavaToken orIfInvalid = orIfInvalid(javaToken, token());
        SimpleName SimpleName = SimpleName();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 114) {
            this.jj_la1[13] = this.jj_gen;
        } else {
            rangedList = TypeParameters();
        }
        Pair<NodeList<Parameter>, ReceiverParameter> Parameters = Parameters();
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 35) {
            this.jj_la1[14] = this.jj_gen;
        } else {
            emptyNodeList = ImplementsList();
        }
        return new RecordDeclaration(range(orIfInvalid, token()), modifier.modifiers, modifier.annotations, SimpleName, Parameters.f59826a, rangedList.list, emptyNodeList, RecordBody(), Parameters.f59827b);
    }

    public final RecordPatternExpr RecordPatternExpression() throws ParseException {
        ModifierHolder Modifiers = Modifiers();
        ReferenceType ReferenceType = ReferenceType(Modifiers.annotations);
        return new RecordPatternExpr(range(ReferenceType, token()), Modifiers.modifiers, ReferenceType, PatternList());
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x001a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0050 A[LOOP:1: B:21:0x004a->B:23:0x0050, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ReferenceType ReferenceType(NodeList<AnnotationExpr> annotations) throws ParseException {
        Type ClassOrInterfaceType;
        List arrayList = new ArrayList(0);
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52) {
            if (i10 != 53) {
                switch (i10) {
                    case 13:
                    case 15:
                    case 18:
                    case 24:
                    case 31:
                    case 38:
                    case 40:
                        break;
                    default:
                        switch (i10) {
                            case 68:
                            case 69:
                            case 70:
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                            case 76:
                            case 77:
                            case 78:
                            case 79:
                                break;
                            default:
                                this.jj_la1[68] = this.jj_gen;
                                jj_consume_token(-1);
                                throw new ParseException();
                        }
                        return (ReferenceType) ArrayType.wrapInArrayTypes(ClassOrInterfaceType, arrayList);
                    case 26:
                    case 46:
                    case 50:
                    case 55:
                    case 98:
                        ClassOrInterfaceType = ClassOrInterfaceType(annotations);
                        while (jj_2_28(Integer.MAX_VALUE)) {
                            arrayList = add((List<List>) arrayList, (List) ArrayBracketPair(ArrayType.Origin.TYPE));
                        }
                        return (ReferenceType) ArrayType.wrapInArrayTypes(ClassOrInterfaceType, arrayList);
                }
            }
            ClassOrInterfaceType = PrimitiveType(annotations);
            do {
                arrayList = add((List<List>) arrayList, (List) ArrayBracketPair(ArrayType.Origin.TYPE));
            } while (jj_2_27(Integer.MAX_VALUE));
            return (ReferenceType) ArrayType.wrapInArrayTypes(ClassOrInterfaceType, arrayList);
        }
        ClassOrInterfaceType = ClassOrInterfaceType(annotations);
        while (jj_2_28(Integer.MAX_VALUE)) {
        }
        return (ReferenceType) ArrayType.wrapInArrayTypes(ClassOrInterfaceType, arrayList);
    }

    public final Expression RelationalExpression() throws ParseException {
        BinaryExpr.Operator operator;
        Expression ShiftExpression = ShiftExpression();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 114 && i10 != 150 && i10 != 121 && i10 != 122) {
                this.jj_la1[95] = this.jj_gen;
                return ShiftExpression;
            }
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 == 114) {
                jj_consume_token(114);
                operator = BinaryExpr.Operator.LESS;
            } else if (i11 == 150) {
                jj_consume_token(150);
                operator = BinaryExpr.Operator.GREATER;
            } else if (i11 == 121) {
                jj_consume_token(121);
                operator = BinaryExpr.Operator.GREATER_EQUALS;
            } else {
                if (i11 != 122) {
                    this.jj_la1[96] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
                }
                jj_consume_token(122);
                operator = BinaryExpr.Operator.LESS_EQUALS;
            }
            ShiftExpression = new BinaryExpr(range(ShiftExpression, token()), ShiftExpression, ShiftExpression(), operator);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:21:0x002f. Please report as an issue. */
    public final Expression Resource() throws ParseException {
        if (jj_2_65(Integer.MAX_VALUE)) {
            return VariableDeclarationExpression();
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52 && i10 != 53 && i10 != 55 && i10 != 56 && i10 != 93 && i10 != 94) {
            switch (i10) {
                default:
                    switch (i10) {
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                        case 80:
                        case 81:
                            break;
                        default:
                            this.jj_la1[167] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                    }
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 28:
                case 31:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 50:
                case 59:
                case 63:
                case 65:
                case 86:
                case 96:
                case 98:
                case 101:
                case 111:
                    return PrimaryExpression();
            }
        }
        return PrimaryExpression();
    }

    public final NodeList<Expression> ResourceSpecification() throws ParseException {
        jj_consume_token(101);
        NodeList<Expression> Resources = Resources();
        if (jj_2_63(2)) {
            jj_consume_token(107);
        }
        jj_consume_token(102);
        return Resources;
    }

    public final NodeList<Expression> Resources() throws ParseException {
        NodeList<Expression> nodeList = new NodeList<>();
        nodeList.add((NodeList<Expression>) Resource());
        while (jj_2_64(2)) {
            jj_consume_token(107);
            nodeList.add((NodeList<Expression>) Resource());
        }
        return nodeList;
    }

    public final Type ResultType(NodeList<AnnotationExpr> annotations) throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52 && i10 != 53) {
            switch (i10) {
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 31:
                case 38:
                case 40:
                case 46:
                case 50:
                case 55:
                case 98:
                    break;
                case 65:
                    jj_consume_token(65);
                    return new VoidType(tokenRange());
                default:
                    switch (i10) {
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                            break;
                        default:
                            this.jj_la1[76] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                    }
            }
        }
        return Type(annotations);
    }

    public final Type ResultTypeParseStart() throws ParseException {
        Type ResultType = ResultType(Annotations());
        jj_consume_token(0);
        return ResultType;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0040 A[FALL_THROUGH] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ReturnStmt ReturnStatement() throws ParseException {
        Expression Expression;
        jj_consume_token(51);
        JavaToken javaToken = token();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52 && i10 != 53 && i10 != 93 && i10 != 94 && i10 != 115 && i10 != 116) {
            switch (i10) {
                default:
                    switch (i10) {
                        default:
                            switch (i10) {
                                default:
                                    switch (i10) {
                                        case 126:
                                        case 127:
                                        case 128:
                                        case 129:
                                            break;
                                        default:
                                            this.jj_la1[162] = this.jj_gen;
                                            Expression = null;
                                            break;
                                    }
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                case 80:
                                case 81:
                                    Expression = Expression();
                                    break;
                            }
                        case 55:
                        case 56:
                        case 57:
                            break;
                    }
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 28:
                case 31:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 50:
                case 59:
                case 63:
                case 65:
                case 86:
                case 96:
                case 98:
                case 101:
                case 111:
                    break;
            }
            jj_consume_token(107);
            return new ReturnStmt(range(javaToken, token()), Expression);
        }
        Expression = Expression();
        jj_consume_token(107);
        return new ReturnStmt(range(javaToken, token()), Expression);
    }

    public final Expression ShiftExpression() throws ParseException {
        BinaryExpr.Operator operator;
        Expression AdditiveExpression = AdditiveExpression();
        while (jj_2_36(1)) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 136) {
                this.jj_la1[97] = this.jj_gen;
                if (jj_2_37(1)) {
                    RSIGNEDSHIFT();
                    operator = BinaryExpr.Operator.SIGNED_RIGHT_SHIFT;
                } else {
                    if (!jj_2_38(1)) {
                        jj_consume_token(-1);
                        throw new ParseException();
                    }
                    RUNSIGNEDSHIFT();
                    operator = BinaryExpr.Operator.UNSIGNED_RIGHT_SHIFT;
                }
            } else {
                jj_consume_token(136);
                operator = BinaryExpr.Operator.LEFT_SHIFT;
            }
            AdditiveExpression = new BinaryExpr(range(AdditiveExpression, token()), AdditiveExpression, AdditiveExpression(), operator);
        }
        return AdditiveExpression;
    }

    public final SimpleName SimpleName() throws ParseException {
        Identifier();
        return new SimpleName(tokenRange(), this.token.image);
    }

    public final SimpleName SimpleNameParseStart() throws ParseException {
        SimpleName SimpleName = SimpleName();
        jj_consume_token(0);
        return SimpleName;
    }

    public final Statement Statement() throws ParseException {
        try {
            if (jj_2_52(2)) {
                return LabeledStatement();
            }
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 == 12) {
                return AssertStatement();
            }
            this.jj_la1[136] = this.jj_gen;
            if (jj_2_53(3)) {
                return YieldStatement();
            }
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 == 23) {
                return DoStatement();
            }
            if (i11 != 24 && i11 != 31) {
                if (i11 == 32) {
                    return ForStatement();
                }
                if (i11 != 93 && i11 != 94 && i11 != 126 && i11 != 127) {
                    switch (i11) {
                        case 13:
                        case 15:
                            break;
                        case 14:
                            return BreakStatement();
                        default:
                            switch (i11) {
                                case 18:
                                case 26:
                                case 28:
                                case 38:
                                case 40:
                                case 42:
                                case 44:
                                case 46:
                                case 86:
                                case 96:
                                case 98:
                                case 101:
                                case 111:
                                    break;
                                case 21:
                                    return ContinueStatement();
                                case 34:
                                    return IfStatement();
                                case 103:
                                    return Block();
                                case 107:
                                    return EmptyStatement();
                                default:
                                    switch (i11) {
                                        case 50:
                                        case 52:
                                        case 53:
                                            break;
                                        case 51:
                                            return ReturnStatement();
                                        default:
                                            switch (i11) {
                                                case 55:
                                                case 56:
                                                case 59:
                                                    break;
                                                case 57:
                                                    return SwitchStatement();
                                                case 58:
                                                    return SynchronizedStatement();
                                                case 60:
                                                    return ThrowStatement();
                                                default:
                                                    switch (i11) {
                                                        case 63:
                                                        case 65:
                                                            break;
                                                        case 64:
                                                            return TryStatement();
                                                        default:
                                                            switch (i11) {
                                                                case 67:
                                                                    return WhileStatement();
                                                                case 68:
                                                                case 69:
                                                                case 70:
                                                                case 71:
                                                                case 72:
                                                                case 73:
                                                                case 74:
                                                                case 75:
                                                                case 76:
                                                                case 77:
                                                                case 78:
                                                                case 79:
                                                                case 80:
                                                                case 81:
                                                                    break;
                                                                default:
                                                                    this.jj_la1[137] = this.jj_gen;
                                                                    jj_consume_token(-1);
                                                                    throw new ParseException();
                                                            }
                                                    }
                                            }
                                    }
                            }
                    }
                }
            }
            return StatementExpression();
        } catch (ParseException e10) {
            return new UnparsableStmt(recoverStatement(107, 103, 104, e10));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:22:0x0034. Please report as an issue. */
    public final ExpressionStmt StatementExpression() throws ParseException {
        Expression PrimaryExpression;
        UnaryExpr unaryExpr;
        new RangedList(null);
        if (jj_2_58(2)) {
            PrimaryExpression = PreIncrementExpression();
        } else {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 52 && i10 != 53 && i10 != 55 && i10 != 56 && i10 != 93 && i10 != 94) {
                switch (i10) {
                    case 13:
                    case 15:
                    case 18:
                    case 24:
                    case 26:
                    case 28:
                    case 31:
                    case 38:
                    case 40:
                    case 42:
                    case 44:
                    case 46:
                    case 50:
                    case 59:
                    case 63:
                    case 65:
                    case 86:
                    case 96:
                    case 98:
                    case 101:
                    case 111:
                        break;
                    case 127:
                        PrimaryExpression = PreDecrementExpression();
                        break;
                    default:
                        switch (i10) {
                            case 68:
                            case 69:
                            case 70:
                            case 71:
                            case 72:
                            case 73:
                            case 74:
                            case 75:
                            case 76:
                            case 77:
                            case 78:
                            case 79:
                            case 80:
                            case 81:
                                break;
                            default:
                                this.jj_la1[144] = this.jj_gen;
                                jj_consume_token(-1);
                                throw new ParseException();
                        }
                }
            }
            PrimaryExpression = PrimaryExpression();
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 != 113 && i11 != 126 && i11 != 127) {
                switch (i11) {
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
                        break;
                    default:
                        this.jj_la1[143] = this.jj_gen;
                        break;
                }
            }
            int i12 = this.jj_ntk;
            if (i12 == -1) {
                i12 = jj_ntk_f();
            }
            if (i12 != 113) {
                if (i12 == 126) {
                    jj_consume_token(126);
                    unaryExpr = new UnaryExpr(range(PrimaryExpression, token()), PrimaryExpression, UnaryExpr.Operator.POSTFIX_INCREMENT);
                } else if (i12 != 127) {
                    switch (i12) {
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
                            break;
                        default:
                            this.jj_la1[142] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                    }
                } else {
                    jj_consume_token(127);
                    unaryExpr = new UnaryExpr(range(PrimaryExpression, token()), PrimaryExpression, UnaryExpr.Operator.POSTFIX_DECREMENT);
                }
                PrimaryExpression = unaryExpr;
            }
            AssignExpr.Operator AssignmentOperator = AssignmentOperator();
            PrimaryExpression = new AssignExpr(range(PrimaryExpression, token()), PrimaryExpression, Expression(), AssignmentOperator);
        }
        jj_consume_token(107);
        return new ExpressionStmt(range(PrimaryExpression, token()), PrimaryExpression);
    }

    public final NodeList<Statement> Statements() throws ParseException {
        NodeList<Statement> emptyNodeList = emptyNodeList();
        while (jj_2_25(2)) {
            emptyNodeList = add((NodeList<NodeList<Statement>>) emptyNodeList, (NodeList<Statement>) BlockStatement());
        }
        return emptyNodeList;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:71:0x00b2. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:72:0x00b5. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:73:0x00b8. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00cf A[FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01b6 A[LOOP:0: B:78:0x00d7->B:82:0x01b6, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00e1 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final SwitchEntry SwitchEntry() throws ParseException {
        JavaToken javaToken;
        NodeList add;
        int i10;
        NodeList nodeList;
        boolean z10;
        Expression ConditionalExpression;
        int i11;
        NodeList emptyNodeList = emptyNodeList();
        NodeList emptyNodeList2 = emptyNodeList();
        int i12 = this.jj_ntk;
        if (i12 == -1) {
            i12 = jj_ntk_f();
        }
        if (i12 == 16) {
            jj_consume_token(16);
            javaToken = token();
            if (jj_2_59(3)) {
                emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) NullLiteral());
                jj_consume_token(108);
                jj_consume_token(22);
            } else {
                if (jj_2_60(Integer.MAX_VALUE)) {
                    add = add((NodeList<NodeList>) emptyNodeList, (NodeList) PatternExpression());
                    int i13 = this.jj_ntk;
                    if (i13 == -1) {
                        i13 = jj_ntk_f();
                    }
                    if (i13 == 79) {
                        jj_consume_token(79);
                        nodeList = add;
                        ConditionalExpression = ConditionalExpression();
                        z10 = false;
                        i11 = this.jj_ntk;
                        if (i11 == -1) {
                            i11 = jj_ntk_f();
                        }
                        if (i11 == 118) {
                            jj_consume_token(118);
                            return new SwitchEntry(range(javaToken, token()), nodeList, SwitchEntry.Type.STATEMENT_GROUP, Statements(), z10, ConditionalExpression);
                        }
                        if (i11 != 119) {
                            this.jj_la1[152] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                        }
                        jj_consume_token(119);
                        int i14 = this.jj_ntk;
                        if (i14 == -1) {
                            i14 = jj_ntk_f();
                        }
                        if (i14 != 52 && i14 != 53 && i14 != 59) {
                            if (i14 == 60) {
                                ThrowStmt ThrowStatement = ThrowStatement();
                                TokenRange range = range(javaToken, token());
                                emptyNodeList2.add((NodeList) ThrowStatement);
                                return new SwitchEntry(range, nodeList, SwitchEntry.Type.THROWS_STATEMENT, emptyNodeList2, z10, ConditionalExpression);
                            }
                            if (i14 != 93 && i14 != 94 && i14 != 115 && i14 != 116) {
                                switch (i14) {
                                    case 13:
                                    case 15:
                                    case 18:
                                    case 24:
                                    case 26:
                                    case 28:
                                    case 31:
                                    case 38:
                                    case 40:
                                    case 42:
                                    case 44:
                                    case 46:
                                    case 50:
                                    case 63:
                                    case 65:
                                    case 86:
                                    case 96:
                                    case 98:
                                    case 101:
                                    case 111:
                                        break;
                                    case 103:
                                        BlockStmt Block = Block();
                                        TokenRange range2 = range(javaToken, token());
                                        emptyNodeList2.add((NodeList) Block);
                                        return new SwitchEntry(range2, nodeList, SwitchEntry.Type.BLOCK, emptyNodeList2, z10, ConditionalExpression);
                                    default:
                                        switch (i14) {
                                            case 55:
                                            case 56:
                                            case 57:
                                                break;
                                            default:
                                                switch (i14) {
                                                    case 68:
                                                    case 69:
                                                    case 70:
                                                    case 71:
                                                    case 72:
                                                    case 73:
                                                    case 74:
                                                    case 75:
                                                    case 76:
                                                    case 77:
                                                    case 78:
                                                    case 79:
                                                    case 80:
                                                    case 81:
                                                        break;
                                                    default:
                                                        switch (i14) {
                                                            case 126:
                                                            case 127:
                                                            case 128:
                                                            case 129:
                                                                break;
                                                            default:
                                                                this.jj_la1[151] = this.jj_gen;
                                                                jj_consume_token(-1);
                                                                throw new ParseException();
                                                        }
                                                }
                                        }
                                }
                            }
                        }
                        ExpressionStmt SwitchEntryExpression = SwitchEntryExpression();
                        TokenRange range3 = range(javaToken, token());
                        emptyNodeList2.add((NodeList) SwitchEntryExpression);
                        return new SwitchEntry(range3, nodeList, SwitchEntry.Type.EXPRESSION, emptyNodeList2, z10, ConditionalExpression);
                    }
                    this.jj_la1[147] = this.jj_gen;
                } else {
                    int i15 = this.jj_ntk;
                    if (i15 == -1) {
                        i15 = jj_ntk_f();
                    }
                    if (i15 != 52 && i15 != 53 && i15 != 93 && i15 != 94 && i15 != 115 && i15 != 116) {
                        switch (i15) {
                            default:
                                switch (i15) {
                                    default:
                                        switch (i15) {
                                            default:
                                                switch (i15) {
                                                    case 126:
                                                    case 127:
                                                    case 128:
                                                    case 129:
                                                        break;
                                                    default:
                                                        this.jj_la1[149] = this.jj_gen;
                                                        jj_consume_token(-1);
                                                        throw new ParseException();
                                                }
                                            case 68:
                                            case 69:
                                            case 70:
                                            case 71:
                                            case 72:
                                            case 73:
                                            case 74:
                                            case 75:
                                            case 76:
                                            case 77:
                                            case 78:
                                            case 79:
                                            case 80:
                                            case 81:
                                                add = add((NodeList<NodeList>) emptyNodeList, (NodeList) ConditionalExpression());
                                                while (true) {
                                                    i10 = this.jj_ntk;
                                                    if (i10 == -1) {
                                                        i10 = jj_ntk_f();
                                                    }
                                                    if (i10 == 108) {
                                                        this.jj_la1[148] = this.jj_gen;
                                                        break;
                                                    } else {
                                                        jj_consume_token(108);
                                                        add = add((NodeList<NodeList>) add, (NodeList) ConditionalExpression());
                                                    }
                                                }
                                        }
                                    case 55:
                                    case 56:
                                    case 57:
                                        break;
                                }
                            case 13:
                            case 15:
                            case 18:
                            case 24:
                            case 26:
                            case 28:
                            case 31:
                            case 38:
                            case 40:
                            case 42:
                            case 44:
                            case 46:
                            case 50:
                            case 59:
                            case 63:
                            case 65:
                            case 86:
                            case 96:
                            case 98:
                            case 101:
                            case 111:
                                break;
                        }
                    }
                    add = add((NodeList<NodeList>) emptyNodeList, (NodeList) ConditionalExpression());
                    while (true) {
                        i10 = this.jj_ntk;
                        if (i10 == -1) {
                        }
                        if (i10 == 108) {
                        }
                        jj_consume_token(108);
                        add = add((NodeList<NodeList>) add, (NodeList) ConditionalExpression());
                    }
                }
                nodeList = add;
                z10 = false;
                ConditionalExpression = null;
                i11 = this.jj_ntk;
                if (i11 == -1) {
                }
                if (i11 == 118) {
                }
            }
        } else {
            if (i12 != 22) {
                this.jj_la1[150] = this.jj_gen;
                jj_consume_token(-1);
                throw new ParseException();
            }
            jj_consume_token(22);
            javaToken = token();
        }
        nodeList = emptyNodeList;
        z10 = true;
        ConditionalExpression = null;
        i11 = this.jj_ntk;
        if (i11 == -1) {
        }
        if (i11 == 118) {
        }
    }

    public final ExpressionStmt SwitchEntryExpression() throws ParseException {
        Expression Expression = Expression();
        jj_consume_token(107);
        TokenRange orElse = Expression.getTokenRange().orElse(null);
        if (orElse != null) {
            orElse = orElse.withEnd(token());
        }
        return new ExpressionStmt(orElse, Expression);
    }

    public final SwitchExpr SwitchExpression() throws ParseException {
        NodeList emptyNodeList = emptyNodeList();
        jj_consume_token(57);
        JavaToken javaToken = token();
        jj_consume_token(101);
        Expression Expression = Expression();
        jj_consume_token(102);
        jj_consume_token(103);
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 16 && i10 != 22) {
                this.jj_la1[146] = this.jj_gen;
                jj_consume_token(104);
                return new SwitchExpr(range(javaToken, token()), Expression, emptyNodeList);
            }
            emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) SwitchEntry());
        }
    }

    public final SwitchStmt SwitchStatement() throws ParseException {
        NodeList emptyNodeList = emptyNodeList();
        jj_consume_token(57);
        JavaToken javaToken = token();
        jj_consume_token(101);
        Expression Expression = Expression();
        jj_consume_token(102);
        jj_consume_token(103);
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 16 && i10 != 22) {
                this.jj_la1[145] = this.jj_gen;
                jj_consume_token(104);
                return new SwitchStmt(range(javaToken, token()), Expression, emptyNodeList);
            }
            emptyNodeList = add((NodeList<NodeList>) emptyNodeList, (NodeList) SwitchEntry());
        }
    }

    public final SynchronizedStmt SynchronizedStatement() throws ParseException {
        jj_consume_token(58);
        JavaToken javaToken = token();
        jj_consume_token(101);
        Expression Expression = Expression();
        jj_consume_token(102);
        return new SynchronizedStmt(range(javaToken, token()), Expression, Block());
    }

    public final ThrowStmt ThrowStatement() throws ParseException {
        jj_consume_token(60);
        JavaToken javaToken = token();
        Expression Expression = Expression();
        jj_consume_token(107);
        return new ThrowStmt(range(javaToken, token()), Expression);
    }

    public final TryStmt TryStatement() throws ParseException {
        BlockStmt Block;
        NodeList<Expression> emptyNodeList = emptyNodeList();
        NodeList emptyNodeList2 = emptyNodeList();
        NodeList emptyNodeList3 = emptyNodeList();
        jj_consume_token(64);
        JavaToken javaToken = token();
        int i10 = this.jj_ntk;
        int i11 = -1;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 101) {
            this.jj_la1[163] = this.jj_gen;
        } else {
            emptyNodeList = ResourceSpecification();
        }
        NodeList<Expression> nodeList = emptyNodeList;
        BlockStmt Block2 = Block();
        NodeList nodeList2 = emptyNodeList2;
        while (true) {
            int i12 = this.jj_ntk;
            if (i12 == i11) {
                i12 = jj_ntk_f();
            }
            if (i12 != 17) {
                break;
            }
            jj_consume_token(17);
            JavaToken javaToken2 = token();
            jj_consume_token(101);
            ModifierHolder Modifiers = Modifiers();
            JavaToken javaToken3 = Modifiers.begin;
            emptyNodeList3.add((NodeList) ReferenceType(emptyNodeList()));
            JavaToken orIfInvalid = orIfInvalid(javaToken3, token());
            while (true) {
                int i13 = this.jj_ntk;
                if (i13 == i11) {
                    i13 = jj_ntk_f();
                }
                if (i13 != 133) {
                    break;
                }
                jj_consume_token(133);
                emptyNodeList3.add((NodeList) AnnotatedReferenceType());
                i11 = -1;
            }
            this.jj_la1[165] = this.jj_gen;
            Pair<SimpleName, List<ArrayType.ArrayBracketPair>> VariableDeclaratorId = VariableDeclaratorId();
            JavaToken javaToken4 = token();
            jj_consume_token(102);
            nodeList2 = add((NodeList<NodeList>) nodeList2, (NodeList) new CatchClause(range(javaToken2, token()), new Parameter(range(orIfInvalid, javaToken4), Modifiers.modifiers, Modifiers.annotations, emptyNodeList3.size() > 1 ? new UnionType(range(emptyNodeList3.get(0), emptyNodeList3.get(emptyNodeList3.size() - 1)), emptyNodeList3) : (Type) emptyNodeList3.get(0), false, emptyNodeList(), VariableDeclaratorId.f59826a), Block()));
            emptyNodeList3 = emptyNodeList();
            i11 = -1;
        }
        this.jj_la1[164] = this.jj_gen;
        int i14 = this.jj_ntk;
        if (i14 == i11) {
            i14 = jj_ntk_f();
        }
        if (i14 != 30) {
            this.jj_la1[166] = this.jj_gen;
            Block = null;
        } else {
            jj_consume_token(30);
            Block = Block();
        }
        return new TryStmt(range(javaToken, token()), nodeList, Block2, nodeList2, Block);
    }

    public final Type Type(NodeList<AnnotationExpr> annotations) throws ParseException {
        if (jj_2_26(Integer.MAX_VALUE)) {
            return ReferenceType(annotations);
        }
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 13 || i10 == 15 || i10 == 18 || i10 == 24 || i10 == 31 || i10 == 38 || i10 == 40 || i10 == 53) {
            return PrimitiveType(annotations);
        }
        this.jj_la1[67] = this.jj_gen;
        jj_consume_token(-1);
        throw new ParseException();
    }

    public final Type TypeArgument() throws ParseException {
        NodeList<AnnotationExpr> Annotations = Annotations();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52 && i10 != 53) {
            switch (i10) {
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 31:
                case 38:
                case 40:
                case 46:
                case 50:
                case 55:
                case 98:
                    break;
                case 117:
                    return Wildcard(Annotations);
                default:
                    switch (i10) {
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                            break;
                        default:
                            this.jj_la1[72] = this.jj_gen;
                            jj_consume_token(-1);
                            throw new ParseException();
                    }
            }
        }
        return Type(Annotations);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005e A[LOOP:0: B:15:0x003d->B:20:0x005e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0049 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final RangedList<Type> TypeArguments() throws ParseException {
        int i10;
        RangedList<Type> rangedList = new RangedList<>(new NodeList());
        jj_consume_token(114);
        rangedList.beginAt(token());
        int i11 = this.jj_ntk;
        if (i11 == -1) {
            i11 = jj_ntk_f();
        }
        if (i11 != 52 && i11 != 53) {
            switch (i11) {
                default:
                    switch (i11) {
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                            break;
                        default:
                            this.jj_la1[71] = this.jj_gen;
                            break;
                    }
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 31:
                case 38:
                case 40:
                case 46:
                case 50:
                case 55:
                case 98:
                case 111:
                case 117:
                    rangedList.add(TypeArgument());
                    while (true) {
                        i10 = this.jj_ntk;
                        if (i10 == -1) {
                            i10 = jj_ntk_f();
                        }
                        if (i10 == 108) {
                            this.jj_la1[70] = this.jj_gen;
                            break;
                        } else {
                            jj_consume_token(108);
                            rangedList.add(TypeArgument());
                        }
                    }
            }
            jj_consume_token(150);
            rangedList.endAt(token());
            return rangedList;
        }
        rangedList.add(TypeArgument());
        while (true) {
            i10 = this.jj_ntk;
            if (i10 == -1) {
            }
            if (i10 == 108) {
            }
            jj_consume_token(108);
            rangedList.add(TypeArgument());
        }
    }

    public final NodeList<ClassOrInterfaceType> TypeBound() throws ParseException {
        NodeList<ClassOrInterfaceType> emptyNodeList = emptyNodeList();
        jj_consume_token(27);
        emptyNodeList.add((NodeList<ClassOrInterfaceType>) AnnotatedClassOrInterfaceType());
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 132) {
                this.jj_la1[29] = this.jj_gen;
                return emptyNodeList;
            }
            jj_consume_token(132);
            emptyNodeList.add((NodeList<ClassOrInterfaceType>) AnnotatedClassOrInterfaceType());
        }
    }

    public final TypeDeclaration<?> TypeDeclarationParseStart() throws ParseException {
        TypeDeclaration<?> ClassOrInterfaceDeclaration;
        ModifierHolder Modifiers = Modifiers();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 19) {
            if (i10 == 26) {
                ClassOrInterfaceDeclaration = EnumDeclaration(Modifiers);
            } else if (i10 != 39) {
                if (i10 != 111) {
                    this.jj_la1[187] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
                }
                ClassOrInterfaceDeclaration = AnnotationTypeDeclaration(Modifiers);
            }
            jj_consume_token(0);
            return ClassOrInterfaceDeclaration;
        }
        ClassOrInterfaceDeclaration = ClassOrInterfaceDeclaration(Modifiers);
        jj_consume_token(0);
        return ClassOrInterfaceDeclaration;
    }

    public final TypeParameter TypeParameter(NodeList<AnnotationExpr> annotations) throws ParseException {
        NodeList<ClassOrInterfaceType> emptyNodeList = emptyNodeList();
        SimpleName SimpleName = SimpleName();
        JavaToken javaToken = token();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 27) {
            this.jj_la1[28] = this.jj_gen;
        } else {
            emptyNodeList = TypeBound();
        }
        return new TypeParameter(range(javaToken, token()), SimpleName, emptyNodeList, annotations);
    }

    public final TypeParameter TypeParameterParseStart() throws ParseException {
        TypeParameter TypeParameter = TypeParameter(Annotations());
        jj_consume_token(0);
        return TypeParameter;
    }

    public final RangedList<TypeParameter> TypeParameters() throws ParseException {
        RangedList<TypeParameter> rangedList = new RangedList<>(new NodeList());
        jj_consume_token(114);
        rangedList.beginAt(token());
        rangedList.add(TypeParameter(Annotations()));
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[27] = this.jj_gen;
                jj_consume_token(150);
                rangedList.endAt(token());
                return rangedList;
            }
            jj_consume_token(108);
            rangedList.add(TypeParameter(Annotations()));
        }
    }

    public final TypePatternExpr TypePatternExpression() throws ParseException {
        ModifierHolder Modifiers = Modifiers();
        Type Type = Type(Modifiers.annotations);
        return new TypePatternExpr(range(Type, token()), Modifiers.modifiers, Type, SimpleName());
    }

    public final Expression UnaryExpression() throws ParseException {
        UnaryExpr.Operator operator;
        JavaToken javaToken;
        JavaToken javaToken2 = JavaToken.INVALID;
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52 && i10 != 53 && i10 != 93 && i10 != 94 && i10 != 115 && i10 != 116) {
            switch (i10) {
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 28:
                case 31:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 50:
                case 59:
                case 63:
                case 65:
                case 86:
                case 96:
                case 98:
                case 101:
                case 111:
                    break;
                default:
                    switch (i10) {
                        case 55:
                        case 56:
                        case 57:
                            break;
                        default:
                            switch (i10) {
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                case 80:
                                case 81:
                                    break;
                                default:
                                    switch (i10) {
                                        case 126:
                                            return PreIncrementExpression();
                                        case 127:
                                            return PreDecrementExpression();
                                        case 128:
                                        case 129:
                                            int i11 = this.jj_ntk;
                                            if (i11 == -1) {
                                                i11 = jj_ntk_f();
                                            }
                                            if (i11 == 128) {
                                                jj_consume_token(128);
                                                operator = UnaryExpr.Operator.PLUS;
                                                javaToken = token();
                                            } else {
                                                if (i11 != 129) {
                                                    this.jj_la1[102] = this.jj_gen;
                                                    jj_consume_token(-1);
                                                    throw new ParseException();
                                                }
                                                jj_consume_token(129);
                                                operator = UnaryExpr.Operator.MINUS;
                                                javaToken = token();
                                            }
                                            return new UnaryExpr(range(javaToken, token()), UnaryExpression(), operator);
                                        default:
                                            this.jj_la1[103] = this.jj_gen;
                                            jj_consume_token(-1);
                                            throw new ParseException();
                                    }
                            }
                    }
            }
        }
        return UnaryExpressionNotPlusMinus();
    }

    public final Expression UnaryExpressionNotPlusMinus() throws ParseException {
        UnaryExpr.Operator operator;
        JavaToken javaToken;
        JavaToken javaToken2 = JavaToken.INVALID;
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 == 115 || i10 == 116) {
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 == 115) {
                jj_consume_token(115);
                operator = UnaryExpr.Operator.LOGICAL_COMPLEMENT;
                javaToken = token();
            } else {
                if (i11 != 116) {
                    this.jj_la1[104] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
                }
                jj_consume_token(116);
                operator = UnaryExpr.Operator.BITWISE_COMPLEMENT;
                javaToken = token();
            }
            return new UnaryExpr(range(javaToken, token()), UnaryExpression(), operator);
        }
        this.jj_la1[105] = this.jj_gen;
        if (jj_2_39(Integer.MAX_VALUE)) {
            return CastExpression();
        }
        int i12 = this.jj_ntk;
        if (i12 == -1) {
            i12 = jj_ntk_f();
        }
        if (i12 != 52 && i12 != 53 && i12 != 93 && i12 != 94) {
            switch (i12) {
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 28:
                case 31:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 50:
                case 59:
                case 63:
                case 65:
                case 86:
                case 96:
                case 98:
                case 101:
                case 111:
                    break;
                default:
                    switch (i12) {
                        case 55:
                        case 56:
                            break;
                        case 57:
                            return SwitchExpression();
                        default:
                            switch (i12) {
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                case 80:
                                case 81:
                                    break;
                                default:
                                    this.jj_la1[106] = this.jj_gen;
                                    jj_consume_token(-1);
                                    throw new ParseException();
                            }
                    }
            }
        }
        return PostfixExpression();
    }

    public final VariableDeclarationExpr VariableDeclarationExpression() throws ParseException {
        NodeList nodeList = new NodeList();
        ModifierHolder Modifiers = Modifiers();
        Type Type = Type(emptyNodeList());
        nodeList.add((NodeList) VariableDeclarator(Type));
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 108) {
                this.jj_la1[140] = this.jj_gen;
                return new VariableDeclarationExpr(range(orIfInvalid(Modifiers.begin, Type), token()), Modifiers.modifiers, Modifiers.annotations, nodeList);
            }
            jj_consume_token(108);
            nodeList.add((NodeList) VariableDeclarator(Type));
        }
    }

    public final VariableDeclarationExpr VariableDeclarationExpressionParseStart() throws ParseException {
        VariableDeclarationExpr VariableDeclarationExpression = VariableDeclarationExpression();
        jj_consume_token(0);
        return VariableDeclarationExpression;
    }

    public final VariableDeclarator VariableDeclarator(Type partialType) throws ParseException {
        Expression VariableInitializer;
        Pair<SimpleName, List<ArrayType.ArrayBracketPair>> VariableDeclaratorId = VariableDeclaratorId();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 113) {
            this.jj_la1[44] = this.jj_gen;
            VariableInitializer = null;
        } else {
            jj_consume_token(113);
            VariableInitializer = VariableInitializer();
        }
        return new VariableDeclarator(range(VariableDeclaratorId.f59826a, token()), juggleArrayType(partialType, VariableDeclaratorId.f59827b), VariableDeclaratorId.f59826a, VariableInitializer);
    }

    public final Pair<SimpleName, List<ArrayType.ArrayBracketPair>> VariableDeclaratorId() throws ParseException {
        Object arrayList = new ArrayList(0);
        SimpleName SimpleName = SimpleName();
        token();
        while (true) {
            int i10 = this.jj_ntk;
            if (i10 == -1) {
                i10 = jj_ntk_f();
            }
            if (i10 != 105 && i10 != 111) {
                break;
            }
            arrayList = add((List<Object>) arrayList, ArrayBracketPair(ArrayType.Origin.NAME));
        }
        this.jj_la1[45] = this.jj_gen;
        if (this.storeTokens) {
            SimpleName.setTokenRange(SimpleName.getTokenRange().get().withEnd(token()));
        }
        return new Pair<>(SimpleName, arrayList);
    }

    public final Expression VariableInitializer() throws ParseException {
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        if (i10 != 52 && i10 != 53 && i10 != 93 && i10 != 94 && i10 != 115 && i10 != 116) {
            switch (i10) {
                case 13:
                case 15:
                case 18:
                case 24:
                case 26:
                case 28:
                case 31:
                case 38:
                case 40:
                case 42:
                case 44:
                case 46:
                case 50:
                case 59:
                case 63:
                case 65:
                case 86:
                case 96:
                case 98:
                case 101:
                case 111:
                    break;
                case 103:
                    return ArrayInitializer();
                default:
                    switch (i10) {
                        case 55:
                        case 56:
                        case 57:
                            break;
                        default:
                            switch (i10) {
                                case 68:
                                case 69:
                                case 70:
                                case 71:
                                case 72:
                                case 73:
                                case 74:
                                case 75:
                                case 76:
                                case 77:
                                case 78:
                                case 79:
                                case 80:
                                case 81:
                                    break;
                                default:
                                    switch (i10) {
                                        case 126:
                                        case 127:
                                        case 128:
                                        case 129:
                                            break;
                                        default:
                                            this.jj_la1[46] = this.jj_gen;
                                            jj_consume_token(-1);
                                            throw new ParseException();
                                    }
                            }
                    }
            }
        }
        return Expression();
    }

    public final WhileStmt WhileStatement() throws ParseException {
        jj_consume_token(67);
        JavaToken javaToken = token();
        jj_consume_token(101);
        Expression Expression = Expression();
        jj_consume_token(102);
        return new WhileStmt(range(javaToken, token()), Expression, Statement());
    }

    public final WildcardType Wildcard(NodeList<AnnotationExpr> firstAnnotations) throws ParseException {
        ReferenceType referenceType;
        new NodeList();
        jj_consume_token(117);
        JavaToken javaToken = token();
        int i10 = this.jj_ntk;
        if (i10 == -1) {
            i10 = jj_ntk_f();
        }
        ReferenceType referenceType2 = null;
        if (i10 == 27 || i10 == 56) {
            int i11 = this.jj_ntk;
            if (i11 == -1) {
                i11 = jj_ntk_f();
            }
            if (i11 == 27) {
                jj_consume_token(27);
                referenceType2 = ReferenceType(Annotations());
                referenceType = null;
            } else {
                if (i11 != 56) {
                    this.jj_la1[73] = this.jj_gen;
                    jj_consume_token(-1);
                    throw new ParseException();
                }
                jj_consume_token(56);
                referenceType = ReferenceType(Annotations());
            }
        } else {
            this.jj_la1[74] = this.jj_gen;
            referenceType = null;
        }
        return new WildcardType(range(javaToken, token()), referenceType2, referenceType, firstAnnotations);
    }

    public final YieldStmt YieldStatement() throws ParseException {
        jj_consume_token(68);
        JavaToken javaToken = token();
        Expression Expression = Expression();
        jj_consume_token(107);
        return new YieldStmt(range(javaToken, token()), Expression);
    }

    public final void disable_tracing() {
    }

    public final void enable_tracing() {
    }

    public ParseException generateParseException() {
        this.jj_expentries.clear();
        boolean[] zArr = new boolean[152];
        int i10 = this.jj_kind;
        if (i10 >= 0) {
            zArr[i10] = true;
            this.jj_kind = -1;
        }
        for (int i11 = 0; i11 < 188; i11++) {
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
                    if ((jj_la1_3[i11] & i13) != 0) {
                        zArr[i12 + 96] = true;
                    }
                    if ((jj_la1_4[i11] & i13) != 0) {
                        zArr[i12 + 128] = true;
                    }
                }
            }
        }
        for (int i14 = 0; i14 < 152; i14++) {
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
            iArr2[i15] = this.jj_expentries.get(i15);
        }
        Token token = this.token;
        String[] strArr = GeneratedJavaParserConstants.tokenImage;
        GeneratedJavaParserTokenManager generatedJavaParserTokenManager = this.token_source;
        return new ParseException(token, iArr2, strArr, generatedJavaParserTokenManager == null ? null : GeneratedJavaParserTokenManager.lexStateNames[generatedJavaParserTokenManager.curLexState]);
    }

    public Token getCurrentToken() {
        return this.token;
    }

    @Override
    public final Token getNextToken() {
        Token token = this.token;
        Token token2 = token.next;
        if (token2 != null) {
            this.token = token2;
        } else {
            Token nextToken = this.token_source.getNextToken();
            token.next = nextToken;
            this.token = nextToken;
        }
        this.jj_ntk = -1;
        this.jj_gen++;
        return this.token;
    }

    @Override
    public final Token getToken(final int index) {
        Token token = this.jj_lookingAhead ? this.jj_scanpos : this.token;
        for (int i10 = 0; i10 < index; i10++) {
            if (token.next == null) {
                token.next = this.token_source.getNextToken();
            }
            token = token.next;
        }
        return token;
    }

    @Override
    public GeneratedJavaParserTokenManager getTokenSource() {
        return this.token_source;
    }

    public void setTabSize(int size) {
        this.jj_input_stream.setTabSize(size);
    }

    @Override
    public JavaToken token() {
        return this.token.javaToken;
    }

    public final boolean trace_enabled() {
        return false;
    }

    @Override
    public void ReInit(final Provider stream) {
        SimpleCharStream simpleCharStream = this.jj_input_stream;
        if (simpleCharStream == null) {
            this.jj_input_stream = new SimpleCharStream(stream, 1, 1);
        } else {
            simpleCharStream.reInit(stream, 1, 1);
        }
        if (this.token_source == null) {
            this.token_source = new GeneratedJavaParserTokenManager(this.jj_input_stream);
        }
        this.token_source.ReInit(this.jj_input_stream);
        this.token = new Token();
        this.jj_ntk = -1;
        int i10 = 0;
        this.jj_gen = 0;
        for (int i11 = 0; i11 < 188; i11++) {
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

    public void ReInit(final GeneratedJavaParserTokenManager tm2) {
        this.token_source = tm2;
        this.token = new Token();
        this.jj_ntk = -1;
        int i10 = 0;
        this.jj_gen = 0;
        for (int i11 = 0; i11 < 188; i11++) {
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

    public GeneratedJavaParser(final String sDSL) {
        this(new StringProvider(sDSL));
    }

    public GeneratedJavaParser(final GeneratedJavaParserTokenManager tm2) {
        int i10 = 0;
        this.jj_lookingAhead = false;
        this.jj_la1 = new int[188];
        this.jj_2_rtns = new JJCalls[75];
        this.jj_rescan = false;
        this.jj_gc = 0;
        this.jj_ls = new LookaheadSuccess();
        this.jj_expentries = new ArrayList();
        this.jj_kind = -1;
        this.jj_lasttokens = new int[100];
        this.token_source = tm2;
        this.token = new Token();
        this.jj_ntk = -1;
        this.jj_gen = 0;
        for (int i11 = 0; i11 < 188; i11++) {
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
