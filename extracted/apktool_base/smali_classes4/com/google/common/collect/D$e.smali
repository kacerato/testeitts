.class public abstract Lcom/google/common/collect/D$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
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

.field public final synthetic e:Lcom/google/common/collect/D;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/D;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/D$e;->e:Lcom/google/common/collect/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/common/collect/D;->a(Lcom/google/common/collect/D;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/D$e;->b:I

    .line 3
    invoke-virtual {p1}, Lcom/google/common/collect/D;->C()I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/D$e;->c:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/common/collect/D$e;->d:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/D;Lcom/google/common/collect/D$a;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/common/collect/D$e;-><init>(Lcom/google/common/collect/D;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/D$e;->e:Lcom/google/common/collect/D;

    invoke-static {v0}, Lcom/google/common/collect/D;->a(Lcom/google/common/collect/D;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/D$e;->b:I

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

.method public d()V
    .locals 1

    iget v0, p0, Lcom/google/common/collect/D$e;->b:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/D$e;->b:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/D$e;->c:I

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

    invoke-virtual {p0}, Lcom/google/common/collect/D$e;->a()V

    invoke-virtual {p0}, Lcom/google/common/collect/D$e;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/common/collect/D$e;->c:I

    iput v0, p0, Lcom/google/common/collect/D$e;->d:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/D$e;->b(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/D$e;->e:Lcom/google/common/collect/D;

    iget v2, p0, Lcom/google/common/collect/D$e;->c:I

    invoke-virtual {v1, v2}, Lcom/google/common/collect/D;->D(I)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/D$e;->c:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/D$e;->a()V

    iget v0, p0, Lcom/google/common/collect/D$e;->d:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/B;->e(Z)V

    invoke-virtual {p0}, Lcom/google/common/collect/D$e;->d()V

    iget-object v0, p0, Lcom/google/common/collect/D$e;->e:Lcom/google/common/collect/D;

    iget v1, p0, Lcom/google/common/collect/D$e;->d:I

    invoke-static {v0, v1}, Lcom/google/common/collect/D;->b(Lcom/google/common/collect/D;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/D;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/D$e;->e:Lcom/google/common/collect/D;

    iget v1, p0, Lcom/google/common/collect/D$e;->c:I

    iget v2, p0, Lcom/google/common/collect/D$e;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/D;->p(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/D$e;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/D$e;->d:I

    return-void
.end method
