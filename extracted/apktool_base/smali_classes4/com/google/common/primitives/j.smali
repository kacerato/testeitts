.class public final Lcom/google/common/primitives/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime LI2/j;
.end annotation

.annotation runtime Lcom/google/common/primitives/f;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/j$b;,
        Lcom/google/common/primitives/j$c;
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final e:Lcom/google/common/primitives/j;


# instance fields
.field public final b:[I

.field public final transient c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/primitives/j;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-direct {v0, v1}, Lcom/google/common/primitives/j;-><init>([I)V

    sput-object v0, Lcom/google/common/primitives/j;->e:Lcom/google/common/primitives/j;

    return-void
.end method

.method public constructor <init>([I)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/j;-><init>([III)V

    return-void
.end method

.method public constructor <init>([III)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/primitives/j;->b:[I

    .line 5
    iput p2, p0, Lcom/google/common/primitives/j;->c:I

    .line 6
    iput p3, p0, Lcom/google/common/primitives/j;->d:I

    return-void
.end method

.method public synthetic constructor <init>([IIILcom/google/common/primitives/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/j;-><init>([III)V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/primitives/j;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/primitives/j;->b:[I

    return-object p0
.end method

.method public static synthetic b(Lcom/google/common/primitives/j;)I
    .locals 0

    iget p0, p0, Lcom/google/common/primitives/j;->c:I

    return p0
.end method

.method public static synthetic c()Lcom/google/common/primitives/j;
    .locals 1

    sget-object v0, Lcom/google/common/primitives/j;->e:Lcom/google/common/primitives/j;

    return-object v0
.end method

.method public static e()Lcom/google/common/primitives/j$c;
    .locals 2

    new-instance v0, Lcom/google/common/primitives/j$c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/j$c;-><init>(I)V

    return-object v0
.end method

.method public static f(I)Lcom/google/common/primitives/j$c;
    .locals 2

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lw2/H;->k(ZLjava/lang/String;I)V

    new-instance v0, Lcom/google/common/primitives/j$c;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/j$c;-><init>(I)V

    return-object v0
.end method

.method public static h(Ljava/lang/Iterable;)Lcom/google/common/primitives/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/j;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/google/common/primitives/j;->i(Ljava/util/Collection;)Lcom/google/common/primitives/j;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/common/primitives/j;->e()Lcom/google/common/primitives/j$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/j$c;->c(Ljava/lang/Iterable;)Lcom/google/common/primitives/j$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/primitives/j$c;->f()Lcom/google/common/primitives/j;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/Collection;)Lcom/google/common/primitives/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/common/primitives/j;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/j;->e:Lcom/google/common/primitives/j;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/j;

    invoke-static {p0}, Lcom/google/common/primitives/l;->B(Ljava/util/Collection;)[I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/j;-><init>([I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static j([I)Lcom/google/common/primitives/j;
    .locals 2

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/j;->e:Lcom/google/common/primitives/j;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/j;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/j;-><init>([I)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static q()Lcom/google/common/primitives/j;
    .locals 1

    sget-object v0, Lcom/google/common/primitives/j;->e:Lcom/google/common/primitives/j;

    return-object v0
.end method

.method public static r(I)Lcom/google/common/primitives/j;
    .locals 1

    new-instance v0, Lcom/google/common/primitives/j;

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/j;-><init>([I)V

    return-object v0
.end method

.method public static s(II)Lcom/google/common/primitives/j;
    .locals 1

    new-instance v0, Lcom/google/common/primitives/j;

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/j;-><init>([I)V

    return-object v0
.end method

.method public static u(III)Lcom/google/common/primitives/j;
    .locals 1

    new-instance v0, Lcom/google/common/primitives/j;

    filled-new-array {p0, p1, p2}, [I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/j;-><init>([I)V

    return-object v0
.end method

.method public static v(IIII)Lcom/google/common/primitives/j;
    .locals 1

    new-instance v0, Lcom/google/common/primitives/j;

    filled-new-array {p0, p1, p2, p3}, [I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/j;-><init>([I)V

    return-object v0
.end method

.method public static w(IIIII)Lcom/google/common/primitives/j;
    .locals 1

    new-instance v0, Lcom/google/common/primitives/j;

    filled-new-array {p0, p1, p2, p3, p4}, [I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/j;-><init>([I)V

    return-object v0
.end method

.method public static x(IIIIII)Lcom/google/common/primitives/j;
    .locals 1

    new-instance v0, Lcom/google/common/primitives/j;

    filled-new-array/range {p0 .. p5}, [I

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/j;-><init>([I)V

    return-object v0
.end method

.method public static varargs y(I[I)Lcom/google/common/primitives/j;
    .locals 4

    array-length v0, p1

    const v1, 0x7ffffffe

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "the total number of elements must fit in an int"

    invoke-static {v0, v1}, Lw2/H;->e(ZLjava/lang/Object;)V

    array-length v0, p1

    add-int/2addr v0, v3

    new-array v0, v0, [I

    aput p0, v0, v2

    array-length p0, p1

    invoke-static {p1, v2, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/common/primitives/j;

    invoke-direct {p0, v0}, Lcom/google/common/primitives/j;-><init>([I)V

    return-object p0
.end method


# virtual methods
.method public A(II)Lcom/google/common/primitives/j;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/primitives/j;->p()I

    move-result v0

    invoke-static {p1, p2, v0}, Lw2/H;->f0(III)V

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/google/common/primitives/j;->e:Lcom/google/common/primitives/j;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/j;

    iget-object v1, p0, Lcom/google/common/primitives/j;->b:[I

    iget v2, p0, Lcom/google/common/primitives/j;->c:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/primitives/j;-><init>([III)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public B()[I
    .locals 3

    iget-object v0, p0, Lcom/google/common/primitives/j;->b:[I

    iget v1, p0, Lcom/google/common/primitives/j;->c:I

    iget v2, p0, Lcom/google/common/primitives/j;->d:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/google/common/primitives/j;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/primitives/j;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/primitives/j;

    invoke-virtual {p0}, Lcom/google/common/primitives/j;->B()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/j;-><init>([I)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public D()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/primitives/j;->C()Lcom/google/common/primitives/j;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/primitives/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/j$b;-><init>(Lcom/google/common/primitives/j;Lcom/google/common/primitives/j$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/common/primitives/j;

    invoke-virtual {p0}, Lcom/google/common/primitives/j;->p()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/common/primitives/j;->p()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/primitives/j;->p()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/common/primitives/j;->k(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/google/common/primitives/j;->k(I)I

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public g(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/primitives/j;->l(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/common/primitives/j;->c:I

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/j;->d:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/j;->b:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/google/common/primitives/l;->l(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public k(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/primitives/j;->p()I

    move-result v0

    invoke-static {p1, v0}, Lw2/H;->C(II)I

    iget-object v0, p0, Lcom/google/common/primitives/j;->b:[I

    iget v1, p0, Lcom/google/common/primitives/j;->c:I

    add-int/2addr v1, p1

    aget p1, v0, v1

    return p1
.end method

.method public l(I)I
    .locals 2

    iget v0, p0, Lcom/google/common/primitives/j;->c:I

    :goto_0
    iget v1, p0, Lcom/google/common/primitives/j;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/common/primitives/j;->b:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget p1, p0, Lcom/google/common/primitives/j;->c:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/google/common/primitives/j;->d:I

    iget v1, p0, Lcom/google/common/primitives/j;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()Z
    .locals 2

    iget v0, p0, Lcom/google/common/primitives/j;->c:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/primitives/j;->d:I

    iget-object v1, p0, Lcom/google/common/primitives/j;->b:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public o(I)I
    .locals 3

    iget v0, p0, Lcom/google/common/primitives/j;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/google/common/primitives/j;->c:I

    if-lt v0, v1, :cond_1

    iget-object v2, p0, Lcom/google/common/primitives/j;->b:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public p()I
    .locals 2

    iget v0, p0, Lcom/google/common/primitives/j;->d:I

    iget v1, p0, Lcom/google/common/primitives/j;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/primitives/j;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/j;->p()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/j;->b:[I

    iget v2, p0, Lcom/google/common/primitives/j;->c:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/common/primitives/j;->c:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/j;->d:I

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/j;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/primitives/j;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/j;->e:Lcom/google/common/primitives/j;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
