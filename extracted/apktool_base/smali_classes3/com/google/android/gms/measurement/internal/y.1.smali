.class public final Lcom/google/android/gms/measurement/internal/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/U3;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/z;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/z;Lcom/google/android/gms/measurement/internal/U3;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/y;->b:Lcom/google/android/gms/measurement/internal/U3;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/y;->c:Lcom/google/android/gms/measurement/internal/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y;->b:Lcom/google/android/gms/measurement/internal/U3;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/U3;->c()Lcom/google/android/gms/measurement/internal/f;

    invoke-static {}, Lcom/google/android/gms/measurement/internal/f;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/U3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/y;->c:Lcom/google/android/gms/measurement/internal/z;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z;->c()Z

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/z;->e(J)V

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/z;->a()V

    :cond_1
    return-void
.end method
