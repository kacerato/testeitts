.class public final Lcom/android/tools/r8/internal/d8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public final c:I

.field public final synthetic d:Lcom/android/tools/r8/internal/h8;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/h8;)V
    .locals 1

    iput-object p1, p0, Lcom/android/tools/r8/internal/d8;->d:Lcom/android/tools/r8/internal/h8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/d8;->b:I

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result p1

    iput p1, p0, Lcom/android/tools/r8/internal/d8;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/d8;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/d8;->c:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/d8;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/d8;->c:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/d8;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/d8;->d:Lcom/android/tools/r8/internal/h8;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/m8;->k(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
