.class public final Lcom/android/tools/r8/internal/EH;
.super Lcom/android/tools/r8/internal/X;
.source "SourceFile"


# instance fields
.field public b:I

.field public final synthetic c:Lcom/android/tools/r8/internal/FH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/FH;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/EH;->c:Lcom/android/tools/r8/internal/FH;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/X;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/tools/r8/internal/EH;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/EH;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/EH;->c:Lcom/android/tools/r8/internal/FH;

    iget v1, v1, Lcom/android/tools/r8/internal/FH;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/EH;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/EH;->c:Lcom/android/tools/r8/internal/FH;

    iget-object v0, v0, Lcom/android/tools/r8/internal/FH;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/EH;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/EH;->b:I

    aget v0, v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/EH;->c:Lcom/android/tools/r8/internal/FH;

    iget v1, v0, Lcom/android/tools/r8/internal/FH;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, v0, Lcom/android/tools/r8/internal/FH;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/EH;->b:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/android/tools/r8/internal/EH;->b:I

    sub-int/2addr v1, v2

    iget-object v0, v0, Lcom/android/tools/r8/internal/FH;->b:[I

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
