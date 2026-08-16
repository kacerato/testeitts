.class public final Lcom/google/android/gms/measurement/internal/P6;
.super Lcom/google/android/gms/measurement/internal/G6;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c7;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/G6;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    return-void
.end method

.method private final k(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/c3;->x(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->r:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Lcom/google/android/gms/measurement/internal/e2;->r:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public static final l(Ljava/lang/String;)Z
    .locals 5

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->t:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method


# virtual methods
.method public final i(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/O6;
    .locals 11

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->V()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/C3;->F()Lcom/google/android/gms/internal/measurement/v3;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/v3;->u(I)Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->M()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/x3;->a(I)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v5

    invoke-static {v5}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/x3;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/measurement/v3;->t(Lcom/google/android/gms/internal/measurement/x3;)Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->p0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/google/android/gms/measurement/internal/c3;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t2;

    move-result-object v6

    const/4 v7, 0x3

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->F0()Lcom/google/android/gms/measurement/internal/w;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/google/android/gms/measurement/internal/w;->L0(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/I2;

    move-result-object v8

    if-eqz v8, :cond_d

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/t2;->S()Z

    move-result v9

    const/16 v10, 0x64

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/t2;->T()Lcom/google/android/gms/internal/measurement/D2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/D2;->G()I

    move-result v9

    if-eq v9, v10, :cond_4

    :cond_2
    iget-object v9, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/I2;->l0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, p1, v8}, Lcom/google/android/gms/measurement/internal/m7;->P(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    rem-int/2addr v5, v10

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/t2;->T()Lcom/google/android/gms/internal/measurement/D2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/D2;->G()I

    move-result v6

    if-lt v5, v6, :cond_4

    goto/16 :goto_4

    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/v3;->u(I)Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/c3;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t2;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t2;->S()Z

    move-result v6

    if-nez v6, :cond_5

    goto/16 :goto_2

    :cond_5
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->l0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->l0()Ljava/lang/String;

    move-result-object v8

    const-string v9, "x-gtm-server-preview"

    invoke-interface {v6, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t2;->T()Lcom/google/android/gms/internal/measurement/D2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/measurement/D2;->H()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->M()I

    move-result v9

    invoke-static {v9}, Lcom/google/android/gms/internal/measurement/x3;->a(I)Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v9

    if-eqz v9, :cond_7

    sget-object v10, Lcom/google/android/gms/internal/measurement/x3;->zzb:Lcom/google/android/gms/internal/measurement/x3;

    if-eq v9, v10, :cond_7

    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/measurement/v3;->t(Lcom/google/android/gms/internal/measurement/x3;)Lcom/google/android/gms/internal/measurement/v3;

    goto :goto_1

    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/measurement/internal/P6;->l(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v7, Lcom/google/android/gms/internal/measurement/x3;->zzk:Lcom/google/android/gms/internal/measurement/x3;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/v3;->t(Lcom/google/android/gms/internal/measurement/x3;)Lcom/google/android/gms/internal/measurement/v3;

    goto :goto_1

    :cond_8
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v7, Lcom/google/android/gms/internal/measurement/x3;->zzl:Lcom/google/android/gms/internal/measurement/x3;

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/v3;->t(Lcom/google/android/gms/internal/measurement/x3;)Lcom/google/android/gms/internal/measurement/v3;

    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t2;->T()Lcom/google/android/gms/internal/measurement/D2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/internal/measurement/D2;->E()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/t2;->T()Lcom/google/android/gms/internal/measurement/D2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/D2;->F()Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "[sgtm] Eligible for local service direct upload. appId"

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/v3;->u(I)Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/v3;->v(I)Lcom/google/android/gms/internal/measurement/v3;

    new-instance v2, Lcom/google/android/gms/measurement/internal/O6;

    sget-object v0, Lcom/google/android/gms/measurement/internal/k5;->zzc:Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/C3;

    invoke-direct {v2, v8, v6, v0, v1}, Lcom/google/android/gms/measurement/internal/O6;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;Lcom/google/android/gms/internal/measurement/C3;)V

    goto :goto_3

    :cond_9
    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/measurement/v3;->v(I)Lcom/google/android/gms/internal/measurement/v3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v1

    const-string v4, "[sgtm] Local service, missing sgtm_server_url"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "[sgtm] Eligible for client side upload. appId"

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/v3;->u(I)Lcom/google/android/gms/internal/measurement/v3;

    sget-object v0, Lcom/google/android/gms/internal/measurement/x3;->zzb:Lcom/google/android/gms/internal/measurement/x3;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/v3;->t(Lcom/google/android/gms/internal/measurement/x3;)Lcom/google/android/gms/internal/measurement/v3;

    new-instance v2, Lcom/google/android/gms/measurement/internal/O6;

    sget-object v0, Lcom/google/android/gms/measurement/internal/k5;->zzd:Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/C3;

    invoke-direct {v2, v8, v6, v0, v1}, Lcom/google/android/gms/measurement/internal/O6;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;Lcom/google/android/gms/internal/measurement/C3;)V

    goto :goto_3

    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "[sgtm] Missing sgtm_setting in remote config. appId"

    invoke-virtual {v0, v1, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/measurement/v3;->v(I)Lcom/google/android/gms/internal/measurement/v3;

    :goto_3
    if-eqz v2, :cond_c

    return-object v2

    :cond_c
    new-instance v0, Lcom/google/android/gms/measurement/internal/O6;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/P6;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/k5;->zza:Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/C3;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/O6;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;Lcom/google/android/gms/internal/measurement/C3;)V

    return-object v0

    :cond_d
    :goto_4
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/measurement/v3;->v(I)Lcom/google/android/gms/internal/measurement/v3;

    new-instance v0, Lcom/google/android/gms/measurement/internal/O6;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/P6;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/k5;->zza:Lcom/google/android/gms/measurement/internal/k5;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/m5;->q()Lcom/google/android/gms/internal/measurement/q5;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/C3;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/O6;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;Lcom/google/android/gms/internal/measurement/C3;)V

    return-object v0

    :cond_e
    :goto_5
    new-instance v0, Lcom/google/android/gms/measurement/internal/O6;

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/P6;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/google/android/gms/measurement/internal/k5;->zza:Lcom/google/android/gms/measurement/internal/k5;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/google/android/gms/measurement/internal/O6;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;Lcom/google/android/gms/internal/measurement/C3;)V

    return-object v0
.end method

.method public final j(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/x3;)Z
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    sget-object v0, Lcom/google/android/gms/internal/measurement/x3;->zzb:Lcom/google/android/gms/internal/measurement/x3;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/P6;->l(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/c7;->D0()Lcom/google/android/gms/measurement/internal/c3;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/c3;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/t2;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/t2;->S()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/t2;->T()Lcom/google/android/gms/internal/measurement/D2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/D2;->H()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method
