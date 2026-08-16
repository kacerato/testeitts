.class public abstract Lcom/google/common/collect/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f;
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

.field public d:I

.field public final synthetic e:Lcom/google/common/collect/f;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/f$c;->e:Lcom/google/common/collect/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v0}, Lcom/google/common/collect/d2;->f()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/f$c;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/f$c;->c:I

    iget-object p1, p1, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    iget p1, p1, Lcom/google/common/collect/d2;->d:I

    iput p1, p0, Lcom/google/common/collect/f$c;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/f$c;->e:Lcom/google/common/collect/f;

    iget-object v0, v0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    iget v0, v0, Lcom/google/common/collect/d2;->d:I

    iget v1, p0, Lcom/google/common/collect/f$c;->d:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public abstract b(I)Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/f$c;->a()V

    iget v0, p0, Lcom/google/common/collect/f$c;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f$c;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/f$c;->b:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/f$c;->b(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/f$c;->b:I

    iput v1, p0, Lcom/google/common/collect/f$c;->c:I

    iget-object v2, p0, Lcom/google/common/collect/f$c;->e:Lcom/google/common/collect/f;

    iget-object v2, v2, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/d2;->t(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/f$c;->b:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 6

    invoke-virtual {p0}, Lcom/google/common/collect/f$c;->a()V

    iget v0, p0, Lcom/google/common/collect/f$c;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/B;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/f$c;->e:Lcom/google/common/collect/f;

    iget-wide v2, v0, Lcom/google/common/collect/f;->e:J

    iget-object v4, v0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    iget v5, p0, Lcom/google/common/collect/f$c;->c:I

    invoke-virtual {v4, v5}, Lcom/google/common/collect/d2;->y(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/common/collect/f;->e:J

    iget-object v0, p0, Lcom/google/common/collect/f$c;->e:Lcom/google/common/collect/f;

    iget-object v0, v0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    iget v2, p0, Lcom/google/common/collect/f$c;->b:I

    iget v3, p0, Lcom/google/common/collect/f$c;->c:I

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/d2;->u(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/f$c;->b:I

    iput v1, p0, Lcom/google/common/collect/f$c;->c:I

    iget-object v0, p0, Lcom/google/common/collect/f$c;->e:Lcom/google/common/collect/f;

    iget-object v0, v0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/d2;

    iget v0, v0, Lcom/google/common/collect/d2;->d:I

    iput v0, p0, Lcom/google/common/collect/f$c;->d:I

    return-void
.end method
