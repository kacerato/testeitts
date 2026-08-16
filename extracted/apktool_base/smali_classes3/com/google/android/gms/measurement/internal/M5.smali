.class public final Lcom/google/android/gms/measurement/internal/M5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/I;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/f6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/f6;ZLcom/google/android/gms/measurement/internal/o7;ZLcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/M5;->b:Lcom/google/android/gms/measurement/internal/o7;

    iput-boolean p4, p0, Lcom/google/android/gms/measurement/internal/M5;->c:Z

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/M5;->d:Lcom/google/android/gms/measurement/internal/I;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/M5;->e:Lcom/google/android/gms/measurement/internal/f6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/M5;->e:Lcom/google/android/gms/measurement/internal/f6;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f6;->N()Lcom/google/android/gms/measurement/internal/i2;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "Discarding data. Failed to send event to service"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/M5;->b:Lcom/google/android/gms/measurement/internal/o7;

    invoke-static {v2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/android/gms/measurement/internal/M5;->c:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/M5;->d:Lcom/google/android/gms/measurement/internal/I;

    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/android/gms/measurement/internal/f6;->b0(Lcom/google/android/gms/measurement/internal/i2;LI0/a;Lcom/google/android/gms/measurement/internal/o7;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/f6;->J()V

    return-void
.end method
