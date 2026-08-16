.class public final Lcom/android/tools/r8/internal/KE;
.super Lcom/android/tools/r8/internal/c1;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lcom/android/tools/r8/internal/LE;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/LE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/KE;->d:Lcom/android/tools/r8/internal/LE;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/c1;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/KE;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/KE;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/KE;->c:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/KE;->d:Lcom/android/tools/r8/internal/LE;

    iget-object v1, v1, Lcom/android/tools/r8/internal/LE;->b:Lcom/android/tools/r8/internal/ME;

    iget v1, v1, Lcom/android/tools/r8/internal/ME;->e:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/KE;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/J;

    iget-object v1, p0, Lcom/android/tools/r8/internal/KE;->d:Lcom/android/tools/r8/internal/LE;

    iget-object v1, v1, Lcom/android/tools/r8/internal/LE;->b:Lcom/android/tools/r8/internal/ME;

    iget-object v2, v1, Lcom/android/tools/r8/internal/ME;->c:[I

    iget v3, p0, Lcom/android/tools/r8/internal/KE;->c:I

    iput v3, p0, Lcom/android/tools/r8/internal/KE;->b:I

    aget v2, v2, v3

    iget-object v1, v1, Lcom/android/tools/r8/internal/ME;->d:[I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/tools/r8/internal/KE;->c:I

    aget v1, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/J;-><init>(II)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/KE;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/android/tools/r8/internal/KE;->b:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/KE;->d:Lcom/android/tools/r8/internal/LE;

    iget-object v0, v0, Lcom/android/tools/r8/internal/LE;->b:Lcom/android/tools/r8/internal/ME;

    iget v1, v0, Lcom/android/tools/r8/internal/ME;->e:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/android/tools/r8/internal/ME;->e:I

    iget v2, p0, Lcom/android/tools/r8/internal/KE;->c:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/android/tools/r8/internal/KE;->c:I

    sub-int/2addr v1, v2

    iget-object v0, v0, Lcom/android/tools/r8/internal/ME;->c:[I

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/KE;->d:Lcom/android/tools/r8/internal/LE;

    iget-object v0, v0, Lcom/android/tools/r8/internal/LE;->b:Lcom/android/tools/r8/internal/ME;

    iget-object v0, v0, Lcom/android/tools/r8/internal/ME;->d:[I

    iget v2, p0, Lcom/android/tools/r8/internal/KE;->c:I

    add-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
