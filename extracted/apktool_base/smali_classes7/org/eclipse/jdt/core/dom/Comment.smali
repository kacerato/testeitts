.class public abstract Lorg/eclipse/jdt/core/dom/Comment;
.super Lorg/eclipse/jdt/core/dom/ASTNode;
.source "SourceFile"


# instance fields
.field private alternateRoot:Lorg/eclipse/jdt/core/dom/ASTNode;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/core/dom/AST;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/core/dom/ASTNode;-><init>(Lorg/eclipse/jdt/core/dom/AST;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Comment;->alternateRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-void
.end method


# virtual methods
.method public final getAlternateRoot()Lorg/eclipse/jdt/core/dom/ASTNode;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/core/dom/Comment;->alternateRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-object v0
.end method

.method public final isBlockComment()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/BlockComment;

    return v0
.end method

.method public final isDocComment()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/Javadoc;

    return v0
.end method

.method public final isLineComment()Z
    .locals 1

    instance-of v0, p0, Lorg/eclipse/jdt/core/dom/LineComment;

    return v0
.end method

.method public memSize()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method public final setAlternateRoot(Lorg/eclipse/jdt/core/dom/ASTNode;)V
    .locals 0

    invoke-virtual {p0}, Lorg/eclipse/jdt/core/dom/ASTNode;->checkModifiable()V

    iput-object p1, p0, Lorg/eclipse/jdt/core/dom/Comment;->alternateRoot:Lorg/eclipse/jdt/core/dom/ASTNode;

    return-void
.end method
