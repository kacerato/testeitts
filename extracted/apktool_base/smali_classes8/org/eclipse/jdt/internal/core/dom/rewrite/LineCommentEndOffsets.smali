.class public Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final commentList:Ljava/util/List;

.field private offsets:[I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->commentList:Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->offsets:[I

    return-void
.end method

.method private getOffsets()[I
    .locals 7

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->offsets:[I

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->commentList:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-lt v2, v0, :cond_2

    new-array v2, v3, [I

    iput-object v2, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->offsets:[I

    move v2, v1

    :goto_1
    if-lt v1, v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->commentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lorg/eclipse/jdt/core/dom/LineComment;

    if-eqz v4, :cond_1

    check-cast v3, Lorg/eclipse/jdt/core/dom/LineComment;

    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->offsets:[I

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v6

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    add-int/2addr v6, v3

    aput v6, v4, v2

    move v2, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->commentList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jdt/core/dom/LineComment;

    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Util;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->offsets:[I

    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->offsets:[I

    return-object v0
.end method


# virtual methods
.method public isEndOfLineComment(I)Z
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->getOffsets()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEndOfLineComment(I[C)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    .line 2
    array-length v1, p2

    if-ge p1, v1, :cond_0

    aget-char p2, p2, p1

    invoke-static {p2}, Lorg/eclipse/jdt/core/formatter/IndentManipulation;->isLineDelimiterChar(C)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->getOffsets()[I

    move-result-object p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-ltz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public remove(I)Z
    .locals 3

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/core/dom/rewrite/LineCommentEndOffsets;->getOffsets()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    const/4 v2, 0x1

    if-lez p1, :cond_0

    invoke-static {v0, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    const/4 p1, -0x1

    aput p1, v0, v1

    return v2

    :cond_1
    return v1
.end method
