.class public Lorg/openjdk/tools/javac/tree/TreeInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/tree/TreeInfo$TypeAnnotationFinder;
    }
.end annotation


# static fields
.field public static final addPrec:I = 0xc

.field public static final andPrec:I = 0x5

.field public static final assignPrec:I = 0x1

.field public static final assignopPrec:I = 0x2

.field public static final bitandPrec:I = 0x8

.field public static final bitorPrec:I = 0x6

.field public static final bitxorPrec:I = 0x7

.field public static final condPrec:I = 0x3

.field public static final eqPrec:I = 0x9

.field public static final mulPrec:I = 0xd

.field public static final noPrec:I = 0x0

.field public static final notExpression:I = -0x1

.field public static final orPrec:I = 0x4

.field public static final ordPrec:I = 0xa

.field public static final postfixPrec:I = 0xf

.field public static final precCount:I = 0x10

.field public static final prefixPrec:I = 0xe

.field public static final shiftPrec:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static args(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    return-object p0

    :cond_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public static calledMethodName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->EXEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->APPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static containsTypeAnnotation(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/tree/TreeInfo$TypeAnnotationFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeInfo$TypeAnnotationFinder;-><init>(Lorg/openjdk/tools/javac/tree/TreeInfo$1;)V

    invoke-virtual {v0, p0}, Lorg/openjdk/tools/javac/tree/TreeInfo$TypeAnnotationFinder;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean p0, v0, Lorg/openjdk/tools/javac/tree/TreeInfo$TypeAnnotationFinder;->foundTypeAnno:Z

    return p0
.end method

.method public static declarationFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-object p0, v0, Lorg/openjdk/tools/javac/tree/TreeInfo$1DeclScanner;->result:Lorg/openjdk/tools/javac/tree/JCTree;

    return-object p0
.end method

.method public static diagEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 2

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v0

    new-instance v1, Lorg/openjdk/tools/javac/tree/TreeInfo$1;

    invoke-direct {v1, p0, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo$1;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;I)V

    return-object v1
.end method

.method public static diagnosticPositionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->declarationFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p0

    return-object p0
.end method

.method public static endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BLOCK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->endpos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SYNCHRONIZED:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TRY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    :goto_0
    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :cond_4
    iget p0, p0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return p0
.end method

.method public static finalizerPos(Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TRY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->firstStatPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SYNCHRONIZED:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static firstConstructorCall(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-nez p0, :cond_2

    return-object v1

    :cond_2
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isSyntheticInit(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->EXEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->APPLY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    return-object p0
.end method

.method public static firstFlag(J)J
    .locals 6

    const-wide/16 v0, 0x1

    :goto_0
    and-long v2, v0, p0

    const-wide v4, 0x80000000fffL

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v2, 0x1

    shl-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public static firstStatPos(Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BLOCK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget p0, p0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return p0

    :cond_0
    iget p0, p0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return p0
.end method

.method public static flagNames(J)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x80000000fffL

    and-long/2addr p0, v0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/code/Flags;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static flags(Lorg/openjdk/tools/javac/tree/JCTree;)J
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    const/16 v1, 0x34

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-wide v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->flags:J

    return-wide v0

    :cond_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    return-wide v0

    :cond_2
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    return-wide v0

    :cond_3
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    return-wide v0
.end method

.method public static fullName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;
    .locals 3

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return-object v2

    :cond_0
    move-object v0, p0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->fullName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2e

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/openjdk/tools/javac/util/Name;->append(CLorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_2
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    return-object p0
.end method

.method public static getCommentText(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "*>;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TOPLEVEL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    :goto_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    goto :goto_0

    :goto_1
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Lorg/openjdk/tools/javac/tree/DocCommentTable;->getCommentText(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static getCommentTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "*>;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")",
            "Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TOPLEVEL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    :goto_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    goto :goto_0

    :goto_1
    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_2

    :cond_1
    invoke-interface {p0, p1}, Lorg/openjdk/tools/javac/tree/DocCommentTable;->getCommentTree(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->endPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p1, p0}, Lorg/openjdk/tools/javac/tree/EndPosTable;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result v1

    if-eq v1, v0, :cond_2

    return v1

    :cond_2
    sget-object v1, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9

    const/16 v2, 0x31

    if-eq v1, v2, :cond_8

    const/4 v2, 0x7

    if-eq v1, v2, :cond_7

    const/16 v2, 0x8

    if-eq v1, v2, :cond_7

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->inner:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz v0, :cond_3

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCSynchronized;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_6
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_7
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_8
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    if-nez v0, :cond_5

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :cond_5
    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_9
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;->errs:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;->errs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :cond_6
    :goto_0
    return v0

    :cond_7
    :pswitch_f
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;->RIGHT:Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getOperand(Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :cond_8
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    :cond_9
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getEndPos(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x35
        :pswitch_d
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
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

.method public static getModule(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MODULEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_6

    :pswitch_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCInstanceOf;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    if-eq v1, v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->restype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_3

    iget p0, p0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    :goto_0
    return p0

    :pswitch_3
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayAccess;->indexed:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_4
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_6
    move-object v1, p0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    if-eq v1, v0, :cond_b

    return v1

    :pswitch_7
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    iget p0, p0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    goto :goto_1

    :goto_2
    return p0

    :pswitch_8
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_3
    iget p0, p0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    goto :goto_4

    :cond_5
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    goto :goto_3

    :goto_4
    return p0

    :pswitch_9
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_b
    move-object v0, p0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;->errs:Lorg/openjdk/tools/javac/util/List;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object p0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;->errs:Lorg/openjdk/tools/javac/util/List;

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_d
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;->LEFT:Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getOperand(Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression$OperandPos;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    if-eq v1, v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v0, :cond_7

    iget p0, p0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return p0

    :cond_7
    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEARRAY:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :cond_9
    :goto_5
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :cond_a
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :pswitch_11
    move-object v0, p0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    :cond_b
    :goto_6
    iget p0, p0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return p0

    :pswitch_12
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->getStartPos(Lorg/openjdk/tools/javac/tree/JCTree;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static hasConstructors(Lorg/openjdk/tools/javac/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)Z"
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static innermostType(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    :goto_1
    sget-object v2, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_2

    const/16 v3, 0x44

    if-eq v2, v3, :cond_1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object p0

    :cond_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCWildcard;->inner:Lorg/openjdk/tools/javac/tree/JCTree;

    goto :goto_0

    :cond_2
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_3
    move-object v1, p0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v4, v1

    move-object v1, p0

    move-object p0, v4

    goto :goto_1
.end method

.method public static isAnonymousDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isAnonymousDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isDeclaration(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 1

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30

    if-eq p0, v0, :cond_0

    const/16 v0, 0x34

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result p0

    return p0

    :cond_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p0

    return p0

    :cond_2
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result p0

    return p0
.end method

.method public static isEnumInit(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 5

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v3, 0x4000

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static isExpressionStatement(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :cond_0
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x7
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isInAnnotation(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "*>;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ")Z"
        }
    .end annotation

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-static {p0, p1}, Lorg/openjdk/source/util/TreePath;->getPath(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/util/TreePath;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/source/util/TreePath;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/source/tree/Tree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object p1

    sget-object v0, Lorg/openjdk/source/tree/Tree$Kind;->ANNOTATION:Lorg/openjdk/source/tree/Tree$Kind;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isInitialConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->firstConstructorCall(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq p0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isModuleInfo(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    const-string v1, "module-info"

    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v0, v1, v2}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMultiCatch(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;)Z
    .locals 1

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TYPEUNION:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p0

    return p0
.end method

.method public static isNull(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LITERAL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCLiteral;->typetag:Lorg/openjdk/tools/javac/code/TypeTag;

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->BOT:Lorg/openjdk/tools/javac/code/TypeTag;

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isPackageInfo(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Z
    .locals 2

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    const-string v0, "package-info"

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {p0, v0, v1}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p0

    return p0
.end method

.method public static isReceiverParam(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->nameexpr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSelfCall(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 3

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->calledMethodName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq p0, v2, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isStatement(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 1

    instance-of v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BLOCK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isStaticSelector(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Names;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isStaticSym(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isStaticSelector(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Names;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v0, v3

    :cond_1
    return v0

    :pswitch_1
    move-object v1, p0

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p1, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, v2, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-eq v1, p1, :cond_2

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isStaticSym(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result p0

    if-eqz p0, :cond_2

    move v0, v3

    :cond_2
    return v0

    :cond_3
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isStaticSelector(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Names;)Z

    move-result p0

    return p0

    :cond_4
    :pswitch_2
    return v3

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static isStaticSym(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 1

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq p0, v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

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

.method public static isSuperCall(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->calledMethodName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isSyntheticInit(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->EXEC:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->ASSIGN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v2, 0x1000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->_this:Lorg/openjdk/tools/javac/util/Name;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->name:Lorg/openjdk/tools/javac/util/Name;

    return-object p0

    :cond_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->name:Lorg/openjdk/tools/javac/util/Name;

    return-object p0

    :cond_2
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    return-object p0
.end method

.method public static nonstaticSelect(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 2

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq p0, v0, :cond_2

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq p0, v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static opPrec(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)I
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x4d

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0xa

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    return v0

    :pswitch_1
    const/16 p0, 0xd

    return p0

    :pswitch_2
    const/16 p0, 0xc

    return p0

    :pswitch_3
    const/16 p0, 0xb

    return p0

    :pswitch_4
    return v0

    :pswitch_5
    const/16 p0, 0x9

    return p0

    :pswitch_6
    const/16 p0, 0x8

    return p0

    :pswitch_7
    const/4 p0, 0x7

    return p0

    :pswitch_8
    const/4 p0, 0x6

    return p0

    :pswitch_9
    const/4 p0, 0x5

    return p0

    :pswitch_a
    const/4 p0, 0x4

    return p0

    :pswitch_b
    const/4 p0, 0x2

    return p0

    :pswitch_c
    const/4 p0, 0x1

    return p0

    :pswitch_d
    const/16 p0, 0xe

    return p0

    :cond_0
    :pswitch_e
    const/16 p0, 0xf

    return p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1d
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x35
        :pswitch_0
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public static pathFor(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo$1PathFinder;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/tree/TreeInfo$1Result; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/TreeInfo$1Result;->path:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public static positionFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->declarationFor(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    iget p0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    return p0
.end method

.method public static referencedStatement(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 3

    move-object v0, p0

    :cond_0
    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LABELLED:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_1

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    return-object p0

    :cond_1
    :pswitch_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static scopeFor(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->pathFor(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->scopeFor(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p0

    return-object p0
.end method

.method public static scopeFor(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not implemented yet"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setPolyKind(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->refPolyKind:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected tree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;->polyKind:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    goto :goto_0

    :cond_2
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;->polyKind:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    :goto_0
    return-void
.end method

.method public static setSymbol(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :goto_0
    return-void
.end method

.method public static setVarargsElement(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected tree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_2
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->varargsElement:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    return-void
.end method

.method public static skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 1

    .line 1
    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PARENS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 1

    .line 3
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PARENS:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 2

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p0

    :cond_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p0

    :cond_2
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p0

    :cond_3
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    return-object p0

    :cond_4
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    return-object p0
.end method

.method public static symbolFor(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbolForImpl(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static symbolForImpl(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 2

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    const/16 v1, 0x18

    if-eq v0, v1, :cond_8

    const/16 v1, 0x19

    if-eq v0, v1, :cond_7

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_6

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_5

    const/16 v1, 0x30

    if-eq v0, v1, :cond_4

    const/16 v1, 0x34

    if-eq v0, v1, :cond_3

    const/16 v1, 0x42

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object v0

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isModuleInfo(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbolFor(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    return-object p0

    :cond_3
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    return-object p0

    :cond_4
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object p0

    :cond_5
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    return-object p0

    :cond_6
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    return-object p0

    :cond_7
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p0

    :cond_8
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p0

    :cond_9
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p0

    :cond_a
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    return-object p0

    :cond_b
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbolFor(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    return-object p0

    :cond_c
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p0

    :cond_d
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbolFor(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static tagToKind(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/source/tree/Tree$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->OPENS:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->EXPORTS:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->OTHER:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->BITWISE_COMPLEMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->LOGICAL_COMPLEMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->UNARY_MINUS:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->UNARY_PLUS:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->REMAINDER:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->DIVIDE:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->MULTIPLY:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->MINUS:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->PLUS:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_c
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_d
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->RIGHT_SHIFT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_e
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->LEFT_SHIFT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_f
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->GREATER_THAN_EQUAL:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_10
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->LESS_THAN_EQUAL:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_11
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->GREATER_THAN:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_12
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->LESS_THAN:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_13
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->NOT_EQUAL_TO:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_14
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->EQUAL_TO:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_15
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->AND:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_16
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->XOR:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_17
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->OR:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_18
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->CONDITIONAL_AND:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_19
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->CONDITIONAL_OR:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_1a
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->REMAINDER_ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_1b
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->DIVIDE_ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_1c
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->MULTIPLY_ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_1d
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->MINUS_ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_1e
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->PLUS_ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_1f
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->UNSIGNED_RIGHT_SHIFT_ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_20
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->RIGHT_SHIFT_ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_21
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->LEFT_SHIFT_ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_22
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->AND_ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_23
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->XOR_ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_24
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->OR_ASSIGNMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_25
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->POSTFIX_DECREMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_26
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->POSTFIX_INCREMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_27
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->PREFIX_DECREMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_28
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->PREFIX_INCREMENT:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :cond_0
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->TYPE_ANNOTATION:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :cond_1
    sget-object p0, Lorg/openjdk/source/tree/Tree$Kind;->ANNOTATION:Lorg/openjdk/source/tree/Tree$Kind;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x36
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static typeIn(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 3

    sget-object v0, Lorg/openjdk/tools/javac/tree/TreeInfo$2;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x44

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x50

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected type tree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotatedType;->underlyingType:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_1
    :pswitch_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method
