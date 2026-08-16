.class public final Lcom/android/tools/r8/internal/Z;
.super Lcom/android/tools/r8/internal/a0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/a0;

.field public final c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/a0;II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/a0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

    iput p2, p0, Lcom/android/tools/r8/internal/Z;->c:I

    iput p3, p0, Lcom/android/tools/r8/internal/Z;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Z;->e:Z

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/Z;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

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
    iget v1, p0, Lcom/android/tools/r8/internal/Z;->d:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

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
    iget v0, p0, Lcom/android/tools/r8/internal/Z;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/Z;->c:I

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

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/a0;->k(I)V

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

    iget v1, p0, Lcom/android/tools/r8/internal/Z;->c:I

    add-int v2, v1, p1

    add-int/2addr v1, p2

    invoke-interface {v0, v2, v1}, Lcom/android/tools/r8/internal/TH;->a(II)V

    .line 13
    iget v0, p0, Lcom/android/tools/r8/internal/Z;->d:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/android/tools/r8/internal/Z;->d:I

    .line 14
    sget-boolean p1, Lcom/android/tools/r8/internal/Z;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Z;->a()V

    :cond_0
    return-void
.end method

.method public final a(I[III)V
    .locals 3

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    add-int v0, p1, p4

    .line 5
    iget v1, p0, Lcom/android/tools/r8/internal/Z;->d:I

    iget v2, p0, Lcom/android/tools/r8/internal/Z;->c:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

    add-int/2addr v2, p1

    invoke-interface {v0, v2, p2, p3, p4}, Lcom/android/tools/r8/internal/TH;->a(I[III)V

    return-void

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "End index ("

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is greater than list size ("

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    iget p1, p0, Lcom/android/tools/r8/internal/Z;->d:I

    iget p4, p0, Lcom/android/tools/r8/internal/Z;->c:I

    sub-int/2addr p1, p4

    .line 9
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(ILcom/android/tools/r8/internal/TH;)Z
    .locals 3

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    .line 18
    invoke-interface {p2}, Lcom/android/tools/r8/internal/JH;->iterator()Lcom/android/tools/r8/internal/PH;

    move-result-object p2

    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 20
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/internal/Z;->b(II)V

    move p1, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Z;->b(II)V

    return-void
.end method

.method public final add(I)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

    iget v1, p0, Lcom/android/tools/r8/internal/Z;->d:I

    invoke-interface {v0, v1, p1}, Lcom/android/tools/r8/internal/TH;->b(II)V

    .line 4
    iget p1, p0, Lcom/android/tools/r8/internal/Z;->d:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/Z;->d:I

    .line 5
    sget-boolean p1, Lcom/android/tools/r8/internal/Z;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Z;->a()V

    :cond_0
    return v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    iget v0, p0, Lcom/android/tools/r8/internal/Z;->d:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/Z;->d:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

    iget v1, p0, Lcom/android/tools/r8/internal/Z;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

    iget v1, p0, Lcom/android/tools/r8/internal/Z;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lcom/android/tools/r8/internal/TH;->b(II)V

    iget p1, p0, Lcom/android/tools/r8/internal/Z;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Z;->d:I

    sget-boolean p1, Lcom/android/tools/r8/internal/Z;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Z;->a()V

    :cond_0
    return-void
.end method

.method public final c(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->l(I)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

    iget v1, p0, Lcom/android/tools/r8/internal/Z;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/TH;->c(I)I

    move-result p1

    return p1
.end method

.method public final c(II)I
    .locals 2

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->l(I)V

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

    iget v1, p0, Lcom/android/tools/r8/internal/Z;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Lcom/android/tools/r8/internal/TH;->c(II)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->a(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public final e(II)Lcom/android/tools/r8/internal/TH;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/a0;->k(I)V

    if-gt p1, p2, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Z;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/Z;-><init>(Lcom/android/tools/r8/internal/a0;II)V

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
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Z;->c(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final i(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->l(I)V

    iget v0, p0, Lcom/android/tools/r8/internal/Z;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/Z;->d:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

    iget v1, p0, Lcom/android/tools/r8/internal/Z;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/TH;->i(I)I

    move-result p1

    return p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->k(I)V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Y;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Y;-><init>(Lcom/android/tools/r8/internal/Z;I)V

    return-object v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->k(I)V

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/Y;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Y;-><init>(Lcom/android/tools/r8/internal/Z;I)V

    return-object v1
.end method

.method public final j(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->m(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Z;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Z;->d:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/Z;->b:Lcom/android/tools/r8/internal/a0;

    iget v2, p0, Lcom/android/tools/r8/internal/Z;->c:I

    add-int/2addr v2, p1

    invoke-interface {v0, v2}, Lcom/android/tools/r8/internal/TH;->i(I)I

    sget-boolean p1, Lcom/android/tools/r8/internal/Z;->e:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Z;->a()V

    :cond_1
    return v1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->k(I)V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/Y;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/Y;-><init>(Lcom/android/tools/r8/internal/Z;I)V

    return-object v1
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/Y;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Y;-><init>(Lcom/android/tools/r8/internal/Z;I)V

    return-object v0
.end method

.method public final o(I)Lcom/android/tools/r8/internal/UH;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    new-instance v0, Lcom/android/tools/r8/internal/Y;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Y;-><init>(Lcom/android/tools/r8/internal/Z;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Z;->i(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Z;->c(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Z;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/Z;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Z;->e(II)Lcom/android/tools/r8/internal/TH;

    move-result-object p1

    return-object p1
.end method
