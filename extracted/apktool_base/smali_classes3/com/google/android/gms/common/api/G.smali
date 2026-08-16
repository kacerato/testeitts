.class public final Lcom/google/android/gms/common/api/G;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/u;",
        ">",
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/google/android/gms/common/api/u;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/l;Lcom/google/android/gms/common/api/u;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lcom/google/android/gms/common/api/l;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/G;->r:Lcom/google/android/gms/common/api/u;

    return-void
.end method


# virtual methods
.method public final k(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/G;->r:Lcom/google/android/gms/common/api/u;

    return-object p1
.end method
