.class public final Lcom/google/android/gms/measurement/internal/I4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/A;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/b5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/b5;Lcom/google/android/gms/measurement/internal/A;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/I4;->b:Lcom/google/android/gms/measurement/internal/A;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/I4;->c:Lcom/google/android/gms/measurement/internal/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/I4;->c:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/P2;->u()Lcom/google/android/gms/measurement/internal/A;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/I4;->b:Lcom/google/android/gms/measurement/internal/A;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/A;->b()I

    move-result v5

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/A;->b()I

    move-result v3

    invoke-static {v5, v3}, Lcom/google/android/gms/measurement/internal/Z3;->u(II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/P2;->p()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/A;->e()Ljava/lang/String;

    move-result-object v3

    const-string v5, "dma_consent_settings"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Setting DMA consent(FE)"

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f6;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f6;->a0()V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/f6;->Y(Z)V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/A;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Lower precedence consent source ignored, proposed source"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
