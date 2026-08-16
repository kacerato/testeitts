.class Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;
.super Lorg/eclipse/jdt/core/dom/DefaultASTVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CommentMapperVisitor"
.end annotation


# instance fields
.field parentLineRange:[[I

.field siblingPtr:I

.field siblings:[Lorg/eclipse/jdt/core/dom/ASTNode;

.field final synthetic this$0:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

.field topSiblingParent:Lorg/eclipse/jdt/core/dom/ASTNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;)V
    .locals 1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->this$0:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    invoke-direct {p0}, Lorg/eclipse/jdt/core/dom/DefaultASTVisitor;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->topSiblingParent:Lorg/eclipse/jdt/core/dom/ASTNode;

    const/16 p1, 0xa

    new-array v0, p1, [Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblings:[Lorg/eclipse/jdt/core/dom/ASTNode;

    new-array p1, p1, [[I

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->parentLineRange:[[I

    const/4 p1, -0x1

    iput p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    return-void
.end method


# virtual methods
.method public endVisitNode(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 6

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->topSiblingParent:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblings:[Lorg/eclipse/jdt/core/dom/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->this$0:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v3

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->parentLineRange:[[I

    iget v5, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->storeTrailingComments(Lorg/eclipse/jdt/core/dom/ASTNode;IZ[I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->topSiblingParent:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_2

    iget v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->topSiblingParent:Lorg/eclipse/jdt/core/dom/ASTNode;

    :cond_2
    return-void
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/CompilationUnit;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    return p1
.end method

.method public visit(Lorg/eclipse/jdt/core/dom/Modifier;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method public visitNode(Lorg/eclipse/jdt/core/dom/ASTNode;)Z
    .locals 8

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getParent()Lorg/eclipse/jdt/core/dom/ASTNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->topSiblingParent:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblings:[Lorg/eclipse/jdt/core/dom/ASTNode;

    iget v3, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    aget-object v2, v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->this$0:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    invoke-virtual {p1}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->parentLineRange:[[I

    iget v7, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    aget-object v6, v6, v7

    invoke-virtual {v4, v2, v5, v3, v6}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->storeTrailingComments(Lorg/eclipse/jdt/core/dom/ASTNode;IZ[I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget v2, p1, Lorg/eclipse/jdt/core/dom/ASTNode;->typeAndFlags:I

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    return v3

    :cond_2
    iget v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    const/4 v5, -0x1

    if-le v2, v5, :cond_3

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->parentLineRange:[[I

    aget-object v2, v5, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v4, v2, v3

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->this$0:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    iget-object v5, v5, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    iget v5, v5, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->linePtr:I

    add-int/2addr v5, v4

    aput v5, v2, v4

    :goto_1
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->this$0:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    invoke-virtual {v5, p1, v1, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->storeLeadingComments(Lorg/eclipse/jdt/core/dom/ASTNode;I[I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->topSiblingParent:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-eq v1, v0, :cond_7

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblings:[Lorg/eclipse/jdt/core/dom/ASTNode;

    array-length v5, v1

    iget v6, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    add-int/2addr v6, v4

    iput v6, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    if-ne v5, v6, :cond_4

    mul-int/lit8 v5, v6, 0x2

    new-array v5, v5, [Lorg/eclipse/jdt/core/dom/ASTNode;

    iput-object v5, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblings:[Lorg/eclipse/jdt/core/dom/ASTNode;

    invoke-static {v1, v3, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->parentLineRange:[[I

    iget v5, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    mul-int/lit8 v6, v5, 0x2

    new-array v6, v6, [[I

    iput-object v6, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->parentLineRange:[[I

    invoke-static {v1, v3, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->topSiblingParent:Lorg/eclipse/jdt/core/dom/ASTNode;

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->parentLineRange:[[I

    iget v3, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    aput-object v2, v1, v3

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getStartPosition()I

    move-result v1

    iget-object v5, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->this$0:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    invoke-virtual {v5, v1, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getLineNumber(I[I)I

    move-result v5

    iget-object v6, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->this$0:Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/dom/ASTNode;->getLength()I

    move-result v7

    add-int/2addr v1, v7

    sub-int/2addr v1, v4

    invoke-virtual {v6, v1, v2}, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper;->getLineNumber(I[I)I

    move-result v1

    iget-object v2, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->parentLineRange:[[I

    iget v6, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    aget-object v7, v2, v6

    if-nez v7, :cond_6

    filled-new-array {v5, v1}, [I

    move-result-object v1

    aput-object v1, v2, v6

    goto :goto_2

    :cond_6
    aput v5, v7, v3

    aput v1, v7, v4

    :goto_2
    iput-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->topSiblingParent:Lorg/eclipse/jdt/core/dom/ASTNode;

    :cond_7
    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblings:[Lorg/eclipse/jdt/core/dom/ASTNode;

    iget v1, p0, Lorg/eclipse/jdt/core/dom/DefaultCommentMapper$CommentMapperVisitor;->siblingPtr:I

    aput-object p1, v0, v1

    return v4
.end method
