.class public Lorg/openjdk/tools/javac/parser/JavacParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/parser/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;,
        Lorg/openjdk/tools/javac/parser/JavacParser$EmptyEndPosTable;,
        Lorg/openjdk/tools/javac/parser/JavacParser$SimpleEndPosTable;,
        Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;,
        Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;,
        Lorg/openjdk/tools/javac/parser/JavacParser$ErrorRecoveryAction;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field protected static final DIAMOND:I = 0x10

.field protected static final EXPR:I = 0x1

.field protected static final NOPARAMS:I = 0x4

.field private static final RECOVERY_THRESHOLD:I = 0x32

.field protected static final TYPE:I = 0x2

.field protected static final TYPEARG:I = 0x8

.field private static final infixPrecedenceLevels:I = 0xa


# instance fields
.field protected F:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field protected LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;"
        }
    .end annotation
.end field

.field protected S:Lorg/openjdk/tools/javac/parser/Lexer;

.field allowAnnotationsAfterTypeParams:Z

.field allowDefaultMethods:Z

.field allowDiamond:Z

.field allowEffectivelyFinalVariablesInTWR:Z

.field allowIntersectionTypesInCast:Z

.field allowLambda:Z

.field allowMethodReferences:Z

.field allowModules:Z

.field allowMulticatch:Z

.field allowPrivateInterfaceMethods:Z

.field allowStaticInterfaceMethods:Z

.field allowStringFolding:Z

.field allowTWR:Z

.field allowThisIdent:Z

.field allowTypeAnnotations:Z

.field allowUnderscoreIdentifier:Z

.field private count:I

.field private final docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

.field protected final endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

.field private errorPos:I

.field private errorTree:Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

.field keepDocComments:Z

.field keepLineMap:Z

.field protected lastmode:I

.field private log:Lorg/openjdk/tools/javac/util/Log;

.field protected mode:I

.field private names:Lorg/openjdk/tools/javac/util/Names;

.field odStackSupply:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation
.end field

.field opStackSupply:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lorg/openjdk/tools/javac/parser/Tokens$Token;",
            ">;"
        }
    .end annotation
.end field

.field private final parseModuleInfo:Z

.field private permitTypeAnnotationsPushBack:Z

.field receiverParam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

.field private source:Lorg/openjdk/tools/javac/code/Source;

.field protected token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

