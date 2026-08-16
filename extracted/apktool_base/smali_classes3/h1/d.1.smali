.class public abstract Lh1/d;
.super Lh1/o;
.source "SourceFile"


# annotations
.annotation runtime Lorg/jspecify/annotations/NullMarked;
.end annotation


# instance fields
.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lh1/o;-><init>()V

    const-string v0, "index"

    invoke-static {p2, p1, v0}, Lh1/J;->b(IILjava/lang/String;)I

    iput p1, p0, Lh1/d;->b:I

    iput p2, p0, Lh1/d;->c:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lh1/d;->c:I

    iget v1, p0, Lh1/d;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lh1/d;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lh1/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lh1/d;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lh1/d;->c:I

    invoke-virtual {p0, v0}, Lh1/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lh1/d;->c:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lh1/d;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lh1/d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lh1/d;->c:I

    invoke-virtual {p0, v0}, Lh1/d;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lh1/d;->c:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method
