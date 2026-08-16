.class public final Lcom/google/android/gms/measurement/internal/A3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/R3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/A3;->b:Lcom/google/android/gms/measurement/internal/o7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/A3;->c:Lcom/google/android/gms/measurement/internal/R3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/A3;->c:Lcom/google/android/gms/measurement/internal/R3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->O0()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/A3;->b:Lcom/google/android/gms/measurement/internal/o7;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-static {v2}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c7;->n0(Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I2;

    return-void
.end method
