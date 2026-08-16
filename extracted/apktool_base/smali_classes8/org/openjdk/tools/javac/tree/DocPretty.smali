.class public Lorg/openjdk/tools/javac/tree/DocPretty;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/doctree/DocTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/openjdk/source/doctree/DocTreeVisitor<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final lineSep:Ljava/lang/String;

.field lmargin:I

.field final out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/openjdk/tools/javac/tree/DocPretty;->lmargin:I

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/tree/DocPretty;->lineSep:Ljava/lang/String;

    iput-object p1, p0, Lorg/openjdk/tools/javac/tree/DocPretty;->out:Ljava/io/Writer;

    return-void
.end method


# virtual methods
.method public print(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DocPretty;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Convert;->escapeUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/doctree/DocTree;

    .line 6
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public print(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/source/doctree/DocTree;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/doctree/DocTree;

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 10
    :cond_1
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public print(Lorg/openjdk/source/doctree/DocTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    :try_start_0
    const-string p1, "/*missing*/"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, p0, v0}, Lorg/openjdk/source/doctree/DocTree;->accept(Lorg/openjdk/source/doctree/DocTreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 3
    :goto_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public printTagName(Lorg/openjdk/source/doctree/DocTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DocPretty;->out:Ljava/io/Writer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DocPretty;->out:Ljava/io/Writer;

    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocTree;->getKind()Lorg/openjdk/source/doctree/DocTree$Kind;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/source/doctree/DocTree$Kind;->tagName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public println()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/tree/DocPretty;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/tree/DocPretty;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic visitAttribute(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitAttribute(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAttribute(Lorg/openjdk/source/doctree/AttributeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 2
    :try_start_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/AttributeTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    sget-object p2, Lorg/openjdk/tools/javac/tree/DocPretty$1;->$SwitchMap$com$sun$source$doctree$AttributeTree$ValueKind:[I

    invoke-interface {p1}, Lorg/openjdk/source/doctree/AttributeTree;->getValueKind()Lorg/openjdk/source/doctree/AttributeTree$ValueKind;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p2, p2, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 4
    const-string p2, "\""

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    const-string p2, "\'"

    goto :goto_0

    .line 7
    :cond_2
    const-string p2, ""

    goto :goto_0

    :cond_3
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_4

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 9
    invoke-interface {p1}, Lorg/openjdk/source/doctree/AttributeTree;->getValue()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V

    .line 10
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v1

    .line 11
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitAuthor(Lorg/openjdk/source/doctree/AuthorTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitAuthor(Lorg/openjdk/source/doctree/AuthorTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitAuthor(Lorg/openjdk/source/doctree/AuthorTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/AuthorTree;->getName()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitComment(Lorg/openjdk/source/doctree/CommentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitComment(Lorg/openjdk/source/doctree/CommentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitComment(Lorg/openjdk/source/doctree/CommentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/CommentTree;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitDeprecated(Lorg/openjdk/source/doctree/DeprecatedTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitDeprecated(Lorg/openjdk/source/doctree/DeprecatedTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeprecated(Lorg/openjdk/source/doctree/DeprecatedTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/DeprecatedTree;->getBody()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/doctree/DeprecatedTree;->getBody()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 6
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitDocComment(Lorg/openjdk/source/doctree/DocCommentTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitDocComment(Lorg/openjdk/source/doctree/DocCommentTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDocComment(Lorg/openjdk/source/doctree/DocCommentTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    :try_start_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocCommentTree;->getFullBody()Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/DocCommentTree;->getBlockTags()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V

    .line 5
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "\n"

    if-nez p2, :cond_0

    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitDocRoot(Lorg/openjdk/source/doctree/DocRootTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitDocRoot(Lorg/openjdk/source/doctree/DocRootTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDocRoot(Lorg/openjdk/source/doctree/DocRootTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    const-string p2, "{"

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 4
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitEndElement(Lorg/openjdk/source/doctree/EndElementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitEndElement(Lorg/openjdk/source/doctree/EndElementTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitEndElement(Lorg/openjdk/source/doctree/EndElementTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    const-string p2, "</"

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/EndElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    const-string p1, ">"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitEntity(Lorg/openjdk/source/doctree/EntityTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitEntity(Lorg/openjdk/source/doctree/EntityTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitEntity(Lorg/openjdk/source/doctree/EntityTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    const-string p2, "&"

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/EntityTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    const-string p1, ";"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitErroneous(Lorg/openjdk/source/doctree/ErroneousTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitErroneous(Lorg/openjdk/source/doctree/ErroneousTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitErroneous(Lorg/openjdk/source/doctree/ErroneousTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/TextTree;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitHidden(Lorg/openjdk/source/doctree/HiddenTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitHidden(Lorg/openjdk/source/doctree/HiddenTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitHidden(Lorg/openjdk/source/doctree/HiddenTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/HiddenTree;->getBody()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/doctree/HiddenTree;->getBody()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 6
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitIdentifier(Lorg/openjdk/source/doctree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitIdentifier(Lorg/openjdk/source/doctree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lorg/openjdk/source/doctree/IdentifierTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/IdentifierTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitIndex(Lorg/openjdk/source/doctree/IndexTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitIndex(Lorg/openjdk/source/doctree/IndexTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitIndex(Lorg/openjdk/source/doctree/IndexTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    const-string p2, " "

    :try_start_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/doctree/IndexTree;->getSearchTerm()Lorg/openjdk/source/doctree/DocTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/doctree/IndexTree;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/doctree/IndexTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitInheritDoc(Lorg/openjdk/source/doctree/InheritDocTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitInheritDoc(Lorg/openjdk/source/doctree/InheritDocTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitInheritDoc(Lorg/openjdk/source/doctree/InheritDocTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    const-string p2, "{"

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 4
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitLink(Lorg/openjdk/source/doctree/LinkTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitLink(Lorg/openjdk/source/doctree/LinkTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLink(Lorg/openjdk/source/doctree/LinkTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    const-string p2, " "

    :try_start_0
    const-string v0, "{"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 4
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/doctree/LinkTree;->getReference()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/doctree/LinkTree;->getLabel()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/doctree/LinkTree;->getLabel()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitLiteral(Lorg/openjdk/source/doctree/LiteralTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitLiteral(Lorg/openjdk/source/doctree/LiteralTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitLiteral(Lorg/openjdk/source/doctree/LiteralTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    :try_start_0
    const-string p2, "{"

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/LiteralTree;->getBody()Lorg/openjdk/source/doctree/TextTree;

    move-result-object p2

    invoke-interface {p2}, Lorg/openjdk/source/doctree/TextTree;->getBody()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/LiteralTree;->getBody()Lorg/openjdk/source/doctree/TextTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    .line 8
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    .line 9
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitOther(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitOther(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitOther(Lorg/openjdk/source/doctree/DocTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "(UNKNOWN: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/DocPretty;->println()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitParam(Lorg/openjdk/source/doctree/ParamTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitParam(Lorg/openjdk/source/doctree/ParamTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitParam(Lorg/openjdk/source/doctree/ParamTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    const-string p2, " "

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ParamTree;->isTypeParameter()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "<"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ParamTree;->getName()Lorg/openjdk/source/doctree/IdentifierTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ParamTree;->isTypeParameter()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ">"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ParamTree;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 9
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ParamTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 10
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitProvides(Lorg/openjdk/source/doctree/ProvidesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitProvides(Lorg/openjdk/source/doctree/ProvidesTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitProvides(Lorg/openjdk/source/doctree/ProvidesTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    const-string p2, " "

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ProvidesTree;->getServiceType()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ProvidesTree;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 7
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ProvidesTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 8
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitReference(Lorg/openjdk/source/doctree/ReferenceTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ReferenceTree;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitReturn(Lorg/openjdk/source/doctree/ReturnTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitReturn(Lorg/openjdk/source/doctree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitReturn(Lorg/openjdk/source/doctree/ReturnTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ReturnTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitSee(Lorg/openjdk/source/doctree/SeeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitSee(Lorg/openjdk/source/doctree/SeeTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSee(Lorg/openjdk/source/doctree/SeeTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SeeTree;->getReference()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x1

    move v0, p2

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/source/doctree/DocTree;

    if-eqz v0, :cond_0

    .line 4
    const-string v0, " "

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_1
    const/4 v0, 0x0

    if-eqz v1, :cond_1

    .line 5
    instance-of v1, v2, Lorg/openjdk/source/doctree/ReferenceTree;

    if-eqz v1, :cond_1

    move v1, p2

    goto :goto_2

    :cond_1
    move v1, v0

    .line 6
    :goto_2
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 7
    :goto_3
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitSerial(Lorg/openjdk/source/doctree/SerialTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitSerial(Lorg/openjdk/source/doctree/SerialTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSerial(Lorg/openjdk/source/doctree/SerialTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialTree;->getDescription()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 6
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitSerialData(Lorg/openjdk/source/doctree/SerialDataTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitSerialData(Lorg/openjdk/source/doctree/SerialDataTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSerialData(Lorg/openjdk/source/doctree/SerialDataTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialDataTree;->getDescription()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialDataTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 6
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitSerialField(Lorg/openjdk/source/doctree/SerialFieldTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitSerialField(Lorg/openjdk/source/doctree/SerialFieldTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSerialField(Lorg/openjdk/source/doctree/SerialFieldTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    const-string p2, " "

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialFieldTree;->getName()Lorg/openjdk/source/doctree/IdentifierTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    .line 5
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialFieldTree;->getType()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    .line 7
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialFieldTree;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 9
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SerialFieldTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 10
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitSince(Lorg/openjdk/source/doctree/SinceTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitSince(Lorg/openjdk/source/doctree/SinceTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitSince(Lorg/openjdk/source/doctree/SinceTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/SinceTree;->getBody()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitStartElement(Lorg/openjdk/source/doctree/StartElementTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitStartElement(Lorg/openjdk/source/doctree/StartElementTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitStartElement(Lorg/openjdk/source/doctree/StartElementTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    .line 2
    const-string p2, " "

    :try_start_0
    const-string v0, "<"

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/StartElementTree;->getName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/StartElementTree;->getAttributes()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V

    .line 8
    invoke-interface {p1}, Lorg/openjdk/source/doctree/StartElementTree;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/doctree/DocTree;

    .line 9
    invoke-interface {p1}, Lorg/openjdk/source/doctree/StartElementTree;->isSelfClosing()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lorg/openjdk/source/doctree/AttributeTree;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/openjdk/source/doctree/AttributeTree;

    .line 10
    invoke-interface {v0}, Lorg/openjdk/source/doctree/AttributeTree;->getValueKind()Lorg/openjdk/source/doctree/AttributeTree$ValueKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/doctree/AttributeTree$ValueKind;->UNQUOTED:Lorg/openjdk/source/doctree/AttributeTree$ValueKind;

    if-ne v0, v1, :cond_0

    .line 11
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/StartElementTree;->isSelfClosing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 13
    const-string p1, "/"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 14
    :cond_1
    const-string p1, ">"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    .line 15
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitText(Lorg/openjdk/source/doctree/TextTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitText(Lorg/openjdk/source/doctree/TextTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitText(Lorg/openjdk/source/doctree/TextTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-interface {p1}, Lorg/openjdk/source/doctree/TextTree;->getBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitThrows(Lorg/openjdk/source/doctree/ThrowsTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitThrows(Lorg/openjdk/source/doctree/ThrowsTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitThrows(Lorg/openjdk/source/doctree/ThrowsTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    const-string p2, " "

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ThrowsTree;->getExceptionName()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ThrowsTree;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 7
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ThrowsTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 8
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitUnknownBlockTag(Lorg/openjdk/source/doctree/UnknownBlockTagTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitUnknownBlockTag(Lorg/openjdk/source/doctree/UnknownBlockTagTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknownBlockTag(Lorg/openjdk/source/doctree/UnknownBlockTagTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    const-string p2, "@"

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lorg/openjdk/source/doctree/BlockTagTree;->getTagName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/doctree/UnknownBlockTagTree;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitUnknownInlineTag(Lorg/openjdk/source/doctree/UnknownInlineTagTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitUnknownInlineTag(Lorg/openjdk/source/doctree/UnknownInlineTagTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknownInlineTag(Lorg/openjdk/source/doctree/UnknownInlineTagTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    const-string p2, "{"

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    const-string p2, "@"

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/InlineTagTree;->getTagName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 5
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/doctree/UnknownInlineTagTree;->getContent()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V

    .line 7
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitUses(Lorg/openjdk/source/doctree/UsesTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitUses(Lorg/openjdk/source/doctree/UsesTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitUses(Lorg/openjdk/source/doctree/UsesTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 2
    const-string p2, " "

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/UsesTree;->getServiceType()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    .line 5
    invoke-interface {p1}, Lorg/openjdk/source/doctree/UsesTree;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 7
    invoke-interface {p1}, Lorg/openjdk/source/doctree/UsesTree;->getDescription()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1

    .line 8
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitValue(Lorg/openjdk/source/doctree/ValueTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitValue(Lorg/openjdk/source/doctree/ValueTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitValue(Lorg/openjdk/source/doctree/ValueTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    const-string p2, "{"

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ValueTree;->getReference()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 5
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 6
    invoke-interface {p1}, Lorg/openjdk/source/doctree/ValueTree;->getReference()Lorg/openjdk/source/doctree/ReferenceTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Lorg/openjdk/source/doctree/DocTree;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    const-string p1, "}"

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    .line 8
    :goto_1
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public bridge synthetic visitVersion(Lorg/openjdk/source/doctree/VersionTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->visitVersion(Lorg/openjdk/source/doctree/VersionTree;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitVersion(Lorg/openjdk/source/doctree/VersionTree;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->printTagName(Lorg/openjdk/source/doctree/DocTree;)V

    .line 3
    const-string p2, " "

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p1}, Lorg/openjdk/source/doctree/VersionTree;->getBody()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/DocPretty;->print(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/tree/DocPretty$UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
