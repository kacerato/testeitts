.class public final Lcom/google/android/gms/measurement/internal/G3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/I;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/R3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/G3;->b:Lcom/google/android/gms/measurement/internal/I;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/G3;->c:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/G3;->d:Lcom/google/android/gms/measurement/internal/R3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "_r"

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/G3;->d:Lcom/google/android/gms/measurement/internal/R3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/c7;->J0()Lcom/google/android/gms/measurement/internal/h5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/p3;->q()V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/G3;->b:Lcom/google/android/gms/measurement/internal/I;

    invoke-static {v4}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v14, v1, Lcom/google/android/gms/measurement/internal/G3;->c:Ljava/lang/String;

    invoke-static {v14}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, v4, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    const-string v6, "_iap"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v15, 0x0

    if-nez v6, :cond_0

    const-string v6, "_iapx"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Generating a payload for this event is not available. package_name, event_name"

    invoke-virtual {v0, v2, v14, v5}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_0
    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/l3;->L()Lcom/google/android/gms/internal/measurement/i3;

    move-result-object v7

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/w;->t0()V

    :try_start_0
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v6

    const/4 v12, 0x0

    if-nez v6, :cond_1

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v3, "Log and bundle not available. package_name"

    invoke-virtual {v0, v3, v14}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v15, v12, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    goto/16 :goto_d

    :catchall_0
    move-exception v0

    move-object v4, v2

    goto/16 :goto_e

    :cond_1
    :try_start_1
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->d()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v3, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v3, v14}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v15, v12, [B

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/n3;->j0()Lcom/google/android/gms/internal/measurement/m3;

    move-result-object v13

    const/4 v10, 0x1

    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/measurement/m3;->T(I)Lcom/google/android/gms/internal/measurement/m3;

    const-string v8, "android"

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/m3;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/m3;->E(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_3
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->H0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->H0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/m3;->C(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_4
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->D0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->D0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/m3;->F(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_5
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->F0()J

    move-result-wide v8

    const-wide/32 v16, -0x80000000

    cmp-long v8, v8, v16

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->F0()J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/m3;->w0(I)Lcom/google/android/gms/internal/measurement/m3;

    :cond_6
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->J0()J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/measurement/m3;->G(J)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->b()J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/measurement/m3;->E0(J)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->r0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/measurement/m3;->q0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_7
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->X()J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/measurement/m3;->L0(J)Lcom/google/android/gms/internal/measurement/m3;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v8, v14}, Lcom/google/android/gms/measurement/internal/c7;->g(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v8

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->L0()J

    move-result-wide v10

    invoke-virtual {v13, v10, v11}, Lcom/google/android/gms/internal/measurement/m3;->R(J)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->g()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v3

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->D()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/m;->k(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v13, v15}, Lcom/google/android/gms/internal/measurement/m3;->z0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_8
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/Z3;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/m3;->G0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    sget-object v3, Lcom/google/android/gms/measurement/internal/Y3;->zza:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->P()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c7;->L0()Lcom/google/android/gms/measurement/internal/h6;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v8}, Lcom/google/android/gms/measurement/internal/h6;->m(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/Z3;)Landroid/util/Pair;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->P()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_9

    :try_start_2
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-wide v9, v4, Lcom/google/android/gms/measurement/internal/I;->e:J

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/google/android/gms/measurement/internal/h5;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/measurement/m3;->J(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_9

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/m3;->M(Z)Lcom/google/android/gms/internal/measurement/m3;

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v15, v12, [B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    :goto_3
    :try_start_4
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->K()Lcom/google/android/gms/measurement/internal/C;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/T3;->l()V

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/measurement/m3;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->K()Lcom/google/android/gms/measurement/internal/C;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/T3;->l()V

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/measurement/m3;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->K()Lcom/google/android/gms/measurement/internal/C;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/C;->o()J

    move-result-wide v9

    long-to-int v5, v9

    invoke-virtual {v13, v5}, Lcom/google/android/gms/internal/measurement/m3;->B(I)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->K()Lcom/google/android/gms/measurement/internal/C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/C;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/m3;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v3, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->p0()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->p0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/I;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/android/gms/measurement/internal/h5;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/m3;->P(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v2

    move v3, v12

    goto/16 :goto_c

    :cond_a
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->x0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->x0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/m3;->u0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_b
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/android/gms/measurement/internal/w;->E0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/k7;

    const-string v11, "_lte"

    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_6

    :cond_c
    const/4 v12, 0x0

    goto :goto_5

    :cond_d
    move-object v10, v15

    :goto_6
    const-wide/16 v24, 0x0

    if-eqz v10, :cond_e

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    if-nez v9, :cond_f

    :cond_e
    new-instance v9, Lcom/google/android/gms/measurement/internal/k7;

    const-string v19, "auto"

    const-string v20, "_lte"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v10

    invoke-interface {v10}, LT0/g;->a()J

    move-result-wide v21

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v9

    move-object/from16 v18, v3

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/measurement/internal/k7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/google/android/gms/measurement/internal/w;->C0(Lcom/google/android/gms/measurement/internal/k7;)Z

    :cond_f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/internal/measurement/E3;

    const/4 v9, 0x0

    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_10

    invoke-static {}, Lcom/google/android/gms/internal/measurement/E3;->P()Lcom/google/android/gms/internal/measurement/D3;

    move-result-object v10

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/k7;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/k7;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/measurement/D3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/D3;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/k7;

    iget-wide v11, v11, Lcom/google/android/gms/measurement/internal/k7;->d:J

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/measurement/D3;->t(J)Lcom/google/android/gms/internal/measurement/D3;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v11

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/k7;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/k7;->e:Ljava/lang/Object;

    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/measurement/internal/h7;->G(Lcom/google/android/gms/internal/measurement/D3;Ljava/lang/Object;)V

    invoke-virtual {v10}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/measurement/E3;

    aput-object v10, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_10
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/measurement/m3;->c1(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/m3;

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v3, v6, v13}, Lcom/google/android/gms/measurement/internal/c7;->n(Lcom/google/android/gms/measurement/internal/I2;Lcom/google/android/gms/internal/measurement/m3;)V

    invoke-virtual {v3, v6, v13}, Lcom/google/android/gms/measurement/internal/c7;->o(Lcom/google/android/gms/measurement/internal/I2;Lcom/google/android/gms/internal/measurement/m3;)V

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/C2;->a(Lcom/google/android/gms/measurement/internal/I;)Lcom/google/android/gms/measurement/internal/C2;

    move-result-object v8

    iget-object v12, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v9

    iget-object v10, v8, Lcom/google/android/gms/measurement/internal/C2;->d:Landroid/os/Bundle;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v11

    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/w;->I(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/measurement/internal/m7;->w(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v9

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v11

    invoke-virtual {v11, v14}, Lcom/google/android/gms/measurement/internal/m;->w(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v9, v8, v11}, Lcom/google/android/gms/measurement/internal/m7;->u(Lcom/google/android/gms/measurement/internal/C2;I)V

    const-string v8, "_c"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v22, v2

    const-wide/16 v1, 0x1

    :try_start_7
    invoke-virtual {v10, v8, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    const-string v9, "Marking in-app purchase as real-time"

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {v10, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v8, "_o"

    iget-object v11, v4, Lcom/google/android/gms/measurement/internal/I;->d:Ljava/lang/String;

    invoke-virtual {v10, v8, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v8

    invoke-virtual {v13}, Lcom/google/android/gms/internal/measurement/m3;->D()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/I2;->l0()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v9, v15}, Lcom/google/android/gms/measurement/internal/m7;->P(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v8

    const-string v9, "_dbg"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v10, v9, v1}, Lcom/google/android/gms/measurement/internal/m7;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual {v2, v10, v0, v1}, Lcom/google/android/gms/measurement/internal/m7;->A(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v4, v22

    goto/16 :goto_e

    :cond_11
    :goto_8
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v0

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/I;->b:Ljava/lang/String;

    invoke-virtual {v0, v14, v1}, Lcom/google/android/gms/measurement/internal/w;->x0(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/measurement/internal/E;

    iget-wide v8, v4, Lcom/google/android/gms/measurement/internal/I;->e:J

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v26, v8

    move-wide/from16 v8, v17

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    const/4 v2, 0x1

    move-wide/from16 v10, v17

    const-wide/16 v15, 0x0

    move-object/from16 v30, v12

    move-object v2, v13

    move-wide v12, v15

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v31, v5

    move-object v5, v0

    move-object v15, v6

    move-object v6, v14

    move-object/from16 v32, v7

    move-object v7, v1

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    const/16 v23, 0x0

    move-wide/from16 v14, v26

    invoke-direct/range {v5 .. v21}, Lcom/google/android/gms/measurement/internal/E;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-wide/from16 v12, v24

    goto :goto_9

    :cond_12
    move-object/from16 v31, v5

    move-object/from16 v34, v6

    move-object/from16 v32, v7

    move-object/from16 v28, v10

    move-object/from16 v29, v11

    move-object/from16 v30, v12

    move-object v2, v13

    move-object/from16 v33, v14

    const/16 v23, 0x0

    iget-wide v5, v0, Lcom/google/android/gms/measurement/internal/E;->f:J

    iget-wide v7, v4, Lcom/google/android/gms/measurement/internal/I;->e:J

    invoke-virtual {v0, v7, v8}, Lcom/google/android/gms/measurement/internal/E;->a(J)Lcom/google/android/gms/measurement/internal/E;

    move-result-object v0

    move-wide v12, v5

    :goto_9
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/google/android/gms/measurement/internal/w;->y0(Lcom/google/android/gms/measurement/internal/E;)V

    new-instance v15, Lcom/google/android/gms/measurement/internal/D;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v14, v22

    :try_start_8
    iget-object v6, v14, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    iget-wide v10, v4, Lcom/google/android/gms/measurement/internal/I;->e:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-object v5, v15

    move-object/from16 v7, v29

    move-object/from16 v8, v33

    move-object v9, v1

    move-object v4, v14

    move-object/from16 v14, v28

    :try_start_9
    invoke-direct/range {v5 .. v14}, Lcom/google/android/gms/measurement/internal/D;-><init>(Lcom/google/android/gms/measurement/internal/p3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-static {}, Lcom/google/android/gms/internal/measurement/b3;->O()Lcom/google/android/gms/internal/measurement/a3;

    move-result-object v5

    iget-wide v6, v15, Lcom/google/android/gms/measurement/internal/D;->d:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/a3;->H(J)Lcom/google/android/gms/internal/measurement/a3;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/D;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/a3;->E(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/a3;

    iget-wide v6, v15, Lcom/google/android/gms/measurement/internal/D;->e:J

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/a3;->J(J)Lcom/google/android/gms/internal/measurement/a3;

    iget-object v6, v15, Lcom/google/android/gms/measurement/internal/D;->f:Lcom/google/android/gms/measurement/internal/G;

    new-instance v7, Lcom/google/android/gms/measurement/internal/F;

    invoke-direct {v7, v6}, Lcom/google/android/gms/measurement/internal/F;-><init>(Lcom/google/android/gms/measurement/internal/G;)V

    :cond_13
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/F;->a()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/internal/measurement/f3;->Q()Lcom/google/android/gms/internal/measurement/e3;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/measurement/e3;->u(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/e3;

    invoke-virtual {v6, v8}, Lcom/google/android/gms/measurement/internal/G;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_13

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v10

    invoke-virtual {v10, v9, v8}, Lcom/google/android/gms/measurement/internal/h7;->H(Lcom/google/android/gms/internal/measurement/e3;Ljava/lang/Object;)V

    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/measurement/a3;->z(Lcom/google/android/gms/internal/measurement/e3;)Lcom/google/android/gms/internal/measurement/a3;

    goto :goto_a

    :catchall_2
    move-exception v0

    goto/16 :goto_e

    :cond_14
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/measurement/m3;->S0(Lcom/google/android/gms/internal/measurement/a3;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/q3;->E()Lcom/google/android/gms/internal/measurement/o3;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/measurement/d3;->E()Lcom/google/android/gms/internal/measurement/c3;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/E;->c:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/c3;->u(J)Lcom/google/android/gms/internal/measurement/c3;

    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/measurement/c3;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/c3;

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/o3;->t(Lcom/google/android/gms/internal/measurement/c3;)Lcom/google/android/gms/internal/measurement/o3;

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/measurement/m3;->C0(Lcom/google/android/gms/internal/measurement/o3;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/c7;->I0()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v10

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m3;->W0()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Lcom/google/android/gms/measurement/internal/e;->m(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/m3;->s0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/a3;->F()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/m3;->h1(J)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/a3;->G()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/m3;->j1(J)Lcom/google/android/gms/internal/measurement/m3;

    :cond_15
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/I2;->B0()J

    move-result-wide v0

    cmp-long v5, v0, v24

    if-eqz v5, :cond_16

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/m3;->t(J)Lcom/google/android/gms/internal/measurement/m3;

    :cond_16
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/I2;->z0()J

    move-result-wide v6

    cmp-long v8, v6, v24

    if-eqz v8, :cond_17

    invoke-virtual {v2, v6, v7}, Lcom/google/android/gms/internal/measurement/m3;->k1(J)Lcom/google/android/gms/internal/measurement/m3;

    goto :goto_b

    :cond_17
    if-eqz v5, :cond_18

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/m3;->k1(J)Lcom/google/android/gms/internal/measurement/m3;

    :cond_18
    :goto_b
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/I2;->t0()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/measurement/G7;->a()Z

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->N0:Lcom/google/android/gms/measurement/internal/d2;

    move-object/from16 v6, v33

    invoke-virtual {v1, v6, v5}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v1

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/m3;->H0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/m3;

    :cond_19
    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/I2;->l()V

    invoke-virtual/range {v34 .. v34}, Lcom/google/android/gms/measurement/internal/I2;->g()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/m3;->S(I)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->A()J

    const-wide/32 v0, 0x1fbd0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/m3;->H(J)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->a()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/measurement/m3;->e1(J)Lcom/google/android/gms/internal/measurement/m3;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/m3;->r0(Z)Lcom/google/android/gms/internal/measurement/m3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m3;->D()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lcom/google/android/gms/measurement/internal/c7;->x(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/m3;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/measurement/i3;->x(Lcom/google/android/gms/internal/measurement/m3;)Lcom/google/android/gms/internal/measurement/i3;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m3;->g1()J

    move-result-wide v7

    move-object/from16 v1, v34

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/measurement/internal/I2;->A0(J)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/m3;->i1()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/I2;->C0(J)V

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Lcom/google/android/gms/measurement/internal/w;->M0(Lcom/google/android/gms/measurement/internal/I2;ZZ)V

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->u0()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    :try_start_a
    invoke-virtual/range {v31 .. v31}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/l3;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/h7;->V([B)[B

    move-result-object v15
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_d

    :catch_2
    move-exception v0

    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    invoke-static {v6}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Data loss. Failed to bundle and serialize. appId"

    invoke-virtual {v1, v3, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v15, v23

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object v4, v14

    goto :goto_e

    :goto_c
    :try_start_b
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v15, v3, [B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    iget-object v0, v4, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    goto/16 :goto_2

    :goto_d
    return-object v15

    :goto_e
    iget-object v1, v4, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w;->v0()V

    throw v0
.end method
