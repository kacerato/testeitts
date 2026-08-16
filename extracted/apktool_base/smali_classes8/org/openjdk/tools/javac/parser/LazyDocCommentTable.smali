.class public Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/tree/DocCommentTable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;
    }
.end annotation


# instance fields
.field diagSource:Lorg/openjdk/tools/javac/util/DiagnosticSource;

.field fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

.field table:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/parser/ParserFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/ParserFactory;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;->diagSource:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;->table:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getComment(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;->table:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    :goto_0
    return-object p1
.end method

.method public getCommentText(Lorg/openjdk/tools/javac/tree/JCTree;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;->getComment(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/openjdk/tools/javac/parser/Tokens$Comment;->getText()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCommentTree(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;->table:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;->tree:Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    if-nez v0, :cond_1

    new-instance v0, Lorg/openjdk/tools/javac/parser/DocCommentParser;

    iget-object v1, p0, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;->fac:Lorg/openjdk/tools/javac/parser/ParserFactory;

    iget-object v2, p0, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;->diagSource:Lorg/openjdk/tools/javac/util/DiagnosticSource;

    iget-object v3, p1, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;->comment:Lorg/openjdk/tools/javac/parser/Tokens$Comment;

    invoke-direct {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/parser/DocCommentParser;-><init>(Lorg/openjdk/tools/javac/parser/ParserFactory;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/parser/DocCommentParser;->parse()Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;->tree:Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;->tree:Lorg/openjdk/tools/javac/tree/DCTree$DCDocComment;

    return-object p1
.end method

.method public hasComment(Lorg/openjdk/tools/javac/tree/JCTree;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;->table:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public putComment(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable;->table:Ljava/util/Map;

    new-instance v1, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;

    invoke-direct {v1, p2}, Lorg/openjdk/tools/javac/parser/LazyDocCommentTable$Entry;-><init>(Lorg/openjdk/tools/javac/parser/Tokens$Comment;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
