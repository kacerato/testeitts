.class public final Lcom/google/android/gms/measurement/internal/E3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/I;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/R3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/E3;->b:Lcom/google/android/gms/measurement/internal/I;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/E3;->c:Lcom/google/android/gms/measurement/internal/o7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/E3;->d:Lcom/google/android/gms/measurement/internal/R3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/E3;->b:Lcom/google/android/gms/measurement/internal/I;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/E3;->c:Lcom/google/android/gms/measurement/internal/o7;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/E3;->d:Lcom/google/android/gms/measurement/internal/R3;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/R3;->n1(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)Lcom/google/android/gms/measurement/internal/I;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/R3;->m1(Lcom/google/android/gms/measurement/internal/I;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void
.end method
