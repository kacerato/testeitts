.class public final Lcom/android/tools/r8/internal/EG;
.super Lcom/android/tools/r8/internal/c1;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lcom/android/tools/r8/internal/FG;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/FG;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/EG;->d:Lcom/android/tools/r8/internal/FG;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/c1;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/EG;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/EG;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/EG;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/EG;->d:Lcom/android/tools/r8/internal/FG;

    iget-object v1, v1, Lcom/android/tools/r8/internal/FG;->b:Lcom/android/tools/r8/internal/GG;

    iget v1, v1, Lcom/android/tools/r8/internal/GG;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EG;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/S;

    iget-object v1, p0, Lcom/android/tools/r8/internal/EG;->d:Lcom/android/tools/r8/internal/FG;

    iget-object v1, v1, Lcom/android/tools/r8/internal/FG;->b:Lcom/android/tools/r8/internal/GG;

    iget-object v2, v1, Lcom/android/tools/r8/internal/GG;->b:[I

    iget v3, p0, Lcom/android/tools/r8/internal/EG;->c:I

    iput v3, p0, Lcom/android/tools/r8/internal/EG;->b:I

    aget v2, v2, v3

    iget-object v1, v1, Lcom/android/tools/r8/internal/GG;->c:[Ljava/lang/Object;

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/tools/r8/internal/EG;->c:I

    aget-object v1, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/S;-><init>(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/EG;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/tools/r8/internal/EG;->b:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/EG;->d:Lcom/android/tools/r8/internal/FG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/FG;->b:Lcom/android/tools/r8/internal/GG;

    iget v1, v0, Lcom/android/tools/r8/internal/GG;->d:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/android/tools/r8/internal/GG;->d:I

    iget v2, p0, Lcom/android/tools/r8/internal/EG;->c:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/android/tools/r8/internal/EG;->c:I

    sub-int/2addr v1, v2

    iget-object v0, v0, Lcom/android/tools/r8/internal/GG;->b:[I

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/EG;->d:Lcom/android/tools/r8/internal/FG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/FG;->b:Lcom/android/tools/r8/internal/GG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/GG;->c:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/EG;->c:I

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/EG;->d:Lcom/android/tools/r8/internal/FG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/FG;->b:Lcom/android/tools/r8/internal/GG;

    iget-object v1, v0, Lcom/android/tools/r8/internal/GG;->c:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/GG;->d:I

    const/4 v2, 0x0

    aput-object v2, v1, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
