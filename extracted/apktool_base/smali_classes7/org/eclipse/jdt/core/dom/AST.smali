.class public final Lorg/eclipse/jdt/core/dom/AST;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final AST_CLASS:[Ljava/lang/Class;

.field public static final JLS10:I = 0xa

.field static final JLS10_INTERNAL:I = 0xa

.field public static final JLS11:I = 0xb

.field static final JLS11_INTERNAL:I = 0xb

.field public static final JLS12:I = 0xc

.field static final JLS12_INTERNAL:I = 0xc

.field public static final JLS2:I = 0x2

.field static final JLS2_INTERNAL:I = 0x2

.field public static final JLS3:I = 0x3

.field static final JLS3_INTERNAL:I = 0x3

.field public static final JLS4:I = 0x4

.field static final JLS4_INTERNAL:I = 0x4

.field public static final JLS8:I = 0x8

.field static final JLS8_INTERNAL:I = 0x8

.field public static final JLS9:I = 0x9

.field static final JLS9_INTERNAL:I = 0x9

.field static final RESOLVED_BINDINGS:I = -0x80000000


# instance fields
.field private final THIS_AST:[Ljava/lang/Object;

.field apiLevel:I

.field private bits:I

.field private defaultNodeFlag:I

.field private disableEvents:I

.field private eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

.field private final internalASTLock:Ljava/lang/Object;

.field private modificationCount:J

.field private originalModificationCount:J

.field private resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

.field rewriter:Lorg/eclipse/jdt/core/dom/InternalASTRewrite;

.field scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/eclipse/jdt/core/dom/AST;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jdt/core/dom/AST;->AST_CLASS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/eclipse/jdt/core/JavaCore;->getDefaultOptions()Ljava/util/Hashtable;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/jdt/core/dom/AST;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lorg/eclipse/jdt/core/dom/AST;->defaultNodeFlag:I

    .line 4
    iput v2, v0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    .line 5
    new-instance v2, Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    invoke-direct {v2}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;-><init>()V

    iput-object v2, v0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    .line 6
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    .line 7
    iput-wide v2, v0, Lorg/eclipse/jdt/core/dom/AST;->modificationCount:J

    .line 8
    iput-wide v2, v0, Lorg/eclipse/jdt/core/dom/AST;->originalModificationCount:J

    .line 9
    new-instance v2, Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-direct {v2}, Lorg/eclipse/jdt/core/dom/BindingResolver;-><init>()V

    iput-object v2, v0, Lorg/eclipse/jdt/core/dom/AST;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    .line 10
    filled-new-array/range {p0 .. p0}, [Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lorg/eclipse/jdt/core/dom/AST;->THIS_AST:[Ljava/lang/Object;

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported JLS level"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12
    :pswitch_0
    iput v1, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x38

    .line 13
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileConstants;->getComplianceLevelForJavaVersion(I)J

    move-result-wide v8

    .line 14
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    move-wide v6, v8

    .line 15
    invoke-direct/range {v2 .. v12}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    .line 16
    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    goto/16 :goto_0

    .line 17
    :pswitch_1
    iput v1, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x37

    .line 18
    invoke-static {v1}, Lorg/eclipse/jdt/internal/compiler/classfmt/ClassFileConstants;->getComplianceLevelForJavaVersion(I)J

    move-result-wide v8

    .line 19
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    move-wide v6, v8

    .line 20
    invoke-direct/range {v2 .. v12}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    .line 21
    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    goto/16 :goto_0

    .line 22
    :pswitch_2
    iput v1, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    .line 23
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-wide/32 v17, 0x360000

    const-wide/32 v19, 0x360000

    const/16 v21, 0x0

    move-object v13, v1

    .line 24
    invoke-direct/range {v13 .. v23}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    .line 25
    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    goto :goto_0

    .line 26
    :pswitch_3
    iput v1, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    .line 27
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/32 v6, 0x350000

    const-wide/32 v8, 0x350000

    const/4 v10, 0x0

    move-object v2, v1

    .line 28
    invoke-direct/range {v2 .. v12}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    .line 29
    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    goto :goto_0

    .line 30
    :pswitch_4
    iput v1, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    .line 31
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-wide/32 v17, 0x340000

    const-wide/32 v19, 0x340000

    const/16 v21, 0x0

    move-object v13, v1

    .line 32
    invoke-direct/range {v13 .. v23}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    .line 33
    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    goto :goto_0

    .line 34
    :cond_0
    iput v1, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    .line 35
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/32 v6, 0x330000

    const-wide/32 v8, 0x330000

    const/4 v10, 0x0

    move-object v2, v1

    .line 36
    invoke-direct/range {v2 .. v12}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    .line 37
    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    goto :goto_0

    .line 38
    :cond_1
    iput v1, v0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    .line 39
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-wide/32 v17, 0x2f0000

    const-wide/32 v19, 0x310000

    const/16 v21, 0x0

    move-object v13, v1

    .line 40
    invoke-direct/range {v13 .. v23}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    .line 41
    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    .line 42
    invoke-direct {v0, v2}, Lorg/eclipse/jdt/core/dom/AST;-><init>(I)V

    .line 43
    const-string v2, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 44
    const-string v3, "1.4"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-wide/32 v5, 0x330000

    const-string v7, "1.7"

    const-wide/32 v8, 0x310000

    const-string v10, "1.5"

    const-wide/32 v11, 0x300000

    const-wide/32 v13, 0x2f0000

    if-eqz v4, :cond_0

    move-wide/from16 v19, v11

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-wide/from16 v19, v8

    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-wide/from16 v19, v5

    goto :goto_0

    :cond_2
    move-wide/from16 v19, v13

    .line 47
    :goto_0
    const-string v2, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-wide/from16 v21, v11

    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-wide/from16 v21, v8

    goto :goto_1

    .line 50
    :cond_4
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-wide/from16 v21, v5

    goto :goto_1

    :cond_5
    move-wide/from16 v21, v13

    .line 51
    :goto_1
    new-instance v1, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v23, 0x0

    move-object v15, v1

    .line 52
    invoke-direct/range {v15 .. v25}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;-><init>(ZZZJJ[[C[[CZ)V

    .line 53
    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    return-void
.end method

.method public static convertCompilationUnit(ILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Ljava/util/Map;ZLorg/eclipse/jdt/internal/core/CompilationUnit;ILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 7

    .line 2
    new-instance v0, Lorg/eclipse/jdt/core/dom/ASTConverter;

    invoke-direct {v0, p2, p3, p6}, Lorg/eclipse/jdt/core/dom/ASTConverter;-><init>(Ljava/util/Map;ZLorg/eclipse/core/runtime/IProgressMonitor;)V

    .line 3
    invoke-static {p0}, Lorg/eclipse/jdt/core/dom/AST;->newAST(I)Lorg/eclipse/jdt/core/dom/AST;

    move-result-object p0

    .line 4
    const-string p6, "org.eclipse.jdt.core.compiler.source"

    invoke-interface {p2, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    .line 5
    invoke-static {p6}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p6, v1, v3

    if-nez p6, :cond_0

    const-wide/32 v1, 0x2f0000

    .line 6
    :cond_0
    iget-object p6, p0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-wide v1, p6, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->sourceLevel:J

    .line 7
    const-string p6, "org.eclipse.jdt.core.compiler.compliance"

    invoke-interface {p2, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 8
    invoke-static {p2}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->versionToJdkLevel(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long p2, v5, v3

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v5

    .line 9
    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/core/dom/AST;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iput-wide v1, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->complianceLevel:J

    .line 10
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->getDefaultNodeFlag()I

    move-result p2

    const/4 p6, 0x2

    .line 11
    invoke-virtual {p0, p6}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    if-eqz p3, :cond_3

    .line 12
    new-instance p3, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;

    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    iget-object v3, p4, Lorg/eclipse/jdt/internal/core/CompilationUnit;->owner:Lorg/eclipse/jdt/core/WorkingCopyOwner;

    new-instance v4, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;

    invoke-direct {v4}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;Lorg/eclipse/jdt/core/WorkingCopyOwner;Lorg/eclipse/jdt/core/dom/DefaultBindingResolver$BindingTables;ZZ)V

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p6, 0x1

    goto :goto_1

    :cond_2
    const/4 p6, 0x0

    .line 13
    :goto_1
    iput-boolean p6, p3, Lorg/eclipse/jdt/core/dom/DefaultBindingResolver;->isRecoveringBindings:Z

    const/high16 p6, -0x80000000

    .line 14
    invoke-virtual {p0, p6}, Lorg/eclipse/jdt/core/dom/AST;->setFlag(I)V

    goto :goto_2

    .line 15
    :cond_3
    new-instance p3, Lorg/eclipse/jdt/core/dom/BindingResolver;

    invoke-direct {p3}, Lorg/eclipse/jdt/core/dom/BindingResolver;-><init>()V

    .line 16
    :goto_2
    invoke-virtual {p0, p5}, Lorg/eclipse/jdt/core/dom/AST;->setFlag(I)V

    .line 17
    invoke-virtual {p0, p3}, Lorg/eclipse/jdt/core/dom/AST;->setBindingResolver(Lorg/eclipse/jdt/core/dom/BindingResolver;)V

    .line 18
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTConverter;->setAST(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 19
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->getContents()[C

    move-result-object p3

    invoke-virtual {v0, p1, p3}, Lorg/eclipse/jdt/core/dom/ASTConverter;->convert(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[C)Lorg/eclipse/jdt/core/dom/CompilationUnit;

    move-result-object p3

    .line 20
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getLineSeparatorPositions()[I

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setLineEndTable([I)V

    .line 21
    invoke-virtual {p4}, Lorg/eclipse/jdt/internal/core/CompilationUnit;->originalFromClone()Lorg/eclipse/jdt/internal/core/CompilationUnit;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/eclipse/jdt/core/dom/CompilationUnit;->setTypeRoot(Lorg/eclipse/jdt/core/ITypeRoot;)V

    .line 22
    invoke-virtual {p0, p2}, Lorg/eclipse/jdt/core/dom/AST;->setDefaultNodeFlag(I)V

    return-object p3
.end method

.method public static convertCompilationUnit(ILorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[CLjava/util/Map;ZLorg/eclipse/jdt/internal/core/CompilationUnit;ILorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static newAST(I)Lorg/eclipse/jdt/core/dom/AST;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/AST;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/AST;-><init>(I)V

    return-object v0
.end method

.method public static parseCompilationUnit(Lorg/eclipse/jdt/core/IClassFile;Z)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 14
    :try_start_0
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/IClassFile;)V

    .line 16
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setResolveBindings(Z)V

    const/4 p0, 0x0

    .line 17
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    .line 18
    check-cast p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static parseCompilationUnit(Lorg/eclipse/jdt/core/ICompilationUnit;Z)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 1

    const/4 v0, 0x2

    .line 21
    :try_start_0
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v0

    .line 22
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource(Lorg/eclipse/jdt/core/ICompilationUnit;)V

    .line 23
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setResolveBindings(Z)V

    const/4 p0, 0x0

    .line 24
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    .line 25
    check-cast p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static parseCompilationUnit([C)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource([C)V

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    .line 4
    check-cast p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static parseCompilationUnit([CLjava/lang/String;Lorg/eclipse/jdt/core/IJavaProject;)Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    .line 6
    invoke-static {v0}, Lorg/eclipse/jdt/core/dom/ASTParser;->newParser(I)Lorg/eclipse/jdt/core/dom/ASTParser;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setSource([C)V

    .line 8
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ASTParser;->setUnitName(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/core/dom/ASTParser;->setProject(Lorg/eclipse/jdt/core/IJavaProject;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->setResolveBindings(Z)V

    const/4 p0, 0x0

    .line 11
    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/core/dom/ASTParser;->createAST(Lorg/eclipse/core/runtime/IProgressMonitor;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p0

    .line 12
    check-cast p0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private setArrayComponentType(Lorg/eclipse/jdt/core/dom/ArrayType;Lorg/eclipse/jdt/core/dom/Type;)V
    .locals 0

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ArrayType;->setComponentType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-void
.end method


# virtual methods
.method public apiLevel()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    return v0
.end method

.method public createInstance(I)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 0

    .line 9
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->nodeClassForType(I)Ljava/lang/Class;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/AST;->createInstance(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    return-object p1
.end method

.method public createInstance(Ljava/lang/Class;)Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/core/dom/AST;->AST_CLASS:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->THIS_AST:[Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    check-cast p1, Lorg/eclipse/jdt/core/dom/ASTNode;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    .line 4
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 6
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :goto_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final disableEvents()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    return-object v0
.end method

.method public getDefaultNodeFlag()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->defaultNodeFlag:I

    return v0
.end method

.method public getEventHandler()Lorg/eclipse/jdt/core/dom/NodeEventHandler;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    return-object v0
.end method

.method public hasBindingsRecovery()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->bits:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasResolvedBindings()Z
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->bits:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasStatementsRecovery()Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->bits:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public internalNewName([Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;
    .locals 5

    array-length v0, p1

    if-eqz v0, :cond_1

    new-instance v1, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    const/4 v2, 0x1

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-direct {v3, p0}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/eclipse/jdt/core/dom/SimpleName;->internalSetIdentifier(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jdt/core/dom/AST;->newQualifiedName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public modificationCount()J
    .locals 2

    iget-wide v0, p0, Lorg/eclipse/jdt/core/dom/AST;->modificationCount:J

    return-wide v0
.end method

.method public modifying()V
    .locals 4

    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    if-lez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lorg/eclipse/jdt/core/dom/AST;->modificationCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jdt/core/dom/AST;->modificationCount:J

    return-void
.end method

.method public newAnnotationTypeDeclaration()Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/AnnotationTypeDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newAnnotationTypeMemberDeclaration()Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/AnnotationTypeMemberDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newAnonymousClassDeclaration()Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/AnonymousClassDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newArrayAccess()Lorg/eclipse/jdt/core/dom/ArrayAccess;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ArrayAccess;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ArrayAccess;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newArrayCreation()Lorg/eclipse/jdt/core/dom/ArrayCreation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ArrayCreation;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ArrayCreation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newArrayInitializer()Lorg/eclipse/jdt/core/dom/ArrayInitializer;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ArrayInitializer;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ArrayInitializer;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newArrayType(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ArrayType;
    .locals 2

    .line 1
    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 2
    new-instance v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ArrayType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/AST;->setArrayComponentType(Lorg/eclipse/jdt/core/dom/ArrayType;Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ArrayType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 6
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->setElementType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public newArrayType(Lorg/eclipse/jdt/core/dom/Type;I)Lorg/eclipse/jdt/core/dom/ArrayType;
    .locals 3

    if-eqz p1, :cond_6

    if-ltz p2, :cond_5

    const/16 v0, 0xff

    if-gt p2, v0, :cond_5

    .line 8
    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    .line 9
    new-instance v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ArrayType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 10
    invoke-direct {p0, v0, p1}, Lorg/eclipse/jdt/core/dom/AST;->setArrayComponentType(Lorg/eclipse/jdt/core/dom/ArrayType;Lorg/eclipse/jdt/core/dom/Type;)V

    const/4 p1, 0x2

    :goto_0
    if-le p1, p2, :cond_0

    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/AST;->newArrayType(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ArrayType;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 13
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/Type;->isArrayType()Z

    move-result v0

    if-nez v0, :cond_4

    .line 14
    new-instance v0, Lorg/eclipse/jdt/core/dom/ArrayType;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jdt/core/dom/ArrayType;-><init>(Lorg/eclipse/jdt/core/dom/AST;I)V

    .line 15
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ArrayType;->setElementType(Lorg/eclipse/jdt/core/dom/Type;)V

    :goto_1
    if-lt v1, p2, :cond_3

    return-object v0

    .line 16
    :cond_3
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ArrayType;->dimensions()Ljava/util/List;

    move-result-object p1

    new-instance v2, Lorg/eclipse/jdt/core/dom/Dimension;

    invoke-direct {v2, p0}, Lorg/eclipse/jdt/core/dom/Dimension;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 19
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public newAssertStatement()Lorg/eclipse/jdt/core/dom/AssertStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/AssertStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/AssertStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newAssignment()Lorg/eclipse/jdt/core/dom/Assignment;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/Assignment;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/Assignment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newBlock()Lorg/eclipse/jdt/core/dom/Block;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/Block;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/Block;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newBlockComment()Lorg/eclipse/jdt/core/dom/BlockComment;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/BlockComment;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/BlockComment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newBooleanLiteral(Z)Lorg/eclipse/jdt/core/dom/BooleanLiteral;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/BooleanLiteral;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/BooleanLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/BooleanLiteral;->setBooleanValue(Z)V

    return-object v0
.end method

.method public newBreakStatement()Lorg/eclipse/jdt/core/dom/BreakStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/BreakStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/BreakStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newCastExpression()Lorg/eclipse/jdt/core/dom/CastExpression;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/CastExpression;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/CastExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newCatchClause()Lorg/eclipse/jdt/core/dom/CatchClause;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/CatchClause;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/CatchClause;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newCharacterLiteral()Lorg/eclipse/jdt/core/dom/CharacterLiteral;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/CharacterLiteral;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/CharacterLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newClassInstanceCreation()Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ClassInstanceCreation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newCompilationUnit()Lorg/eclipse/jdt/core/dom/CompilationUnit;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/CompilationUnit;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/CompilationUnit;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newConditionalExpression()Lorg/eclipse/jdt/core/dom/ConditionalExpression;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ConditionalExpression;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ConditionalExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newConstructorInvocation()Lorg/eclipse/jdt/core/dom/ConstructorInvocation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ConstructorInvocation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newContinueStatement()Lorg/eclipse/jdt/core/dom/ContinueStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ContinueStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ContinueStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newCreationReference()Lorg/eclipse/jdt/core/dom/CreationReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/CreationReference;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/CreationReference;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newDimension()Lorg/eclipse/jdt/core/dom/Dimension;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/Dimension;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/Dimension;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newDoStatement()Lorg/eclipse/jdt/core/dom/DoStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/DoStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/DoStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newEmptyStatement()Lorg/eclipse/jdt/core/dom/EmptyStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/EmptyStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/EmptyStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newEnhancedForStatement()Lorg/eclipse/jdt/core/dom/EnhancedForStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/EnhancedForStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newEnumConstantDeclaration()Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/EnumConstantDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newEnumDeclaration()Lorg/eclipse/jdt/core/dom/EnumDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/EnumDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/EnumDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newExportsStatement()Lorg/eclipse/jdt/core/dom/ExportsDirective;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ExportsDirective;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ExportsDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newExpressionMethodReference()Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ExpressionMethodReference;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newExpressionStatement(Lorg/eclipse/jdt/core/dom/Expression;)Lorg/eclipse/jdt/core/dom/ExpressionStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ExpressionStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ExpressionStatement;->setExpression(Lorg/eclipse/jdt/core/dom/Expression;)V

    return-object v0
.end method

.method public newFieldAccess()Lorg/eclipse/jdt/core/dom/FieldAccess;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/FieldAccess;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/FieldAccess;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newFieldDeclaration(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Lorg/eclipse/jdt/core/dom/FieldDeclaration;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/FieldDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/FieldDeclaration;->fragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public newForStatement()Lorg/eclipse/jdt/core/dom/ForStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ForStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ForStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newIfStatement()Lorg/eclipse/jdt/core/dom/IfStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/IfStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/IfStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newImportDeclaration()Lorg/eclipse/jdt/core/dom/ImportDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ImportDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ImportDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newInfixExpression()Lorg/eclipse/jdt/core/dom/InfixExpression;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/InfixExpression;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/InfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newInitializer()Lorg/eclipse/jdt/core/dom/Initializer;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/Initializer;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/Initializer;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newInstanceofExpression()Lorg/eclipse/jdt/core/dom/InstanceofExpression;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/InstanceofExpression;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/InstanceofExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newIntersectionType()Lorg/eclipse/jdt/core/dom/IntersectionType;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/IntersectionType;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/IntersectionType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newJavadoc()Lorg/eclipse/jdt/core/dom/Javadoc;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/Javadoc;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/Javadoc;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newLabeledStatement()Lorg/eclipse/jdt/core/dom/LabeledStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/LabeledStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/LabeledStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newLambdaExpression()Lorg/eclipse/jdt/core/dom/LambdaExpression;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/LambdaExpression;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/LambdaExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newLineComment()Lorg/eclipse/jdt/core/dom/LineComment;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/LineComment;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/LineComment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newMarkerAnnotation()Lorg/eclipse/jdt/core/dom/MarkerAnnotation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/MarkerAnnotation;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/MarkerAnnotation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newMemberRef()Lorg/eclipse/jdt/core/dom/MemberRef;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/MemberRef;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/MemberRef;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newMemberValuePair()Lorg/eclipse/jdt/core/dom/MemberValuePair;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/MemberValuePair;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/MemberValuePair;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newMethodDeclaration()Lorg/eclipse/jdt/core/dom/MethodDeclaration;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/core/dom/MethodDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/MethodDeclaration;->setConstructor(Z)V

    return-object v0
.end method

.method public newMethodInvocation()Lorg/eclipse/jdt/core/dom/MethodInvocation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/MethodInvocation;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/MethodInvocation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newMethodRef()Lorg/eclipse/jdt/core/dom/MethodRef;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/MethodRef;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/MethodRef;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newMethodRefParameter()Lorg/eclipse/jdt/core/dom/MethodRefParameter;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/MethodRefParameter;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/MethodRefParameter;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/Modifier;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/Modifier;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/Modifier;->setKeyword(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)V

    return-object v0
.end method

.method public newModifiers(I)Ljava/util/List;
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->unsupportedIn2()V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PUBLIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PROTECTED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->PRIVATE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isAbstract(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->ABSTRACT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isDefault(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->DEFAULT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STATIC_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isFinal(I)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->FINAL_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isSynchronized(I)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->SYNCHRONIZED_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isNative(I)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->NATIVE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isStrictfp(I)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->STRICTFP_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isTransient(I)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->TRANSIENT_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    invoke-static {p1}, Lorg/eclipse/jdt/core/dom/Modifier;->isVolatile(I)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-object p1, Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;->VOLATILE_KEYWORD:Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/AST;->newModifier(Lorg/eclipse/jdt/core/dom/Modifier$ModifierKeyword;)Lorg/eclipse/jdt/core/dom/Modifier;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object v0
.end method

.method public newModuleDeclaration()Lorg/eclipse/jdt/core/dom/ModuleDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ModuleDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newModuleModifier(Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;)Lorg/eclipse/jdt/core/dom/ModuleModifier;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ModuleModifier;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ModuleModifier;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ModuleModifier;->setKeyword(Lorg/eclipse/jdt/core/dom/ModuleModifier$ModuleModifierKeyword;)V

    return-object v0
.end method

.method public newName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "."

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-nez v3, :cond_1

    if-ne v1, v2, :cond_0

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 4
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    .line 5
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_4

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 8
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 9
    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v3

    if-nez p1, :cond_5

    move-object p1, v3

    goto :goto_0

    .line 10
    :cond_5
    invoke-virtual {p0, p1, v3}, Lorg/eclipse/jdt/core/dom/AST;->newQualifiedName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object p1

    goto :goto_0
.end method

.method public newName([Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/Name;
    .locals 4

    .line 11
    array-length v0, p1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 12
    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    if-lt v2, v0, :cond_0

    return-object v1

    .line 13
    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/core/dom/AST;->newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;

    move-result-object v3

    .line 14
    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jdt/core/dom/AST;->newQualifiedName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/QualifiedName;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public newNameQualifiedType(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/NameQualifiedType;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/NameQualifiedType;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/core/dom/NameQualifiedType;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v0
.end method

.method public newNormalAnnotation()Lorg/eclipse/jdt/core/dom/NormalAnnotation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/NormalAnnotation;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/NormalAnnotation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newNullLiteral()Lorg/eclipse/jdt/core/dom/NullLiteral;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/NullLiteral;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/NullLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newNumberLiteral()Lorg/eclipse/jdt/core/dom/NumberLiteral;
    .locals 1

    .line 1
    new-instance v0, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/NumberLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newNumberLiteral(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/NumberLiteral;
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lorg/eclipse/jdt/core/dom/NumberLiteral;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/NumberLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 3
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/NumberLiteral;->setToken(Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public newOpensDirective()Lorg/eclipse/jdt/core/dom/OpensDirective;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/OpensDirective;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/OpensDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newPackageDeclaration()Lorg/eclipse/jdt/core/dom/PackageDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/PackageDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/PackageDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newParameterizedType(Lorg/eclipse/jdt/core/dom/Type;)Lorg/eclipse/jdt/core/dom/ParameterizedType;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ParameterizedType;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ParameterizedType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/ParameterizedType;->setType(Lorg/eclipse/jdt/core/dom/Type;)V

    return-object v0
.end method

.method public newParenthesizedExpression()Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ParenthesizedExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newPostfixExpression()Lorg/eclipse/jdt/core/dom/PostfixExpression;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/PostfixExpression;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/PostfixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newPrefixExpression()Lorg/eclipse/jdt/core/dom/PrefixExpression;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/PrefixExpression;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/PrefixExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newPrimitiveType(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)Lorg/eclipse/jdt/core/dom/PrimitiveType;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/PrimitiveType;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/PrimitiveType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/PrimitiveType;->setPrimitiveTypeCode(Lorg/eclipse/jdt/core/dom/PrimitiveType$Code;)V

    return-object v0
.end method

.method public newProvidesDirective()Lorg/eclipse/jdt/core/dom/ProvidesDirective;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ProvidesDirective;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ProvidesDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newQualifiedName(Lorg/eclipse/jdt/core/dom/Name;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/QualifiedName;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/QualifiedName;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/QualifiedName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/QualifiedName;->setQualifier(Lorg/eclipse/jdt/core/dom/Name;)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/core/dom/QualifiedName;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v0
.end method

.method public newQualifiedType(Lorg/eclipse/jdt/core/dom/Type;Lorg/eclipse/jdt/core/dom/SimpleName;)Lorg/eclipse/jdt/core/dom/QualifiedType;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/QualifiedType;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/QualifiedType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/QualifiedType;->setQualifier(Lorg/eclipse/jdt/core/dom/Type;)V

    invoke-virtual {v0, p2}, Lorg/eclipse/jdt/core/dom/QualifiedType;->setName(Lorg/eclipse/jdt/core/dom/SimpleName;)V

    return-object v0
.end method

.method public newRequiresDirective()Lorg/eclipse/jdt/core/dom/RequiresDirective;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/RequiresDirective;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/RequiresDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newReturnStatement()Lorg/eclipse/jdt/core/dom/ReturnStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ReturnStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ReturnStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newSimpleName(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/SimpleName;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleName;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SimpleName;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/SimpleName;->setIdentifier(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public newSimpleType(Lorg/eclipse/jdt/core/dom/Name;)Lorg/eclipse/jdt/core/dom/SimpleType;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/SimpleType;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SimpleType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/SimpleType;->setName(Lorg/eclipse/jdt/core/dom/Name;)V

    return-object v0
.end method

.method public newSingleMemberAnnotation()Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SingleMemberAnnotation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newSingleVariableDeclaration()Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SingleVariableDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newStringLiteral()Lorg/eclipse/jdt/core/dom/StringLiteral;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/StringLiteral;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/StringLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newSuperConstructorInvocation()Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SuperConstructorInvocation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newSuperFieldAccess()Lorg/eclipse/jdt/core/dom/SuperFieldAccess;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SuperFieldAccess;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newSuperMethodInvocation()Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SuperMethodInvocation;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newSuperMethodReference()Lorg/eclipse/jdt/core/dom/SuperMethodReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/SuperMethodReference;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SuperMethodReference;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newSwitchCase()Lorg/eclipse/jdt/core/dom/SwitchCase;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/SwitchCase;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SwitchCase;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newSwitchExpression()Lorg/eclipse/jdt/core/dom/SwitchExpression;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/SwitchExpression;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SwitchExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newSwitchStatement()Lorg/eclipse/jdt/core/dom/SwitchStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/SwitchStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SwitchStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newSynchronizedStatement()Lorg/eclipse/jdt/core/dom/SynchronizedStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/SynchronizedStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newTagElement()Lorg/eclipse/jdt/core/dom/TagElement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/TagElement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/TagElement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newTextElement()Lorg/eclipse/jdt/core/dom/TextElement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/TextElement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/TextElement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newThisExpression()Lorg/eclipse/jdt/core/dom/ThisExpression;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ThisExpression;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ThisExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newThrowStatement()Lorg/eclipse/jdt/core/dom/ThrowStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/ThrowStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/ThrowStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newTryStatement()Lorg/eclipse/jdt/core/dom/TryStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/TryStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/TryStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newTypeDeclaration()Lorg/eclipse/jdt/core/dom/TypeDeclaration;
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TypeDeclaration;->setInterface(Z)V

    return-object v0
.end method

.method public newTypeDeclarationStatement(Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;)Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;
    .locals 3

    .line 1
    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 2
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3
    move-object v1, p1

    check-cast v1, Lorg/eclipse/jdt/core/dom/TypeDeclaration;

    invoke-virtual {v0, v1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->internalSetTypeDeclaration(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)V

    .line 4
    :cond_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->setDeclaration(Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;)V

    :cond_1
    return-object v0
.end method

.method public newTypeDeclarationStatement(Lorg/eclipse/jdt/core/dom/TypeDeclaration;)Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;
    .locals 1

    .line 6
    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    .line 7
    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/TypeDeclarationStatement;->setDeclaration(Lorg/eclipse/jdt/core/dom/AbstractTypeDeclaration;)V

    return-object v0
.end method

.method public newTypeLiteral()Lorg/eclipse/jdt/core/dom/TypeLiteral;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeLiteral;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/TypeLiteral;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newTypeMethodReference()Lorg/eclipse/jdt/core/dom/TypeMethodReference;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeMethodReference;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/TypeMethodReference;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newTypeParameter()Lorg/eclipse/jdt/core/dom/TypeParameter;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/TypeParameter;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/TypeParameter;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newUnionType()Lorg/eclipse/jdt/core/dom/UnionType;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/UnionType;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/UnionType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newUsesDirective()Lorg/eclipse/jdt/core/dom/UsesDirective;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/UsesDirective;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/UsesDirective;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newVariableDeclarationExpression(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationExpression;->fragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public newVariableDeclarationFragment()Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newVariableDeclarationStatement(Lorg/eclipse/jdt/core/dom/VariableDeclarationFragment;)Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/VariableDeclarationStatement;->fragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public newWhileStatement()Lorg/eclipse/jdt/core/dom/WhileStatement;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/WhileStatement;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/WhileStatement;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public newWildcardType()Lorg/eclipse/jdt/core/dom/WildcardType;
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/core/dom/WildcardType;

    invoke-direct {v0, p0}, Lorg/eclipse/jdt/core/dom/WildcardType;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    return-object v0
.end method

.method public postAddChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->disableEvents()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;->postAddChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    throw p1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public postCloneNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->disableEvents()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;->postCloneNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    throw p1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public postRemoveChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->disableEvents()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;->postRemoveChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    throw p1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public postReplaceChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->disableEvents()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;->postReplaceChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    throw p1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public postValueChangeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->disableEvents()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;->postValueChangeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    throw p1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public preAddChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->disableEvents()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;->preAddChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    throw p1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public preCloneNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->disableEvents()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;->preCloneNodeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    throw p1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public preRemoveChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->disableEvents()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;->preRemoveChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    throw p1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public preReplaceChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->disableEvents()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;->preReplaceChildEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/StructuralPropertyDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    throw p1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public preValueChangeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    if-lez v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->disableEvents()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/dom/NodeEventHandler;->preValueChangeEvent(Lorg/eclipse/jdt/core/dom/ASTNode;Lorg/eclipse/jdt/core/dom/SimplePropertyDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    return-void

    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->reenableEvents()V

    throw p1

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public recordModifications(Lorg/eclipse/jdt/core/dom/CompilationUnit;)V
    .locals 4

    iget-wide v0, p0, Lorg/eclipse/jdt/core/dom/AST;->modificationCount:J

    iget-wide v2, p0, Lorg/eclipse/jdt/core/dom/AST;->originalModificationCount:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->rewriter:Lorg/eclipse/jdt/core/dom/InternalASTRewrite;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getAST()Lorg/eclipse/jdt/core/dom/AST;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;

    invoke-direct {v0, p1}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;-><init>(Lorg/eclipse/jdt/core/dom/CompilationUnit;)V

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->rewriter:Lorg/eclipse/jdt/core/dom/InternalASTRewrite;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/core/dom/AST;->setEventHandler(Lorg/eclipse/jdt/core/dom/NodeEventHandler;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Root node is not owned by this ast"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Root node is unmodifiable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AST modifications are already recorded"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "AST is already modified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final reenableEvents()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->internalASTLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/jdt/core/dom/AST;->disableEvents:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resolveWellKnownType(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/ITypeBinding;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/AST;->getBindingResolver()Lorg/eclipse/jdt/core/dom/BindingResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/dom/BindingResolver;->resolveWellKnownType(Ljava/lang/String;)Lorg/eclipse/jdt/core/dom/ITypeBinding;

    move-result-object p1

    return-object p1
.end method

.method public rewrite(Lorg/eclipse/jface/text/IDocument;Ljava/util/Map;)Lorg/eclipse/text/edits/TextEdit;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->rewriter:Lorg/eclipse/jdt/core/dom/InternalASTRewrite;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jdt/core/dom/InternalASTRewrite;->rewriteAST(Lorg/eclipse/jface/text/IDocument;Ljava/util/Map;)Lorg/eclipse/text/edits/TextEdit;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Modifications record is not enabled"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setBindingResolver(Lorg/eclipse/jdt/core/dom/BindingResolver;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/AST;->resolver:Lorg/eclipse/jdt/core/dom/BindingResolver;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setDefaultNodeFlag(I)V
    .locals 0

    iput p1, p0, Lorg/eclipse/jdt/core/dom/AST;->defaultNodeFlag:I

    return-void
.end method

.method public setEventHandler(Lorg/eclipse/jdt/core/dom/NodeEventHandler;)V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/AST;->eventHandler:Lorg/eclipse/jdt/core/dom/NodeEventHandler;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public setFlag(I)V
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->bits:I

    or-int/2addr p1, v0

    iput p1, p0, Lorg/eclipse/jdt/core/dom/AST;->bits:I

    return-void
.end method

.method public setOriginalModificationCount(J)V
    .locals 0

    iput-wide p1, p0, Lorg/eclipse/jdt/core/dom/AST;->originalModificationCount:J

    return-void
.end method

.method public supportedOnlyIn2()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in JLS2 AST"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unsupportedIn2()V
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/AST;->apiLevel:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in JLS2 AST"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
