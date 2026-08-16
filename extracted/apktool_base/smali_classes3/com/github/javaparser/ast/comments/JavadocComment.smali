.class public Lcom/github/javaparser/ast/comments/JavadocComment;
.super Lcom/github/javaparser/ast/comments/Comment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    const-string v1, "empty"

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/ast/comments/JavadocComment;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "content"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/ast/comments/Comment;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->customInitialization()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/github/javaparser/ast/AllFieldsConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p1}, Lcom/github/javaparser/ast/comments/JavadocComment;-><init>(Lcom/github/javaparser/TokenRange;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/GenericVisitor<",
            "TR;TA;>;TA;)TR;"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/GenericVisitor;->visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lcom/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "v",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/javaparser/ast/visitor/VoidVisitor<",
            "TA;>;TA;)V"
        }
    .end annotation

    .line 2
    invoke-interface {p1, p0, p2}, Lcom/github/javaparser/ast/visitor/VoidVisitor;->visit(Lcom/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)V

    return-void
.end method

.method public asJavadocComment()Lcom/github/javaparser/ast/comments/JavadocComment;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/JavadocComment;->clone()Lcom/github/javaparser/ast/comments/JavadocComment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/github/javaparser/ast/comments/Comment;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/JavadocComment;->clone()Lcom/github/javaparser/ast/comments/JavadocComment;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/github/javaparser/ast/comments/JavadocComment;
    .locals 2

    .line 4
    new-instance v0, Lcom/github/javaparser/ast/visitor/CloneVisitor;

    invoke-direct {v0}, Lcom/github/javaparser/ast/visitor/CloneVisitor;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/ast/comments/JavadocComment;->accept(Lcom/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/JavadocComment;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/JavadocComment;->clone()Lcom/github/javaparser/ast/comments/JavadocComment;

    move-result-object v0

    return-object v0
.end method

.method public getFooter()Ljava/lang/String;
    .locals 1

    const-string v0, "*/"

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    const-string v0, "/**"

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/CommentMetaModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/JavadocComment;->getMetaModel()Lcom/github/javaparser/metamodel/JavadocCommentMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public getMetaModel()Lcom/github/javaparser/metamodel/JavadocCommentMetaModel;
    .locals 1

    .line 3
    sget-object v0, Lcom/github/javaparser/metamodel/JavaParserMetaModel;->javadocCommentMetaModel:Lcom/github/javaparser/metamodel/JavadocCommentMetaModel;

    return-object v0
.end method

.method public bridge synthetic getMetaModel()Lcom/github/javaparser/metamodel/NodeMetaModel;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/JavadocComment;->getMetaModel()Lcom/github/javaparser/metamodel/JavadocCommentMetaModel;

    move-result-object v0

    return-object v0
.end method

.method public ifJavadocComment(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/github/javaparser/ast/comments/JavadocComment;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public isJavadocComment()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parse()Lcom/github/javaparser/javadoc/Javadoc;
    .locals 1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/StaticJavaParser;->parseJavadoc(Ljava/lang/String;)Lcom/github/javaparser/javadoc/Javadoc;

    move-result-object v0

    return-object v0
.end method

.method public toJavadocComment()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/comments/JavadocComment;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
