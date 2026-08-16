.class public Lcom/google/common/collect/U0$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/U0$h;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public final synthetic f:Lcom/google/common/collect/U0$h;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/U0$h;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/U0$h$a;->f:Lcom/google/common/collect/U0$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/collect/U0$h;->b:Lcom/google/common/collect/U0;

    invoke-static {v0}, Lcom/google/common/collect/U0;->a(Lcom/google/common/collect/U0;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/U0$h$a;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/U0$h$a;->c:I

    iget-object p1, p1, Lcom/google/common/collect/U0$h;->b:Lcom/google/common/collect/U0;

    iget v0, p1, Lcom/google/common/collect/U0;->e:I

    iput v0, p0, Lcom/google/common/collect/U0$h$a;->d:I

    iget p1, p1, Lcom/google/common/collect/U0;->d:I

    iput p1, p0, Lcom/google/common/collect/U0$h$a;->e:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/U0$h$a;->f:Lcom/google/common/collect/U0$h;

    iget-object v0, v0, Lcom/google/common/collect/U0$h;->b:Lcom/google/common/collect/U0;

    iget v0, v0, Lcom/google/common/collect/U0;->e:I

    iget v1, p0, Lcom/google/common/collect/U0$h$a;->d:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/U0$h$a;->a()V

    iget v0, p0, Lcom/google/common/collect/U0$h$a;->b:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/common/collect/U0$h$a;->e:I

    if-lez v0, :cond_0

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

    invoke-virtual {p0}, Lcom/google/common/collect/U0$h$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/U0$h$a;->f:Lcom/google/common/collect/U0$h;

    iget v1, p0, Lcom/google/common/collect/U0$h$a;->b:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/U0$h;->j(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/U0$h$a;->b:I

    iput v1, p0, Lcom/google/common/collect/U0$h$a;->c:I

    iget-object v1, p0, Lcom/google/common/collect/U0$h$a;->f:Lcom/google/common/collect/U0$h;

    iget-object v1, v1, Lcom/google/common/collect/U0$h;->b:Lcom/google/common/collect/U0;

    invoke-static {v1}, Lcom/google/common/collect/U0;->b(Lcom/google/common/collect/U0;)[I

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/U0$h$a;->b:I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/common/collect/U0$h$a;->b:I

    iget v1, p0, Lcom/google/common/collect/U0$h$a;->e:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/common/collect/U0$h$a;->e:I

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/common/collect/U0$h$a;->a()V

    iget v0, p0, Lcom/google/common/collect/U0$h$a;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/B;->e(Z)V

    iget-object v0, p0, Lcom/google/common/collect/U0$h$a;->f:Lcom/google/common/collect/U0$h;

    iget-object v0, v0, Lcom/google/common/collect/U0$h;->b:Lcom/google/common/collect/U0;

    iget v2, p0, Lcom/google/common/collect/U0$h$a;->c:I

    invoke-virtual {v0, v2}, Lcom/google/common/collect/U0;->E(I)V

    iget v0, p0, Lcom/google/common/collect/U0$h$a;->b:I

    iget-object v2, p0, Lcom/google/common/collect/U0$h$a;->f:Lcom/google/common/collect/U0$h;

    iget-object v2, v2, Lcom/google/common/collect/U0$h;->b:Lcom/google/common/collect/U0;

    iget v3, v2, Lcom/google/common/collect/U0;->d:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/google/common/collect/U0$h$a;->c:I

    iput v0, p0, Lcom/google/common/collect/U0$h$a;->b:I

    :cond_1
    iput v1, p0, Lcom/google/common/collect/U0$h$a;->c:I

    iget v0, v2, Lcom/google/common/collect/U0;->e:I

    iput v0, p0, Lcom/google/common/collect/U0$h$a;->d:I

    return-void
.end method
