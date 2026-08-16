.class Lorg/google/googlejavaformat/java/FormatFileCallable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final input:Ljava/lang/String;

.field private final options:Lorg/google/googlejavaformat/java/JavaFormatterOptions;

.field private final parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;


# direct methods
.method public constructor <init>(Lorg/google/googlejavaformat/java/CommandLineOptions;Ljava/lang/String;Lorg/google/googlejavaformat/java/JavaFormatterOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "input",
            "options"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->input:Ljava/lang/String;

    iput-object p1, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;

    iput-object p3, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->options:Lorg/google/googlejavaformat/java/JavaFormatterOptions;

    return-void
.end method

.method private characterRanges(Ljava/lang/String;)Lcom/google/common/collect/m2;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/collect/m2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/c3;->r()Lcom/google/common/collect/c3;

    move-result-object v0

    iget-object v1, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->lines()Lcom/google/common/collect/q1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/q1;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/m2;->o(Lcom/google/common/collect/j2;)V

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->lines()Lcom/google/common/collect/q1;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/google/googlejavaformat/java/Formatter;->lineRangesToCharRanges(Ljava/lang/String;Lcom/google/common/collect/m2;)Lcom/google/common/collect/m2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/m2;->p(Lcom/google/common/collect/m2;)V

    :goto_0
    iget-object p1, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ge v2, p1, :cond_2

    iget-object p1, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->lengths()Lcom/google/common/collect/g1;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_1
    iget-object v1, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v1}, Lorg/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/g1;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v3, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v3}, Lorg/google/googlejavaformat/java/CommandLineOptions;->offsets()Lcom/google/common/collect/g1;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/common/collect/m2;->o(Lcom/google/common/collect/j2;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private fixImports(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->removeUnusedImports()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/google/googlejavaformat/java/RemoveUnusedImports;->removeUnusedImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->sortImports()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/google/googlejavaformat/java/ImportOrderer;->reorderImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/FormatFileCallable;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->parameters:Lorg/google/googlejavaformat/java/CommandLineOptions;

    invoke-virtual {v0}, Lorg/google/googlejavaformat/java/CommandLineOptions;->fixImportsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->input:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/FormatFileCallable;->fixImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Lorg/google/googlejavaformat/java/Formatter;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->options:Lorg/google/googlejavaformat/java/JavaFormatterOptions;

    invoke-direct {v0, v1}, Lorg/google/googlejavaformat/java/Formatter;-><init>(Lorg/google/googlejavaformat/java/JavaFormatterOptions;)V

    iget-object v1, p0, Lorg/google/googlejavaformat/java/FormatFileCallable;->input:Ljava/lang/String;

    .line 5
    invoke-direct {p0, v1}, Lorg/google/googlejavaformat/java/FormatFileCallable;->characterRanges(Ljava/lang/String;)Lcom/google/common/collect/m2;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/m2;->m()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lorg/google/googlejavaformat/java/FormatFileCallable;->fixImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
