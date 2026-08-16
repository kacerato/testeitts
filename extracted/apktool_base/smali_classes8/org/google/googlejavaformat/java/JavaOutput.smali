.class public final Lorg/google/googlejavaformat/java/JavaOutput;
.super Lorg/google/googlejavaformat/Output;
.source "SourceFile"


# instance fields
.field private final blankLines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;",
            ">;"
        }
    .end annotation
.end field

.field private final commentsHelper:Lorg/google/googlejavaformat/CommentsHelper;

.field private iLine:I

.field private final javaInput:Lorg/google/googlejavaformat/java/JavaInput;

.field private final kN:I

.field private lastK:I

.field private lineBuilder:Ljava/lang/StringBuilder;

.field private final lineSeparator:Ljava/lang/String;

.field private final mutableLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private newlinesPending:I

.field private final partialFormatRanges:Lcom/google/common/collect/m2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private spacesPending:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/google/googlejavaformat/java/JavaInput;Lorg/google/googlejavaformat/CommentsHelper;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lineSeparator",
            "javaInput",
            "commentsHelper"
        }
    .end annotation

    invoke-direct {p0}, Lorg/google/googlejavaformat/Output;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/collect/c3;->r()Lcom/google/common/collect/c3;

    move-result-object v0

    iput-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/m2;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->iLine:I

    const/4 v1, -0x1

    iput v1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lastK:I

    iput v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    iput v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    iput-object p1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lineSeparator:Ljava/lang/String;

    iput-object p2, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    iput-object p3, p0, Lorg/google/googlejavaformat/java/JavaOutput;->commentsHelper:Lorg/google/googlejavaformat/CommentsHelper;

    invoke-virtual {p2}, Lorg/google/googlejavaformat/java/JavaInput;->getkN()I

    move-result p1

    iput p1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->kN:I

    return-void
.end method

