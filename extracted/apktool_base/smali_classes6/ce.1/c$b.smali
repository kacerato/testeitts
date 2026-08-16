.class public Lce/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZd/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lce/c;


# direct methods
.method public constructor <init>(Lce/c;I)V
    .locals 0

    iput-object p1, p0, Lce/c$b;->d:Lce/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lce/c$b;->c:I

    iput p2, p0, Lce/c$b;->b:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lce/c$b;->b:I

    iget-object v1, p0, Lce/c$b;->d:Lce/c;

    invoke-virtual {v1}, Lce/c;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()D
    .locals 4

    :try_start_0
    iget-object v0, p0, Lce/c$b;->d:Lce/c;

    iget v1, p0, Lce/c$b;->b:I

    invoke-virtual {v0, v1}, Lce/c;->get(I)D

    move-result-wide v0

    iget v2, p0, Lce/c$b;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lce/c$b;->b:I

    iput v2, p0, Lce/c$b;->c:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 4

    iget v0, p0, Lce/c$b;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :try_start_0
    iget-object v2, p0, Lce/c$b;->d:Lce/c;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lce/c;->t0(II)V

    iget v0, p0, Lce/c$b;->c:I

    iget v2, p0, Lce/c$b;->b:I

    if-ge v0, v2, :cond_0

    sub-int/2addr v2, v3

    iput v2, p0, Lce/c$b;->b:I

    :cond_0
    iput v1, p0, Lce/c$b;->c:I
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
