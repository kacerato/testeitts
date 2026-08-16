.class public final Lcom/google/android/gms/measurement/internal/i3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/g4;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/p3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/p3;Lcom/google/android/gms/measurement/internal/g4;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/i3;->b:Lcom/google/android/gms/measurement/internal/g4;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/i3;->c:Lcom/google/android/gms/measurement/internal/p3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i3;->c:Lcom/google/android/gms/measurement/internal/p3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i3;->b:Lcom/google/android/gms/measurement/internal/g4;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/p3;->p(Lcom/google/android/gms/measurement/internal/g4;)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/g4;->d:Lcom/google/android/gms/internal/measurement/I0;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/p3;->v(Lcom/google/android/gms/internal/measurement/I0;)V

    return-void
.end method