.method public static synthetic a(Lorg/google/googlejavaformat/java/Replacement;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lorg/google/googlejavaformat/java/JavaOutput;->lambda$applyReplacements$0(Lorg/google/googlejavaformat/java/Replacement;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static applyReplacements(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "replacements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/google/googlejavaformat/java/Replacement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lorg/google/googlejavaformat/java/g;

    invoke-direct {p1}, Lorg/google/googlejavaformat/java/g;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/java/Replacement;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/Replacement;->getReplaceRange()Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/Replacement;->getReplaceRange()Lcom/google/common/collect/j2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/Replacement;->getReplacementString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static endTok(Lorg/google/googlejavaformat/Input$Token;)Lorg/google/googlejavaformat/Input$Tok;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-interface {p0}, Lorg/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-interface {p0}, Lorg/google/googlejavaformat/Input$Token;->getToksAfter()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v1}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v2

    if-ltz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object p0

    return-object p0
.end method

.method private expandToBreakableRegions(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iRange"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/m2;

    invoke-interface {v1, v0}, Lcom/google/common/collect/m2;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/m2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/common/collect/m2;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/m2;

    invoke-interface {v1, v0}, Lcom/google/common/collect/m2;->h(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/m2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/google/common/collect/m2;->h(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lorg/google/googlejavaformat/InputOutput;->EMPTY_RANGE:Lcom/google/common/collect/j2;

    return-object p1
.end method

.method private isComment(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private static synthetic lambda$applyReplacements$0(Lorg/google/googlejavaformat/java/Replacement;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/Replacement;->getReplaceRange()Lcom/google/common/collect/j2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public static startPosition(Lorg/google/googlejavaformat/Input$Token;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    invoke-interface {p0}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v0

    invoke-interface {v0}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v0

    invoke-interface {p0}, Lorg/google/googlejavaformat/Input$Token;->getToksBefore()Lcom/google/common/collect/g1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/google/googlejavaformat/Input$Tok;

    invoke-interface {v1}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static startTok(Lorg/google/googlejavaformat/Input$Token;)Lorg/google/googlejavaformat/Input$Tok;
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

    return-object v1

    :cond_1
    invoke-interface {p0}, Lorg/google/googlejavaformat/Input$Token;->getTok()Lorg/google/googlejavaformat/Input$Tok;

    move-result-object p0

    return-object p0
.end method

.method private static union(Lcom/google/common/collect/j2;Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/collect/j2;->G(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/W;->c()Lcom/google/common/collect/W;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j2;->e(Lcom/google/common/collect/W;)Lcom/google/common/collect/j2;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/String;Lcom/google/common/collect/j2;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/common/collect/j2;->v()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/InputOutput;->getLineCount()I

    move-result v0

    move v3, v1

    :goto_0
    iget v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->iLine:I

    if-ge v4, v0, :cond_2

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v5, v4}, Lorg/google/googlejavaformat/InputOutput;->getRanges(I)Lcom/google/common/collect/j2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/j2;->v()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    iget v5, p0, Lorg/google/googlejavaformat/java/JavaOutput;->iLine:I

    invoke-virtual {v4, v5}, Lorg/google/googlejavaformat/InputOutput;->getRanges(I)Lcom/google/common/collect/j2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v4, v5, :cond_2

    :cond_0
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    iget v5, p0, Lorg/google/googlejavaformat/java/JavaOutput;->iLine:I

    invoke-virtual {v4, v5}, Lorg/google/googlejavaformat/InputOutput;->getRanges(I)Lcom/google/common/collect/j2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/j2;->v()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    iget v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->iLine:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->iLine:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    iget v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lastK:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->NO:Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-direct {p0, p1}, Lorg/google/googlejavaformat/java/JavaOutput;->isComment(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->wanted()Lw2/C;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lw2/C;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    iget v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    :cond_4
    invoke-static {p1}, Lorg/google/googlejavaformat/Newlines;->isNewline(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget p1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    if-nez p1, :cond_5

    add-int/2addr p1, v2

    iput p1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    :cond_5
    iput v1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    goto/16 :goto_7

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v1

    move v4, v3

    :goto_2
    if-ge v3, v0, :cond_10

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_e

    const/16 v7, 0xd

    if-eq v5, v7, :cond_d

    const/16 v6, 0x20

    if-eq v5, v6, :cond_c

    :goto_3
    iget v7, p0, Lorg/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    if-lez v7, :cond_9

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_8

    :cond_7
    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    iget-object v7, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    iget v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    sub-int/2addr v4, v2

    iput v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    move v4, v1

    goto :goto_3

    :cond_9
    :goto_4
    iget v7, p0, Lorg/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    if-lez v7, :cond_a

    iget-object v7, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v7, p0, Lorg/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    sub-int/2addr v7, v2

    iput v7, p0, Lorg/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    goto :goto_4

    :cond_a
    iget-object v6, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/google/common/collect/j2;->v()Z

    move-result v5

    if-nez v5, :cond_f

    if-nez v4, :cond_f

    :goto_5
    iget-object v4, p0, Lorg/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v4, v5, :cond_b

    iget-object v4, p0, Lorg/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    sget-object v5, Lorg/google/googlejavaformat/java/Formatter;->EMPTY_RANGE:Lcom/google/common/collect/j2;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    iget-object v4, p0, Lorg/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lorg/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    iget-object v7, p0, Lorg/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/collect/j2;

    invoke-static {v6, p2}, Lorg/google/googlejavaformat/java/JavaOutput;->union(Lcom/google/common/collect/j2;Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    goto :goto_6

    :cond_c
    iget v5, p0, Lorg/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    goto :goto_6

    :cond_d
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_e

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_e

    move v3, v5

    :cond_e
    iput v1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    iget v5, p0, Lorg/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    add-int/2addr v5, v2

    iput v5, p0, Lorg/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    :cond_f
    :goto_6
    add-int/2addr v3, v2

    goto/16 :goto_2

    :cond_10
    :goto_7
    invoke-virtual {p2}, Lcom/google/common/collect/j2;->v()Z

    move-result p1

    if-nez p1, :cond_11

    invoke-virtual {p2}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lastK:I

    :cond_11
    return-void
.end method

.method public blankLine(ILorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k",
            "wanted"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    invoke-virtual {p1, p2}, Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;->merge(Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;)Lorg/google/googlejavaformat/OpsBuilder$BlankLineWanted;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public flush()V
    .locals 4

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lineBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lw2/e;->X()Lw2/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lw2/e;->C(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->kN:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/google/googlejavaformat/java/JavaOutput;->kN:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lorg/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    iget-object v2, p0, Lorg/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    sget-object v3, Lorg/google/googlejavaformat/java/Formatter;->EMPTY_RANGE:Lcom/google/common/collect/j2;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/google/googlejavaformat/InputOutput;->ranges:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->mutableLines:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/google/googlejavaformat/InputOutput;->setLines(Lcom/google/common/collect/g1;)V

    return-void
.end method

.method public getCommentsHelper()Lorg/google/googlejavaformat/CommentsHelper;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->commentsHelper:Lorg/google/googlejavaformat/CommentsHelper;

    return-object v0
.end method

.method public getFormatReplacements(Lcom/google/common/collect/m2;)Lcom/google/common/collect/g1;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iRangeSet0"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/m2<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/collect/g1<",
            "Lorg/google/googlejavaformat/java/Replacement;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g1;->m()Lcom/google/common/collect/g1$a;

    move-result-object v0

    invoke-static {p0}, Lorg/google/googlejavaformat/InputOutput;->makeKToIJ(Lorg/google/googlejavaformat/InputOutput;)Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/c3;->r()Lcom/google/common/collect/c3;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v5}, Lorg/google/googlejavaformat/java/JavaInput;->getkN()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/collect/j2;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/common/collect/m2;->k(Lcom/google/common/collect/j2;)Lcom/google/common/collect/m2;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/common/collect/m2;->m()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/j2;

    invoke-static {}, Lcom/google/common/collect/W;->c()Lcom/google/common/collect/W;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/j2;->e(Lcom/google/common/collect/W;)Lcom/google/common/collect/j2;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/google/googlejavaformat/java/JavaOutput;->expandToBreakableRegions(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object v4

    sget-object v5, Lorg/google/googlejavaformat/InputOutput;->EMPTY_RANGE:Lcom/google/common/collect/j2;

    invoke-virtual {v4, v5}, Lcom/google/common/collect/j2;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2, v4}, Lcom/google/common/collect/m2;->o(Lcom/google/common/collect/j2;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/google/common/collect/m2;->m()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/collect/j2;

    iget-object v4, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v2}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/google/googlejavaformat/java/JavaInput;->getToken(I)Lorg/google/googlejavaformat/java/JavaInput$Token;

    move-result-object v4

    invoke-static {v4}, Lorg/google/googlejavaformat/java/JavaOutput;->startTok(Lorg/google/googlejavaformat/Input$Token;)Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v4

    iget-object v5, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v2}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v5, v2}, Lorg/google/googlejavaformat/java/JavaInput;->getToken(I)Lorg/google/googlejavaformat/java/JavaInput$Token;

    move-result-object v2

    invoke-static {v2}, Lorg/google/googlejavaformat/java/JavaOutput;->endTok(Lorg/google/googlejavaformat/Input$Token;)Lorg/google/googlejavaformat/Input$Tok;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v6

    :goto_2
    if-lez v6, :cond_3

    iget-object v7, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v7}, Lorg/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v6, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {}, Lw2/e;->X()Lw2/e;

    move-result-object v8

    invoke-virtual {v8, v7}, Lw2/e;->B(C)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    invoke-interface {v4}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/j2;

    invoke-virtual {v4}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_4
    if-lez v4, :cond_4

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lorg/google/googlejavaformat/InputOutput;->getLine(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_4
    :goto_5
    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/common/collect/j2;

    invoke-virtual {v7}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v4, v7, :cond_7

    invoke-virtual {p0}, Lorg/google/googlejavaformat/InputOutput;->getLineCount()I

    move-result v7

    if-ge v4, v7, :cond_6

    if-lez v4, :cond_5

    iget-object v7, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0, v4}, Lorg/google/googlejavaformat/InputOutput;->getLine(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getPosition()I

    move-result v7

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->length()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v8}, Lorg/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-interface {v2}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result v2

    iget-object v8, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v8}, Lorg/google/googlejavaformat/java/JavaInput;->getkN()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_8

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v2}, Lorg/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    :cond_8
    const/4 v2, -0x1

    move v8, v2

    :goto_6
    iget-object v9, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v9}, Lorg/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_b

    iget-object v9, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v9}, Lorg/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {}, Lw2/e;->X()Lw2/e;

    move-result-object v10

    invoke-virtual {v10, v9}, Lw2/e;->B(C)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_7

    :cond_9
    iget-object v9, p0, Lorg/google/googlejavaformat/java/JavaOutput;->javaInput:Lorg/google/googlejavaformat/java/JavaInput;

    invoke-virtual {v9}, Lorg/google/googlejavaformat/java/JavaInput;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Lorg/google/googlejavaformat/Newlines;->hasNewlineAt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v2, :cond_a

    add-int/2addr v9, v7

    move v8, v7

    move v7, v9

    goto :goto_6

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    if-eq v8, v2, :cond_c

    move v7, v8

    :cond_c
    if-ne v8, v2, :cond_d

    iget-object v9, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    :goto_8
    invoke-virtual {p0}, Lorg/google/googlejavaformat/InputOutput;->getLineCount()I

    move-result v9

    if-ge v4, v9, :cond_f

    invoke-virtual {p0, v4}, Lorg/google/googlejavaformat/InputOutput;->getLine(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lw2/e;->X()Lw2/e;

    move-result-object v10

    invoke-virtual {v10}, Lw2/e;->F()Lw2/e;

    move-result-object v10

    invoke-virtual {v10, v9}, Lw2/e;->n(Ljava/lang/CharSequence;)I

    move-result v10

    if-ne v10, v2, :cond_e

    iget-object v9, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    if-ne v8, v2, :cond_f

    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v7, v2}, Lorg/google/googlejavaformat/java/Replacement;->create(IILjava/lang/String;)Lorg/google/googlejavaformat/java/Replacement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/g1$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/g1$a;

    goto/16 :goto_1

    :cond_10
    invoke-virtual {v0}, Lcom/google/common/collect/g1$a;->n()Lcom/google/common/collect/g1;

    move-result-object p1

    return-object p1
.end method

.method public indent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "indent"
        }
    .end annotation

    iput p1, p0, Lorg/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    return-void
.end method

.method public markForPartialFormat(Lorg/google/googlejavaformat/Input$Token;Lorg/google/googlejavaformat/Input$Token;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    invoke-static {p1}, Lorg/google/googlejavaformat/java/JavaOutput;->startTok(Lorg/google/googlejavaformat/Input$Token;)Lorg/google/googlejavaformat/Input$Tok;

    move-result-object p1

    invoke-interface {p1}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result p1

    invoke-static {p2}, Lorg/google/googlejavaformat/java/JavaOutput;->endTok(Lorg/google/googlejavaformat/Input$Token;)Lorg/google/googlejavaformat/Input$Tok;

    move-result-object p2

    invoke-interface {p2}, Lorg/google/googlejavaformat/Input$Tok;->getIndex()I

    move-result p2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/JavaOutput;->partialFormatRanges:Lcom/google/common/collect/m2;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/j2;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/m2;->o(Lcom/google/common/collect/j2;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lw2/z;->c(Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "iLine"

    iget v2, p0, Lorg/google/googlejavaformat/java/JavaOutput;->iLine:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    const-string v1, "lastK"

    iget v2, p0, Lorg/google/googlejavaformat/java/JavaOutput;->lastK:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    const-string v1, "spacesPending"

    iget v2, p0, Lorg/google/googlejavaformat/java/JavaOutput;->spacesPending:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    const-string v1, "newlinesPending"

    iget v2, p0, Lorg/google/googlejavaformat/java/JavaOutput;->newlinesPending:I

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->d(Ljava/lang/String;I)Lw2/z$b;

    move-result-object v0

    const-string v1, "blankLines"

    iget-object v2, p0, Lorg/google/googlejavaformat/java/JavaOutput;->blankLines:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    const-string v1, "super"

    invoke-super {p0}, Lorg/google/googlejavaformat/Output;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lw2/z$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lw2/z$b;

    move-result-object v0

    invoke-virtual {v0}, Lw2/z$b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
