.class public abstract Lcom/android/tools/r8/internal/VV;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/TV;
    .locals 6

    sget-boolean v0, Lcom/android/tools/r8/internal/TV;->h:Z

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/SV;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/tools/r8/internal/SV;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v4

    new-instance v5, Lcom/android/tools/r8/internal/UV;

    invoke-direct {v5, v4, v1}, Lcom/android/tools/r8/internal/UV;-><init>(Ljava/util/Set;Lcom/android/tools/r8/internal/SV;)V

    new-instance v1, Lcom/android/tools/r8/graph/R5;

    invoke-direct {v1, p0, v5}, Lcom/android/tools/r8/graph/R5;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Q5;)V

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/graph/R5;->a(Ljava/util/concurrent/ExecutorService;)V

    new-instance p1, Lcom/android/tools/r8/internal/TV;

    invoke-direct {p1, p0, v0, v2, v3}, Lcom/android/tools/r8/internal/TV;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/Hz;Ljava/util/AbstractMap;Ljava/util/AbstractMap;)V

    return-object p1
.end method
