.class public Lcom/android/tools/r8/shaking/r4$a;
.super Lcom/android/tools/r8/shaking/r4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/shaking/r4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/android/tools/r8/shaking/r4$b;

.field final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/shaking/r4;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/shaking/r4$a;->b:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/shaking/r4$a;
    .locals 0

    .line 1
    return-object p0
.end method

.method public a(Lcom/android/tools/r8/shaking/r4$b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/shaking/r4$a;->a:Lcom/android/tools/r8/shaking/r4$b;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "A back reference refers back to a previously matched wildcard."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Lcom/android/tools/r8/shaking/r4;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/r4$a;->a:Lcom/android/tools/r8/shaking/r4$b;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/tools/r8/shaking/r4$b;->b:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/shaking/r4$a;

    iget v1, p0, Lcom/android/tools/r8/shaking/r4$a;->b:I

    invoke-direct {v0, v1}, Lcom/android/tools/r8/shaking/r4$a;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/shaking/r4$a;->a:Lcom/android/tools/r8/shaking/r4$b;

    invoke-virtual {v1}, Lcom/android/tools/r8/shaking/r4$b;->g()Lcom/android/tools/r8/shaking/r4$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/shaking/r4$a;->a(Lcom/android/tools/r8/shaking/r4$b;)V

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/shaking/r4$a;->a:Lcom/android/tools/r8/shaking/r4$b;

    if-eqz v0, :cond_0

    monitor-enter v0

    :try_start_0
    iget-object v1, v0, Lcom/android/tools/r8/shaking/r4$b;->b:Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/shaking/r4$a;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
