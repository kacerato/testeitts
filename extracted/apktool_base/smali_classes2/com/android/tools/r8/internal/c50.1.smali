.class public final Lcom/android/tools/r8/internal/c50;
.super Lcom/android/tools/r8/internal/e50;
.source "SourceFile"


# instance fields
.field public final synthetic p:Lcom/android/tools/r8/internal/f50;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/graph/H5;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/c50;->p:Lcom/android/tools/r8/internal/f50;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/e50;-><init>(Lcom/android/tools/r8/internal/f50;Lcom/android/tools/r8/graph/H5;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/W40;)Ljava/util/List;
    .locals 0

    .line 4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a(IILcom/android/tools/r8/internal/W40;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/tools/r8/internal/c50;->p:Lcom/android/tools/r8/internal/f50;

    iget-object p1, p1, Lcom/android/tools/r8/internal/f50;->b:Ljava/util/HashMap;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/c50;->p:Lcom/android/tools/r8/internal/f50;

    iget-object p2, p2, Lcom/android/tools/r8/internal/f50;->b:Ljava/util/HashMap;

    new-instance v0, Lcom/android/tools/r8/internal/S61;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/S61;-><init>()V

    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iget-object p3, p0, Lcom/android/tools/r8/internal/e50;->a:Lcom/android/tools/r8/graph/H5;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
