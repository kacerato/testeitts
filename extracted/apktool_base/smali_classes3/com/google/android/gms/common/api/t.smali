.class public Lcom/google/android/gms/common/api/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/common/api/u;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public b:Lcom/google/android/gms/common/api/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/u;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/t;->b:Lcom/google/android/gms/common/api/u;

    return-void
.end method


# virtual methods
.method public c()Lcom/google/android/gms/common/api/u;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/t;->b:Lcom/google/android/gms/common/api/u;

    return-object v0
.end method

.method public d(Lcom/google/android/gms/common/api/u;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/common/api/t;->b:Lcom/google/android/gms/common/api/u;

    return-void
.end method
