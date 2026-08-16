.class public final Lcom/android/tools/r8/internal/RE;
.super Lcom/android/tools/r8/internal/d0;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/WE;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/WE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/d0;-><init>()V

    return-void
.end method


# virtual methods
.method public final K()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    iget v1, v0, Lcom/android/tools/r8/internal/WE;->l:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/WE;->c:[I

    iget v0, v0, Lcom/android/tools/r8/internal/WE;->g:I

    aget v0, v1, v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(I)Lcom/android/tools/r8/internal/qI;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/WE;->clear()V

    return-void
.end method

.method public final bridge synthetic comparator()Ljava/util/Comparator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(II)Lcom/android/tools/r8/internal/qI;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final e(I)Lcom/android/tools/r8/internal/qI;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final h(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/WE;->a(I)Z

    move-result p1

    return p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/HH;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/QE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/QE;-><init>(Lcom/android/tools/r8/internal/WE;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/QE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/QE;-><init>(Lcom/android/tools/r8/internal/WE;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/QE;

    iget-object v1, p0, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/QE;-><init>(Lcom/android/tools/r8/internal/WE;)V

    return-object v0
.end method

.method public final p()I
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    iget v1, v0, Lcom/android/tools/r8/internal/WE;->l:I

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/WE;->c:[I

    iget v0, v0, Lcom/android/tools/r8/internal/WE;->h:I

    aget v0, v1, v0

    return v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    iget v1, v0, Lcom/android/tools/r8/internal/WE;->l:I

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/WE;->remove(I)I

    iget-object p1, p0, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    iget p1, p1, Lcom/android/tools/r8/internal/WE;->l:I

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/RE;->b:Lcom/android/tools/r8/internal/WE;

    iget v0, v0, Lcom/android/tools/r8/internal/WE;->l:I

    return v0
.end method