.field private typeAnnotationsPushedBack:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ParserFactory;Lorg/openjdk/tools/javac/parser/Lexer;ZZZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/parser/JavacParser;-><init>(Lorg/openjdk/tools/javac/parser/ParserFactory;Lorg/openjdk/tools/javac/parser/Lexer;ZZZZ)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ParserFactory;Lorg/openjdk/tools/javac/parser/Lexer;ZZZZ)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsPushedBack:Lorg/openjdk/tools/javac/util/List;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->permitTypeAnnotationsPushBack:Z

    .line 5
    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    .line 6
    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->lastmode:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->errorPos:I

    .line 8
    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->count:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->odStackSupply:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->opStackSupply:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Lorg/openjdk/tools/javac/parser/a;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/parser/a;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    .line 12
    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    .line 13
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 14
    iget-object p2, p1, Lorg/openjdk/tools/javac/parser/ParserFactory;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 15
    iget-object p2, p1, Lorg/openjdk/tools/javac/parser/ParserFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    .line 16
    iget-object p2, p1, Lorg/openjdk/tools/javac/parser/ParserFactory;->names:Lorg/openjdk/tools/javac/util/Names;

    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    .line 17
    iget-object p2, p1, Lorg/openjdk/tools/javac/parser/ParserFactory;->source:Lorg/openjdk/tools/javac/code/Source;

    iput-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    .line 18
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowTryWithResources()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowTWR:Z

    .line 19
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    .line 20
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowEffectivelyFinalVariablesInTryWithResources()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowEffectivelyFinalVariablesInTWR:Z

    .line 21
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowDiamond()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowDiamond:Z

    .line 22
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowMulticatch()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowMulticatch:Z

    .line 23
    iget-object p2, p1, Lorg/openjdk/tools/javac/parser/ParserFactory;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v0, "allowStringFolding"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/openjdk/tools/javac/util/Options;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowStringFolding:Z

    .line 24
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowLambda()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowLambda:Z

    .line 25
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowMethodReferences()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowMethodReferences:Z

    .line 26
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowDefaultMethods()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowDefaultMethods:Z

    .line 27
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowStaticInterfaceMethods()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowStaticInterfaceMethods:Z

    .line 28
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowIntersectionTypesInCast()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowIntersectionTypesInCast:Z

    .line 29
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowTypeAnnotations()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowTypeAnnotations:Z

    .line 30
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowModules()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowModules:Z

    .line 31
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowAnnotationsAfterTypeParams()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowAnnotationsAfterTypeParams:Z

    .line 32
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowUnderscoreIdentifier()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowUnderscoreIdentifier:Z

    .line 33
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Source;->allowPrivateInterfaceMethods()Z

    move-result p2

    iput-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowPrivateInterfaceMethods:Z

    .line 34
    iput-boolean p3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->keepDocComments:Z

    .line 35
    iput-boolean p6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->parseModuleInfo:Z

    .line 36
    invoke-virtual {p0, p3, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->newDocCommentTable(ZLorg/openjdk/tools/javac/parser/ParserFactory;)Lorg/openjdk/tools/javac/tree/DocCommentTable;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    .line 37
    iput-boolean p4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->keepLineMap:Z

    .line 38
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous()Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->errorTree:Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    .line 39
    invoke-virtual {p0, p5}, Lorg/openjdk/tools/javac/parser/JavacParser;->newEndPosTable(Z)Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->lambda$new$1(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->lambda$merge$0(Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 12
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method private bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_0

    .line 3
    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    .line 4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 5
    invoke-direct {p0, p1, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOptCont(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;ILorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->permitTypeAnnotationsPushBack:Z

    if-eqz v1, :cond_1

    .line 8
    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsPushedBack:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    .line 10
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_3
    return-object p1
.end method

.method private bracketsOptCont(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;ILorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "I",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    return-object p1
.end method

.method private doRecover(ILorg/openjdk/tools/javac/parser/JavacParser$ErrorRecoveryAction;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/parser/Lexer;->errPos()I

    move-result v0

    invoke-interface {p2, p0}, Lorg/openjdk/tools/javac/parser/JavacParser$ErrorRecoveryAction;->doRecover(Lorg/openjdk/tools/javac/parser/JavacParser;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p2

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v1, v0}, Lorg/openjdk/tools/javac/parser/Lexer;->errPos(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILorg/openjdk/tools/javac/util/List;Ljava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    return-object p1
.end method

.method public static earlier(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ge p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move p0, p1

    :goto_0
    return p0
.end method

.method private foldIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/util/ListBuffer;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;",
            ">;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;Z)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->stringLiteral(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->merge(Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->merge(Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    move-result p4

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->clear()V

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    return p4
.end method

.method private insertAnnotationsToMostInner(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;Z)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v0

    const/4 v1, 0x0

    move-object v2, p1

    :goto_0
    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p3, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p3

    invoke-virtual {p3, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object p3

    invoke-virtual {p0, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p3

    if-eqz p3, :cond_8

    move-object p3, v2

    move-object v3, p3

    :cond_2
    invoke-static {p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    sget-object v6, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEAPPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v4, v6}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v7, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v7, v7, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v4, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object p2

    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p3

    invoke-virtual {p3, v6}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iput-object p2, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p3

    invoke-virtual {p3, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {v3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iput-object p2, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_3

    :cond_5
    move-object v2, p2

    goto :goto_3

    :cond_6
    :goto_1
    invoke-static {p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    move-object v8, v3

    move-object v3, p3

    move-object p3, v8

    goto :goto_1

    :cond_7
    :goto_2
    invoke-static {p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEAPPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p3}, Lorg/openjdk/tools/javac/tree/TreeInfo;->typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v8, v3

    move-object v3, p3

    move-object p3, v8

    goto :goto_2

    :cond_8
    :goto_3
    if-nez v1, :cond_9

    return-object v2

    :cond_9
    iput-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    return-object p1
.end method

.method private static synthetic lambda$merge$0(Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$new$1(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->UNDERSCORE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ASSERT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ENUM:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private makeOp(ILorg/openjdk/tools/javac/parser/Tokens$TokenKind;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->INSTANCEOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeTest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-static {p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->optag(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p2

    invoke-virtual {p1, p2, p3, p4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Binary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    move-result-object p1

    return-object p1
.end method

.method private newOdStack()[Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->odStackSupply:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->odStackSupply:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method private newOpStack()[Lorg/openjdk/tools/javac/parser/Tokens$Token;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->opStackSupply:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/openjdk/tools/javac/parser/Tokens$Token;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->opStackSupply:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/parser/Tokens$Token;

    return-object v0
.end method

.method public static optag(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x15

    if-eq p0, v0, :cond_2

    const/16 v0, 0x52

    if-eq p0, v0, :cond_1

    const/16 v0, 0x53

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NO_TAG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPETEST:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MOD:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->DIV:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MUL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->EQ:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITXOR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITOR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->AND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->OR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->GE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_d
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITAND:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_e
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->GT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_f
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_10
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->USR:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_11
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->USR_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_12
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SR_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_13
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SL_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_14
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITXOR_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_15
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITOR_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_16
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BITAND_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_17
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MOD_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_18
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->DIV_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_19
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MUL_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_1a
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MINUS_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_1b
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS_ASG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :cond_0
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MINUS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :cond_1
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :cond_2
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x58
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static prec(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)I
    .locals 1

    invoke-static {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->optag(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p0

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NO_TAG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->opPrec(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private stringLiteral(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LITERAL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static typetag(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/code/TypeTag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/openjdk/tools/javac/code/TypeTag;->DOUBLE:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/openjdk/tools/javac/code/TypeTag;->FLOAT:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/openjdk/tools/javac/code/TypeTag;->LONG:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/openjdk/tools/javac/code/TypeTag;->CHAR:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/openjdk/tools/javac/code/TypeTag;->SHORT:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/openjdk/tools/javac/code/TypeTag;->BYTE:Lorg/openjdk/tools/javac/code/TypeTag;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static unoptag(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NO_TAG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NEG:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->COMPL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->NOT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PREDEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PREINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, p1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    const-string v1, "expected"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public analyzeParens()Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v4, v1}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v5, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_18

    const/4 v6, 0x5

    const/16 v7, 0x4a

    const/16 v8, 0x54

    const/4 v9, 0x1

    if-eq v4, v6, :cond_11

    const/16 v6, 0x9

    if-eq v4, v6, :cond_e

    const/16 v10, 0x31

    if-eq v4, v10, :cond_17

    const/16 v10, 0x33

    if-eq v4, v10, :cond_e

    if-eq v4, v8, :cond_b

    const/16 v5, 0x55

    if-eq v4, v5, :cond_17

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->PARENS:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :pswitch_0
    add-int/lit8 v2, v2, -0x1

    :pswitch_1
    add-int/lit8 v2, v2, -0x1

    :pswitch_2
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_4

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->AMP:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_3

    :cond_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v4, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ARROW:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v4, v3, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ELLIPSIS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    :pswitch_3
    move v3, v9

    goto/16 :goto_8

    :cond_2
    :goto_2
    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->EXPLICIT_LAMBDA:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_3
    :goto_3
    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->CAST:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_4
    if-gez v2, :cond_17

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->PARENS:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :pswitch_4
    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EXTENDS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SUPER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v4

    if-eqz v4, :cond_17

    goto :goto_1

    :pswitch_5
    if-eqz v1, :cond_5

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->PARENS:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_5
    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->EXPLICIT_LAMBDA:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :pswitch_6
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    invoke-virtual {p0, v1, v3, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->EXPLICIT_LAMBDA:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_6
    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v3, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result v4

    if-nez v4, :cond_9

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->AMP:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v3, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v1, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->PARENS:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_9
    :goto_4
    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->CAST:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :pswitch_7
    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->CAST:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_a
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    invoke-virtual {p0, v1, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->EXPLICIT_LAMBDA:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :pswitch_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_b
    if-eqz v3, :cond_c

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->CAST:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_c
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    add-int/2addr v1, v9

    invoke-interface {v0, v1}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v5, v0

    if-eq v0, v6, :cond_d

    if-eq v0, v7, :cond_d

    const/16 v1, 0x50

    if-eq v0, v1, :cond_d

    const/16 v1, 0x51

    if-eq v0, v1, :cond_d

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->PARENS:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_d
    :pswitch_9
    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->CAST:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_e
    :pswitch_a
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    invoke-virtual {p0, v1, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->EXPLICIT_LAMBDA:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_f
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ARROW:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v3, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result v3

    if-eqz v3, :cond_10

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->IMPLICIT_LAMBDA:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_10
    move v3, v0

    goto :goto_8

    :cond_11
    add-int/lit8 v1, v1, 0x1

    :goto_5
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v3

    if-eqz v3, :cond_12

    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_12
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v3, v0

    :goto_6
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v4, v1}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v5, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_16

    if-eq v4, v7, :cond_14

    if-eq v4, v8, :cond_13

    goto :goto_7

    :cond_13
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_15

    goto/16 :goto_1

    :cond_14
    add-int/lit8 v3, v3, 0x1

    :cond_15
    :goto_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_16
    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->PARENS:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    :cond_17
    :goto_8
    :pswitch_b
    add-int/2addr v1, v9

    goto/16 :goto_0

    :cond_18
    :pswitch_c
    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->EXPLICIT_LAMBDA:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_b
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x16
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method public annotation(ILorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPE_ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkTypeAnnotations()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationFieldValuesOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-ne p2, v3, :cond_1

    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Annotation(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {p2}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p2

    iget p2, p2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled annotation kind: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public annotationFieldValue()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {v0, v1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term1()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EQ:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_0

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationValue()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationValue()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public annotationFieldValues()Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationFieldValue()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationFieldValue()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public annotationFieldValuesOpt()Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationFieldValues()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public annotationValue()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term1()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_1

    :cond_1
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationValue()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationValue()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0

    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotation(ILorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v0

    return-object v0
.end method

.method public annotationsOpt(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$Tag;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->MONKEYS_AT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->MONKEYS_AT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v4, :cond_1

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0, v2, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotation(ILorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    iget p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iput p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->lastmode:I

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public arguments(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    .line 13
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->arguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Apply(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    return-object p1
.end method

.method public arguments()Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_0

    .line 5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 6
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    .line 7
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 8
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    goto :goto_1

    .line 10
    :cond_1
    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v2, "expected"

    filled-new-array {v3}, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    .line 11
    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public argumentsOpt(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v0, v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->arguments(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public arrayCreatorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 7

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-direct {p0, p2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->arrayInitializer(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p2, p2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const-string v1, "array.dimension.missing"

    invoke-virtual {p0, p2, p1, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILorg/openjdk/tools/javac/util/List;Ljava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v4, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v0, v2, :cond_4

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->MONKEYS_AT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;->dimAnnotations:Lorg/openjdk/tools/javac/util/List;

    return-object p1

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v6, :cond_5

    invoke-direct {p0, p2, v2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOptCont(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;ILorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    goto :goto_0

    :cond_5
    if-ne v5, v6, :cond_6

    invoke-direct {p0, p2, v2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOptCont(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;ILorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    goto :goto_0

    :cond_6
    invoke-virtual {v4, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    goto :goto_0
.end method

.method public arrayInitializer(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableInitializer()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableInitializer()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method public attach(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->keepDocComments:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocCommentTable;->putComment(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    :cond_0
    return-void
.end method

.method public basicType()Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-static {v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->typetag(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/code/TypeTag;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeIdent(Lorg/openjdk/tools/javac/code/TypeTag;)Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    return-object v0
.end method

.method public block()Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    .locals 3

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->block(IJ)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    return-object v0
.end method

.method public block(IJ)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;
    .locals 2

    .line 1
    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->blockStatements()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2, p3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1

    .line 4
    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object p3, p2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CASE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq p3, v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DEFAULT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p3, v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget p2, p2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iput p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->endpos:I

    .line 6
    sget-object p2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    .line 7
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    return-object p1

    .line 8
    :cond_1
    :goto_1
    const-string p2, "orphaned"

    invoke-virtual {p0, p2, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(Ljava/lang/String;Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    .line 9
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->switchBlockStatementGroups()Lorg/openjdk/tools/javac/util/List;

    goto :goto_0
.end method

.method public blockStatement()Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v2, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/16 v2, 0x33

    if-eq v0, v2, :cond_6

    const/16 v2, 0xb

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_5

    const/16 v2, 0x13

    if-eq v0, v2, :cond_6

    const/16 v2, 0x14

    if-eq v0, v2, :cond_4

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->term(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLON:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v4, :cond_0

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseStatementAsBlock()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Labelled(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->lastmode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {v0, v3}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0, v1, v2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclarators(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v2

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkExprStat(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "local.enum"

    invoke-virtual {p0, v0, v2, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comment(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->modifiersOpt()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comment(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->modifiersOpt()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comment(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->modifiersOpt()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->INTERFACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v2, v3, :cond_3

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CLASS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v2, v3, :cond_3

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ENUM:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0, v1, v0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclarators(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v2

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    :pswitch_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comment(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->modifiersOpt()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_5
    :pswitch_4
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_6
    :pswitch_5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseSimpleStatement()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public blockStatements()Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->blockStatement()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    if-ne v3, v1, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    iget v4, v4, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->errorEndPos:I

    if-gt v3, v4, :cond_2

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v3, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    :cond_2
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public bracketsSuffix(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_5

    const/4 v0, 0x1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget v0, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CLASS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    iget v3, v3, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->errorEndPos:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {v2, v1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-ne v1, v2, :cond_2

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->containsTypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATED_TYPE:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    if-ne v1, v2, :cond_4

    :cond_3
    const-string v1, "no.annotations.on.dot.class"

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLCOL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v0, v2, :cond_7

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLCOL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_7

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const-string v2, "dot.class.expected"

    invoke-virtual {p0, v0, v2, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    :cond_7
    :goto_1
    return-object p1
.end method

.method public catchClause()Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CATCH:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    const-wide v1, 0x200000000L

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->optFinal(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->catchTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v4, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeUnion(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    :goto_0
    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    goto :goto_0

    :goto_1
    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclaratorId(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->block()Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Catch(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    move-result-object v0

    return-object v0
.end method

.method public catchTypes()Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->BAR:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkMulticatch()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkAnnotationsAfterTypeParams(I)V
    .locals 4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowAnnotationsAfterTypeParams:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "annotations.after.type.params.not.supported.in.source"

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkDefaultMethods()V
    .locals 5

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowDefaultMethods:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "default.methods.not.supported.in.source"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkDiamond()V
    .locals 5

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowDiamond:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "diamond.not.supported.in.source"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkExprStat(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isExpressionStatement(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "not.stmt"

    invoke-virtual {p0, p1, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public checkIntersectionTypesInCast()V
    .locals 5

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowIntersectionTypesInCast:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "intersection.types.in.cast.not.supported.in.source"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkLambda()V
    .locals 5

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowLambda:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "lambda.not.supported.in.source"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkMethodReferences()V
    .locals 5

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowMethodReferences:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "method.references.not.supported.in.source"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkMulticatch()V
    .locals 5

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowMulticatch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "multicatch.not.supported.in.source"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkNoMods(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    neg-long v0, p1

    and-long/2addr p1, v0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/code/Flags;->asFlagSet(J)Ljava/util/EnumSet;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "mod.not.allowed.here"

    invoke-virtual {p0, v0, p2, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkPrivateInterfaceMethods()V
    .locals 4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowPrivateInterfaceMethods:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    invoke-static {v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->PrivateIntfMethodsNotSupportedInSource(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_0
    return-void
.end method

.method public checkStaticInterfaceMethods()V
    .locals 5

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowStaticInterfaceMethods:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "static.intf.methods.not.supported.in.source"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkTryWithResources()V
    .locals 5

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowTWR:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "try.with.resources.not.supported.in.source"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkTypeAnnotations()V
    .locals 5

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowTypeAnnotations:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "type.annotations.not.supported.in.source"

    invoke-virtual {v0, v1, v2, v4, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public checkVariableInTryWithResources(I)V
    .locals 4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowEffectivelyFinalVariablesInTWR:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SOURCE_LEVEL:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "var.in.try.with.resources.not.supported.in.source"

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public classCreatorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->arguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceBody(Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnonymousClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    return-object p1
.end method

.method public classDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CLASS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeParametersOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EXTENDS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    :goto_0
    move-object v6, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IMPLEMENTS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :cond_1
    move-object v7, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceBody(Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->attach(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    return-object p1
.end method

.method public classOrInterfaceBody(Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Z)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->errorEndPos:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gt v1, v2, :cond_0

    invoke-virtual {p0, v4, v3, v4, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_2

    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v5, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceBodyDeclaration(Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->errorEndPos:I

    if-gt v1, v2, :cond_1

    invoke-virtual {p0, v4, v3, v3, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public classOrInterfaceBodyDeclaration(Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Z)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comment(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->modifiersOpt()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v5

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CLASS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v3, v4, :cond_f

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->INTERFACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v3, v4, :cond_f

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ENUM:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v4, :cond_1

    goto/16 :goto_5

    :cond_1
    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const/4 v6, 0x0

    if-ne v3, v4, :cond_3

    iget-wide v3, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v7, 0xff7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-nez v3, :cond_3

    iget-object v3, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p2, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string p2, "initializer.not.allowed"

    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-wide p1, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    invoke-virtual {p0, v1, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->block(IJ)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeParametersOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    iget v3, v5, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    if-ne v3, v4, :cond_4

    iput v1, v5, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v5, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    :cond_4
    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationsOpt(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkAnnotationsAfterTypeParams(I)V

    iget-object v3, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget v7, v5, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    if-ne v7, v4, :cond_5

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iput v3, v5, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    :cond_5
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v4, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v7, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v9, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->VOID:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v7, v9, :cond_6

    const/4 v7, 0x1

    move v10, v7

    goto :goto_0

    :cond_6
    move v10, v6

    :goto_0
    if-eqz v10, :cond_7

    iget-object v7, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v7, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v7

    sget-object v9, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v7, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeIdent(Lorg/openjdk/tools/javac/code/TypeTag;)Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->unannotatedType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v7

    :goto_1
    iget-object v9, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v9, v9, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v12, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v9, v12, :cond_b

    if-nez p2, :cond_b

    sget-object v9, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v7, v9}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v9

    if-eqz v9, :cond_b

    if-nez p2, :cond_9

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    if-eq v2, p1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_3

    :cond_9
    :goto_2
    const-string p1, "invalid.meth.decl.ret.type.req"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v4, p1, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v7, p1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    const/4 v10, 0x1

    const/4 v6, 0x0

    move-object v3, p0

    move v9, p2

    move-object v11, v0

    invoke-virtual/range {v3 .. v11}, Lorg/openjdk/tools/javac/parser/JavacParser;->methodDeclaratorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;ZZLorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v4, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v12, :cond_c

    move-object v3, p0

    move-object v6, v7

    move-object v7, p1

    move v9, p2

    move-object v11, v0

    invoke-virtual/range {v3 .. v11}, Lorg/openjdk/tools/javac/parser/JavacParser;->methodDeclaratorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;ZZLorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_c
    if-nez v10, :cond_d

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance v10, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v10}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    move-object v3, p0

    move-object v6, v7

    move-object v7, p1

    move v8, p2

    move-object v9, v0

    invoke-virtual/range {v3 .. v10}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclaratorsRest(ILorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/parser/Tokens$Comment;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, p2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    return-object p1

    :cond_d
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p2, p2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    if-eqz v10, :cond_e

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, v5

    move-object v5, p1

    move-object v6, v7

    move-object v7, v8

    move-object v8, p2

    invoke-virtual/range {v3 .. v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    goto :goto_4

    :cond_e
    const/4 p1, 0x0

    :goto_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p2, p2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v0, "expected"

    filled-new-array {v12}, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILorg/openjdk/tools/javac/util/List;Ljava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_5
    invoke-virtual {p0, v5, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public classOrInterfaceOrEnumDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CLASS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->classDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->INTERFACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v3, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->interfaceDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ENUM:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v4, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->enumDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    return-object p1

    :cond_2
    iget p2, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    invoke-interface {v0, v1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->parseModuleInfo:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const-string v1, "expected.module.or.open"

    invoke-virtual {p0, p2, p1, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILorg/openjdk/tools/javac/util/List;Ljava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    goto :goto_1

    :cond_4
    const-string v0, "expected3"

    filled-new-array {v2, v3, v4}, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILorg/openjdk/tools/javac/util/List;Ljava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    :goto_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    return-object p1
.end method

.method public creator(ILorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v5, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-nez v4, :cond_1

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->basicType()Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->arrayCreatorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v3, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v4, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v4, v4, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->basicType()Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->arrayCreatorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    iget v6, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    const/4 v7, 0x2

    iput v7, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v7, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v8, v7, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v9, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const/4 v10, -0x1

    const/4 v11, 0x0

    if-ne v8, v9, :cond_2

    iget v7, v7, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, v5, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArguments(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v5

    iget v8, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_3

    :goto_1
    move v8, v3

    goto :goto_2

    :cond_2
    move v7, v10

    :cond_3
    move v8, v11

    :cond_4
    :goto_2
    iget-object v9, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v12, v9, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v13, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v12, v13, :cond_7

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_5
    iget-object v9, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v9, v9, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v12

    iget-object v13, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v13, v9}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v9

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v13

    invoke-virtual {v9, v5, v13}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v13, v12, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v13, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v13, v13, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v9, v13}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v9

    invoke-virtual {v9, v12, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_6
    iget-object v9, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v12, v9, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v13, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v12, v13, :cond_4

    iget v7, v9, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, v5, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArguments(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v5

    iget v8, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_7
    iput v6, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v12, v3, :cond_c

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->MONKEYS_AT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v12, v6, :cond_8

    goto/16 :goto_4

    :cond_8
    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v12, v6, :cond_b

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v4, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->classCreatorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v1

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v3, :cond_9

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget v4, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iget-object v5, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v5, v5, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v4, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->earlier(II)I

    move-result v4

    iput v4, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iput-object v2, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    goto :goto_3

    :cond_9
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0, v5, v2, v11}, Lorg/openjdk/tools/javac/parser/JavacParser;->insertAnnotationsToMostInner(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_a
    :goto_3
    return-object v1

    :cond_b
    iget v2, v9, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    iget-object v2, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v7, "expected2"

    filled-new-array {v6, v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v7, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v1

    :cond_c
    :goto_4
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct {p0, v5, v2, v11}, Lorg/openjdk/tools/javac/parser/JavacParser;->insertAnnotationsToMostInner(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    :cond_d
    invoke-virtual {p0, p1, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->arrayCreatorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    if-eqz v8, :cond_e

    const-string v3, "cannot.create.array.with.diamond"

    new-array v4, v11, [Ljava/lang/Object;

    invoke-virtual {p0, v7, v3, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v1

    :cond_e
    if-eqz v4, :cond_10

    invoke-virtual/range {p2 .. p2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget v5, v5, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    if-eq v5, v10, :cond_f

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget v1, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    :cond_f
    iget-object v3, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v3}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v3

    iget v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    iget-object v3, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    const-string v2, "cannot.create.array.with.type.arguments"

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->reportSyntaxError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v1

    :cond_10
    return-object v2

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public enumBody(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_2

    :cond_0
    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_3

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_3

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->enumeratorDeclaration(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v3, :cond_2

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->enumeratorDeclaration(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v3, v4, :cond_3

    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v3, v5, :cond_3

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v3, "expected3"

    filled-new-array {v2, v5, v4}, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v2

    invoke-virtual {p0, v1, v3, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    :cond_4
    :goto_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_5

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceBodyDeclaration(Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    iget v3, v3, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->errorEndPos:I

    if-gt v2, v3, :cond_4

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    goto :goto_3

    :cond_5
    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public enumDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ENUM:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IMPLEMENTS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :cond_0
    move-object v7, v1

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->enumBody(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    iget-wide v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v5, 0x4000

    or-long/2addr v1, v5

    iput-wide v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->attach(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    return-object p1
.end method

.method public enumeratorDeclaration(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 14

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comment(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->deprecatedFlag()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x24019

    goto :goto_0

    :cond_0
    const/16 v1, 0x4019

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationsOpt(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    int-to-long v7, v1

    invoke-virtual {v4, v7, v8, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgumentsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v7, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v8, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v8, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->arguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    :goto_2
    move-object v11, v5

    goto :goto_3

    :cond_2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    goto :goto_2

    :goto_3
    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v8, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v5

    const-wide/16 v12, 0x4000

    invoke-virtual {v5, v12, v13}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceBody(Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v8, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v8, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnonymousClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    :goto_4
    move-object v12, v5

    goto :goto_5

    :cond_3
    const/4 v5, 0x0

    goto :goto_4

    :goto_5
    invoke-virtual {v11}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v12, :cond_4

    move v5, v3

    goto :goto_6

    :cond_4
    move v5, v7

    :goto_6
    iget-object v6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v10

    iget-object v6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v7 .. v12}, Lorg/openjdk/tools/javac/tree/TreeMaker;->NewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object v6

    if-eq v5, v3, :cond_5

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v5}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v5

    iget v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, v6, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    :cond_5
    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object p1

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v1, v4, p1, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->attach(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    return-object p1
.end method

.method public varargs error(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SYNTAX:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->SYNTAX:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public foldStrings(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 6

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowStringFolding:Z

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v2, 0x0

    move-object v3, p1

    move v4, v2

    :goto_0
    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    iget-object v5, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v5, v1, v0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->foldIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/util/ListBuffer;Z)Z

    move-result v5

    or-int/2addr v4, v5

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v3, v1, v0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->foldIfNeeded(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/util/ListBuffer;Z)Z

    move-result v1

    or-int/2addr v1, v4

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->PLUS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-static {v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->optag(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Binary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;

    move-result-object v0

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    return-object p1
.end method

.method public forInit()Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->FINAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v3, :cond_3

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->MONKEYS_AT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->term(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->lastmode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {v3, v4}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->modifiersOpt()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclarators(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->lastmode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLON:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v4, :cond_2

    const-string v0, "for-loop"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "bad.initializer"

    invoke-virtual {p0, v2, v3, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0, v2, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->moreStatementExpressions(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_0
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->optFinal(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclarators(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public forUpdate()Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->moreStatementExpressions(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public formalParameter()Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->formalParameter(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0
.end method

.method public formalParameter(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 8

    const-wide v0, 0x200000000L

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->optFinal(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->permitTypeAnnotationsPushBack:Z

    .line 4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    const/4 v3, 0x0

    .line 5
    iput-boolean v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->permitTypeAnnotationsPushBack:Z

    .line 6
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ELLIPSIS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v4, v5, :cond_0

    .line 7
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsPushedBack:Lorg/openjdk/tools/javac/util/List;

    .line 8
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsPushedBack:Lorg/openjdk/tools/javac/util/List;

    .line 9
    iget-wide v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v6, 0x400000000L

    or-long/2addr v4, v6

    iput-wide v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    .line 10
    invoke-direct {p0, v2, v3, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->insertAnnotationsToMostInner(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsPushedBack:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsPushedBack:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    const-string v4, "illegal.start.of.type"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsPushedBack:Lorg/openjdk/tools/javac/util/List;

    .line 15
    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclaratorId(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    return-object p1
.end method

.method public formalParameters()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->formalParameters(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public formalParameters(Z)Lorg/openjdk/tools/javac/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 3
    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowThisIdent:Z

    .line 6
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->formalParameter(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    .line 7
    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->nameexpr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v2, :cond_0

    .line 8
    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->receiverParam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    const/4 v2, 0x0

    .line 10
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowThisIdent:Z

    .line 11
    :goto_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v4, :cond_2

    .line 12
    iget-object v3, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v5, 0x400000000L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 13
    const-string v3, "varargs.must.be.last"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 15
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->formalParameter(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 16
    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_3

    .line 17
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_2

    .line 18
    :cond_3
    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    .line 19
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {p1}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "expected3"

    invoke-virtual {p0, p1, v2, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :goto_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/tree/EndPosTable;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p1

    return p1
.end method

.method public getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 0

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p1

    return p1
.end method

.method public ident()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident(Z)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public ident(Z)Lorg/openjdk/tools/javac/util/Name;
    .locals 5

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    return-object p1

    .line 5
    :cond_0
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ASSERT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 6
    iget p1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v0, "assert.as.identifier"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 8
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    return-object p1

    .line 9
    :cond_1
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ENUM:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v3, :cond_2

    .line 10
    iget p1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v0, "enum.as.identifier"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 12
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    return-object p1

    .line 13
    :cond_2
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->THIS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v3, :cond_4

    .line 14
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowThisIdent:Z

    if-eqz p1, :cond_3

    .line 15
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkTypeAnnotations()V

    .line 16
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    .line 17
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    return-object p1

    .line 18
    :cond_3
    iget p1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v0, "this.as.identifier"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 20
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    return-object p1

    .line 21
    :cond_4
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->UNDERSCORE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v3, :cond_6

    .line 22
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowUnderscoreIdentifier:Z

    const-string v1, "underscore.as.identifier"

    if-eqz p1, :cond_5

    .line 23
    iget p1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->warning(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 24
    :cond_5
    iget p1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    new-array v0, v4, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 25
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    return-object p1

    .line 27
    :cond_6
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    if-eqz p1, :cond_7

    .line 28
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 29
    :cond_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->error:Lorg/openjdk/tools/javac/util/Name;

    return-object p1
.end method

.method public illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public illegal(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    .line 2
    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "illegal.start.of.expr"

    new-array v1, v1, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    const-string v0, "illegal.start.of.type"

    new-array v1, v1, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    return-object p1
.end method

.method public implicitParameter()Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    const-wide v1, 0x200000000L

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclaratorId(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0
.end method

.method public implicitParameters(Z)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_1

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ARROW:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->implicitParameter()Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->implicitParameter()Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public importDeclaration()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->STATIC:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->STAR:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v6, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->asterisk:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3, v2, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v3, v4, :cond_1

    :goto_1
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Import(Lorg/openjdk/tools/javac/tree/JCTree;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    return-object v0
.end method

.method public innerCreator(ILorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArguments(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v1

    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    :cond_1
    invoke-virtual {p0, p1, p3, p2, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->classCreatorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    move-result-object p1

    return-object p1
.end method

.method public interfaceDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->INTERFACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeParametersOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EXTENDS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :cond_0
    move-object v7, v1

    const/4 v1, 0x1

    invoke-virtual {p0, v4, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceBody(Lorg/openjdk/tools/javac/util/Name;Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->attach(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    return-object p1
.end method

.method public isUnboundMemberRef()Z
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    move v2, v1

    move v3, v2

    :goto_0
    sget-object v4, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eq v0, v4, :cond_6

    const/16 v4, 0x31

    if-eq v0, v4, :cond_6

    const/16 v4, 0x4d

    if-eq v0, v4, :cond_6

    const/16 v4, 0x1f

    if-eq v0, v4, :cond_6

    const/16 v4, 0x20

    if-eq v0, v4, :cond_6

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    return v1

    :pswitch_0
    add-int/lit8 v2, v2, -0x1

    :pswitch_1
    add-int/lit8 v2, v2, -0x1

    :pswitch_2
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    add-int/2addr v3, v5

    invoke-interface {v0, v3}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v0, v2, :cond_0

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v0, v2, :cond_0

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLCOL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v2, :cond_1

    :cond_0
    move v1, v5

    :cond_1
    return v1

    :pswitch_3
    move v0, v1

    :goto_1
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v4, v3}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v6, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v6, v4

    const/4 v6, 0x6

    if-eq v4, v6, :cond_5

    const/16 v6, 0x4a

    if-eq v4, v6, :cond_3

    const/16 v6, 0x54

    if-eq v4, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_4

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v1

    :pswitch_4
    add-int/lit8 v2, v2, 0x1

    :cond_6
    :goto_3
    :pswitch_5
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    add-int/2addr v3, v5

    invoke-interface {v0, v3}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x49
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x55
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isZero(Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    aget-char v0, p1, v2

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    const/16 v3, 0x78

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    :goto_0
    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    aget-char v4, p1, v1

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    array-length v4, p1

    if-ge v1, v4, :cond_5

    aget-char p1, p1, v1

    invoke-static {p1, v0}, Ljava/lang/Character;->digit(CI)I

    move-result p1

    if-gtz p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :cond_5
    :goto_2
    return v2
.end method

.method public lambdaExpression(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;I)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Lambda(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method public lambdaExpressionOrStatement(ZZI)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->formalParameters(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->implicitParameters(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->lambdaExpressionOrStatementRest(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public lambdaExpressionOrStatementRest(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;I)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkLambda()V

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ARROW:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->lambdaStatement(Lorg/openjdk/tools/javac/util/List;II)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->lambdaExpression(Lorg/openjdk/tools/javac/util/List;I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public lambdaStatement(Lorg/openjdk/tools/javac/util/List;II)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;II)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p3, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->block(IJ)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object p3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Lambda(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method public literal(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->literal(Lorg/openjdk/tools/javac/util/Name;I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public literal(Lorg/openjdk/tools/javac/util/Name;I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 10

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->errorTree:Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    .line 3
    sget-object v1, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "int.number.too.large"

    const-string v3, "fp.number.too.large"

    const-string v4, "fp.number.too.small"

    const-string v5, "0x"

    const/16 v6, 0x10

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    .line 4
    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    goto/16 :goto_4

    .line 5
    :pswitch_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto/16 :goto_4

    .line 6
    :pswitch_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOOLEAN:Lorg/openjdk/tools/javac/code/TypeTag;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->TRUE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    const/4 v7, 0x1

    .line 7
    :cond_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 8
    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto/16 :goto_4

    .line 9
    :pswitch_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    .line 10
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto/16 :goto_4

    .line 12
    :pswitch_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->CHAR:Lorg/openjdk/tools/javac/code/TypeTag;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    .line 13
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 14
    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto/16 :goto_4

    .line 15
    :pswitch_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->radix()I

    move-result p1

    if-ne p1, v6, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    .line 16
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    .line 17
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->stringVal()Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 20
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmpl-double v2, v5, v8

    if-nez v2, :cond_2

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->isZero(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 21
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v4, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 22
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double p1, v4, v8

    if-nez p1, :cond_3

    .line 23
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v3, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 24
    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->DOUBLE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto/16 :goto_4

    .line 25
    :pswitch_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->radix()I

    move-result p1

    if-ne p1, v6, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    .line 26
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    .line 27
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->stringVal()Ljava/lang/String;

    move-result-object p1

    .line 28
    :goto_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 29
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 30
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-nez v2, :cond_5

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->isZero(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 31
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v4, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 32
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float p1, p1, v2

    if-nez p1, :cond_6

    .line 33
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v3, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 34
    :cond_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->FLOAT:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    goto :goto_4

    .line 35
    :pswitch_6
    :try_start_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->LONG:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 36
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->strval(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->radix()I

    move-result v5

    invoke-static {v4, v5}, Lorg/openjdk/tools/javac/util/Convert;->string2long(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 37
    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 38
    :catch_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->strval(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 39
    :pswitch_7
    :try_start_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->INT:Lorg/openjdk/tools/javac/code/TypeTag;

    .line 40
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->strval(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->radix()I

    move-result v5

    invoke-static {v4, v5}, Lorg/openjdk/tools/javac/util/Convert;->string2int(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 41
    invoke-virtual {v1, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 42
    :catch_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->strval(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :goto_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->errorTree:Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    if-ne v0, p1, :cond_7

    .line 44
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous()Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    .line 45
    :cond_7
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    .line 46
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public memberReferenceSuffix(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    .line 4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkMethodReferences()V

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    .line 6
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArguments(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->NEW:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_1

    .line 9
    sget-object v0, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->NEW:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    .line 10
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    .line 11
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_1

    .line 12
    :cond_1
    sget-object v0, Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;->INVOKE:Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;

    .line 13
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    .line 14
    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Reference(Lorg/openjdk/source/tree/MemberReferenceTree$ReferenceMode;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method public memberReferenceSuffix(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    .line 2
    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLCOL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->memberReferenceSuffix(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1
.end method

.method public merge(Lorg/openjdk/tools/javac/util/ListBuffer;Lorg/openjdk/tools/javac/util/ListBuffer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;",
            ">;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    return v1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/openjdk/tools/javac/parser/b;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/parser/b;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Literal(Lorg/openjdk/tools/javac/code/TypeTag;Ljava/lang/Object;)Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->getEndPosition(Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    return v2
.end method

.method public methodDeclaratorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;ZZLorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;ZZ",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p2

    if-eqz p6, :cond_1

    iget-wide v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkStaticInterfaceMethods()V

    :cond_0
    iget-wide v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v6, 0x2

    and-long/2addr v2, v6

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkPrivateInterfaceMethods()V

    :cond_1
    iget-object v12, v1, Lorg/openjdk/tools/javac/parser/JavacParser;->receiverParam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v1, Lorg/openjdk/tools/javac/parser/JavacParser;->receiverParam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->formalParameters()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    if-nez p7, :cond_2

    move-object/from16 v3, p3

    invoke-direct {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    :goto_0
    move-object v5, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_2
    move-object/from16 v3, p3

    goto :goto_0

    :goto_1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iget-object v4, v1, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->THROWS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const/4 v7, 0x1

    if-ne v4, v6, :cond_3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0, v7}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualidentList(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    :cond_3
    move-object v9, v3

    iget-object v3, v1, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->block()Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v3

    move-object v11, v2

    move-object v10, v3

    goto :goto_3

    :cond_4
    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DEFAULT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v6, :cond_5

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationValue()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v2

    :goto_2
    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v6, v1, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v6, v6, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v10, v1, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    iget v10, v10, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->errorEndPos:I

    if-gt v6, v10, :cond_6

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v7, v6, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    iget-object v6, v1, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v6, v6, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v6, v4, :cond_6

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->block()Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    :cond_6
    move-object v10, v2

    move-object v11, v3

    :goto_3
    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    move v3, p1

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    iget-object v7, v1, Lorg/openjdk/tools/javac/parser/JavacParser;->receiverParam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-object v3, p2

    move-object/from16 v4, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->MethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    move-object/from16 v2, p8

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->attach(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v12, v1, Lorg/openjdk/tools/javac/parser/JavacParser;->receiverParam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    return-object v0

    :goto_4
    iput-object v12, v1, Lorg/openjdk/tools/javac/parser/JavacParser;->receiverParam:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    throw v0
.end method

.method public modifiersOpt()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->modifiersOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    return-object v0
.end method

.method public modifiersOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;
    .locals 12

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const-wide/16 v1, 0x0

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    move-wide v3, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    .line 5
    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 6
    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    .line 7
    :goto_0
    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->deprecatedFlag()Z

    move-result v5

    if-eqz v5, :cond_2

    const-wide/32 v5, 0x20000

    :cond_1
    :goto_1
    or-long/2addr v3, v5

    .line 8
    :cond_2
    sget-object v5, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v6, v6, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v5, v6

    const/4 v7, 0x2

    const-wide/16 v8, 0x2000

    if-eq v6, v7, :cond_c

    const/4 v7, 0x3

    if-eq v6, v7, :cond_b

    const/4 v7, 0x4

    if-eq v6, v7, :cond_a

    const/4 v7, 0x5

    if-eq v6, v7, :cond_9

    const/16 v7, 0x22

    if-eq v6, v7, :cond_8

    const/16 v7, 0x5d

    if-eq v6, v7, :cond_7

    packed-switch v6, :pswitch_data_0

    .line 9
    iget-object v6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v6, v6, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0x4000

    :goto_2
    or-long/2addr v3, v5

    goto :goto_3

    :cond_4
    const-wide/16 v5, 0x200

    goto :goto_2

    :goto_3
    const-wide v5, 0x80000002dffL

    and-long/2addr v5, v3

    cmp-long v1, v5, v1

    const/4 v2, -0x1

    if-nez v1, :cond_5

    .line 10
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    move p1, v2

    .line 11
    :cond_5
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v3, v4, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    if-eq p1, v2, :cond_6

    .line 12
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {p1}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    :cond_6
    return-object v0

    :pswitch_0
    const-wide/16 v5, 0x800

    goto :goto_4

    :pswitch_1
    const-wide/16 v5, 0x20

    goto :goto_4

    :pswitch_2
    const-wide/16 v5, 0x40

    goto :goto_4

    :pswitch_3
    const-wide/16 v5, 0x100

    goto :goto_4

    :pswitch_4
    const-wide/16 v5, 0x80

    goto :goto_4

    :pswitch_5
    const-wide/16 v5, 0x8

    goto :goto_4

    :pswitch_6
    const-wide/16 v5, 0x4

    goto :goto_4

    :pswitch_7
    const-wide/16 v5, 0x2

    goto :goto_4

    .line 13
    :cond_7
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    move-wide v5, v1

    goto :goto_4

    .line 14
    :cond_8
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkDefaultMethods()V

    const-wide v5, 0x80000000000L

    goto :goto_4

    :cond_9
    move-wide v5, v8

    goto :goto_4

    :cond_a
    const-wide/16 v5, 0x400

    goto :goto_4

    :cond_b
    const-wide/16 v5, 0x10

    goto :goto_4

    :cond_c
    const-wide/16 v5, 0x1

    :goto_4
    and-long v10, v3, v5

    cmp-long v7, v10, v1

    if-eqz v7, :cond_d

    .line 15
    iget-object v7, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v7, v7, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "repeated.modifier"

    invoke-virtual {p0, v7, v11, v10}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :cond_d
    iget-object v7, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v7, v7, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    .line 17
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    cmp-long v8, v5, v8

    if-nez v8, :cond_1

    .line 18
    iget-object v8, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v8, v8, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v9, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->INTERFACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v8, v9, :cond_1

    .line 19
    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v7, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotation(ILorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    move-result-object v5

    cmp-long v6, v3, v1

    if-nez v6, :cond_e

    .line 20
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 21
    iget p1, v5, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    .line 22
    :cond_e
    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-wide v5, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public moduleDecl(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/source/tree/ModuleTree$ModuleKind;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowModules:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->source:Lorg/openjdk/tools/javac/code/Source;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Source;->name:Ljava/lang/String;

    invoke-static {v2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ModulesNotSupportedInSource(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowModules:Z

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->moduleDirectiveList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/source/tree/ModuleTree$ModuleKind;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    invoke-virtual {p0, p1, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->attach(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    return-object p1
.end method

.method public moduleDirectiveList()Lorg/openjdk/tools/javac/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_e

    iget v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->requires:Lorg/openjdk/tools/javac/util/Name;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v4, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    move v1, v6

    move v3, v1

    :goto_1
    sget-object v4, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v7, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v7, v7, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v4, v4, v7

    const/16 v7, 0xf

    if-eq v4, v7, :cond_3

    const/16 v7, 0x20

    if-eq v4, v7, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    iget-object v7, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v7, v7, Lorg/openjdk/tools/javac/util/Names;->transitive:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v7, :cond_2

    if-nez v3, :cond_2

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v4, v5}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v7, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v4, v7, :cond_2

    sget-object v7, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v4, v7, :cond_1

    goto :goto_2

    :cond_1
    move v3, v5

    goto :goto_3

    :cond_2
    :goto_2
    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v3, v1, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Requires(ZZLorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v4, "repeated.modifier"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v4, v7}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    move v1, v5

    :goto_3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->exports:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v4, :cond_a

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->opens:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v4, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->provides:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v4, :cond_8

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v3, :cond_7

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->with:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_7

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualidentList(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Provides(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->with:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "expected"

    invoke-virtual {p0, v1, v3, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v6, v6, v6, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/Names;->uses:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v3, :cond_9

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Uses(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUses;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    const-string v1, "invalid.module.directive"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v1, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_a
    :goto_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->exports:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v4, :cond_b

    goto :goto_5

    :cond_b
    move v5, v6

    :goto_5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v7, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v7, v3, :cond_c

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->to:Lorg/openjdk/tools/javac/util/Name;

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualidentList(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    :goto_6
    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    if-eqz v5, :cond_d

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exports(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExports;

    move-result-object v1

    goto :goto_7

    :cond_d
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Opens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;

    move-result-object v1

    :goto_7
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto/16 :goto_0

    :cond_e
    :goto_8
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public moreStatementExpressions(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "-",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;",
            ">;>(I",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkExprStat(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object p2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p1, p2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkExprStat(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    return-object p3
.end method

.method public newDocCommentTable(ZLorg/openjdk/tools/javac/parser/ParserFactory;)Lorg/openjdk/tools/javac/tree/DocCommentTable;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;-><init>(Lorg/openjdk/tools/javac/parser/ParserFactory;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public newEndPosTable(Z)Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;
    .locals 0

    if-eqz p1, :cond_0

    new-instance p1, Lorg/openjdk/tools/javac/parser/JavacParser$SimpleEndPosTable;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/parser/JavacParser$SimpleEndPosTable;-><init>(Lorg/openjdk/tools/javac/parser/JavacParser;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/parser/JavacParser$EmptyEndPosTable;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/parser/JavacParser$EmptyEndPosTable;-><init>(Lorg/openjdk/tools/javac/parser/JavacParser;)V

    :goto_0
    return-object p1
.end method

.method public nextToken()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/parser/Lexer;->nextToken()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/parser/Lexer;->token()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    return-void
.end method

.method public optFinal(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;
    .locals 5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->modifiersOpt()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    iget-wide v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/32 v3, -0x20011

    and-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkNoMods(J)V

    iget-wide v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    or-long/2addr p1, v1

    iput-wide p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    return-object v0
.end method

.method public parExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Parens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object v0
.end method

.method public parseCompilationUnit()Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v3, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->MONKEYS_AT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->modifiersOpt()Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    iget-object v4, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v6, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v7, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->PACKAGE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const/4 v9, 0x0

    if-ne v6, v7, :cond_2

    iget v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    if-eqz v3, :cond_1

    iget-wide v6, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    invoke-virtual {v0, v6, v7}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkNoMods(J)V

    iget-object v6, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    move-object v3, v5

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {v0, v9}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v7

    sget-object v10, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v0, v10}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v10, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v10, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->PackageDecl(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object v4

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v1, v6}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comment(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->attach(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    iget-object v6, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v6, v6, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v0, v4, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 v4, 0x1

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    move v4, v9

    move v6, v4

    :goto_1
    move v10, v9

    const/4 v7, 0x1

    const/4 v11, 0x1

    :goto_2
    iget-object v12, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v13, v12, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v14, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v13, v14, :cond_e

    iget v12, v12, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v13, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    iget v13, v13, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->errorEndPos:I

    if-gt v12, v13, :cond_3

    invoke-virtual {v0, v7, v9, v9, v9}, Lorg/openjdk/tools/javac/parser/JavacParser;->skip(ZZZZ)V

    iget-object v12, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v12, v12, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v12, v14, :cond_3

    goto/16 :goto_4

    :cond_3
    if-eqz v7, :cond_4

    if-nez v3, :cond_4

    iget-object v12, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v12, v12, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v13, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IMPORT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v12, v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->importDeclaration()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v10

    invoke-virtual {v2, v10}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    iget-object v12, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    sget-object v13, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v12, v13}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comment(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v12

    if-eqz v11, :cond_5

    if-nez v10, :cond_5

    if-nez v4, :cond_5

    invoke-virtual {v1, v13}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comment(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v12

    const/4 v6, 0x1

    :cond_5
    if-nez v3, :cond_6

    iget-object v13, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v13, v13, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v14, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v13, v14, :cond_7

    :cond_6
    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->modifiersOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v3

    :cond_7
    if-eqz v11, :cond_b

    iget-object v11, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v13, v11, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v14, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->IDENTIFIER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v13, v14, :cond_b

    sget-object v13, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;->STRONG:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    invoke-virtual {v11}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v11

    iget-object v15, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v15, v15, Lorg/openjdk/tools/javac/util/Names;->open:Lorg/openjdk/tools/javac/util/Name;

    if-ne v11, v15, :cond_8

    sget-object v11, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;->OPEN:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_3

    :cond_8
    move-object v11, v13

    :goto_3
    iget-object v15, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v8, v15, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v8, v14, :cond_a

    invoke-virtual {v15}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v8

    iget-object v14, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v14, v14, Lorg/openjdk/tools/javac/util/Names;->module:Lorg/openjdk/tools/javac/util/Name;

    if-ne v8, v14, :cond_a

    if-eqz v3, :cond_9

    iget-wide v6, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/32 v8, -0x20001

    and-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkNoMods(J)V

    :cond_9
    invoke-virtual {v0, v3, v11, v12}, Lorg/openjdk/tools/javac/parser/JavacParser;->moduleDecl(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/source/tree/ModuleTree$ModuleKind;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 v8, 0x1

    goto :goto_5

    :cond_a
    if-eq v11, v13, :cond_b

    iget-object v8, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v8, v8, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v11, "expected.module"

    new-array v13, v9, [Ljava/lang/Object;

    invoke-virtual {v0, v8, v11, v13}, Lorg/openjdk/tools/javac/parser/JavacParser;->reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    invoke-virtual {v0, v3, v12}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v3

    instance-of v8, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    if-eqz v8, :cond_c

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_c
    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    instance-of v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v3, :cond_d

    move v7, v9

    :cond_d
    move-object v3, v5

    move v11, v9

    goto/16 :goto_2

    :cond_e
    :goto_4
    move v8, v6

    :goto_5
    iget-object v3, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v4, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TopLevel(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v3

    if-nez v8, :cond_f

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;->JAVADOC:Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->comment(Lorg/openjdk/tools/javac/parser/Tokens$Comment$CommentStyle;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->attach(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    :cond_f
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v1

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {v0, v3, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    :cond_10
    iget-boolean v1, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->keepDocComments:Z

    if-eqz v1, :cond_11

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    iput-object v1, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    :cond_11
    iget-boolean v1, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->keepLineMap:Z

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/parser/Lexer;->getLineMap()Lorg/openjdk/tools/javac/util/Position$LineMap;

    move-result-object v1

    iput-object v1, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->lineMap:Lorg/openjdk/tools/javac/util/Position$LineMap;

    :cond_12
    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    invoke-virtual {v1, v5}, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->setParser(Lorg/openjdk/tools/javac/parser/JavacParser;)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    iput-object v1, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lorg/openjdk/tools/javac/tree/EndPosTable;

    return-object v3
.end method

.method public parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public parseSimpleStatement()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v2, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    const/16 v3, 0xb

    if-eq v0, v3, :cond_11

    const/16 v3, 0x13

    if-eq v0, v3, :cond_10

    const/16 v3, 0x33

    const/4 v4, 0x0

    if-eq v0, v3, :cond_e

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/Assert;->error()V

    return-object v4

    :pswitch_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v1, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;->CATCH_CLAUSE:Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

    const-string v2, "catch.without.try"

    invoke-direct {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->doRecover(ILorg/openjdk/tools/javac/parser/JavacParser$ErrorRecoveryAction;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;->BLOCK_STMT:Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

    const-string v2, "finally.without.try"

    invoke-direct {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->doRecover(ILorg/openjdk/tools/javac/parser/JavacParser$ErrorRecoveryAction;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;->BLOCK_STMT:Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

    const-string v2, "else.without.if"

    invoke-direct {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->doRecover(ILorg/openjdk/tools/javac/parser/JavacParser$ErrorRecoveryAction;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {v0, v2}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Continue(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {v0, v2}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Break(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Throw(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;

    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    :goto_0
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    return-object v0

    :pswitch_7
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->switchBlockStatementGroups()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Switch(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    return-object v0

    :pswitch_8
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkTryWithResources()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->resources()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    :cond_3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->block()Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CATCH:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v5, v6, :cond_6

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->FINALLY:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-boolean v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowTWR:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    const-string v5, "try.without.catch.finally.or.resource.decls"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v5, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    const-string v5, "try.without.catch.or.finally"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v5, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CATCH:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v6, :cond_7

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->catchClause()Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_7
    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->FINALLY:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v6, :cond_8

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->block()Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v4

    :cond_8
    :goto_2
    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Try(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    move-result-object v0

    return-object v0

    :pswitch_9
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseStatementAsBlock()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->WHILE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->DoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;

    return-object v0

    :pswitch_a
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseStatementAsBlock()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->WhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;

    move-result-object v0

    return-object v0

    :pswitch_b
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v3, :cond_9

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_3

    :cond_9
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->forInit()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_3
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v5

    if-ne v5, v2, :cond_a

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    sget-object v5, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v5, v2

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v5, :cond_a

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLON:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v6, :cond_a

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseStatementAsBlock()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    :goto_4
    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_c

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_5

    :cond_c
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->forUpdate()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    :goto_5
    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseStatementAsBlock()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v3

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ForLoop(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;

    move-result-object v0

    return-object v0

    :pswitch_c
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseStatementAsBlock()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ELSE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v5, :cond_d

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseStatementAsBlock()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v4

    :cond_d
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->If(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCIf;

    move-result-object v0

    return-object v0

    :cond_e
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLON:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_f

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    :cond_f
    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assert(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;

    return-object v0

    :cond_10
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->block()Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Synchronized(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;

    move-result-object v0

    return-object v0

    :cond_11
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->block()Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Skip()Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parseStatement()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseStatementAsBlock()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object v0

    return-object v0
.end method

.method public parseStatementAsBlock()Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->blockStatement()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous()Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    const-string v2, "illegal.start.of.stmt"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    sget-object v4, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "variable.not.allowed"

    goto :goto_0

    :cond_2
    const-string v4, "class.not.allowed"

    :goto_0
    if-eqz v4, :cond_3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v4, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v4, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Exec(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    return-object v0

    :cond_3
    return-object v2
.end method

.method public parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public parseType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->unannotatedType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->insertAnnotationsToMostInner(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {p2, p1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public peekToken(ILorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;)Z"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {p2, v0}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    add-int/lit8 p1, p1, 0x2

    .line 5
    invoke-interface {p2, p1}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {p3, p1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public peekToken(ILorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;)Z"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {p2, v0}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    add-int/lit8 v0, p1, 0x2

    .line 8
    invoke-interface {p2, v0}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p2

    iget-object p2, p2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {p3, p2}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    add-int/lit8 p1, p1, 0x3

    .line 9
    invoke-interface {p2, p1}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {p4, p1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public varargs peekToken(I[Lorg/openjdk/tools/javac/util/Filter;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;)Z"
        }
    .end annotation

    .line 11
    :cond_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 12
    aget-object v0, p2, p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v1, p1}, Lorg/openjdk/tools/javac/parser/Lexer;->token(I)Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {v0, v1}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public peekToken(Lorg/openjdk/tools/javac/util/Filter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;)Z

    move-result p1

    return p1
.end method

.method public peekToken(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result p1

    return p1
.end method

.method public peekToken(Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(ILorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result p1

    return p1
.end method

.method public varargs peekToken([Lorg/openjdk/tools/javac/util/Filter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/openjdk/tools/javac/util/Filter<",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(I[Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result p1

    return p1
.end method

.method public qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_2

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public qualidentList(Z)Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-direct {p0, v2, v1, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->insertAnnotationsToMostInner(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v2, v1, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->insertAnnotationsToMostInner(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public varargs reportSyntaxError(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$SimpleDiagnosticPosition;-><init>(I)V

    .line 2
    invoke-virtual {p0, v0, p2, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->reportSyntaxError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs reportSyntaxError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 3
    invoke-interface {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getPreferredPosition()I

    move-result v0

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/parser/Lexer;->errPos()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 5
    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v3, :cond_1

    .line 6
    const-string p2, "premature.eof"

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {p1, v0}, Lorg/openjdk/tools/javac/parser/Lexer;->errPos(I)V

    .line 9
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->errorPos:I

    if-ne p1, p2, :cond_4

    .line 10
    iget p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->count:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->count:I

    const/16 p2, 0x32

    if-ge p1, p2, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    goto :goto_1

    .line 11
    :cond_4
    iput v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->count:I

    .line 12
    iput p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->errorPos:I

    :goto_1
    return-void
.end method

.method public resource()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->FINAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const-wide/16 v3, 0x10

    if-eq v0, v2, :cond_3

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->MONKEYS_AT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->lastmode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-interface {v0, v2}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclaratorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkVariableInTryWithResources(I)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v5, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v5, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "try.with.resources.expr.needs.var"

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-object v5

    :cond_3
    :goto_0
    invoke-virtual {p0, v3, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->optFinal(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclaratorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object v0

    return-object v0
.end method

.method public resources()Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->resource()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->last()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->resource()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setErrorEndPos(I)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->setErrorEndPos(I)V

    return-void
.end method

.method public skip(ZZZZ)V
    .locals 2

    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz p4, :cond_0

    return-void

    :pswitch_1
    if-eqz p4, :cond_0

    return-void

    :pswitch_2
    if-eqz p3, :cond_0

    return-void

    :pswitch_3
    if-eqz p2, :cond_0

    return-void

    :pswitch_4
    if-eqz p1, :cond_0

    return-void

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_0

    :pswitch_5
    return-void

    :pswitch_6
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/EndPosTable;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    return-void
.end method

.method public strval(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->stringVal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public superSuffix(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_4

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLCOL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->memberReferenceSuffix(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_2

    :cond_2
    iget p1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArguments(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->argumentsOpt(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->arguments(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public switchBlockStatementGroup()Lorg/openjdk/tools/javac/tree/JCTree$JCCase;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v2, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/16 v2, 0x21

    if-eq v0, v2, :cond_2

    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLON:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->blockStatements()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Case(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    move-result-object v1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLON:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->blockStatements()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Case(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    move-result-object v0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/parser/Lexer;->prevToken()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v1

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    :cond_3
    return-object v0
.end method

.method public switchBlockStatementGroups()Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCase;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v3, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v3, v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_1

    const/16 v3, 0xc

    if-eq v1, v3, :cond_1

    const/16 v3, 0x21

    if-eq v1, v3, :cond_0

    const/16 v3, 0x22

    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->CASE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DEFAULT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    filled-new-array {v1, v3, v4}, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v1

    const-string v3, "expected3"

    invoke-virtual {p0, v2, v3, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->switchBlockStatementGroup()Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public varargs syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;
    .locals 1

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILorg/openjdk/tools/javac/util/List;Ljava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    return-object p1
.end method

.method public varargs syntaxError(ILorg/openjdk/tools/javac/util/List;Ljava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->setErrorEndPos(I)V

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0, p3, p4}, Lorg/openjdk/tools/javac/parser/JavacParser;->reportSyntaxError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    return-object p1
.end method

.method public syntaxError(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;
    .locals 2

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0, p1, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    return-object p1
.end method

.method public syntaxError(Ljava/lang/String;Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;
    .locals 1

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    filled-new-array {p2}, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    return-object p1
.end method

.method public term()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    .line 6
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term1()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    .line 7
    iget v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EQ:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v1, v2, :cond_1

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->PLUSEQ:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->GTGTGTEQ:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gtz v1, :cond_2

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->termRest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public term(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    .line 1
    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    .line 2
    iput p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    .line 3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    .line 4
    iget v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->lastmode:I

    .line 5
    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    return-object p1
.end method

.method public term1()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term2()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->QUES:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v3, :cond_0

    iput v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term1Rest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public term1Rest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->QUES:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLON:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term1()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Conditional(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public term2()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term3()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-static {v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->prec(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    iput v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0, v0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->term2Rest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public term2Rest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 8

    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->newOdStack()[Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->newOpStack()[Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v1

    const/4 v2, 0x0

    aput-object p1, v0, v2

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object p1, Lorg/openjdk/tools/javac/parser/Tokens;->DUMMY:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move v3, v2

    :cond_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-static {v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->prec(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)I

    move-result v4

    if-lt v4, p2, :cond_2

    aput-object p1, v1, v3

    add-int/lit8 v3, v3, 0x1

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v4, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->INSTANCEOF:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term3()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    :goto_0
    aput-object v4, v0, v3

    :goto_1
    if-lez v3, :cond_0

    iget-object v4, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-static {v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->prec(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)I

    move-result v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-static {v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->prec(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)I

    move-result v5

    if-lt v4, v5, :cond_0

    add-int/lit8 v4, v3, -0x1

    iget v5, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    aget-object v6, v0, v4

    aget-object v7, v0, v3

    invoke-direct {p0, v5, p1, v6, v7}, Lorg/openjdk/tools/javac/parser/JavacParser;->makeOp(ILorg/openjdk/tools/javac/parser/Tokens$TokenKind;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    aput-object p1, v0, v4

    add-int/lit8 v3, v3, -0x1

    aget-object p1, v1, v3

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    aget-object p1, v0, v2

    sget-object p2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PLUS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->foldStrings(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    :cond_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->odStackSupply:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->opStackSupply:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public term3()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 11

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgumentsOpt(I)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x9

    const/4 v7, 0x0

    if-eq v3, v4, :cond_16

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_f

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    packed-switch v3, :pswitch_data_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :pswitch_0
    if-nez v2, :cond_2

    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SUB:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v4, :cond_1

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->INTLITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v5, v6, :cond_0

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LONGLITERAL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v6, :cond_1

    :cond_0
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->radix()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->hyphen:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->literal(Lorg/openjdk/tools/javac/util/Name;I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_a

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term3()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-static {v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->unoptag(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Unary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_3

    and-int/lit8 v0, v0, 0xc

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    iput v6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgument()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :pswitch_2
    if-nez v2, :cond_4

    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->literal(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_a

    :cond_4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :pswitch_3
    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_5
    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_7

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v3, :cond_6

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArguments(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    :cond_6
    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->creator(ILorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_0
    move-object v2, v7

    goto/16 :goto_a

    :cond_7
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_8

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->superSuffix(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :pswitch_5
    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_a

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    if-nez v2, :cond_9

    invoke-virtual {p0, v7, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->argumentsOpt(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    :cond_9
    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->arguments(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :pswitch_6
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_b
    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v3, :cond_c

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeIdent(Lorg/openjdk/tools/javac/code/TypeTag;)Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsSuffix(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_a

    :cond_c
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeIdent(Lorg/openjdk/tools/javac/code/TypeTag;)Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    return-object v0

    :pswitch_7
    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_e
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->basicType()Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsSuffix(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_a

    :cond_f
    if-nez v2, :cond_15

    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_15

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->analyzeParens()Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    move-result-object v3

    sget-object v4, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$JavacParser$ParensResult:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v4, v4, v7

    if-eq v4, v1, :cond_12

    if-eq v4, v6, :cond_10

    const/4 v6, 0x3

    if-eq v4, v6, :cond_10

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term3()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {p0, v1, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->term2Rest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->term1Rest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->termRest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Parens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto/16 :goto_a

    :cond_10
    sget-object v4, Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;->EXPLICIT_LAMBDA:Lorg/openjdk/tools/javac/parser/JavacParser$ParensResult;

    if-ne v3, v4, :cond_11

    move v5, v1

    :cond_11
    invoke-virtual {p0, v1, v5, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->lambdaExpressionOrStatement(ZZI)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_a

    :cond_12
    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iput v6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term3()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    :goto_1
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->AMP:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v4, v5, :cond_13

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkIntersectionTypesInCast()V

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term3()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    goto :goto_1

    :cond_13
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v4

    if-le v4, v1, :cond_14

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeIntersection(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_14
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RPAREN:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term3()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeCast(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    move-result-object v0

    return-object v0

    :cond_15
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_16
    :pswitch_8
    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_17
    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_18

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ARROW:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->peekToken(Lorg/openjdk/tools/javac/util/Filter;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0, v5, v5, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->lambdaExpressionOrStatement(ZZI)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_9

    :cond_18
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_19

    iget-object v8, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v8, v8, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v9, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v8, v9, :cond_19

    sget-object v9, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->ELLIPSIS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v8, v9, :cond_19

    iget-object v0, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_19
    sget-object v8, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v9, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v9, v9, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v8, v9

    const/16 v10, 0x15

    if-eq v9, v10, :cond_28

    packed-switch v9, :pswitch_data_3

    goto/16 :goto_9

    :pswitch_9
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->permitTypeAnnotationsPushBack:Z

    if-eqz v1, :cond_1a

    iput-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsPushedBack:Lorg/openjdk/tools/javac/util/List;

    goto/16 :goto_9

    :cond_1a
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto/16 :goto_9

    :pswitch_a
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v4, v2, -0x5

    iput v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgumentsOpt(I)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_21

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v8, v2

    const/4 v8, 0x7

    if-eq v2, v8, :cond_1f

    packed-switch v2, :pswitch_data_4

    goto/16 :goto_5

    :pswitch_b
    if-eqz v4, :cond_1b

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_1b
    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_1c

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArguments(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    :cond_1c
    invoke-virtual {p0, v1, v4, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->innerCreator(ILorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :cond_1d
    :goto_3
    move-object v2, v7

    goto/16 :goto_9

    :pswitch_c
    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v4, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->superSuffix(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_3

    :pswitch_d
    if-eqz v4, :cond_1e

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_1e
    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    :goto_4
    move-object v2, v4

    goto/16 :goto_9

    :cond_1f
    if-eqz v4, :cond_20

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_20
    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_4

    :cond_21
    :goto_5
    iget v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v2, v6

    if-eqz v2, :cond_22

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v8, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->MONKEYS_AT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v8, :cond_22

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_6

    :cond_22
    move-object v2, v7

    :goto_6
    iget-object v8, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v8, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v8

    invoke-virtual {v3, v0, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v8, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v8, v8, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v3, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_23
    move-object v2, v4

    goto/16 :goto_2

    :pswitch_e
    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v3, v1

    if-eqz v3, :cond_2c

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0, v2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->arguments(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object v0

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v0, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v6, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v6, :cond_25

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_24
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsSuffix(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto/16 :goto_9

    :cond_25
    iget v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_27

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_26

    iget-object v0, v4, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :cond_26
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Indexed(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_27
    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    goto/16 :goto_9

    :cond_28
    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v3, v6

    if-nez v3, :cond_2c

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->isUnboundMemberRef()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgument()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_7
    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v5, v5, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v7, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v5, v7, :cond_29

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgument()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_7

    :cond_29
    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->GT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v5, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_8
    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v4, :cond_2a

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iput v6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgumentsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_8

    :cond_2a
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLCOL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v3, v4, :cond_2b

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :cond_2b
    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->term3Rest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_2c
    :goto_9
    if-eqz v2, :cond_2d

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_2d
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgumentsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_a

    :cond_2e
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term3()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    iget v7, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v7, v6

    if-nez v7, :cond_32

    sget-object v7, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v1, :cond_31

    if-eq v7, v6, :cond_2f

    iget-object v0, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_2f
    move-object v0, v4

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_class:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v1, :cond_30

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_30
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v2, "no.annotations.on.dot.class"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_31
    move-object v1, v4

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v4, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v3, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iput-object v0, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v0, v1

    goto :goto_a

    :cond_32
    invoke-direct {p0, v4, v3, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->insertAnnotationsToMostInner(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_a
    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->term3Rest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_33
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Expected type annotations, but found none!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x49
        :pswitch_f
        :pswitch_e
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public term3Rest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;)",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v2, v3, :cond_6

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_4

    iput v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v3, v3, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLCOL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_1

    iput v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_2
    return-object p1

    :cond_3
    iput v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    :cond_4
    iget v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v1, v5

    if-eqz v1, :cond_5

    iput v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Indexed(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_5
    sget-object v0, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->RBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->DOT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_d

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgumentsOpt(I)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SUPER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const/4 v6, 0x0

    if-ne v2, v3, :cond_7

    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_7

    iput v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->arguments(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p1

    :goto_1
    move-object p2, v6

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->NEW:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_a

    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_a

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_8
    iput v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget v0, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_9

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArguments(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    :cond_9
    invoke-virtual {p0, v0, p2, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->innerCreator(ILorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_1

    :cond_a
    iget v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v1, v4

    if-eqz v1, :cond_b

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->MONKEYS_AT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v1, :cond_b

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_2

    :cond_b
    move-object v1, v6

    :goto_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident(Z)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_c
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgumentsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->argumentsOpt(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto :goto_1

    :cond_d
    iget v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v3, v5

    if-eqz v3, :cond_f

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COLCOL:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_f

    iput v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    if-eqz p2, :cond_e

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_e
    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->memberReferenceSuffix(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_11

    iget-boolean p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->permitTypeAnnotationsPushBack:Z

    if-eqz p2, :cond_10

    iput-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsPushedBack:Lorg/openjdk/tools/javac/util/List;

    goto :goto_3

    :cond_10
    iget-object p1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    return-object p1

    :cond_11
    :goto_3
    iget-object p2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, p2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->PLUSPLUS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v0, v1, :cond_12

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SUBSUB:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v2, :cond_14

    :cond_12
    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_14

    iput v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget p2, p2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_13

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POSTINC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    goto :goto_4

    :cond_13
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->POSTDEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    :goto_4
    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Unary(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_3

    :cond_14
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1
.end method

.method public termRest(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    return-object p1

    :pswitch_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-static {v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->optag(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    invoke-virtual {v2, v0, p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assignop(Lorg/openjdk/tools/javac/tree/JCTree$Tag;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;

    move-result-object p1

    return-object p1

    :pswitch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iput v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Assign(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->endPosTable:Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser$AbstractEndPosTable;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public token()Lorg/openjdk/tools/javac/parser/Tokens$Token;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    return-object v0
.end method

.method public typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPE_ANNOTATION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->annotationsOpt(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public typeArgument()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 7

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->QUES:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0

    :cond_0
    iget v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EXTENDS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/BoundKind;->EXTENDS:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeBoundKind(Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Wildcard(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v1

    goto/16 :goto_0

    :cond_1
    sget-object v4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SUPER:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/BoundKind;->SUPER:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeBoundKind(Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->to(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Wildcard(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v1

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->LAX_IDENTIFIER:Lorg/openjdk/tools/javac/util/Filter;

    invoke-interface {v5, v2}, Lorg/openjdk/tools/javac/util/Filter;->accepts(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    sget-object v6, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeBoundKind(Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v2

    iget-object v6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Wildcard(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v6, v6, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v5

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v6, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v6, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-static {v2, v5}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->GT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "expected3"

    invoke-virtual {p0, v1, v3, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->reportSyntaxError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/BoundKind;->UNBOUND:Lorg/openjdk/tools/javac/code/BoundKind;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeBoundKind(Lorg/openjdk/tools/javac/code/BoundKind;)Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;

    iget-object v3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    invoke-virtual {v1, v2, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Wildcard(Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    iget v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->AnnotatedType(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_4
    return-object v1
.end method

.method public typeArguments(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;
    .locals 2

    .line 19
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    .line 20
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArguments(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 21
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    return-object p1
.end method

.method public typeArguments(Z)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    const-string v3, "expected"

    if-ne v1, v2, :cond_5

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 3
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->GT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->checkDiamond()V

    .line 5
    iget p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    .line 6
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 7
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 9
    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgument()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 10
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_3

    .line 11
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    .line 12
    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgument()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 13
    :cond_3
    sget-object v1, Lorg/openjdk/tools/javac/parser/JavacParser$1;->$SwitchMap$com$sun$tools$javac$parser$Tokens$TokenKind:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x47

    if-eq v0, v1, :cond_4

    const/16 v1, 0x48

    if-eq v0, v1, :cond_4

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 14
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->GT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    filled-new-array {v1}, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v1

    invoke-virtual {p0, v0, v3, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_3

    .line 15
    :pswitch_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_3

    .line 16
    :cond_4
    :pswitch_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->S:Lorg/openjdk/tools/javac/parser/Lexer;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/parser/Lexer;->split()Lorg/openjdk/tools/javac/parser/Tokens$Token;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    .line 17
    :goto_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    .line 18
    :cond_5
    iget p1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    filled-new-array {v2}, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public typeArgumentsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArguments(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public typeArgumentsOpt()Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArgumentsOpt(I)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public typeArgumentsOpt(I)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_2

    .line 6
    iget v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 7
    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->illegal()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    .line 8
    :cond_1
    iput p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->mode:I

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeArguments(Z)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public typeDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    if-nez p1, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->SEMI:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Skip()Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->modifiersOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->classOrInterfaceOrEnumDeclaration(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    move-result-object p1

    return-object p1
.end method

.method public typeList()Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public typeParameter()Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeAnnotationsOpt()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EXTENDS:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v4, v4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v5, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->AMP:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v4, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TypeParameter(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    return-object v0
.end method

.method public typeParametersOpt()Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v1, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeParameter()Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->typeParameter()Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->GT:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->accept(Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public unannotatedType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->term(I)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    return-object v0
.end method

.method public variableDeclarator(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;ZLorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclaratorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    return-object p1
.end method

.method public variableDeclaratorId(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclaratorId(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    return-object p1
.end method

.method public variableDeclaratorId(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 9

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-wide/16 v2, 0x0

    const-wide v4, 0x400000000L

    const/4 v6, 0x0

    if-eqz p3, :cond_0

    .line 3
    iget-object v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v7, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->UNDERSCORE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v0, v7, :cond_0

    .line 4
    iget-object p3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v0, "underscore.as.identifier.in.lambda"

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {p3, v1, v0, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object p3, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/parser/Tokens$Token;->name()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p3

    .line 6
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    goto :goto_0

    .line 7
    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->allowThisIdent:Z

    if-eqz v0, :cond_4

    if-nez p3, :cond_4

    .line 8
    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/parser/JavacParser;->qualident(Z)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p3

    .line 9
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v7, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v7, v7, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v7, :cond_1

    move-object p3, v0

    goto :goto_0

    .line 10
    :cond_1
    iget-wide v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v4, v7

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v2, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v3, "varargs.and.receiver"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_3

    .line 13
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v3, "array.and.receiver"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ReceiverVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    return-object p1

    .line 15
    :cond_4
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p3

    .line 16
    :goto_0
    iget-wide v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    and-long/2addr v4, v7

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v2, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v3, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACKET:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v2, v3, :cond_5

    .line 17
    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v3, "varargs.and.old.array.syntax"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 18
    :cond_5
    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p2

    .line 19
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p3, p2, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    return-object p1
.end method

.method public variableDeclaratorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 3

    invoke-direct {p0, p3}, Lorg/openjdk/tools/javac/parser/JavacParser;->bracketsOpt(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->EQ:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableInitializer()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p5

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_1

    iget p5, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const-string v0, "expected"

    filled-new-array {v2}, [Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    move-result-object v1

    invoke-virtual {p0, p5, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->syntaxError(ILjava/lang/String;[Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;)Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    :cond_1
    const/4 p5, 0x0

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->F:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object p1

    invoke-virtual {p1, p2, p4, p3, p5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/JavacParser;->toP(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, p1, p6}, Lorg/openjdk/tools/javac/parser/JavacParser;->attach(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    return-object p1
.end method

.method public variableDeclarators(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "-",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;>(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget v2, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->ident()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclaratorsRest(ILorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/parser/Tokens$Comment;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p1

    return-object p1
.end method

.method public variableDeclaratorsRest(ILorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/parser/Tokens$Comment;Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "-",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;",
            ">;>(I",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Z",
            "Lorg/openjdk/tools/javac/parser/Tokens$Comment;",
            "TT;)TT;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclaratorRest(ILorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;ZLorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    invoke-virtual {p7, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object p4, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->COMMA:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne p1, p4, :cond_0

    invoke-virtual {p7}, Lorg/openjdk/tools/javac/util/ListBuffer;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p4, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget p4, p4, Lorg/openjdk/tools/javac/parser/Tokens$Token;->endPos:I

    invoke-virtual {p0, p1, p4}, Lorg/openjdk/tools/javac/parser/JavacParser;->storeEnd(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->nextToken()V

    invoke-virtual {p0, p2, p3, p5, p6}, Lorg/openjdk/tools/javac/parser/JavacParser;->variableDeclarator(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;ZLorg/openjdk/tools/javac/parser/Tokens$Comment;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    invoke-virtual {p7, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_0
    return-object p7
.end method

.method public variableInitializer()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->token:Lorg/openjdk/tools/javac/parser/Tokens$Token;

    iget-object v1, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->kind:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    sget-object v2, Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;->LBRACE:Lorg/openjdk/tools/javac/parser/Tokens$TokenKind;

    if-ne v1, v2, :cond_0

    iget v0, v0, Lorg/openjdk/tools/javac/parser/Tokens$Token;->pos:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/parser/JavacParser;->arrayInitializer(ILorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public varargs warning(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/JavacParser;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
