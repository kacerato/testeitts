.class public abstract Lcom/android/tools/r8/internal/Wf0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/yb0;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/yb0;

    new-instance v2, Lcom/android/tools/r8/internal/n11;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/n11;-><init>(Lcom/android/tools/r8/graph/y;)V

    iget-object v3, v0, Lcom/android/tools/r8/internal/nJ;->g:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    .line 3
    invoke-virtual {v3}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->getDebugConsumer()Lcom/android/tools/r8/StringConsumer;

    move-result-object v3

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    if-nez v3, :cond_0

    .line 5
    sget-object v3, Lcom/android/tools/r8/internal/UZ;->a:Lcom/android/tools/r8/internal/UZ;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v5, Lcom/android/tools/r8/internal/Uf0;

    invoke-direct {v5, v3, v4}, Lcom/android/tools/r8/internal/Uf0;-><init>(Lcom/android/tools/r8/StringConsumer;Lcom/android/tools/r8/DiagnosticsHandler;)V

    move-object v3, v5

    .line 7
    :goto_0
    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/yb0;-><init>(Ljava/util/function/Function;Lcom/android/tools/r8/internal/Tl0;)V

    .line 8
    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->g:Lcom/android/tools/r8/ResourceShrinkerConfiguration;

    invoke-virtual {v2}, Lcom/android/tools/r8/ResourceShrinkerConfiguration;->isOptimizedShrinking()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/tools/r8/internal/nJ;->d:Lcom/android/tools/r8/AndroidResourceProvider;

    if-eqz v2, :cond_3

    .line 9
    :try_start_0
    sget-object v3, Lcom/android/tools/r8/FeatureSplit;->BASE:Lcom/android/tools/r8/FeatureSplit;

    invoke-static {p0, v1, v2, v3}, Lcom/android/tools/r8/internal/Wf0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/yb0;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/FeatureSplit;)V

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->I()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->s:Lcom/android/tools/r8/internal/Qv;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/internal/Qv;->a:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/FeatureSplit;

    .line 14
    invoke-virtual {v4}, Lcom/android/tools/r8/FeatureSplit;->getAndroidResourceProvider()Lcom/android/tools/r8/AndroidResourceProvider;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 15
    invoke-virtual {v4}, Lcom/android/tools/r8/FeatureSplit;->getAndroidResourceProvider()Lcom/android/tools/r8/AndroidResourceProvider;

    move-result-object v5

    invoke-static {p0, v1, v5, v4}, Lcom/android/tools/r8/internal/Wf0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/yb0;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/FeatureSplit;)V
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/yb0;->c()V

    return-object v1

    .line 17
    :catch_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 18
    const-string v0, "Failed initializing resource table"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_3
    return-object v1
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)Ljava/io/InputStream;
    .locals 0

    .line 47
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Wf0;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/lang/Exception;)Ljava/lang/RuntimeException;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 49
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 50
    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 52
    iget-object p0, p0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/yb0;Lcom/android/tools/r8/AndroidResourceProvider;Lcom/android/tools/r8/FeatureSplit;)V
    .locals 4

    .line 19
    invoke-interface {p2}, Lcom/android/tools/r8/AndroidResourceProvider;->getAndroidResources()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/AndroidResourceInput;

    .line 20
    sget-object v1, Lcom/android/tools/r8/internal/Vf0;->a:[I

    invoke-interface {v0}, Lcom/android/tools/r8/AndroidResourceInput;->getKind()Lcom/android/tools/r8/AndroidResourceInput$Kind;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-eq v1, v3, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/j11;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/j11;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)V

    .line 22
    invoke-interface {v0}, Lcom/android/tools/r8/AndroidResourceInput;->getPath()Lcom/android/tools/r8/ResourcePath;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/ResourcePath;->location()Ljava/lang/String;

    move-result-object v0

    .line 23
    iget-object v2, p1, Lcom/android/tools/r8/internal/yb0;->g:Ljava/util/HashMap;

    .line 24
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 25
    iget-object v2, p1, Lcom/android/tools/r8/internal/yb0;->d:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_1
    iget-object v2, p1, Lcom/android/tools/r8/internal/yb0;->g:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_2
    new-instance v1, Lcom/android/tools/r8/internal/k11;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/k11;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)V

    .line 28
    iget-object v0, p1, Lcom/android/tools/r8/internal/yb0;->e:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_3
    new-instance v1, Lcom/android/tools/r8/internal/l11;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/l11;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)V

    .line 31
    invoke-interface {v0}, Lcom/android/tools/r8/AndroidResourceInput;->getPath()Lcom/android/tools/r8/ResourcePath;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/ResourcePath;->location()Ljava/lang/String;

    move-result-object v0

    .line 32
    iget-object v2, p1, Lcom/android/tools/r8/internal/yb0;->c:Ljava/util/HashMap;

    .line 33
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 34
    iget-object v1, p1, Lcom/android/tools/r8/internal/yb0;->d:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_4
    iget-object v2, p1, Lcom/android/tools/r8/internal/yb0;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    :cond_5
    invoke-interface {v0}, Lcom/android/tools/r8/AndroidResourceInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 37
    iget-object v1, p1, Lcom/android/tools/r8/internal/yb0;->h:Ljava/util/HashMap;

    .line 38
    iget-object v3, p1, Lcom/android/tools/r8/internal/yb0;->b:Lcom/android/tools/r8/internal/xb0;

    .line 39
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    :try_start_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/ci0;->a(Ljava/io/InputStream;)Lcom/android/tools/r8/internal/ci0;

    move-result-object v0

    .line 41
    invoke-virtual {v3, v0, v2}, Lcom/android/tools/r8/internal/xb0;->a(Lcom/android/tools/r8/internal/ci0;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    invoke-virtual {v1, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 43
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 44
    :cond_6
    new-instance v1, Lcom/android/tools/r8/internal/m11;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/m11;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)V

    .line 45
    iget-object v0, p1, Lcom/android/tools/r8/internal/yb0;->f:Ljava/util/ArrayList;

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Wf0;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Wf0;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)Ljava/io/InputStream;
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/Wf0;->e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/AndroidResourceInput;)Ljava/io/InputStream;
    .locals 2

    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/r8/AndroidResourceInput;->getByteStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-interface {p1}, Lcom/android/tools/r8/AndroidResourceInput;->getPath()Lcom/android/tools/r8/ResourcePath;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/ResourcePath;->location()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed reading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ef0;->b(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
