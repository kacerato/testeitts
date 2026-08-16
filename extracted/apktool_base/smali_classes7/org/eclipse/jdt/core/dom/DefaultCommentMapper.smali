.class Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;
    }
.end annotation


# static fields
.field static final STORAGE_INCREMENT:I = 0x10


# instance fields
.field comments:[Lorg/eclipse/jdt/core/dom/Comment;

.field lastTrailingPtr:I

.field leadingIndexes:[J

.field leadingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

.field leadingPtr:I

.field scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

.field trailingIndexes:[J

.field trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

.field trailingPtr:I


# direct methods
.method public constructor <init>([Lorg/eclipse/jdt/core/dom/Comment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    return-void
.end method

.method private getCommentIndex(III)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    array-length p2, p1

    if-lez p2, :cond_0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-le p1, v2, :cond_2

    goto :goto_1

    :cond_2
    sub-int v1, v2, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v4

    if-ge p2, v4, :cond_3

    add-int/lit8 v2, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v4, p1

    if-lt p2, v4, :cond_4

    add-int/lit8 p1, v1, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_1
    if-gez v0, :cond_8

    if-eqz p3, :cond_8

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    if-ge p2, p1, :cond_6

    if-gez p3, :cond_5

    add-int/lit8 v1, v1, -0x1

    :cond_5
    return v1

    :cond_6
    if-gez p3, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v1, v1, 0x1

    :goto_2
    return v1

    :cond_8
    return v0
.end method


# virtual methods
.method public firstLeadingCommentIndex(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingPtr:I

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingPtr:I

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingIndexes:[J

    aget-wide v0, p1, v0

    const/16 p1, 0x20

    shr-long/2addr v0, p1

    long-to-int p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public getComment(I)Lorg/eclipse/jdt/core/dom/Comment;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getCommentIndex(III)I

    move-result p1

    if-gez p1, :cond_2

    return-object v1

    :cond_2
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 6

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    if-ltz v1, :cond_3

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_2

    iget v5, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    if-le v3, v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    aget-object v4, v4, v3

    if-ne v4, p1, :cond_1

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    aget-wide v4, v1, v3

    move-wide v1, v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v4, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    long-to-int v0, v1

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result p1

    add-int/2addr v0, p1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getExtendedLength(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getExtendedEnd(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getExtendedStartPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getExtendedStartPosition(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 5

    iget v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingPtr:I

    if-ltz v0, :cond_3

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    iget v4, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingPtr:I

    if-le v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingIndexes:[J

    aget-wide v3, v0, v2

    move-wide v0, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v3, :cond_3

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result p1

    return p1
.end method

.method public final getLineNumber(I[I)I
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->lineEnds:[I

    array-length v1, v0

    const/4 v2, 0x0

    aget v2, p2, v2

    if-le v2, v1, :cond_0

    move v2, v1

    :cond_0
    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget p2, p2, v3

    if-le p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    :goto_0
    sub-int/2addr v1, v3

    invoke-static {p1, v0, v2, v1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getLineNumber(I[III)I

    move-result p1

    return p1
.end method

.method public hasSameTable([Lorg/eclipse/jdt/core/dom/Comment;)Z
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public initialize(Lorg/eclipse/jdt/core/dom/CompilationUnit;Lorg/eclipse/jdt/internal/compiler/parser/Scanner;)V
    .locals 7

    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingPtr:I

    iput v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    iget-object v0, p1, Lorg/eclipse/jdt/core/dom/CompilationUnit;->optionalCommentTable:[Lorg/eclipse/jdt/core/dom/Comment;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-object p2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v0, 0x1

    iput-boolean v0, p2, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->tokenizeWhiteSpace:Z

    new-instance p2, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;

    invoke-direct {p2, p0}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;-><init>(Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;)V

    invoke-virtual {p1, p2}, Lorg/eclipse/jdt/core/dom/ASTNode;->accept(Lorg/eclipse/jdt/core/dom/ASTVisitor;)V

    iget p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingPtr:I

    add-int/2addr p1, v0

    const/4 p2, 0x0

    if-lez p1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingIndexes:[J

    array-length v1, v1

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    new-array v2, p1, [Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-static {v1, p2, v2, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingIndexes:[J

    new-array v2, p1, [J

    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingIndexes:[J

    invoke-static {v1, p2, v2, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    const/4 v1, 0x0

    if-ltz p1, :cond_5

    :cond_3
    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    iget v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    aget-wide v3, p1, v2

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    if-gez v2, :cond_3

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    :goto_0
    iget p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    add-int/2addr p1, v0

    if-lez p1, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    array-length v0, v0

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    new-array v2, p1, [Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-static {v0, p2, v2, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    new-array v2, p1, [J

    iput-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    invoke-static {v0, p2, v2, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    iput-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    return-void
.end method

.method public lastTrailingCommentIndex(Lorg/eclipse/jdt/core/dom/ASTNode;)I
    .locals 2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    aget-wide v0, p1, v0

    long-to-int p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public storeLeadingComments(Lorg/eclipse/jdt/core/dom/ASTNode;I[I)I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getLineNumber(I[I)I

    move-result v4

    invoke-virtual {v0, v3, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getLineNumber(I[I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-direct {v0, v6, v3, v7}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getCommentIndex(III)I

    move-result v8

    if-ne v8, v7, :cond_0

    return v3

    :cond_0
    move v10, v3

    move v11, v7

    move v9, v8

    :goto_0
    const/16 v12, 0x3e8

    const/4 v13, 0x1

    if-ltz v9, :cond_1

    if-ge v10, v1, :cond_2

    :cond_1
    move v6, v7

    goto :goto_4

    :cond_2
    iget-object v14, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    aget-object v14, v14, v9

    invoke-virtual {v14}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v15

    invoke-virtual {v14}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v14

    add-int/2addr v14, v15

    add-int/lit8 v6, v14, -0x1

    invoke-virtual {v0, v15, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getLineNumber(I[I)I

    move-result v7

    if-le v6, v1, :cond_3

    if-ne v7, v4, :cond_4

    if-eq v7, v5, :cond_4

    :cond_3
    :goto_1
    const/4 v6, -0x1

    goto :goto_4

    :cond_4
    if-ge v14, v10, :cond_8

    iget-object v6, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v6, v14, v10}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :try_start_0
    iget-object v6, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v6

    if-ne v6, v12, :cond_7

    iget-object v6, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v7, v6, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v7, v10, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v6

    const/4 v7, -0x1

    const/4 v10, 0x0

    :goto_2
    const/16 v14, 0xa

    add-int/2addr v7, v13

    invoke-static {v14, v6, v7}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v7

    if-gez v7, :cond_6

    if-le v10, v13, :cond_8

    goto :goto_1

    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-ne v9, v8, :cond_3

    :catch_0
    return v3

    :cond_8
    add-int/lit8 v6, v9, -0x1

    move v11, v9

    move v10, v15

    const/4 v7, -0x1

    move v9, v6

    const/4 v6, 0x0

    goto :goto_0

    :goto_4
    if-eq v11, v6, :cond_f

    iget-object v6, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    aget-object v6, v6, v11

    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v6

    if-ge v1, v6, :cond_c

    if-eq v4, v5, :cond_c

    iget-object v4, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4, v1, v6}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :cond_9
    :goto_5
    :try_start_1
    iget-object v4, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v7, v4, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I

    if-lt v7, v6, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v4

    if-eq v4, v12, :cond_9

    iget-object v4, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentTokenEndPosition()I

    move-result v1
    :try_end_1
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    :goto_6
    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getLineNumber(I[I)I

    move-result v1

    iget-object v4, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    array-length v4, v4

    :goto_7
    if-ge v11, v4, :cond_c

    iget-object v6, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    aget-object v6, v6, v11

    invoke-virtual {v6}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v6

    invoke-virtual {v0, v6, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getLineNumber(I[I)I

    move-result v6

    if-ne v1, v6, :cond_c

    if-ne v5, v1, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_c
    :goto_8
    if-gt v11, v8, :cond_f

    iget v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingPtr:I

    add-int/2addr v1, v13

    iput v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingPtr:I

    const/16 v2, 0x10

    if-nez v1, :cond_d

    new-array v1, v2, [Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    new-array v1, v2, [J

    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingIndexes:[J

    goto :goto_9

    :cond_d
    iget-object v3, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    array-length v4, v3

    if-ne v1, v4, :cond_e

    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    new-array v2, v4, [Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingIndexes:[J

    new-array v2, v4, [J

    iput-object v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingIndexes:[J

    iget v3, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingPtr:I

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e
    :goto_9
    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    iget v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingPtr:I

    aput-object p1, v1, v2

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->leadingIndexes:[J

    int-to-long v3, v11

    const/16 v5, 0x20

    shl-long/2addr v3, v5

    int-to-long v5, v8

    add-long/2addr v3, v5

    aput-wide v3, v1, v2

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    aget-object v1, v1, v8

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    :cond_f
    return v3
.end method

.method public storeTrailingComments(Lorg/eclipse/jdt/core/dom/ASTNode;IZ[I)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v4, v3, -0x1

    const-wide/16 v5, -0x1

    const/16 v7, 0x10

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v4, v1, :cond_2

    iget v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    add-int/2addr v1, v10

    iput v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    if-nez v1, :cond_0

    new-array v1, v7, [Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    new-array v1, v7, [J

    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    iput v8, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->lastTrailingPtr:I

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    array-length v3, v2

    if-ne v1, v3, :cond_1

    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v7

    new-array v7, v3, [Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v7, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-static {v2, v9, v7, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    new-array v2, v3, [J

    iput-object v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    iget v3, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_0
    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    iget v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    aput-object p1, v1, v2

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    aput-wide v5, v1, v2

    return v4

    :cond_2
    invoke-virtual {v0, v4, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getLineNumber(I[I)I

    move-result v11

    invoke-direct {v0, v9, v4, v10}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getCommentIndex(III)I

    move-result v12

    if-ne v12, v8, :cond_3

    return v4

    :cond_3
    iget-object v13, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    array-length v13, v13

    move v14, v3

    move v5, v8

    move v6, v5

    move v15, v12

    :goto_1
    if-ge v15, v13, :cond_4

    if-lt v3, v1, :cond_5

    :cond_4
    :goto_2
    move/from16 v17, v6

    move v3, v8

    goto/16 :goto_6

    :cond_5
    iget-object v3, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v9

    if-lt v9, v1, :cond_6

    goto :goto_2

    :cond_6
    if-ge v14, v9, :cond_b

    iget-object v7, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v7, v14, v9}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->resetTo(II)V

    :try_start_0
    iget-object v7, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getNextToken()I

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_7

    iget-object v7, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v8, v7, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->currentPosition:I
    :try_end_0
    .catch Lorg/eclipse/jdt/core/compiler/InvalidInputException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v8, v9, :cond_8

    :cond_7
    move/from16 v17, v6

    goto :goto_4

    :cond_8
    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->getCurrentIdentifierSource()[C

    move-result-object v7

    move/from16 v17, v6

    move/from16 v16, v13

    const/4 v8, -0x1

    const/4 v13, 0x0

    :goto_3
    const/16 v6, 0xa

    add-int/2addr v8, v10

    invoke-static {v6, v7, v8}, Lorg/eclipse/jdt/core/compiler/CharOperation;->indexOf(C[CI)I

    move-result v8

    if-gez v8, :cond_a

    if-le v13, v10, :cond_c

    :cond_9
    const/4 v3, -0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :goto_4
    if-ne v15, v12, :cond_9

    :catch_0
    return v4

    :cond_b
    move/from16 v17, v6

    move/from16 v16, v13

    :cond_c
    invoke-virtual {v0, v9, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getLineNumber(I[I)I

    move-result v5

    if-ne v5, v11, :cond_d

    move v6, v15

    goto :goto_5

    :cond_d
    move/from16 v6, v17

    :goto_5
    invoke-virtual {v3}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v3

    add-int v14, v9, v3

    add-int/lit8 v3, v15, 0x1

    move v5, v15

    move/from16 v13, v16

    const/16 v7, 0x10

    const/4 v8, -0x1

    move v15, v3

    move v3, v9

    const/4 v9, 0x0

    goto :goto_1

    :goto_6
    if-eq v5, v3, :cond_17

    if-nez p3, :cond_f

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getLineNumber(I[I)I

    move-result v1

    invoke-virtual {v0, v14, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getLineNumber(I[I)I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v1, v10, :cond_f

    move/from16 v6, v17

    if-ne v6, v3, :cond_e

    return v4

    :cond_e
    move v5, v6

    :cond_f
    iget v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    add-int/2addr v1, v10

    iput v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    if-nez v1, :cond_10

    const/16 v2, 0x10

    new-array v1, v2, [Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    new-array v1, v2, [J

    iput-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    const/4 v1, -0x1

    iput v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->lastTrailingPtr:I

    goto :goto_7

    :cond_10
    const/16 v2, 0x10

    iget-object v3, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    array-length v4, v3

    if-ne v1, v4, :cond_11

    mul-int/lit8 v4, v1, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    new-array v2, v4, [Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    const/4 v6, 0x0

    invoke-static {v3, v6, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    new-array v2, v4, [J

    iput-object v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    iget v3, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_7
    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    iget v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    aput-object p1, v1, v2

    int-to-long v3, v12

    const/16 v1, 0x20

    shl-long/2addr v3, v1

    int-to-long v6, v5

    add-long/2addr v6, v3

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    aput-wide v6, v1, v2

    iget-object v1, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    iget-object v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->comments:[Lorg/eclipse/jdt/core/dom/Comment;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v10

    iget v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    sub-int/2addr v2, v10

    move v3, v2

    move-object/from16 v2, p1

    :goto_8
    if-gez v3, :cond_12

    goto :goto_9

    :cond_12
    iget-object v4, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    aget-wide v8, v4, v3

    const-wide/16 v11, -0x1

    cmp-long v4, v8, v11

    if-eqz v4, :cond_13

    goto :goto_9

    :cond_13
    iget-object v4, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v5

    if-eq v2, v5, :cond_16

    :goto_9
    iget v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->lastTrailingPtr:I

    if-le v3, v2, :cond_15

    sub-int v2, v3, v2

    add-int/2addr v3, v10

    :goto_a
    iget v4, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    if-le v3, v4, :cond_14

    sub-int/2addr v4, v2

    iput v4, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    goto :goto_b

    :cond_14
    iget-object v4, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingNodes:[Lorg/eclipse/jdt/core/dom/ASTNode;

    sub-int v5, v3, v2

    aget-object v6, v4, v3

    aput-object v6, v4, v5

    iget-object v4, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    aget-wide v6, v4, v3

    aput-wide v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_15
    :goto_b
    iget v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingPtr:I

    iput v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->lastTrailingPtr:I

    move v4, v1

    goto :goto_c

    :cond_16
    iget-object v2, v0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->trailingIndexes:[J

    aput-wide v6, v2, v3

    add-int/lit8 v3, v3, -0x1

    move-object v2, v4

    goto :goto_8

    :cond_17
    :goto_c
    return v4
.end method
