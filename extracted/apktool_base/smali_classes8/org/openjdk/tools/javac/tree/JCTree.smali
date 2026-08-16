.class public abstract Lorg/openjdk/tools/javac/tree/JCTree;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/Tree;
.implements Ljava/lang/Cloneable;
.implements Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/tree/JCTree$Visitor;,
        Lorg/openjdk/tools/javac/tree/JCTree$Factory;,
        Lorg/openjdk/tools/javac/tree/JCTree$LetExpr;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCUses;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCExports;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;,
        Lorg/openjdk/tools/javac/tree/JCTree$TypeBoundKind;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCTypeIntersection;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCPrimitiveTypeTree;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCParens;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCNewArray;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCAssert;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCIf;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCTry;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCCase;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCSkip;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCImport;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;,
        Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;,
        Lorg/openjdk/tools/javac/tree/JCTree$Tag;
    }
.end annotation


# instance fields
.field public pos:I

.field public type:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/openjdk/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/source/tree/TreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation
.end method

.method public abstract accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getEndPosition(Lorg/openjdk/tools/javac/tree/EndPosTable;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p1

    return p1
.end method

.method public getPreferredPosition()I
    .locals 1

    iget v0, p0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v0

    return v0
.end method

.method public abstract getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;
.end method

.method public getTree()Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    return-object p0
.end method

.method public hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 0

    return-object p0
.end method

.method public setPos(I)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    iput p1, p0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return-object p0
.end method

.method public setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/tree/Pretty;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/openjdk/tools/javac/tree/Pretty;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {v1, p0}, Lorg/openjdk/tools/javac/tree/Pretty;->printExpr(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
