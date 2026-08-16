.class public final Li1/N0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li1/O0;

.field public final b:Li1/Z;

.field public c:I


# direct methods
.method public constructor <init>(Li1/O0;Li1/Z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Li1/N0;->c:I

    iput-object p1, p0, Li1/N0;->a:Li1/O0;

    iput-object p2, p0, Li1/N0;->b:Li1/Z;

    return-void
.end method


# virtual methods
.method public final a()Li1/b;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/consent_sdk/zzj;
        }
    .end annotation

    const/4 v0, 0x1

    iget-object v1, p0, Li1/N0;->b:Li1/Z;

    iget v2, v1, Li1/Z;->f:I

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    const/4 v5, 0x3

    packed-switch v3, :pswitch_data_0

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzj;

    const-string v2, "Invalid response from server."

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzj;

    iget-object v1, v1, Li1/Z;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Publisher misconfiguration: "

    if-eqz v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, v5, v1}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v2, Lcom/google/android/gms/internal/consent_sdk/zzj;

    iget-object v1, v1, Li1/Z;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "Invalid response from server: "

    if-eqz v3, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzj;-><init>(ILjava/lang/String;)V

    throw v2

    :pswitch_2
    iput v0, p0, Li1/N0;->c:I

    goto :goto_2

    :pswitch_3
    iput v2, p0, Li1/N0;->c:I

    goto :goto_2

    :pswitch_4
    iput v5, p0, Li1/N0;->c:I

    :goto_2
    iget-object v3, v1, Li1/Z;->a:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v5, v4

    goto :goto_3

    :cond_2
    new-instance v5, Li1/E;

    iget-object v1, v1, Li1/Z;->b:Ljava/lang/String;

    invoke-direct {v5, v1, v3}, Li1/E;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v1, p0, Li1/N0;->a:Li1/O0;

    invoke-static {v1}, Li1/O0;->c(Li1/O0;)Li1/n;

    move-result-object v1

    new-instance v3, Ljava/util/HashSet;

    iget-object v6, p0, Li1/N0;->b:Li1/Z;

    iget-object v6, v6, Li1/Z;->d:Ljava/util/List;

    invoke-direct {v3, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Li1/n;->g(Ljava/util/Set;)V

    iget-object v1, p0, Li1/N0;->b:Li1/Z;

    iget-object v1, v1, Li1/Z;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li1/Y;

    iget v6, v3, Li1/Y;->b:I

    add-int/lit8 v7, v6, -0x1

    if-eqz v6, :cond_7

    if-eqz v7, :cond_4

    if-eq v7, v0, :cond_6

    if-eq v7, v2, :cond_5

    :cond_4
    move-object v6, v4

    goto :goto_5

    :cond_5
    const-string v6, "clear"

    goto :goto_5

    :cond_6
    const-string v6, "write"

    :goto_5
    if-eqz v6, :cond_3

    iget-object v7, p0, Li1/N0;->a:Li1/O0;

    invoke-static {v7}, Li1/O0;->a(Li1/O0;)Li1/u0;

    move-result-object v7

    iget-object v3, v3, Li1/Y;->a:Ljava/lang/String;

    iget-object v8, p0, Li1/N0;->a:Li1/O0;

    invoke-static {v8}, Li1/O0;->b(Li1/O0;)Li1/l;

    move-result-object v8

    new-array v9, v0, [Li1/t0;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    invoke-virtual {v7, v6, v3, v9}, Li1/u0;->b(Ljava/lang/String;Ljava/lang/String;[Li1/t0;)V

    goto :goto_4

    :cond_7
    throw v4

    :cond_8
    new-instance v0, Li1/b;

    iget v1, p0, Li1/N0;->c:I

    invoke-direct {v0, v1, v5, v4}, Li1/b;-><init>(ILi1/E;Li1/M0;)V

    return-object v0

    :cond_9
    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
