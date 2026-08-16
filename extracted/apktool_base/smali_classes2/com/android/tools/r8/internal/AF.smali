.class public final Lcom/android/tools/r8/internal/AF;
.super Lcom/android/tools/r8/internal/c1;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lcom/android/tools/r8/internal/BF;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/BF;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/AF;->d:Lcom/android/tools/r8/internal/BF;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/c1;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/AF;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/AF;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/AF;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/AF;->d:Lcom/android/tools/r8/internal/BF;

    iget-object v1, v1, Lcom/android/tools/r8/internal/BF;->b:Lcom/android/tools/r8/internal/CF;

    iget v1, v1, Lcom/android/tools/r8/internal/CF;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/AF;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/M;

    iget-object v1, p0, Lcom/android/tools/r8/internal/AF;->d:Lcom/android/tools/r8/internal/BF;

    iget-object v1, v1, Lcom/android/tools/r8/internal/BF;->b:Lcom/android/tools/r8/internal/CF;

    iget-object v2, v1, Lcom/android/tools/r8/internal/CF;->b:[I

    iget v3, p0, Lcom/android/tools/r8/internal/AF;->c:I

    iput v3, p0, Lcom/android/tools/r8/internal/AF;->b:I

    aget v2, v2, v3

    iget-object v1, v1, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/tools/r8/internal/AF;->c:I

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/M;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/AF;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/tools/r8/internal/AF;->b:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/AF;->d:Lcom/android/tools/r8/internal/BF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/BF;->b:Lcom/android/tools/r8/internal/CF;

    iget v1, v0, Lcom/android/tools/r8/internal/CF;->d:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/android/tools/r8/internal/CF;->d:I

    iget v2, p0, Lcom/android/tools/r8/internal/AF;->c:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/android/tools/r8/internal/AF;->c:I

    sub-int/2addr v1, v2

    iget-object v0, v0, Lcom/android/tools/r8/internal/CF;->b:[I

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/AF;->d:Lcom/android/tools/r8/internal/BF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/BF;->b:Lcom/android/tools/r8/internal/CF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/AF;->c:I

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/AF;->d:Lcom/android/tools/r8/internal/BF;

    iget-object v0, v0, Lcom/android/tools/r8/internal/BF;->b:Lcom/android/tools/r8/internal/CF;

    iget-object v1, v0, Lcom/android/tools/r8/internal/CF;->c:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/CF;->d:I

    const/4 v2, 0x0

    aput-object v2, v1, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
