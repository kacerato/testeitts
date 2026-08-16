.class public final Lcom/android/tools/r8/internal/l0;
.super Lcom/android/tools/r8/internal/m0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public final b:Lcom/android/tools/r8/internal/m0;

.field public final c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/internal/m0;II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/m0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/l0;->b:Lcom/android/tools/r8/internal/m0;

    iput p2, p0, Lcom/android/tools/r8/internal/l0;->c:I

    iput p3, p0, Lcom/android/tools/r8/internal/l0;->d:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/lU;
    .locals 2

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/m0;->j(I)V

    .line 14
    new-instance v1, Lcom/android/tools/r8/internal/k0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/k0;-><init>(Lcom/android/tools/r8/internal/l0;I)V

    return-object v1
.end method

.method public final a(II)V
    .locals 3

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->j(I)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/m0;->j(I)V

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/internal/l0;->b:Lcom/android/tools/r8/internal/m0;

    iget v1, p0, Lcom/android/tools/r8/internal/l0;->c:I

    add-int v2, v1, p1

    add-int/2addr v1, p2

    invoke-interface {v0, v2, v1}, Lcom/android/tools/r8/internal/mU;->a(II)V

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/l0;->d:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/android/tools/r8/internal/l0;->d:I

    .line 12
    sget-boolean p1, Lcom/android/tools/r8/internal/l0;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l0;->b()V

    :cond_0
    return-void
.end method

.method public final a(IJ)V
    .locals 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->j(I)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/l0;->b:Lcom/android/tools/r8/internal/m0;

    iget v1, p0, Lcom/android/tools/r8/internal/l0;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/tools/r8/internal/mU;->a(IJ)V

    .line 6
    iget p1, p0, Lcom/android/tools/r8/internal/l0;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/l0;->d:I

    .line 7
    sget-boolean p1, Lcom/android/tools/r8/internal/l0;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l0;->b()V

    :cond_0
    return-void
.end method

.method public final a(J)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/l0;->b:Lcom/android/tools/r8/internal/m0;

    iget v1, p0, Lcom/android/tools/r8/internal/l0;->d:I

    invoke-interface {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/mU;->a(IJ)V

    .line 2
    iget p1, p0, Lcom/android/tools/r8/internal/l0;->d:I

    const/4 p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/tools/r8/internal/l0;->d:I

    .line 3
    sget-boolean p1, Lcom/android/tools/r8/internal/l0;->e:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l0;->b()V

    :cond_0
    return p2
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/l0;->a(IJ)V

    return-void
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->j(I)V

    iget v0, p0, Lcom/android/tools/r8/internal/l0;->d:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/l0;->d:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/l0;->b:Lcom/android/tools/r8/internal/m0;

    iget v1, p0, Lcom/android/tools/r8/internal/l0;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final b(IJ)J
    .locals 2

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->k(I)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/l0;->b:Lcom/android/tools/r8/internal/m0;

    iget v1, p0, Lcom/android/tools/r8/internal/l0;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1, p2, p3}, Lcom/android/tools/r8/internal/mU;->b(IJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final b()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/l0;->e:Z

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/tools/r8/internal/l0;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/l0;->b:Lcom/android/tools/r8/internal/m0;

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
    iget v1, p0, Lcom/android/tools/r8/internal/l0;->d:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/l0;->b:Lcom/android/tools/r8/internal/m0;

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
    iget v0, p0, Lcom/android/tools/r8/internal/l0;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/l0;->c:I

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

.method public final c(J)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/m0;->d(J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p2, p0, Lcom/android/tools/r8/internal/l0;->d:I

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/tools/r8/internal/l0;->d:I

    iget-object p2, p0, Lcom/android/tools/r8/internal/l0;->b:Lcom/android/tools/r8/internal/m0;

    iget v1, p0, Lcom/android/tools/r8/internal/l0;->c:I

    add-int/2addr v1, p1

    invoke-interface {p2, v1}, Lcom/android/tools/r8/internal/mU;->f(I)J

    sget-boolean p1, Lcom/android/tools/r8/internal/l0;->e:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/l0;->b()V

    :cond_1
    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->a(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public final d(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->k(I)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/l0;->b:Lcom/android/tools/r8/internal/m0;

    iget v1, p0, Lcom/android/tools/r8/internal/l0;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/mU;->d(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e(II)Lcom/android/tools/r8/internal/l0;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->j(I)V

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/m0;->j(I)V

    if-gt p1, p2, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/l0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/l0;-><init>(Lcom/android/tools/r8/internal/m0;II)V

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

.method public final f(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->k(I)V

    iget v0, p0, Lcom/android/tools/r8/internal/l0;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/l0;->d:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/l0;->b:Lcom/android/tools/r8/internal/m0;

    iget v1, p0, Lcom/android/tools/r8/internal/l0;->c:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/mU;->f(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l0;->d(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/m0;->j(I)V

    new-instance v1, Lcom/android/tools/r8/internal/k0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/k0;-><init>(Lcom/android/tools/r8/internal/l0;I)V

    return-object v1
.end method

.method public final l(I)Lcom/android/tools/r8/internal/n0;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->j(I)V

    new-instance v0, Lcom/android/tools/r8/internal/k0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/k0;-><init>(Lcom/android/tools/r8/internal/l0;I)V

    return-object v0
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/m0;->j(I)V

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/k0;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/k0;-><init>(Lcom/android/tools/r8/internal/l0;I)V

    return-object v1
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->j(I)V

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/k0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/k0;-><init>(Lcom/android/tools/r8/internal/l0;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/l0;->f(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/l0;->b(IJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final size()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/l0;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/l0;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/l0;->e(II)Lcom/android/tools/r8/internal/l0;

    move-result-object p1

    return-object p1
.end method
