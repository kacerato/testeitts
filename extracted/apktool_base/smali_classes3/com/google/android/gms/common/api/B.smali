.class public final Lcom/google/android/gms/common/api/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/p$a;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/B;->a:Lcom/google/android/gms/common/api/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/B;->a:Lcom/google/android/gms/common/api/c;

    invoke-static {v0}, Lcom/google/android/gms/common/api/c;->y(Lcom/google/android/gms/common/api/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/B;->a:Lcom/google/android/gms/common/api/c;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->v0()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/common/api/B;->a:Lcom/google/android/gms/common/api/c;

    invoke-static {p1, v2}, Lcom/google/android/gms/common/api/c;->A(Lcom/google/android/gms/common/api/c;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->x0()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/api/B;->a:Lcom/google/android/gms/common/api/c;

    invoke-static {p1, v2}, Lcom/google/android/gms/common/api/c;->z(Lcom/google/android/gms/common/api/c;Z)V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/B;->a:Lcom/google/android/gms/common/api/c;

    invoke-static {p1}, Lcom/google/android/gms/common/api/c;->x(Lcom/google/android/gms/common/api/c;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/api/c;->B(Lcom/google/android/gms/common/api/c;I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/B;->a:Lcom/google/android/gms/common/api/c;

    invoke-static {p1}, Lcom/google/android/gms/common/api/c;->x(Lcom/google/android/gms/common/api/c;)I

    move-result v1

    if-nez v1, :cond_5

    invoke-static {p1}, Lcom/google/android/gms/common/api/c;->E(Lcom/google/android/gms/common/api/c;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/google/android/gms/common/api/c;->C(Lcom/google/android/gms/common/api/c;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/common/api/c;->D(Lcom/google/android/gms/common/api/c;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xd

    invoke-direct {p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/B;->a:Lcom/google/android/gms/common/api/c;

    new-instance v2, Lcom/google/android/gms/common/api/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/c;->F(Lcom/google/android/gms/common/api/c;)[Lcom/google/android/gms/common/api/p;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/google/android/gms/common/api/d;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/p;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
