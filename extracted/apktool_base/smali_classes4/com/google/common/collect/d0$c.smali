.class public abstract Lcom/google/common/collect/d0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lcom/google/common/collect/d0;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/d0;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d0$c;->d:Lcom/google/common/collect/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/d0$c;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/common/collect/d0$c;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 2

    :goto_0
    iget v0, p0, Lcom/google/common/collect/d0$c;->b:I

    iget-object v1, p0, Lcom/google/common/collect/d0$c;->d:Lcom/google/common/collect/d0;

    invoke-static {v1}, Lcom/google/common/collect/d0;->h(Lcom/google/common/collect/d0;)[Ljava/lang/Enum;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/d0$c;->d:Lcom/google/common/collect/d0;

    invoke-static {v0}, Lcom/google/common/collect/d0;->i(Lcom/google/common/collect/d0;)[I

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/d0$c;->b:I

    aget v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/d0$c;->b:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/d0$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/d0$c;->b:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/d0$c;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/d0$c;->b:I

    iput v1, p0, Lcom/google/common/collect/d0$c;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/d0$c;->b:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    iget v0, p0, Lcom/google/common/collect/d0$c;->c:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/B;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/d0$c;->d:Lcom/google/common/collect/d0;

    invoke-static {v0}, Lcom/google/common/collect/d0;->i(Lcom/google/common/collect/d0;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/d0$c;->c:I

    aget v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/d0$c;->d:Lcom/google/common/collect/d0;

    invoke-static {v0}, Lcom/google/common/collect/d0;->j(Lcom/google/common/collect/d0;)I

    iget-object v0, p0, Lcom/google/common/collect/d0$c;->d:Lcom/google/common/collect/d0;

    invoke-static {v0}, Lcom/google/common/collect/d0;->i(Lcom/google/common/collect/d0;)[I

    move-result-object v2

    iget v3, p0, Lcom/google/common/collect/d0$c;->c:I

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/google/common/collect/d0;->k(Lcom/google/common/collect/d0;J)J

    iget-object v0, p0, Lcom/google/common/collect/d0$c;->d:Lcom/google/common/collect/d0;

    invoke-static {v0}, Lcom/google/common/collect/d0;->i(Lcom/google/common/collect/d0;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/d0$c;->c:I

    aput v1, v0, v2

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/d0$c;->c:I

    return-void
.end method
