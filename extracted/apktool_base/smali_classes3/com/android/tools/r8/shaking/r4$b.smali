.class Lcom/android/tools/r8/shaking/r4$b;
.super Lcom/android/tools/r8/shaking/r4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/r4;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/shaking/r4$b;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/tools/r8/shaking/r4$b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/tools/r8/shaking/r4$b;->b:Ljava/lang/String;
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

.method public final b()Lcom/android/tools/r8/shaking/r4$b;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/tools/r8/shaking/r4$b;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final bridge synthetic f()Lcom/android/tools/r8/shaking/r4;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/r4$b;->g()Lcom/android/tools/r8/shaking/r4$b;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/android/tools/r8/shaking/r4$b;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/r4$b;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/r4$b;

    iget-object v1, p0, Lcom/android/tools/r8/shaking/r4$b;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/r4$b;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/r4$b;->b:Ljava/lang/String;

    monitor-enter v0

    :try_start_0
    iput-object v1, v0, Lcom/android/tools/r8/shaking/r4$b;->b:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/r4$b;->a:Ljava/lang/String;

    return-object v0
.end method
