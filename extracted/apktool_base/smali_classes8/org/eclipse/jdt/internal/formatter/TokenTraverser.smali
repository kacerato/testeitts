.class public abstract Lorg/eclipse/jdt/internal/formatter/TokenTraverser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected counter:I

.field private current:Lorg/eclipse/jdt/internal/formatter/Token;

.field private lineBreaksAfter:I

.field private lineBreaksBefore:I

.field private next:Lorg/eclipse/jdt/internal/formatter/Token;

.field private previous:Lorg/eclipse/jdt/internal/formatter/Token;

.field private spaceAfter:Z

.field private spaceBefore:Z

.field private structureChanged:Z

.field protected value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->counter:I

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->value:I

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->structureChanged:Z

    return-void
.end method

.method private initTraverse(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->structureChanged:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->next:Lorg/eclipse/jdt/internal/formatter/Token;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->previous:Lorg/eclipse/jdt/internal/formatter/Token;

    if-lez p2, :cond_1

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jdt/internal/formatter/Token;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->previous:Lorg/eclipse/jdt/internal/formatter/Token;

    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/jdt/internal/formatter/Token;

    iput-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->current:Lorg/eclipse/jdt/internal/formatter/Token;

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->previous:Lorg/eclipse/jdt/internal/formatter/Token;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iget-object p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->current:Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->lineBreaksBefore:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->current:Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceBefore()Z

    move-result p1

    iput-boolean p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->spaceBefore:Z

    iget p2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->lineBreaksBefore:I

    if-nez p2, :cond_5

    if-nez p1, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->previous:Lorg/eclipse/jdt/internal/formatter/Token;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceAfter()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :cond_4
    :goto_1
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->spaceBefore:Z

    :cond_5
    return-void
.end method


# virtual methods
.method public getCurrent()Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->current:Lorg/eclipse/jdt/internal/formatter/Token;

    return-object v0
.end method

.method public getLineBreaksAfter()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->lineBreaksAfter:I

    return v0
.end method

.method public getLineBreaksBefore()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->lineBreaksBefore:I

    return v0
.end method

.method public getNext()Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->next:Lorg/eclipse/jdt/internal/formatter/Token;

    return-object v0
.end method

.method public getPrevious()Lorg/eclipse/jdt/internal/formatter/Token;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->previous:Lorg/eclipse/jdt/internal/formatter/Token;

    return-object v0
.end method

.method public isSpaceAfter()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->spaceAfter:Z

    return v0
.end method

.method public isSpaceBefore()Z
    .locals 1

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->spaceBefore:Z

    return v0
.end method

.method public structureChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->structureChanged:Z

    return-void
.end method

.method public abstract token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z
.end method

.method public traverse(Ljava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/eclipse/jdt/internal/formatter/Token;",
            ">;I)I"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->initTraverse(Ljava/util/List;I)V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    return p1

    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->structureChanged:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->initTraverse(Ljava/util/List;I)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->next:Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/formatter/Token;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->next:Lorg/eclipse/jdt/internal/formatter/Token;

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->current:Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksAfter()I

    move-result v0

    iget-object v2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->next:Lorg/eclipse/jdt/internal/formatter/Token;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/formatter/Token;->getLineBreaksBefore()I

    move-result v2

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->lineBreaksAfter:I

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->current:Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceAfter()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->spaceAfter:Z

    iget v2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->lineBreaksAfter:I

    if-nez v2, :cond_6

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->next:Lorg/eclipse/jdt/internal/formatter/Token;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceBefore()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v1, v3

    :cond_5
    iput-boolean v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->spaceAfter:Z

    :cond_6
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->current:Lorg/eclipse/jdt/internal/formatter/Token;

    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->token(Lorg/eclipse/jdt/internal/formatter/Token;I)Z

    move-result v0

    if-nez v0, :cond_7

    return p2

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->next:Lorg/eclipse/jdt/internal/formatter/Token;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->current:Lorg/eclipse/jdt/internal/formatter/Token;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->previous:Lorg/eclipse/jdt/internal/formatter/Token;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->current:Lorg/eclipse/jdt/internal/formatter/Token;

    iget v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->lineBreaksAfter:I

    iput v1, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->lineBreaksBefore:I

    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->spaceAfter:Z

    iput-boolean v2, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->spaceBefore:Z

    if-lez v1, :cond_8

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/formatter/Token;->isSpaceBefore()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/formatter/TokenTraverser;->spaceBefore:Z

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
