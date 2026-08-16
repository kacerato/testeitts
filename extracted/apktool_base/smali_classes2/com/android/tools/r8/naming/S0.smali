.class public Lcom/android/tools/r8/naming/S0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;

.field public final b:Ljava/util/HashSet;

.field public final c:Lcom/android/tools/r8/internal/Ef0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/nC;Ljava/util/HashSet;Lcom/android/tools/r8/internal/Ef0;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/tools/r8/naming/S0;->c:Lcom/android/tools/r8/internal/Ef0;

    new-instance p3, Lcom/android/tools/r8/internal/kC;

    const/4 v0, 0x4

    invoke-direct {p3, v0}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/i;

    new-instance v9, Lcom/android/tools/r8/naming/j;

    iget-object v3, v0, Lcom/android/tools/r8/naming/i;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/tools/r8/naming/i;->a:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/tools/r8/naming/i;->c:Lcom/android/tools/r8/naming/E0;

    iget-object v6, v0, Lcom/android/tools/r8/naming/i;->e:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/android/tools/r8/naming/i;->f:Ljava/util/HashMap;

    iget-object v8, v0, Lcom/android/tools/r8/naming/i;->g:Ljava/util/HashMap;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/naming/j;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/naming/E0;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    invoke-virtual {p3, v1, v9}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/naming/S0;->a:Lcom/android/tools/r8/internal/nC;

    iput-object p2, p0, Lcom/android/tools/r8/naming/S0;->b:Ljava/util/HashSet;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/tools/r8/naming/S0;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/j;

    iget-object v1, v0, Lcom/android/tools/r8/naming/j;->b:Ljava/lang/String;

    invoke-virtual {p2, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/naming/S0;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {p3}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v1}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/android/tools/r8/naming/j;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/android/tools/r8/naming/j;->c:Lcom/android/tools/r8/naming/E0;

    new-instance v4, Lcom/android/tools/r8/naming/y0;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' and \'"

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' map to same name: \'"

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v4, p3, v0}, Lcom/android/tools/r8/naming/y0;-><init>(Ljava/lang/String;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/naming/S0;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ef0;->a()V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ef0;Ljava/nio/file/Path;)Lcom/android/tools/r8/naming/S0;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p1, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p1

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v4, Lcom/android/tools/r8/naming/O;

    invoke-direct {v4, v0}, Lcom/android/tools/r8/naming/O;-><init>(Ljava/io/BufferedReader;)V

    new-instance p1, Lcom/android/tools/r8/naming/G0;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_NONE:Lcom/android/tools/r8/naming/MapVersion;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/naming/G0;-><init>(Lcom/android/tools/r8/naming/P;Lcom/android/tools/r8/DiagnosticsHandler;ZZLcom/android/tools/r8/naming/MapVersion;)V

    :try_start_0
    new-instance v0, Lcom/android/tools/r8/naming/R0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/R0;-><init>(Lcom/android/tools/r8/internal/Ef0;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/naming/G0;->b(Lcom/android/tools/r8/naming/w0;)Z

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/naming/G0;->a(Lcom/android/tools/r8/naming/w0;)V

    iget-object p0, v0, Lcom/android/tools/r8/naming/R0;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ef0;->a()V

    new-instance p0, Lcom/android/tools/r8/naming/S0;

    iget-object v1, v0, Lcom/android/tools/r8/naming/R0;->a:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/android/tools/r8/internal/nC;->a(Ljava/util/Map;)Lcom/android/tools/r8/internal/nC;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/naming/R0;->b:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/android/tools/r8/naming/R0;->c:Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/tools/r8/naming/S0;-><init>(Lcom/android/tools/r8/internal/nC;Ljava/util/HashSet;Lcom/android/tools/r8/internal/Ef0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p1, Lcom/android/tools/r8/naming/G0;->a:Lcom/android/tools/r8/naming/P;

    invoke-interface {p1}, Lcom/android/tools/r8/naming/P;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    iget-object p1, p1, Lcom/android/tools/r8/naming/G0;->a:Lcom/android/tools/r8/naming/P;

    invoke-interface {p1}, Lcom/android/tools/r8/naming/P;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method
