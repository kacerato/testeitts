.class public final Lcom/android/tools/r8/internal/A1;
.super Lcom/android/tools/r8/internal/B1;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/B1;

.field public final c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/B1;II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/B1;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    iput p2, p0, Lcom/android/tools/r8/internal/A1;->c:I

    iput p3, p0, Lcom/android/tools/r8/internal/A1;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/A1;->e:Z

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/A1;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/A1;->d:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    :goto_1
    if-nez v0, :cond_5

    .line 3
    iget v0, p0, Lcom/android/tools/r8/internal/A1;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/A1;->c:I

    if-lt v0, v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_5
    :goto_2
    return-void
.end method

.method public final a(II)V
    .locals 3

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->j(I)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/B1;->j(I)V

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    iget v1, p0, Lcom/android/tools/r8/internal/A1;->c:I

    add-int v2, v1, p1

    add-int/2addr v1, p2

    invoke-interface {v0, v2, v1}, Lcom/android/tools/r8/internal/Rd0;->a(II)V

    .line 7
    iget v0, p0, Lcom/android/tools/r8/internal/A1;->d:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/android/tools/r8/internal/A1;->d:I

    .line 8
    sget-boolean p1, Lcom/android/tools/r8/internal/A1;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/A1;->a()V

    :cond_0
    return-void
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->j(I)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    iget v1, p0, Lcom/android/tools/r8/internal/A1;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    iget p1, p0, Lcom/android/tools/r8/internal/A1;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/A1;->d:I

    .line 7
    sget-boolean p1, Lcom/android/tools/r8/internal/A1;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/A1;->a()V

    :cond_0
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    iget v1, p0, Lcom/android/tools/r8/internal/A1;->d:I

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2
    iget p1, p0, Lcom/android/tools/r8/internal/A1;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/A1;->d:I

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/internal/A1;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/A1;->a()V

    :cond_0
    return v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->j(I)V

    iget v0, p0, Lcom/android/tools/r8/internal/A1;->d:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/A1;->d:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    iget v1, p0, Lcom/android/tools/r8/internal/A1;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final e(II)Lcom/android/tools/r8/internal/A1;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->j(I)V

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/B1;->j(I)V

    if-gt p1, p2, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/A1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/A1;-><init>(Lcom/android/tools/r8/internal/B1;II)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is greater than end index ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->k(I)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    iget v1, p0, Lcom/android/tools/r8/internal/A1;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/B1;->j(I)V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/z1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/z1;-><init>(Lcom/android/tools/r8/internal/A1;I)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/B1;->j(I)V

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/z1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/z1;-><init>(Lcom/android/tools/r8/internal/A1;I)V

    return-object v1
.end method

.method public final l(I)Lcom/android/tools/r8/internal/G30;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->j(I)V

    new-instance v0, Lcom/android/tools/r8/internal/z1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/z1;-><init>(Lcom/android/tools/r8/internal/A1;I)V

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/B1;->j(I)V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/z1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/z1;-><init>(Lcom/android/tools/r8/internal/A1;I)V

    return-object v1
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->j(I)V

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/z1;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/z1;-><init>(Lcom/android/tools/r8/internal/A1;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->k(I)V

    iget v0, p0, Lcom/android/tools/r8/internal/A1;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/A1;->d:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    iget v1, p0, Lcom/android/tools/r8/internal/A1;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->k(I)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/A1;->b:Lcom/android/tools/r8/internal/B1;

    iget v1, p0, Lcom/android/tools/r8/internal/A1;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/A1;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/A1;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/A1;->e(II)Lcom/android/tools/r8/internal/A1;

    move-result-object p1

    return-object p1
.end method
