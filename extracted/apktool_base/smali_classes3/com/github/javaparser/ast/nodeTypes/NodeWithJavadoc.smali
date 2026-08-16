.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic E(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->lambda$getJavadocComment$0(Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getJavadocComment$0(Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/ast/comments/JavadocComment;

    return p0
.end method

.method private static synthetic lambda$getJavadocComment$1(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/JavadocComment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "comment"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/ast/comments/JavadocComment;

    return-object p0
.end method

.method public static synthetic q(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/JavadocComment;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->lambda$getJavadocComment$1(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/comments/JavadocComment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract getComment()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation
.end method

.method public getJavadoc()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/javadoc/Javadoc;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->getJavadocComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/e;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/e;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getJavadocComment()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/comments/JavadocComment;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/f;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/f;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/g;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/g;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public hasJavaDocComment()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/ast/comments/JavadocComment;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeJavaDocComment()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->hasJavaDocComment()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/comments/Comment;->remove()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "comment"
        }
    .end annotation
.end method

.method public setJavadocComment(Lcom/github/javaparser/ast/comments/JavadocComment;)Lcom/github/javaparser/ast/Node;
    .locals 0
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
            "Lcom/github/javaparser/ast/comments/JavadocComment;",
            ")TN;"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->setComment(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/ast/Node;

    .line 3
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public setJavadocComment(Lcom/github/javaparser/javadoc/Javadoc;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "javadoc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/javadoc/Javadoc;",
            ")TN;"
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/github/javaparser/javadoc/Javadoc;->toComment()Lcom/github/javaparser/ast/comments/JavadocComment;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->setJavadocComment(Lcom/github/javaparser/ast/comments/JavadocComment;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public setJavadocComment(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
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
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/ast/comments/JavadocComment;

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/comments/JavadocComment;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->setJavadocComment(Lcom/github/javaparser/ast/comments/JavadocComment;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public setJavadocComment(Ljava/lang/String;Lcom/github/javaparser/javadoc/Javadoc;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "indentation",
            "javadoc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/javadoc/Javadoc;",
            ")TN;"
        }
    .end annotation

    .line 4
    invoke-virtual {p2, p1}, Lcom/github/javaparser/javadoc/Javadoc;->toComment(Ljava/lang/String;)Lcom/github/javaparser/ast/comments/JavadocComment;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithJavadoc;->setJavadocComment(Lcom/github/javaparser/ast/comments/JavadocComment;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method
