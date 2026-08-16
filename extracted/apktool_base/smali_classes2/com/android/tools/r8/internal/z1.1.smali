.class public final Lcom/android/tools/r8/internal/z1;
.super Lcom/android/tools/r8/internal/g1;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lcom/android/tools/r8/internal/A1;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/A1;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/z1;->d:Lcom/android/tools/r8/internal/A1;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/g1;-><init>()V

    iput p2, p0, Lcom/android/tools/r8/internal/z1;->b:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/z1;->c:I

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/z1;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/z1;->d:Lcom/android/tools/r8/internal/A1;

    iget v2, p0, Lcom/android/tools/r8/internal/z1;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/z1;->b:I

    invoke-virtual {v0, v2, p1}, Lcom/android/tools/r8/internal/A1;->add(ILjava/lang/Object;)V

    iput v1, p0, Lcom/android/tools/r8/internal/z1;->c:I

    sget-boolean p1, Lcom/android/tools/r8/internal/z1;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/z1;->d:Lcom/android/tools/r8/internal/A1;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/A1;->a()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/z1;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/z1;->d:Lcom/android/tools/r8/internal/A1;

    iget v2, v1, Lcom/android/tools/r8/internal/A1;->d:I

    iget v1, v1, Lcom/android/tools/r8/internal/A1;->c:I

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/z1;->b:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/z1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/z1;->d:Lcom/android/tools/r8/internal/A1;

    iget-object v1, v0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    iget v0, v0, Lcom/android/tools/r8/internal/A1;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/z1;->b:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/z1;->b:I

    iput v2, p0, Lcom/android/tools/r8/internal/z1;->c:I

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/z1;->b:I

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/z1;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/z1;->d:Lcom/android/tools/r8/internal/A1;

    iget-object v1, v0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    iget v0, v0, Lcom/android/tools/r8/internal/A1;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/z1;->b:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/tools/r8/internal/z1;->b:I

    iput v2, p0, Lcom/android/tools/r8/internal/z1;->c:I

    add-int/2addr v0, v2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/z1;->b:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final remove()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/z1;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/z1;->d:Lcom/android/tools/r8/internal/A1;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/A1;->remove(I)Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/z1;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/z1;->b:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/tools/r8/internal/z1;->b:I

    :cond_0
    iput v1, p0, Lcom/android/tools/r8/internal/z1;->c:I

    sget-boolean v0, Lcom/android/tools/r8/internal/z1;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/z1;->d:Lcom/android/tools/r8/internal/A1;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/A1;->a()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/z1;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/z1;->d:Lcom/android/tools/r8/internal/A1;

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/A1;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
