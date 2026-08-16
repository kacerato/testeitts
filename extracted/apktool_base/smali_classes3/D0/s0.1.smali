.class public final LD0/s0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/h;

.field public final b:Lcom/google/android/gms/common/api/internal/k;

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/h;Lcom/google/android/gms/common/api/internal/k;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/common/api/internal/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/s0;->a:Lcom/google/android/gms/common/api/internal/h;

    iput-object p2, p0, LD0/s0;->b:Lcom/google/android/gms/common/api/internal/k;

    iput-object p3, p0, LD0/s0;->c:Ljava/lang/Runnable;

    return-void
.end method
