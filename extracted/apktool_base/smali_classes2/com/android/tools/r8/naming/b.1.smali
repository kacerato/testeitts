.class public Lcom/android/tools/r8/naming/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/naming/b$a;,
        Lcom/android/tools/r8/naming/b$b;
    }
.end annotation


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nC;

.field public b:Lcom/android/tools/r8/internal/g6;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;

.field public final d:Ljava/util/LinkedHashSet;

.field public final e:Ljava/util/HashMap;

.field public f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/nC;Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/b;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    iput-object p2, p0, Lcom/android/tools/r8/naming/b;->d:Ljava/util/LinkedHashSet;

    iput-object p3, p0, Lcom/android/tools/r8/naming/b;->e:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/android/tools/r8/naming/b$a;
    .locals 1

    .line 5
    new-instance v0, Lcom/android/tools/r8/naming/b$a;

    invoke-direct {v0}, Lcom/android/tools/r8/naming/b$a;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/naming/P;Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/DiagnosticsHandler;ZZLjava/util/function/Consumer;)Lcom/android/tools/r8/naming/b;
    .locals 7

    .line 13
    new-instance v6, Lcom/android/tools/r8/naming/G0;

    if-eqz p2, :cond_0

    :goto_0
    move-object v2, p2

    goto :goto_1

    .line 14
    :cond_0
    new-instance p2, Lcom/android/tools/r8/internal/Ef0;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/Ef0;-><init>()V

    goto :goto_0

    :goto_1
    move-object v0, v6

    move-object v1, p0

    move v3, p3

    move v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/naming/G0;-><init>(Lcom/android/tools/r8/naming/P;Lcom/android/tools/r8/DiagnosticsHandler;ZZLcom/android/tools/r8/naming/MapVersion;)V

    .line 15
    :try_start_0
    invoke-static {}, Lcom/android/tools/r8/naming/b;->a()Lcom/android/tools/r8/naming/b$a;

    move-result-object p0

    .line 16
    invoke-interface {p5, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 17
    invoke-virtual {v6, p0}, Lcom/android/tools/r8/naming/G0;->b(Lcom/android/tools/r8/naming/w0;)Z

    .line 18
    invoke-virtual {v6, p0}, Lcom/android/tools/r8/naming/G0;->a(Lcom/android/tools/r8/naming/w0;)V

    .line 19
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/b$a;->a()Lcom/android/tools/r8/naming/b;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iget-object p1, v6, Lcom/android/tools/r8/naming/G0;->a:Lcom/android/tools/r8/naming/P;

    invoke-interface {p1}, Lcom/android/tools/r8/naming/P;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 21
    :try_start_1
    iget-object p1, v6, Lcom/android/tools/r8/naming/G0;->a:Lcom/android/tools/r8/naming/P;

    invoke-interface {p1}, Lcom/android/tools/r8/naming/P;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method

.method public static a(Ljava/io/BufferedReader;Lcom/android/tools/r8/DiagnosticsHandler;ZZZ)Lcom/android/tools/r8/naming/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/naming/O;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/O;-><init>(Ljava/io/BufferedReader;)V

    .line 2
    sget-object v1, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_NONE:Lcom/android/tools/r8/naming/MapVersion;

    new-instance v5, Lcom/android/tools/r8/naming/N2;

    invoke-direct {v5, p4}, Lcom/android/tools/r8/naming/N2;-><init>(Z)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 3
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/naming/P;Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/DiagnosticsHandler;ZZLjava/util/function/Consumer;)Lcom/android/tools/r8/naming/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/naming/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 68
    new-instance v0, Lcom/android/tools/r8/internal/Zb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Zb;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Yb;-><init>(Ljava/lang/String;)V

    .line 70
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yb;->a()Ljava/io/Reader;

    move-result-object p0

    .line 71
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 72
    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_1

    .line 73
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    :goto_1
    const/4 v0, 0x0

    .line 74
    invoke-static {p0, p1, v0, v0, v0}, Lcom/android/tools/r8/naming/b;->a(Ljava/io/BufferedReader;Lcom/android/tools/r8/DiagnosticsHandler;ZZZ)Lcom/android/tools/r8/naming/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;ZZZ)Lcom/android/tools/r8/naming/b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 75
    new-instance v0, Lcom/android/tools/r8/internal/Zb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Zb;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Yb;-><init>(Ljava/lang/String;)V

    .line 77
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yb;->a()Ljava/io/Reader;

    move-result-object p0

    .line 78
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 79
    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_1

    .line 80
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    .line 81
    :goto_1
    new-instance v0, Lcom/android/tools/r8/naming/O;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/O;-><init>(Ljava/io/BufferedReader;)V

    .line 82
    sget-object v1, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_NONE:Lcom/android/tools/r8/naming/MapVersion;

    new-instance v5, Lcom/android/tools/r8/naming/J2;

    invoke-direct {v5, p4}, Lcom/android/tools/r8/naming/J2;-><init>(Z)V

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 83
    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/naming/P;Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/DiagnosticsHandler;ZZLjava/util/function/Consumer;)Lcom/android/tools/r8/naming/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/file/Path;)Lcom/android/tools/r8/naming/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/android/tools/r8/naming/b$b;->c:Lcom/android/tools/r8/naming/b$b;

    invoke-static {p0, v0}, Lcom/android/tools/r8/naming/b;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/naming/b$b;)Lcom/android/tools/r8/naming/b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/nio/file/Path;Lcom/android/tools/r8/naming/b$b;)Lcom/android/tools/r8/naming/b;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-boolean v0, Lcom/android/tools/r8/naming/b;->g:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/naming/b$b;->b:Lcom/android/tools/r8/naming/b$b;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/naming/b$b;->c:Lcom/android/tools/r8/naming/b$b;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/tools/r8/naming/b$b;->b:Lcom/android/tools/r8/naming/b$b;

    if-ne p1, v0, :cond_2

    .line 9
    invoke-interface {p0}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    const-string p0, ""

    invoke-static {p0}, Lcom/android/tools/r8/naming/b;->c(Ljava/lang/String;)Lcom/android/tools/r8/naming/b;

    move-result-object p0

    return-object p0

    .line 11
    :cond_2
    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p0, p1}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0, v0, v0}, Lcom/android/tools/r8/naming/b;->a(Ljava/io/BufferedReader;Lcom/android/tools/r8/DiagnosticsHandler;ZZZ)Lcom/android/tools/r8/naming/b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/k;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/Set;Ljava/lang/String;Lcom/android/tools/r8/naming/k;)V
    .locals 0

    .line 23
    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(ZLcom/android/tools/r8/naming/b$a;)V
    .locals 0

    .line 4
    iput-boolean p0, p1, Lcom/android/tools/r8/naming/b$a;->a:Z

    return-void
