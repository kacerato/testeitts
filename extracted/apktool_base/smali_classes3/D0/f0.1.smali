.class public final LD0/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LB0/c;

.field public final synthetic c:LD0/g0;


# direct methods
.method public constructor <init>(LD0/g0;LB0/c;)V
    .locals 0

    iput-object p1, p0, LD0/f0;->c:LD0/g0;

    iput-object p2, p0, LD0/f0;->b:LB0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LD0/f0;->c:LD0/g0;

    iget-object v1, v0, LD0/g0;->f:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v1}, Lcom/google/android/gms/common/api/internal/d;->C(Lcom/google/android/gms/common/api/internal/d;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, LD0/g0;->f(LD0/g0;)LD0/c;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, LD0/f0;->b:LB0/c;

    invoke-virtual {v1}, LB0/c;->u0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, LD0/f0;->c:LD0/g0;

    const/4 v3, 0x1

    invoke-static {v1, v3}, LD0/g0;->g(LD0/g0;Z)V

    iget-object v1, p0, LD0/f0;->c:LD0/g0;

    invoke-static {v1}, LD0/g0;->e(LD0/g0;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, LD0/f0;->c:LD0/g0;

    invoke-static {v0}, LD0/g0;->h(LD0/g0;)V

    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, LD0/f0;->c:LD0/g0;

    invoke-static {v1}, LD0/g0;->e(LD0/g0;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v3

    invoke-static {v1}, LD0/g0;->e(LD0/g0;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->i()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Lcom/google/android/gms/common/api/a$f;->t(LG0/r;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v3, "GoogleApiManager"

    const-string v4, "Failed to get service from broker. "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, LD0/f0;->c:LD0/g0;

    invoke-static {v1}, LD0/g0;->e(LD0/g0;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    const-string v3, "Failed to get service from broker."

    invoke-interface {v1, v3}, Lcom/google/android/gms/common/api/a$f;->e(Ljava/lang/String;)V

    new-instance v1, LB0/c;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, LB0/c;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/u;->I(LB0/c;Ljava/lang/Exception;)V

    return-void

    :cond_2
    iget-object v1, p0, LD0/f0;->b:LB0/c;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/u;->I(LB0/c;Ljava/lang/Exception;)V

    return-void
.end method
