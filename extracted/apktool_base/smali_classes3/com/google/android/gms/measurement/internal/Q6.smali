.class public final Lcom/google/android/gms/measurement/internal/Q6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/d7;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/c7;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c7;Lcom/google/android/gms/measurement/internal/d7;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/Q6;->b:Lcom/google/android/gms/measurement/internal/d7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/Q6;->c:Lcom/google/android/gms/measurement/internal/c7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Q6;->c:Lcom/google/android/gms/measurement/internal/c7;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/Q6;->b:Lcom/google/android/gms/measurement/internal/d7;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c7;->t0(Lcom/google/android/gms/measurement/internal/d7;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->A0()V

    return-void
.end method
