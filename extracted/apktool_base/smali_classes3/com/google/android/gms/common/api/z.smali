.class public abstract Lcom/google/android/gms/common/api/z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/u;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b(Lcom/google/android/gms/common/api/w;)V
    .param p1    # Lcom/google/android/gms/common/api/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/w<",
            "-TR;>;)V"
        }
    .end annotation
.end method

.method public abstract c(Lcom/google/android/gms/common/api/x;)Lcom/google/android/gms/common/api/z;
    .param p1    # Lcom/google/android/gms/common/api/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/u;",
            ">(",
            "Lcom/google/android/gms/common/api/x<",
            "-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/z<",
            "TS;>;"
        }
    .end annotation
.end method
