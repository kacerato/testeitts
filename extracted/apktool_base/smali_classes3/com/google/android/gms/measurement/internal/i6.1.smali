.class public final Lcom/google/android/gms/measurement/internal/i6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/c7;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/n6;Lcom/google/android/gms/measurement/internal/c7;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/i6;->b:Lcom/google/android/gms/measurement/internal/c7;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/i6;->c:Ljava/lang/Runnable;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/i6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/i6;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c7;->C(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->r()V

    return-void
.end method
