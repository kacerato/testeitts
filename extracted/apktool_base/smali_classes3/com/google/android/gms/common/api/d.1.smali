.class public final Lcom/google/android/gms/common/api/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/u;


# instance fields
.field public final b:Lcom/google/android/gms/common/api/Status;

.field public final c:[Lcom/google/android/gms/common/api/p;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/d;->b:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/common/api/d;->c:[Lcom/google/android/gms/common/api/p;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/u;
    .locals 3
    .param p1    # Lcom/google/android/gms/common/api/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lcom/google/android/gms/common/api/u;",
            ">(",
            "Lcom/google/android/gms/common/api/e<",
            "TR;>;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->c:[Lcom/google/android/gms/common/api/p;

    iget v1, p1, Lcom/google/android/gms/common/api/e;->a:I

    array-length v0, v0

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "The result token does not belong to this batch"

    invoke-static {v0, v1}, LG0/A;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->c:[Lcom/google/android/gms/common/api/p;

    iget p1, p1, Lcom/google/android/gms/common/api/e;->a:I

    aget-object p1, v0, p1

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/common/api/p;->e(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/u;

    move-result-object p1

    return-object p1
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/d;->b:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
