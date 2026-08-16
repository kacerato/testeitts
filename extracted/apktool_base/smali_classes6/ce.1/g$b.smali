.class public Lce/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lce/g;


# direct methods
.method public constructor <init>(Lce/g;I)V
    .locals 0

    iput-object p1, p0, Lce/g$b;->d:Lce/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lce/g$b;->c:I

    iput p2, p0, Lce/g$b;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lce/g$b;->b:I

    iget-object v1, p0, Lce/g$b;->d:Lce/g;

    invoke-virtual {v1}, Lce/g;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()S
    .locals 3

    :try_start_0
    iget-object v0, p0, Lce/g$b;->d:Lce/g;

    iget v1, p0, Lce/g$b;->b:I

    invoke-virtual {v0, v1}, Lce/g;->get(I)S

    move-result v0

    iget v1, p0, Lce/g$b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lce/g$b;->b:I

    iput v1, p0, Lce/g$b;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    iget v0, p0, Lce/g$b;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lce/g$b;->d:Lce/g;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lce/g;->t0(II)V

    iget v0, p0, Lce/g$b;->c:I

    iget v2, p0, Lce/g$b;->b:I

    if-ge v0, v2, :cond_0

    sub-int/2addr v2, v3

    iput v2, p0, Lce/g$b;->b:I

    :cond_0
    iput v1, p0, Lce/g$b;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
