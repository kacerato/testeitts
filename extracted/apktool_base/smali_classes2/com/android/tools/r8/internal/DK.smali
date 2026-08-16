.class public final Lcom/android/tools/r8/internal/DK;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/android/tools/r8/internal/zK;


# direct methods
.method public constructor <init>(ILcom/android/tools/r8/internal/zK;)V
    .locals 0

    iput p1, p0, Lcom/android/tools/r8/internal/DK;->c:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/DK;->d:Lcom/android/tools/r8/internal/zK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/DK;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/DK;->c:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/DK;->d:Lcom/android/tools/r8/internal/zK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zK;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/DK;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/DK;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/DK;->b:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/DK;->d:Lcom/android/tools/r8/internal/zK;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zK;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/DK;->d:Lcom/android/tools/r8/internal/zK;

    iget-object v0, v0, Lcom/android/tools/r8/internal/zK;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
