.class public final Lcom/android/tools/r8/ir/optimize/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/b2;


# instance fields
.field public final b:Ljava/util/IdentityHashMap;


# direct methods
.method public constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/optimize/v;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/v;->b:Ljava/util/IdentityHashMap;

    new-instance v1, Lv/x1;

    invoke-direct {v1}, Lv/x1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public final declared-synchronized a(Ljava/util/IdentityHashMap;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/optimize/v;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