.end method

.method public static b(ZLcom/android/tools/r8/naming/b$a;)V
    .locals 0

    .line 1
    iput-boolean p0, p1, Lcom/android/tools/r8/naming/b$a;->a:Z

    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/android/tools/r8/naming/b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Zb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Zb;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Yb;-><init>(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yb;->a()Ljava/io/Reader;

    move-result-object p0

    .line 6
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_1

    .line 8
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 9
    invoke-static {p0, v0, v1, v1, v1}, Lcom/android/tools/r8/naming/b;->a(Ljava/io/BufferedReader;Lcom/android/tools/r8/DiagnosticsHandler;ZZZ)Lcom/android/tools/r8/naming/b;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;)Lcom/android/tools/r8/naming/b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/Zb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Zb;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Yb;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Yb;-><init>(Ljava/lang/String;)V

    .line 10
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Yb;->a()Ljava/io/Reader;

    move-result-object p0

    .line 11
    instance-of v0, p0, Ljava/io/BufferedReader;

    if-eqz v0, :cond_1

    .line 12
    check-cast p0, Ljava/io/BufferedReader;

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object p0, v0

    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    invoke-static {p0, v0, v2, v2, v1}, Lcom/android/tools/r8/naming/b;->a(Ljava/io/BufferedReader;Lcom/android/tools/r8/DiagnosticsHandler;ZZZ)Lcom/android/tools/r8/naming/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/naming/b;)Lcom/android/tools/r8/naming/b;
    .locals 6

    if-eqz p1, :cond_6

    .line 28
    iget-object v0, p1, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 30
    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    .line 31
    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    .line 32
    iget-object v1, p1, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    .line 33
    iget-object v2, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nC;->k()Lcom/android/tools/r8/internal/QC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 34
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/k;

    if-nez v4, :cond_2

    .line 35
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_0

    .line 36
    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/k;

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/naming/k;->a(Lcom/android/tools/r8/naming/k;)Lcom/android/tools/r8/naming/k;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    goto :goto_0

    .line 37
    :cond_3
    new-instance v2, Lcom/android/tools/r8/naming/O2;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/naming/O2;-><init>(Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/internal/kC;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 38
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 39
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/b;->b()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 40
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/b;->b()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 41
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/tools/r8/naming/b;->e:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 42
    iget-object v3, p1, Lcom/android/tools/r8/naming/b;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 43
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 44
    iget-object v4, p0, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 45
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v4, p0, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    iget-object p1, p1, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    :cond_5
    new-instance p1, Lcom/android/tools/r8/naming/b;

    .line 49
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    .line 50
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/android/tools/r8/naming/b;-><init>(Lcom/android/tools/r8/internal/nC;Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/List;)V

    return-object p1

    :cond_6
    return-object p0
.end method

.method public a(Lcom/android/tools/r8/graph/M2;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p1, p1, Lcom/android/tools/r8/graph/M2;->f:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1, p0}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;Lcom/android/tools/r8/naming/b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/naming/k;

    if-nez v0, :cond_0

    return-object p1

    .line 25
    :cond_0
    iget-object p1, v0, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Kb;)V
    .locals 7

    .line 52
    sget-boolean v0, Lcom/android/tools/r8/naming/b;->g:Z

    if-nez v0, :cond_4

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    .line 54
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/android/tools/r8/naming/b;->e()Lcom/android/tools/r8/naming/b;

    move-result-object v1

    .line 56
    iget-object v1, v1, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    .line 57
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 58
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 59
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 61
    sget-boolean v4, Lcom/android/tools/r8/naming/b;->g:Z

    if-nez v4, :cond_2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez v4, :cond_0

    .line 62
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    .line 64
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/naming/k;

    .line 65
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/naming/k;->a(Lcom/android/tools/r8/internal/Kb;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/kC;Ljava/lang/String;Lcom/android/tools/r8/naming/k;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/nC;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    invoke-virtual {p1, p2, p3}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/android/tools/r8/naming/k;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/k;

    return-object p1
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/tools/r8/naming/mappinginformation/b;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->d:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final c()Ljava/util/HashSet;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    new-instance v2, Lcom/android/tools/r8/naming/M2;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/naming/M2;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public d()Lcom/android/tools/r8/internal/g6;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/tools/r8/internal/g6<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->b:Lcom/android/tools/r8/internal/g6;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/UB;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/UB;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/XB;->iterator()Lcom/android/tools/r8/internal/Av0;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    iget-object v3, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/nC;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/k;

    iget-object v3, v3, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/tools/r8/internal/UB;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/UB;->c()Lcom/android/tools/r8/internal/VB;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/g6;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/f6;->f()Lcom/android/tools/r8/internal/f6;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/android/tools/r8/internal/g6;-><init>(Lcom/android/tools/r8/internal/VB;Lcom/android/tools/r8/internal/f6;)V

    iput-object v1, p0, Lcom/android/tools/r8/naming/b;->b:Lcom/android/tools/r8/internal/g6;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->b:Lcom/android/tools/r8/internal/g6;

    return-object v0
.end method

.method public e()Lcom/android/tools/r8/naming/b;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    new-instance v1, Lcom/android/tools/r8/naming/K2;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/K2;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/kC;->a:Ljava/util/Comparator;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    iput-object v1, v0, Lcom/android/tools/r8/internal/kC;->a:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    new-instance v2, Lcom/android/tools/r8/naming/L2;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/naming/L2;-><init>(Lcom/android/tools/r8/internal/kC;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    new-instance v1, Lcom/android/tools/r8/naming/b;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v0

    iget-object v2, p0, Lcom/android/tools/r8/naming/b;->d:Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lcom/android/tools/r8/naming/b;->e:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/tools/r8/naming/b;-><init>(Lcom/android/tools/r8/internal/nC;Ljava/util/LinkedHashSet;Ljava/util/HashMap;Ljava/util/List;)V

    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "valueComparator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "valueComparator was already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/tools/r8/naming/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    check-cast p1, Lcom/android/tools/r8/naming/b;

    iget-object p1, p1, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/nC;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lcom/android/tools/r8/kotlin/h1;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/kotlin/h1;-><init>(Ljava/lang/StringBuilder;)V

    new-instance v2, Lcom/android/tools/r8/internal/Jb;

    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/Jb;-><init>(Ljava/util/function/Consumer;)V

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/internal/Kb;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
