.class public Lorg/google/googlejavaformat/java/RemoveUnusedImports;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;,
        Lorg/google/googlejavaformat/java/RemoveUnusedImports$JavadocOnlyImports;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyReplacements(Ljava/lang/String;Lcom/google/common/collect/l2;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "replacements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/l2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/c3;->r()Lcom/google/common/collect/c3;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/common/collect/l2;->e()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/j2;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v3}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/common/collect/m2;->o(Lcom/google/common/collect/j2;)V

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Lcom/google/common/collect/j2;->L()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/common/collect/j2;->z()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v4, v3

    sub-int/2addr v2, v4

    add-int/2addr p1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Lcom/google/common/collect/m2;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    :try_start_0
    new-instance p1, Lorg/google/googlejavaformat/java/Formatter;

    invoke-direct {p1}, Lorg/google/googlejavaformat/java/Formatter;-><init>()V

    invoke-interface {v0}, Lcom/google/common/collect/m2;->m()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lorg/google/googlejavaformat/java/Formatter;->formatSource(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/google/googlejavaformat/java/FormatterException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object p0
.end method

.method private static buildReplacements(Ljava/lang/String;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Ljava/util/Set;Lcom/google/common/collect/S1;)Lcom/google/common/collect/l2;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "contents",
            "unit",
            "usedNames",
            "usedInJavadoc"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/S1<",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Lcom/google/common/collect/l2<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/b3;->p()Lcom/google/common/collect/b3;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getImports()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    invoke-static {v2}, Lorg/google/googlejavaformat/java/RemoveUnusedImports;->getSimpleName(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2, p3, v2, v3}, Lorg/google/googlejavaformat/java/RemoveUnusedImports;->isUnused(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Ljava/util/Set;Lcom/google/common/collect/S1;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lorg/openjdk/tools/javac/tree/EndPosTable;

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/tree/JCTree;->getEndPosition(Lorg/openjdk/tools/javac/tree/EndPosTable;)I

    move-result v4

    const/16 v5, 0x20

    invoke-static {v5}, Lw2/e;->s(C)Lw2/e;

    move-result-object v5

    invoke-virtual {v5, p0, v4}, Lw2/e;->o(Ljava/lang/CharSequence;I)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p0}, Lorg/google/googlejavaformat/Newlines;->guessLineSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Lcom/google/common/collect/l2;->k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->isStatic()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p3, v3}, Lcom/google/common/collect/S1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/common/collect/j2;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->getQualifiedIdentifier()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lcom/google/common/collect/l2;->k(Lcom/google/common/collect/j2;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static getSimpleName(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "importTree"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->getQualifiedIdentifier()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    instance-of v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->getQualifiedIdentifier()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->getName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->getQualifiedIdentifier()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->getIdentifier()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static isUnused(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Ljava/util/Set;Lcom/google/common/collect/S1;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "unit",
            "usedNames",
            "usedInJavadoc",
            "importTree",
            "simpleName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/common/collect/S1<",
            "Ljava/lang/String;",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->getQualifiedIdentifier()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    instance-of v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->getQualifiedIdentifier()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->getExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "java.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackageName()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->getQualifiedIdentifier()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    instance-of p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->getQualifiedIdentifier()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->getIdentifier()Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    const-string p3, "*"

    invoke-virtual {p0, p3}, Lorg/openjdk/tools/javac/util/Name;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    invoke-interface {p1, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    invoke-interface {p2, p4}, Lcom/google/common/collect/S1;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v2
.end method

.method private static parse(Lorg/openjdk/tools/javac/util/Context;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "javaInput"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    new-instance v0, Lorg/openjdk/javax/tools/DiagnosticCollector;

    invoke-direct {v0}, Lorg/openjdk/javax/tools/DiagnosticCollector;-><init>()V

    const-class v1, Lorg/openjdk/javax/tools/DiagnosticListener;

    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v1

    const-string v2, "allowStringFolding"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/openjdk/tools/javac/file/JavacFileManager;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Lorg/openjdk/tools/javac/file/JavacFileManager;-><init>(Lorg/openjdk/tools/javac/util/Context;ZLjava/nio/charset/Charset;)V

    :try_start_0
    sget-object v2, Lorg/openjdk/javax/tools/StandardLocation;->PLATFORM_CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/openjdk/tools/javac/file/JavacFileManager;->setLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Iterable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/google/googlejavaformat/java/RemoveUnusedImports$1;

    const-string v2, "source"

    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    sget-object v4, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {v1, v2, v4, p1}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$1;-><init>(Ljava/net/URI;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Ljava/lang/String;)V

    invoke-static {p0}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-static {p0}, Lorg/openjdk/tools/javac/parser/ParserFactory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/ParserFactory;

    move-result-object p0

    invoke-virtual {p0, p1, v3, v3, v3}, Lorg/openjdk/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;

    move-result-object p0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/parser/JavacParser;->parseCompilationUnit()Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object p0

    iput-object v1, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0}, Lorg/openjdk/javax/tools/DiagnosticCollector;->getDiagnostics()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lorg/google/googlejavaformat/java/a;

    invoke-direct {v0}, Lorg/google/googlejavaformat/java/a;-><init>()V

    invoke-static {p1, v0}, Lcom/google/common/collect/D1;->p(Ljava/lang/Iterable;Lw2/I;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/D1;->C(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/google/googlejavaformat/java/FormatterException;->fromJavacDiagnostics(Ljava/lang/Iterable;)Lorg/google/googlejavaformat/java/FormatterException;

    move-result-object p0

    throw p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOError;

    invoke-direct {p1, p0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static removeUnusedImports(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "contents"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/Context;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context;-><init>()V

    .line 3
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->SOURCE:Lorg/openjdk/tools/javac/main/Option;

    const-string v3, "9"

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/util/Options;->put(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p0}, Lorg/google/googlejavaformat/java/RemoveUnusedImports;->parse(Lorg/openjdk/tools/javac/util/Context;Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p0

    .line 5
    :cond_0
    new-instance v2, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;

    invoke-static {v0}, Lorg/openjdk/tools/javac/api/JavacTrees;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/JavacTrees;

    move-result-object v0

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;-><init>(Lorg/openjdk/tools/javac/api/JavacTrees;Lorg/google/googlejavaformat/java/RemoveUnusedImports$1;)V

    .line 6
    invoke-virtual {v2, v1, v3}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->scan(Lorg/openjdk/source/tree/Tree;Ljava/lang/Void;)Ljava/lang/Void;

    .line 7
    invoke-static {v2}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->access$200(Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;)Ljava/util/Set;

    move-result-object v0

    invoke-static {v2}, Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;->access$000(Lorg/google/googlejavaformat/java/RemoveUnusedImports$UnusedImportScanner;)Lcom/google/common/collect/S1;

    move-result-object v2

    invoke-static {p0, v1, v0, v2}, Lorg/google/googlejavaformat/java/RemoveUnusedImports;->buildReplacements(Ljava/lang/String;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Ljava/util/Set;Lcom/google/common/collect/S1;)Lcom/google/common/collect/l2;

    move-result-object v0

    .line 8
    invoke-static {p0, v0}, Lorg/google/googlejavaformat/java/RemoveUnusedImports;->applyReplacements(Ljava/lang/String;Lcom/google/common/collect/l2;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static removeUnusedImports(Ljava/lang/String;Lorg/google/googlejavaformat/java/RemoveUnusedImports$JavadocOnlyImports;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "contents",
            "javadocOnlyImports"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/google/googlejavaformat/java/FormatterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/google/googlejavaformat/java/RemoveUnusedImports;->removeUnusedImports(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
