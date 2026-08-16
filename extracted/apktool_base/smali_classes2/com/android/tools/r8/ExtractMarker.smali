.class public Lcom/android/tools/r8/ExtractMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/utils/i$a;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/E1;

    invoke-direct {v1, v0, p3}, Lcom/android/tools/r8/E1;-><init>(Ljava/util/List;Lcom/android/tools/r8/utils/i$a;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V
    :try_end_0
    .catch Lcom/android/tools/r8/CompilationFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    new-instance p1, Lcom/android/tools/r8/F1;

    invoke-direct {p1}, Lcom/android/tools/r8/F1;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 4
    new-instance p1, Lcom/android/tools/r8/G1;

    invoke-direct {p1}, Lcom/android/tools/r8/G1;-><init>()V

    invoke-static {v0, p1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    .line 5
    new-instance p3, Lcom/android/tools/r8/internal/vV;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/vV;-><init>(Ljava/util/List;Lcom/android/tools/r8/origin/Origin;)V

    invoke-interface {p0, p3}, Lcom/android/tools/r8/MarkerInfoConsumer;->acceptMarkerInfo(Lcom/android/tools/r8/MarkerInfoConsumerData;)V

    return-void

    :catch_0
    move-exception p0

    .line 6
    new-instance p1, Lcom/android/tools/r8/D;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/D;-><init>(Lcom/android/tools/r8/CompilationFailedException;)V

    throw p1
.end method

.method private static synthetic a(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V
    .locals 1

    .line 16
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/utils/i$a;->c(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p2

    .line 17
    invoke-static {p0, p1, p3, p2}, Lcom/android/tools/r8/ExtractMarker;->a(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/utils/i$a;)V

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;[BLcom/android/tools/r8/origin/Origin;)V
    .locals 1

    .line 18
    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/utils/i$a;->b([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p2

    .line 19
    invoke-static {p0, p1, p3, p2}, Lcom/android/tools/r8/ExtractMarker;->a(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/utils/i$a;)V

    return-void
.end method

.method private static a(Ljava/util/List;Lcom/android/tools/r8/utils/i$a;)V
    .locals 5

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/android/tools/r8/internal/nJ;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nJ;-><init>()V

    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/android/tools/r8/internal/nJ;->O1:Z

    .line 10
    sget-object v1, Lcom/android/tools/r8/internal/C2;->D:Lcom/android/tools/r8/internal/C2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/nJ;->d(Lcom/android/tools/r8/internal/C2;)V

    .line 11
    new-instance v1, Lcom/android/tools/r8/dex/c;

    new-instance v2, Lcom/android/tools/r8/internal/ns0;

    const-string v3, "ExtractMarker"

    const/4 v4, 0x0

    .line 12
    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/ns0;-><init>(Ljava/lang/String;Z)V

    .line 13
    invoke-direct {v1, p1, v0, v2}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/c;->a()Lcom/android/tools/r8/graph/w4;

    move-result-object p1

    .line 14
    iget-object p1, p1, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/u1;->d()Ljava/util/Collection;

    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static a([Ljava/lang/String;)V
    .locals 2

    .line 20
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 21
    invoke-static {p0}, Lcom/android/tools/r8/ExtractMarkerCommand;->parse([Ljava/lang/String;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object p0

    .line 22
    new-instance v1, Lcom/android/tools/r8/E;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/E;-><init>(Ljava/io/PrintStream;)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->setMarkerInfoConsumer(Lcom/android/tools/r8/MarkerInfoConsumer;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->build()Lcom/android/tools/r8/ExtractMarkerCommand;

    move-result-object p0

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractMarkerCommand;->isPrintHelp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    sget-object p0, Lcom/android/tools/r8/ExtractMarkerCommand;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 26
    :cond_0
    invoke-static {p0}, Lcom/android/tools/r8/ExtractMarker;->run(Lcom/android/tools/r8/ExtractMarkerCommand;)V

    return-void
.end method

.method private static synthetic b(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;[BLcom/android/tools/r8/origin/Origin;)V
    .locals 1

    invoke-static {}, Lcom/android/tools/r8/utils/i;->b()Lcom/android/tools/r8/utils/i$a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/tools/r8/utils/i$a;->a([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/utils/i$a;

    move-result-object p2

    invoke-static {p0, p1, p3, p2}, Lcom/android/tools/r8/ExtractMarker;->a(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/utils/i$a;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;[BLcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/ExtractMarker;->a(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;[BLcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public static synthetic d([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/ExtractMarker;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/ExtractMarker;->a(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;Ljava/nio/file/Path;Lcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;[BLcom/android/tools/r8/origin/Origin;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/ExtractMarker;->b(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;[BLcom/android/tools/r8/origin/Origin;)V

    return-void
.end method

.method public static synthetic g(Ljava/util/List;Lcom/android/tools/r8/utils/i$a;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/ExtractMarker;->a(Ljava/util/List;Lcom/android/tools/r8/utils/i$a;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/K1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/K1;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/mv;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/ExtractMarkerCommand;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractMarkerCommand;->getMarkerInfoConsumer()Lcom/android/tools/r8/MarkerInfoConsumer;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractMarkerCommand;->getDiagnosticsHandler()Lcom/android/tools/r8/DiagnosticsHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/Ef0;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    :try_start_0
    new-instance v2, Lcom/android/tools/r8/H1;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/H1;-><init>(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;)V

    new-instance v3, Lcom/android/tools/r8/I1;

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/I1;-><init>(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;)V

    new-instance v4, Lcom/android/tools/r8/J1;

    invoke-direct {v4, v0, v1}, Lcom/android/tools/r8/J1;-><init>(Lcom/android/tools/r8/MarkerInfoConsumer;Lcom/android/tools/r8/internal/Ef0;)V

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/tools/r8/ExtractMarkerCommand;->forEachEntry(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catch Lcom/android/tools/r8/D; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p0, p0, Lcom/android/tools/r8/D;->b:Lcom/android/tools/r8/CompilationFailedException;

    throw p0
.end method
