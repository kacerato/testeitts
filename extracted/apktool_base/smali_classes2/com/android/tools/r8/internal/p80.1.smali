.class public Lcom/android/tools/r8/internal/p80;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/ProguardMapPartitioner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/p80$b;,
        Lcom/android/tools/r8/internal/p80$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

.field public final b:Ljava/util/function/Consumer;

.field public final c:Lcom/android/tools/r8/DiagnosticsHandler;

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/android/tools/r8/internal/ZU;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/retrace/ProguardMapProducer;Ljava/util/function/Consumer;Lcom/android/tools/r8/DiagnosticsHandler;ZZLcom/android/tools/r8/internal/ZU;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/p80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    iput-object p2, p0, Lcom/android/tools/r8/internal/p80;->b:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/tools/r8/internal/p80;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/p80;->d:Z

    iput-boolean p5, p0, Lcom/android/tools/r8/internal/p80;->e:Z

    iput-object p6, p0, Lcom/android/tools/r8/internal/p80;->f:Lcom/android/tools/r8/internal/ZU;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/naming/b;Ljava/lang/String;Lcom/android/tools/r8/naming/k;)V
    .locals 0

    .line 8
    invoke-virtual {p3}, Lcom/android/tools/r8/naming/k;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p3, p2}, Lcom/android/tools/r8/internal/ft0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/b$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/tools/r8/naming/b$a;->a:Z

    .line 2
    iput-boolean v0, p0, Lcom/android/tools/r8/naming/b$a;->b:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/b;Ljava/util/Set;Lcom/android/tools/r8/internal/K50;Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/android/tools/r8/naming/b;->e:Ljava/util/HashMap;

    .line 28
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {p1, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    iget-object p0, p0, Lcom/android/tools/r8/naming/b;->e:Ljava/util/HashMap;

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 31
    iget-object p1, p2, Lcom/android/tools/r8/internal/K50;->a:Ljava/util/HashMap;

    .line 32
    invoke-virtual {p1, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/ft0;)Lcom/android/tools/r8/naming/b;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/p80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    check-cast v0, Lcom/android/tools/r8/internal/q80;

    .line 4
    iget-object v0, v0, Lcom/android/tools/r8/internal/q80;->a:Lcom/android/tools/r8/naming/b;

    .line 5
    iget-object v1, v0, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    .line 6
    new-instance v2, Lcom/android/tools/r8/internal/yp1;

    invoke-direct {v2, p1, v0}, Lcom/android/tools/r8/internal/yp1;-><init>(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/naming/b;)V

    .line 7
    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/naming/b;Ljava/lang/String;Ljava/util/List;)V
    .locals 3

    .line 9
    :try_start_0
    const-string p3, "\n"

    invoke-static {p3, p4}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    .line 10
    iget-boolean p4, p0, Lcom/android/tools/r8/internal/p80;->d:Z

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/p80;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    invoke-static {p3, v2, p4, v0, v1}, Lcom/android/tools/r8/naming/b;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;ZZZ)Lcom/android/tools/r8/naming/b;

    move-result-object p4

    .line 12
    iget-object p4, p4, Lcom/android/tools/r8/naming/b;->a:Lcom/android/tools/r8/internal/nC;

    .line 13
    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/android/tools/r8/internal/p80;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    new-instance p2, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple class names in payload\n: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/naming/k;

    invoke-interface {p1, p2, p4, p3}, Lcom/android/tools/r8/internal/ft0;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 16
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/p80;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    new-instance p3, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p2, p3}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public final a(Ljava/util/HashSet;Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/naming/k;Ljava/lang/String;)V
    .locals 3

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    new-instance v1, Lcom/android/tools/r8/internal/K50;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/K50;-><init>()V

    .line 19
    new-instance v2, Lcom/android/tools/r8/internal/zp1;

    invoke-direct {v2, p2, v0, v1}, Lcom/android/tools/r8/internal/zp1;-><init>(Lcom/android/tools/r8/naming/b;Ljava/util/Set;Lcom/android/tools/r8/internal/K50;)V

    invoke-virtual {p3, v2}, Lcom/android/tools/r8/naming/k;->a(Ljava/util/function/Consumer;)V

    .line 20
    iget-object p2, v1, Lcom/android/tools/r8/internal/K50;->a:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 21
    new-instance p2, Lcom/android/tools/r8/internal/L50;

    iget-object v0, v1, Lcom/android/tools/r8/internal/K50;->a:Ljava/util/HashMap;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/L50;-><init>(Ljava/util/HashMap;)V

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/L50;->r()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 23
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/p80;->b:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/tools/r8/internal/YU;

    iget-object v1, p3, Lcom/android/tools/r8/naming/k;->b:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    invoke-virtual {p4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p4

    invoke-direct {v0, v1, p4}, Lcom/android/tools/r8/internal/YU;-><init>(Ljava/lang/String;[B)V

    .line 25
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 26
    iget-object p2, p3, Lcom/android/tools/r8/naming/k;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/android/tools/r8/internal/ft0;)Lcom/android/tools/r8/naming/b;
    .locals 7

    new-instance v6, Lcom/android/tools/r8/internal/o80;

    iget-object v0, p0, Lcom/android/tools/r8/internal/p80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->isFileBacked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/t80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/p80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    invoke-interface {v2}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->getPath()Ljava/nio/file/Path;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/t80;-><init>(Ljava/nio/file/Path;Ljava/util/function/Predicate;Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/s80;

    iget-object v2, p0, Lcom/android/tools/r8/internal/p80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    invoke-interface {v2}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->get()Ljava/io/InputStream;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/internal/d70;->b:Lcom/android/tools/r8/internal/Z60;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/tools/r8/internal/s80;-><init>(Ljava/io/InputStream;Ljava/util/function/Predicate;Z)V

    :goto_0
    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/o80;-><init>(Lcom/android/tools/r8/internal/u80;)V

    sget-object v1, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_UNKNOWN:Lcom/android/tools/r8/naming/MapVersion;

    iget-object v2, p0, Lcom/android/tools/r8/internal/p80;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    iget-boolean v3, p0, Lcom/android/tools/r8/internal/p80;->d:Z

    iget-boolean v4, p0, Lcom/android/tools/r8/internal/p80;->e:Z

    new-instance v5, Lcom/android/tools/r8/internal/vp1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/vp1;-><init>()V

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/naming/b;->a(Lcom/android/tools/r8/naming/P;Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/DiagnosticsHandler;ZZLjava/util/function/Consumer;)Lcom/android/tools/r8/naming/b;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/wp1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/internal/wp1;-><init>(Lcom/android/tools/r8/internal/p80;Lcom/android/tools/r8/internal/ft0;Lcom/android/tools/r8/naming/b;)V

    invoke-virtual {v6, v1}, Lcom/android/tools/r8/internal/o80;->a(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method

.method public run()Lcom/android/tools/r8/retrace/MappingPartitionMetadata;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/xp1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/xp1;-><init>(Lcom/android/tools/r8/internal/p80;Ljava/util/HashSet;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/p80;->a:Lcom/android/tools/r8/retrace/ProguardMapProducer;

    instance-of v2, v2, Lcom/android/tools/r8/internal/q80;

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/p80;->a(Lcom/android/tools/r8/internal/ft0;)Lcom/android/tools/r8/naming/b;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/p80;->b(Lcom/android/tools/r8/internal/ft0;)Lcom/android/tools/r8/naming/b;

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/android/tools/r8/naming/MapVersion;->MAP_VERSION_UNKNOWN:Lcom/android/tools/r8/naming/MapVersion;

    iget-object v3, v1, Lcom/android/tools/r8/naming/b;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lcom/android/tools/r8/naming/b;->d:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/mappinginformation/b;

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/tools/r8/naming/mappinginformation/b;->s()Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/p80;->f:Lcom/android/tools/r8/internal/ZU;

    sget-object v4, Lcom/android/tools/r8/internal/ZU;->d:Lcom/android/tools/r8/internal/ZU;

    if-ne v3, v4, :cond_3

    invoke-static {v2}, Lcom/android/tools/r8/internal/bV$a;->a(Lcom/android/tools/r8/naming/MapVersion;)Lcom/android/tools/r8/internal/bV$a;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v4, Lcom/android/tools/r8/internal/ZU;->e:Lcom/android/tools/r8/internal/ZU;

    if-ne v3, v4, :cond_4

    new-instance v3, Lcom/android/tools/r8/internal/AW;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/AW;-><init>(Ljava/util/Collection;)V

    iget-object v0, v1, Lcom/android/tools/r8/naming/b;->f:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/tools/r8/naming/b;->c()Ljava/util/HashSet;

    move-result-object v1

    new-instance v4, Lcom/android/tools/r8/internal/wW;

    invoke-direct {v4, v0, v1}, Lcom/android/tools/r8/internal/wW;-><init>(Ljava/util/List;Ljava/util/HashSet;)V

    new-instance v0, Lcom/android/tools/r8/internal/cV;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/tools/r8/internal/cV;-><init>(Lcom/android/tools/r8/naming/MapVersion;Lcom/android/tools/r8/internal/AW;Lcom/android/tools/r8/internal/wW;)V

    return-object v0

    :cond_4
    new-instance v0, Lcom/android/tools/r8/retrace/RetracePartitionException;

    const-string v1, "Unknown mapping partitioning strategy"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/p80;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    new-instance v2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    throw v0
.end method
