.class public Lcom/android/tools/r8/internal/Kv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/nio/file/Path;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/dex/W;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/tools/r8/ExtractMarkerCommand;->builder()Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/file/Path;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->addProgramFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/xV;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/xV;-><init>(Ljava/util/ArrayList;)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->setMarkerInfoConsumer(Lcom/android/tools/r8/MarkerInfoConsumer;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->build()Lcom/android/tools/r8/ExtractMarkerCommand;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/android/tools/r8/ExtractMarker;->run(Lcom/android/tools/r8/ExtractMarkerCommand;)V

    return-object v0
.end method

.method public static a([B)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/dex/W;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 6
    invoke-static {}, Lcom/android/tools/r8/ExtractMarkerCommand;->builder()Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->addClassProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v1, Lcom/android/tools/r8/internal/xV;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/xV;-><init>(Ljava/util/ArrayList;)V

    .line 9
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->setMarkerInfoConsumer(Lcom/android/tools/r8/MarkerInfoConsumer;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->build()Lcom/android/tools/r8/ExtractMarkerCommand;

    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/android/tools/r8/ExtractMarker;->run(Lcom/android/tools/r8/ExtractMarkerCommand;)V

    return-object v0
.end method

.method public static b([B)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Lcom/android/tools/r8/dex/W;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    invoke-static {}, Lcom/android/tools/r8/ExtractMarkerCommand;->builder()Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->addDexProgramData([BLcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/android/tools/r8/internal/xV;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/xV;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->setMarkerInfoConsumer(Lcom/android/tools/r8/MarkerInfoConsumer;)Lcom/android/tools/r8/ExtractMarkerCommand$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/ExtractMarkerCommand$Builder;->build()Lcom/android/tools/r8/ExtractMarkerCommand;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/ExtractMarker;->run(Lcom/android/tools/r8/ExtractMarkerCommand;)V

    return-object v0
.end method
