.class public final synthetic Lcom/google/android/gms/measurement/internal/O4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/d5;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/b5;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/H6;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/b5;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/H6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/O4;->a:Lcom/google/android/gms/measurement/internal/b5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/O4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/O4;->c:Lcom/google/android/gms/measurement/internal/H6;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 9

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/O4;->a:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object p4, p0, Lcom/google/android/gms/measurement/internal/O4;->c:Lcom/google/android/gms/measurement/internal/H6;

    const/16 p5, 0xc8

    if-eq p2, p5, :cond_0

    const/16 p5, 0xcc

    if-eq p2, p5, :cond_0

    const/16 p5, 0x130

    if-ne p2, p5, :cond_1

    move p2, p5

    :cond_0
    if-nez p3, :cond_1

    iget-object p2, p1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    iget-wide v0, p4, Lcom/google/android/gms/measurement/internal/H6;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string p5, "[sgtm] Upload succeeded for row_id"

    invoke-virtual {p2, p5, p3}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p2, Lcom/google/android/gms/measurement/internal/j5;->zzb:Lcom/google/android/gms/measurement/internal/j5;

    goto :goto_0

    :cond_1
    iget-object p5, p1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p5

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p5

    iget-wide v0, p4, Lcom/google/android/gms/measurement/internal/H6;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "[sgtm] Upload failed for row_id. response, exception"

    invoke-virtual {p5, v2, v0, v1, p3}, Lcom/google/android/gms/measurement/internal/z2;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p3, Lcom/google/android/gms/measurement/internal/e2;->u:Lcom/google/android/gms/measurement/internal/d2;

    const/4 p5, 0x0

    invoke-virtual {p3, p5}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const-string p5, ","

    invoke-virtual {p3, p5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/google/android/gms/measurement/internal/j5;->zzd:Lcom/google/android/gms/measurement/internal/j5;

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/google/android/gms/measurement/internal/j5;->zzc:Lcom/google/android/gms/measurement/internal/j5;

    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/O4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object p5, p1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p5}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object p5

    new-instance v6, Lcom/google/android/gms/measurement/internal/g;

    iget-wide v7, p4, Lcom/google/android/gms/measurement/internal/H6;->b:J

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/j5;->N1()I

    move-result v3

    iget-wide v4, p4, Lcom/google/android/gms/measurement/internal/H6;->g:J

    move-object v0, v6

    move-wide v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/g;-><init>(JIJ)V

    invoke-virtual {p5, v6}, Lcom/google/android/gms/measurement/internal/f6;->l0(Lcom/google/android/gms/measurement/internal/g;)V

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string p5, "[sgtm] Updated status for row_id"

    invoke-virtual {p1, p5, p4, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    monitor-enter p3

    :try_start_0
    invoke-virtual {p3, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
