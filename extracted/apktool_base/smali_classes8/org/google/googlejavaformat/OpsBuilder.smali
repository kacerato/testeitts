.class public final Lorg/google/googlejavaformat/OpsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;
    }
.end annotation


# static fields
.field private static final SPACE:Lorg/google/googlejavaformat/Doc$Space;

.field private static final ZERO:Lorg/google/googlejavaformat/Indent$Const;


# instance fields
.field depth:I

.field private final input:Lorg/google/googlejavaformat/Input;

.field private inputPosition:I

.field private lastPartialFormatBoundary:I

.field private final ops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation
.end field

.field private final output:Lorg/google/googlejavaformat/Output;

.field private tokenI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/Indent$Const;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    sput-object v0, Lorg/google/googlejavaformat/OpsBuilder;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {}, Lorg/google/googlejavaformat/Doc$Space;->make()Lorg/google/googlejavaformat/Doc$Space;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/OpsBuilder;->SPACE:Lorg/google/googlejavaformat/Doc$Space;

    return-void
.end method

.method public constructor <init>(Lorg/google/googlejavaformat/Input;Lorg/google/googlejavaformat/Output;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lorg/google/googlejavaformat/OpsBuilder;->inputPosition:I

    iput v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->depth:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->lastPartialFormatBoundary:I

    iput-object p1, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    iput-object p2, p0, Lorg/google/googlejavaformat/OpsBuilder;->output:Lorg/google/googlejavaformat/Output;

    return-void
.end method

.method private add(Lorg/google/googlejavaformat/Op;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "op"
        }
    .end annotation

    instance-of v0, p1, Lorg/google/googlejavaformat/OpenOp;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->depth:I

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lorg/google/googlejavaformat/CloseOp;

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->depth:I

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static getI(Lorg/google/googlejavaformat/Input$Token;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-interface {p0}, Lorg/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v1}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v2

    if-ltz v2, :cond_0

    invoke-interface {v1}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result p0

    return p0

    :cond_1
    invoke-interface {p0}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object p0

    invoke-interface {p0}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result p0

    return p0
.end method

.method private static isForcedBreak(Lorg/google/googlejavaformat/Op;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "op"
        }
    .end annotation

    instance-of v0, p0, Lorg/google/googlejavaformat/Doc$Break;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/google/googlejavaformat/Doc$Break;

    invoke-virtual {p0}, Lorg/google/googlejavaformat/Doc$Break;->isForced()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static makeComment(Lorg/google/googlejavaformat/Input$Tok;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/Input$Tok;",
            ")",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lorg/google/googlejavaformat/Input$Tok;->isSlashStarComment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/google/googlejavaformat/Doc$Tok;->make(Lorg/google/googlejavaformat/Input$Tok;)Lorg/google/googlejavaformat/Doc$Tok;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/g1;->y(Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/google/googlejavaformat/Doc$Tok;->make(Lorg/google/googlejavaformat/Input$Tok;)Lorg/google/googlejavaformat/Doc$Tok;

    move-result-object p0

    invoke-static {}, Lorg/google/googlejavaformat/Doc$Break;->makeForced()Lorg/google/googlejavaformat/Doc$Break;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/common/collect/g1;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public actualSize(II)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "length"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Input;->getPositionTokenMap()Lcom/google/common/collect/p1;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/p1;->j(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v1

    invoke-interface {v1}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v1

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Input;->getPositionTokenMap()Lcom/google/common/collect/p1;

    move-result-object v0

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p1;->j(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object p2

    invoke-interface {p2}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result p2

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    add-int/2addr p2, v0

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v2

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->length()I

    move-result v0

    add-int/2addr v2, v0

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_3
    sub-int/2addr p2, v1

    return p2
.end method

.method public actualStartColumn(I)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Input;->getPositionTokenMap()Lcom/google/common/collect/p1;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/common/collect/p1;->j(Ljava/lang/Comparable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    iget-object v1, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v1, v0}, Lorg/google/googlejavaformat/Input;->getLineNumber(I)I

    move-result v1

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Input$Tok;

    iget-object v3, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/google/googlejavaformat/Input;->getLineNumber(I)I

    move-result v3

    if-eq v1, v3, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ops"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/Op;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Op;

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/OpsBuilder;->add(Lorg/google/googlejavaformat/Op;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final blankLineWanted(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wanted"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->output:Lorg/google/googlejavaformat/Output;

    iget-object v1, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/g1;

    move-result-object v1

    iget v2, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/Input$Token;

    invoke-static {v1}, Lorg/google/googlejavaformat/OpsBuilder;->getI(Lorg/google/googlejavaformat/Input$Token;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lorg/google/googlejavaformat/Output;->blankLine(ILorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    return-void
.end method

.method public final breakOp()V
    .locals 3

    .line 1
    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    sget-object v2, Lorg/google/googlejavaformat/OpsBuilder;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    return-void
.end method

.method public final breakOp(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flat"
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    sget-object v1, Lorg/google/googlejavaformat/OpsBuilder;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, p1, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    return-void
.end method

.method public final breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fillMode",
            "flat",
            "plusIndent"
        }
    .end annotation

    .line 4
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    return-void
.end method

.method public final breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fillMode",
            "flat",
            "plusIndent",
            "optionalTag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/google/googlejavaformat/Doc$FillMode;",
            "Ljava/lang/String;",
            "Lorg/google/googlejavaformat/Indent;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Output$BreakTag;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-static {p1, p2, p3, p4}, Lorg/google/googlejavaformat/Doc$Break;->make(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;Lw2/C;)Lorg/google/googlejavaformat/Doc$Break;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/OpsBuilder;->add(Lorg/google/googlejavaformat/Op;)V

    return-void
.end method

.method public final breakOp(Lorg/google/googlejavaformat/Indent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plusIndent"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    return-void
.end method

.method public final breakToFill()V
    .locals 3

    .line 1
    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    sget-object v2, Lorg/google/googlejavaformat/OpsBuilder;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    return-void
.end method

.method public final breakToFill(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flat"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->INDEPENDENT:Lorg/google/googlejavaformat/Doc$FillMode;

    sget-object v1, Lorg/google/googlejavaformat/OpsBuilder;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, p1, v1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    return-void
.end method

.method public final build()Lcom/google/common/collect/g1;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/Op;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/google/googlejavaformat/OpsBuilder;->markForPartialFormat()V

    invoke-static {}, Lcom/google/common/collect/s;->M()Lcom/google/common/collect/s;

    move-result-object v1

    iget-object v2, v0, Lorg/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_16

    iget-object v5, v0, Lorg/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/google/googlejavaformat/Op;

    instance-of v6, v5, Lorg/google/googlejavaformat/Doc$Token;

    if-eqz v6, :cond_15

    check-cast v5, Lorg/google/googlejavaformat/Doc$Token;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/Doc$Token;->getToken()Lorg/google/googlejavaformat/Input$Token;

    move-result-object v6

    move v7, v4

    :goto_1
    if-lez v7, :cond_0

    iget-object v8, v0, Lorg/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    add-int/lit8 v9, v7, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lorg/google/googlejavaformat/OpenOp;

    if-eqz v8, :cond_0

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_0
    move v8, v4

    :goto_2
    const/4 v9, 0x1

    add-int/2addr v8, v9

    if-ge v8, v2, :cond_1

    iget-object v10, v0, Lorg/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lorg/google/googlejavaformat/CloseOp;

    if-eqz v10, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lorg/google/googlejavaformat/Doc$Token;->realOrImaginary()Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    move-result-object v10

    invoke-virtual {v10}, Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;->isReal()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-interface {v6}, Lorg/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/g1;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :cond_2
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const-string v3, ""

    if-eqz v15, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v15}, Lorg/google/googlejavaformat/Input$Tok;->isNewline()Z

    move-result v17

    if-eqz v17, :cond_3

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_3
    invoke-interface {v15}, Lorg/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v15}, Lorg/google/googlejavaformat/Input$Tok;->isSlashSlashComment()Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v12, Lorg/google/googlejavaformat/Doc$FillMode;->FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

    goto :goto_4

    :cond_4
    sget-object v12, Lorg/google/googlejavaformat/Doc$FillMode;->UNIFIED:Lorg/google/googlejavaformat/Doc$FillMode;

    :goto_4
    invoke-virtual {v5}, Lorg/google/googlejavaformat/Doc$Token;->getPlusIndentCommentsBefore()Lorg/google/googlejavaformat/Indent;

    move-result-object v13

    invoke-static {v12, v3, v13}, Lorg/google/googlejavaformat/Doc$Break;->make(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Doc$Break;

    move-result-object v3

    invoke-interface {v1, v11, v3}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v15}, Lorg/google/googlejavaformat/OpsBuilder;->makeComment(Lorg/google/googlejavaformat/Input$Tok;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v1, v3, v11}, Lcom/google/common/collect/S1;->Z(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    invoke-interface {v15}, Lorg/google/googlejavaformat/Input$Tok;->isSlashStarComment()Z

    move-result v14

    invoke-interface {v15}, Lorg/google/googlejavaformat/Input$Tok;->isJavadocComment()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lorg/google/googlejavaformat/Doc$Break;->makeForced()Lorg/google/googlejavaformat/Doc$Break;

    move-result-object v11

    invoke-interface {v1, v3, v11}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v15}, Lorg/google/googlejavaformat/Input$Tok;->isSlashSlashComment()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v15}, Lorg/google/googlejavaformat/Input$Tok;->isSlashStarComment()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v15}, Lorg/google/googlejavaformat/Input$Tok;->isJavadocComment()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_5

    :cond_6
    const/4 v11, 0x0

    goto :goto_6

    :cond_7
    :goto_5
    move v11, v9

    :goto_6
    move v13, v9

    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    if-eqz v11, :cond_9

    if-le v12, v9, :cond_9

    iget-object v10, v0, Lorg/google/googlejavaformat/OpsBuilder;->output:Lorg/google/googlejavaformat/Output;

    invoke-interface {v6}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v11

    invoke-interface {v11}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v11

    sget-object v15, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->YES:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {v10, v11, v15}, Lorg/google/googlejavaformat/Output;->blankLine(ILorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V

    :cond_9
    if-eqz v13, :cond_a

    if-lez v12, :cond_a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Lorg/google/googlejavaformat/Doc$Break;->makeForced()Lorg/google/googlejavaformat/Doc$Break;

    move-result-object v10

    invoke-interface {v1, v7, v10}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    if-eqz v14, :cond_b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v10, Lorg/google/googlejavaformat/OpsBuilder;->SPACE:Lorg/google/googlejavaformat/Doc$Space;

    invoke-interface {v1, v7, v10}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_b
    :goto_7
    invoke-interface {v6}, Lorg/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/g1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v6

    :cond_c
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v7}, Lorg/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v7}, Lorg/google/googlejavaformat/Input$Tok;->isJavadocComment()Z

    move-result v10

    if-nez v10, :cond_e

    invoke-interface {v7}, Lorg/google/googlejavaformat/Input$Tok;->isSlashStarComment()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-virtual {v5}, Lorg/google/googlejavaformat/Doc$Token;->breakAndIndentTrailingComment()Lw2/C;

    move-result-object v10

    invoke-virtual {v10}, Lw2/C;->e()Z

    move-result v10

    if-eqz v10, :cond_d

    goto :goto_9

    :cond_d
    const/4 v10, 0x0

    goto :goto_a

    :cond_e
    :goto_9
    move v10, v9

    :goto_a
    if-eqz v10, :cond_f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Lorg/google/googlejavaformat/Doc$FillMode;->FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/Doc$Token;->breakAndIndentTrailingComment()Lw2/C;

    move-result-object v13

    sget-object v14, Lorg/google/googlejavaformat/Indent$Const;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {v13, v14}, Lw2/C;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/google/googlejavaformat/Indent;

    invoke-static {v12, v3, v13}, Lorg/google/googlejavaformat/Doc$Break;->make(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Doc$Break;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_b

    :cond_f
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    sget-object v12, Lorg/google/googlejavaformat/OpsBuilder;->SPACE:Lorg/google/googlejavaformat/Doc$Space;

    invoke-interface {v1, v11, v12}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_b
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v7}, Lorg/google/googlejavaformat/OpsBuilder;->makeComment(Lorg/google/googlejavaformat/Input$Tok;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v11, v7}, Lcom/google/common/collect/S1;->Z(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    if-eqz v10, :cond_c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v10, Lorg/google/googlejavaformat/Doc$FillMode;->FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

    sget-object v11, Lorg/google/googlejavaformat/OpsBuilder;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {v10, v3, v11}, Lorg/google/googlejavaformat/Doc$Break;->make(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Doc$Break;

    move-result-object v10

    invoke-interface {v1, v7, v10}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    invoke-interface {v6}, Lorg/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/g1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v9, 0x0

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v10}, Lorg/google/googlejavaformat/Input$Tok;->isNewline()Z

    move-result v11

    if-eqz v11, :cond_11

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_11
    invoke-interface {v10}, Lorg/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Lorg/google/googlejavaformat/Input$Tok;->isComment()Z

    move-result v9

    const/4 v5, 0x0

    :cond_12
    :goto_d
    if-eqz v9, :cond_13

    if-lez v5, :cond_13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {}, Lorg/google/googlejavaformat/Doc$Break;->makeForced()Lorg/google/googlejavaformat/Doc$Break;

    move-result-object v12

    invoke-interface {v1, v11, v12}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Lorg/google/googlejavaformat/Doc$Tok;->make(Lorg/google/googlejavaformat/Input$Tok;)Lorg/google/googlejavaformat/Doc$Tok;

    move-result-object v10

    invoke-interface {v1, v11, v10}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_c

    :cond_14
    invoke-interface {v6}, Lorg/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/g1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/google/googlejavaformat/Input$Tok;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Lorg/google/googlejavaformat/Doc$Tok;->make(Lorg/google/googlejavaformat/Input$Tok;)Lorg/google/googlejavaformat/Doc$Tok;

    move-result-object v5

    invoke-interface {v1, v6, v5}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_e

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_16
    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_f
    if-ge v4, v2, :cond_1c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/google/common/collect/S1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    :goto_10
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/google/googlejavaformat/Op;

    if-eqz v16, :cond_18

    instance-of v7, v6, Lorg/google/googlejavaformat/Doc$Space;

    if-nez v7, :cond_17

    :cond_18
    invoke-virtual {v3, v6}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-static {v6}, Lorg/google/googlejavaformat/OpsBuilder;->isForcedBreak(Lorg/google/googlejavaformat/Op;)Z

    move-result v6

    move/from16 v16, v6

    goto :goto_10

    :cond_19
    iget-object v5, v0, Lorg/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/google/googlejavaformat/Op;

    if-eqz v16, :cond_1a

    instance-of v6, v5, Lorg/google/googlejavaformat/Doc$Space;

    if-nez v6, :cond_1b

    instance-of v6, v5, Lorg/google/googlejavaformat/Doc$Break;

    if-eqz v6, :cond_1a

    move-object v6, v5

    check-cast v6, Lorg/google/googlejavaformat/Doc$Break;

    invoke-virtual {v6}, Lorg/google/googlejavaformat/Doc$Break;->getPlusIndent()I

    move-result v6

    if-nez v6, :cond_1a

    move-object v6, v5

    check-cast v6, Lorg/google/googlejavaformat/Doc;

    invoke-virtual {v6}, Lorg/google/googlejavaformat/Doc;->getFlat()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    goto :goto_11

    :cond_1a
    invoke-virtual {v3, v5}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    instance-of v6, v5, Lorg/google/googlejavaformat/OpenOp;

    if-nez v6, :cond_1b

    invoke-static {v5}, Lorg/google/googlejavaformat/OpsBuilder;->isForcedBreak(Lorg/google/googlejavaformat/Op;)Z

    move-result v5

    move/from16 v16, v5

    :cond_1b
    :goto_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_1c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/S1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/google/googlejavaformat/Op;

    if-eqz v16, :cond_1e

    instance-of v4, v2, Lorg/google/googlejavaformat/Doc$Space;

    if-nez v4, :cond_1d

    :cond_1e
    invoke-virtual {v3, v2}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    invoke-static {v2}, Lorg/google/googlejavaformat/OpsBuilder;->isForcedBreak(Lorg/google/googlejavaformat/Op;)Z

    move-result v2

    move/from16 v16, v2

    goto :goto_12

    :cond_1f
    invoke-virtual {v3}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object v1

    return-object v1
.end method

.method public checkClosed(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previous"
        }
    .end annotation

    iget v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->depth:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lorg/google/googlejavaformat/FormattingError;

    iget v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->depth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "saw %d unclosed ops"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/OpsBuilder;->diagnostic(Ljava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/google/googlejavaformat/FormattingError;-><init>(Lorg/google/googlejavaformat/FormatterDiagnostic;)V

    throw p1
.end method

.method public final close()V
    .locals 1

    invoke-static {}, Lorg/google/googlejavaformat/CloseOp;->make()Lorg/google/googlejavaformat/Op;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/OpsBuilder;->add(Lorg/google/googlejavaformat/Op;)V

    return-void
.end method

.method public depth()I
    .locals 1

    iget v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->depth:I

    return v0
.end method

.method public diagnostic(Ljava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    iget v1, p0, Lorg/google/googlejavaformat/OpsBuilder;->inputPosition:I

    invoke-virtual {v0, v1, p1}, Lorg/google/googlejavaformat/Input;->createDiagnostic(ILjava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;

    move-result-object p1

    return-object p1
.end method

.method public final drain()V
    .locals 7

    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Input;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/google/googlejavaformat/OpsBuilder;->inputPosition:I

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    :goto_0
    iget v3, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {v3}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v3

    invoke-interface {v3}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v3

    if-le v0, v3, :cond_0

    iget v3, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/google/googlejavaformat/Input$Token;

    sget-object v4, Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;->IMAGINARY:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    sget-object v5, Lorg/google/googlejavaformat/OpsBuilder;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lorg/google/googlejavaformat/Doc$Token;->make(Lorg/google/googlejavaformat/Input$Token;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)Lorg/google/googlejavaformat/Op;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/google/googlejavaformat/OpsBuilder;->add(Lorg/google/googlejavaformat/Op;)V

    goto :goto_0

    :cond_0
    iput v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->inputPosition:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/OpsBuilder;->checkClosed(I)V

    return-void
.end method

.method public final forcedBreak()V
    .locals 3

    .line 1
    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    sget-object v2, Lorg/google/googlejavaformat/OpsBuilder;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-virtual {p0, v0, v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    return-void
.end method

.method public final forcedBreak(Lorg/google/googlejavaformat/Indent;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plusIndent"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/google/googlejavaformat/Doc$FillMode;->FORCED:Lorg/google/googlejavaformat/Doc$FillMode;

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p1}, Lorg/google/googlejavaformat/OpsBuilder;->breakOp(Lorg/google/googlejavaformat/Doc$FillMode;Ljava/lang/String;Lorg/google/googlejavaformat/Indent;)V

    return-void
.end method

.method public final getInput()Lorg/google/googlejavaformat/Input;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    return-object v0
.end method

.method public final guessToken(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    sget-object v0, Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;->IMAGINARY:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    sget-object v1, Lorg/google/googlejavaformat/OpsBuilder;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    return-void
.end method

.method public markForPartialFormat()V
    .locals 3

    iget v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->lastPartialFormatBoundary:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    iput v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->lastPartialFormatBoundary:I

    return-void

    :cond_0
    iget v1, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/g1;

    move-result-object v0

    iget v1, p0, Lorg/google/googlejavaformat/OpsBuilder;->lastPartialFormatBoundary:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/Input$Token;

    iget-object v1, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/g1;

    move-result-object v1

    iget v2, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/Input$Token;

    iget-object v2, p0, Lorg/google/googlejavaformat/OpsBuilder;->output:Lorg/google/googlejavaformat/Output;

    invoke-virtual {v2, v0, v1}, Lorg/google/googlejavaformat/Output;->markForPartialFormat(Lorg/google/googlejavaformat/Input$Token;Lorg/google/googlejavaformat/Input$Token;)V

    iget v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    iput v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->lastPartialFormatBoundary:I

    return-void
.end method

.method public final op(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "op"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    sget-object v4, Lorg/google/googlejavaformat/OpsBuilder;->ZERO:Lorg/google/googlejavaformat/Indent$Const;

    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object v5

    invoke-virtual {p0, v1, v3, v4, v5}, Lorg/google/googlejavaformat/OpsBuilder;->token(Ljava/lang/String;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final open(Lorg/google/googlejavaformat/Indent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "plusIndent"
        }
    .end annotation

    invoke-static {p1}, Lorg/google/googlejavaformat/OpenOp;->make(Lorg/google/googlejavaformat/Indent;)Lorg/google/googlejavaformat/Op;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/OpsBuilder;->add(Lorg/google/googlejavaformat/Op;)V

    return-void
.end method

.method public final peekToken()Lw2/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/C<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken(I)Lw2/C;

    move-result-object v0

    return-object v0
.end method

.method public final peekToken(I)Lw2/C;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "skip"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lw2/C<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/g1;

    move-result-object v0

    .line 3
    iget v1, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    add-int/2addr v1, p1

    .line 4
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ge v1, p1, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object p1

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Tok;->getOriginalText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lw2/C;->f(Ljava/lang/Object;)Lw2/C;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lw2/C;->a()Lw2/C;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final space()V
    .locals 1

    invoke-static {}, Lorg/google/googlejavaformat/Doc$Space;->make()Lorg/google/googlejavaformat/Doc$Space;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/OpsBuilder;->add(Lorg/google/googlejavaformat/Op;)V

    return-void
.end method

.method public final sync(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputPosition"
        }
    .end annotation

    iget v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->inputPosition:I

    if-le p1, v0, :cond_1

    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iput p1, p0, Lorg/google/googlejavaformat/OpsBuilder;->inputPosition:I

    iget v2, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/Input$Token;

    invoke-interface {v1}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v1

    invoke-interface {v1}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/Input$Token;

    new-instance v0, Lorg/google/googlejavaformat/FormattingError;

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object p1

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Tok;->getText()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "did not generate token \"%s\""

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/OpsBuilder;->diagnostic(Ljava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/google/googlejavaformat/FormattingError;-><init>(Lorg/google/googlejavaformat/FormatterDiagnostic;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "input"

    iget-object v2, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "ops"

    iget-object v2, p0, Lorg/google/googlejavaformat/OpsBuilder;->ops:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "output"

    iget-object v2, p0, Lorg/google/googlejavaformat/OpsBuilder;->output:Lorg/google/googlejavaformat/Output;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "tokenI"

    iget v2, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    const-string v1, "inputPosition"

    iget v2, p0, Lorg/google/googlejavaformat/OpsBuilder;->inputPosition:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final token(Ljava/lang/String;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "realOrImaginary",
            "plusIndentCommentsBefore",
            "breakAndIndentTrailingComment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;",
            "Lorg/google/googlejavaformat/Indent;",
            "Lw2/C<",
            "Lorg/google/googlejavaformat/Indent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/OpsBuilder;->input:Lorg/google/googlejavaformat/Input;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/Input;->getTokens()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object v1

    invoke-virtual {v1}, Lw2/C;->j()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Lorg/google/googlejavaformat/OpsBuilder;->tokenI:I

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/Input$Token;

    sget-object p2, Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;->REAL:Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;

    invoke-static {p1, p2, p3, p4}, Lorg/google/googlejavaformat/Doc$Token;->make(Lorg/google/googlejavaformat/Input$Token;Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;Lorg/google/googlejavaformat/Indent;Lw2/C;)Lorg/google/googlejavaformat/Op;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/OpsBuilder;->add(Lorg/google/googlejavaformat/Op;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/google/googlejavaformat/Doc$Token$RealOrImaginary;->isReal()Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance p2, Lorg/google/googlejavaformat/FormattingError;

    invoke-virtual {p0}, Lorg/google/googlejavaformat/OpsBuilder;->peekToken()Lw2/C;

    move-result-object p3

    invoke-virtual {p3}, Lw2/C;->j()Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "expected token: \'%s\'; generated %s instead"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/google/googlejavaformat/OpsBuilder;->diagnostic(Ljava/lang/String;)Lorg/google/googlejavaformat/FormatterDiagnostic;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/google/googlejavaformat/FormattingError;-><init>(Lorg/google/googlejavaformat/FormatterDiagnostic;)V

    throw p2
.end method
