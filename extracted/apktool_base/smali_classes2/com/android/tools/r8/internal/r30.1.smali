.class public final Lcom/android/tools/r8/internal/r30;
.super Lcom/android/tools/r8/internal/c1;
.source "SourceFile"


# instance fields
.field public b:I

.field public final synthetic c:Lcom/android/tools/r8/internal/s30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/s30;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/r30;->c:Lcom/android/tools/r8/internal/s30;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/c1;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/r30;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/r30;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/r30;->c:Lcom/android/tools/r8/internal/s30;

    iget v1, v1, Lcom/android/tools/r8/internal/s30;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/r30;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/r30;->c:Lcom/android/tools/r8/internal/s30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/r30;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/r30;->b:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/r30;->c:Lcom/android/tools/r8/internal/s30;

    iget v1, v0, Lcom/android/tools/r8/internal/s30;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/android/tools/r8/internal/s30;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/r30;->b:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/android/tools/r8/internal/r30;->b:I

    sub-int/2addr v1, v2

    iget-object v0, v0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/r30;->c:Lcom/android/tools/r8/internal/s30;

    iget-object v1, v0, Lcom/android/tools/r8/internal/s30;->b:[Ljava/lang/Object;

    iget v0, v0, Lcom/android/tools/r8/internal/s30;->c:I

    const/4 v2, 0x0

    aput-object v2, v1, v0

    return-void
.end method
