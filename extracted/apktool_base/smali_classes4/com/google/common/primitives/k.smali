.class public final Lcom/google/common/primitives/k;
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
        Lcom/google/common/primitives/k$b;,
        Lcom/google/common/primitives/k$c;
    }
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/b;
.end annotation


# static fields
.field public static final e:Lcom/google/common/primitives/k;


# instance fields
.field public final b:[J

.field public final transient c:I

.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/primitives/k;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-direct {v0, v1}, Lcom/google/common/primitives/k;-><init>([J)V

    sput-object v0, Lcom/google/common/primitives/k;->e:Lcom/google/common/primitives/k;

    return-void
.end method

.method public constructor <init>([J)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/google/common/primitives/k;-><init>([JII)V

    return-void
.end method

.method public constructor <init>([JII)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/common/primitives/k;->b:[J

    .line 5
    iput p2, p0, Lcom/google/common/primitives/k;->c:I

    .line 6
    iput p3, p0, Lcom/google/common/primitives/k;->d:I

    return-void
.end method

.method public synthetic constructor <init>([JIILcom/google/common/primitives/k$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/primitives/k;-><init>([JII)V

    return-void
.end method

.method public static synthetic a(Lcom/google/common/primitives/k;)[J
    .locals 0

    iget-object p0, p0, Lcom/google/common/primitives/k;->b:[J

    return-object p0
.end method

.method public static synthetic b(Lcom/google/common/primitives/k;)I
    .locals 0

    iget p0, p0, Lcom/google/common/primitives/k;->c:I

    return p0
.end method

.method public static synthetic c()Lcom/google/common/primitives/k;
    .locals 1

    sget-object v0, Lcom/google/common/primitives/k;->e:Lcom/google/common/primitives/k;

    return-object v0
.end method

.method public static e()Lcom/google/common/primitives/k$c;
    .locals 2

    new-instance v0, Lcom/google/common/primitives/k$c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/common/primitives/k$c;-><init>(I)V

    return-object v0
.end method

.method public static f(I)Lcom/google/common/primitives/k$c;
    .locals 2

    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Invalid initialCapacity: %s"

    invoke-static {v0, v1, p0}, Lw2/H;->k(ZLjava/lang/String;I)V

    new-instance v0, Lcom/google/common/primitives/k$c;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/k$c;-><init>(I)V

    return-object v0
.end method

.method public static h(Ljava/lang/Iterable;)Lcom/google/common/primitives/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/k;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/google/common/primitives/k;->i(Ljava/util/Collection;)Lcom/google/common/primitives/k;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/google/common/primitives/k;->e()Lcom/google/common/primitives/k$c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/primitives/k$c;->c(Ljava/lang/Iterable;)Lcom/google/common/primitives/k$c;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/common/primitives/k$c;->f()Lcom/google/common/primitives/k;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/util/Collection;)Lcom/google/common/primitives/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/common/primitives/k;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/k;->e:Lcom/google/common/primitives/k;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/k;

    invoke-static {p0}, Lcom/google/common/primitives/n;->z(Ljava/util/Collection;)[J

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/k;-><init>([J)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static j([J)Lcom/google/common/primitives/k;
    .locals 2

    array-length v0, p0

    if-nez v0, :cond_0

    sget-object p0, Lcom/google/common/primitives/k;->e:Lcom/google/common/primitives/k;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/k;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/common/primitives/k;-><init>([J)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static q()Lcom/google/common/primitives/k;
    .locals 1

    sget-object v0, Lcom/google/common/primitives/k;->e:Lcom/google/common/primitives/k;

    return-object v0
.end method

.method public static r(J)Lcom/google/common/primitives/k;
    .locals 3

    new-instance v0, Lcom/google/common/primitives/k;

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    invoke-direct {v0, v1}, Lcom/google/common/primitives/k;-><init>([J)V

    return-object v0
.end method

.method public static s(JJ)Lcom/google/common/primitives/k;
    .locals 3

    new-instance v0, Lcom/google/common/primitives/k;

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    aput-wide p2, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/k;-><init>([J)V

    return-object v0
.end method

.method public static u(JJJ)Lcom/google/common/primitives/k;
    .locals 3

    new-instance v0, Lcom/google/common/primitives/k;

    const/4 v1, 0x3

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    aput-wide p2, v1, p0

    const/4 p0, 0x2

    aput-wide p4, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/k;-><init>([J)V

    return-object v0
.end method

.method public static v(JJJJ)Lcom/google/common/primitives/k;
    .locals 3

    new-instance v0, Lcom/google/common/primitives/k;

    const/4 v1, 0x4

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    aput-wide p2, v1, p0

    const/4 p0, 0x2

    aput-wide p4, v1, p0

    const/4 p0, 0x3

    aput-wide p6, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/k;-><init>([J)V

    return-object v0
.end method

.method public static w(JJJJJ)Lcom/google/common/primitives/k;
    .locals 3

    new-instance v0, Lcom/google/common/primitives/k;

    const/4 v1, 0x5

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    aput-wide p2, v1, p0

    const/4 p0, 0x2

    aput-wide p4, v1, p0

    const/4 p0, 0x3

    aput-wide p6, v1, p0

    const/4 p0, 0x4

    aput-wide p8, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/k;-><init>([J)V

    return-object v0
.end method

.method public static x(JJJJJJ)Lcom/google/common/primitives/k;
    .locals 3

    new-instance v0, Lcom/google/common/primitives/k;

    const/4 v1, 0x6

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p0, v1, v2

    const/4 p0, 0x1

    aput-wide p2, v1, p0

    const/4 p0, 0x2

    aput-wide p4, v1, p0

    const/4 p0, 0x3

    aput-wide p6, v1, p0

    const/4 p0, 0x4

    aput-wide p8, v1, p0

    const/4 p0, 0x5

    aput-wide p10, v1, p0

    invoke-direct {v0, v1}, Lcom/google/common/primitives/k;-><init>([J)V

    return-object v0
.end method

.method public static varargs y(J[J)Lcom/google/common/primitives/k;
    .locals 4

    array-length v0, p2

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

    array-length v0, p2

    add-int/2addr v0, v3

    new-array v0, v0, [J

    aput-wide p0, v0, v2

    array-length p0, p2

    invoke-static {p2, v2, v0, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/common/primitives/k;

    invoke-direct {p0, v0}, Lcom/google/common/primitives/k;-><init>([J)V

    return-object p0
.end method


# virtual methods
.method public A(II)Lcom/google/common/primitives/k;
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/primitives/k;->p()I

    move-result v0

    invoke-static {p1, p2, v0}, Lw2/H;->f0(III)V

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/google/common/primitives/k;->e:Lcom/google/common/primitives/k;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/k;

    iget-object v1, p0, Lcom/google/common/primitives/k;->b:[J

    iget v2, p0, Lcom/google/common/primitives/k;->c:I

    add-int/2addr p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/common/primitives/k;-><init>([JII)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public B()[J
    .locals 3

    iget-object v0, p0, Lcom/google/common/primitives/k;->b:[J

    iget v1, p0, Lcom/google/common/primitives/k;->c:I

    iget v2, p0, Lcom/google/common/primitives/k;->d:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    return-object v0
.end method

.method public C()Lcom/google/common/primitives/k;
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/primitives/k;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/primitives/k;

    invoke-virtual {p0}, Lcom/google/common/primitives/k;->B()[J

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/primitives/k;-><init>([J)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public D()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/primitives/k;->C()Lcom/google/common/primitives/k;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/primitives/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/primitives/k$b;-><init>(Lcom/google/common/primitives/k;Lcom/google/common/primitives/k$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/common/primitives/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/common/primitives/k;

    invoke-virtual {p0}, Lcom/google/common/primitives/k;->p()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/common/primitives/k;->p()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/primitives/k;->p()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Lcom/google/common/primitives/k;->k(I)J

    move-result-wide v3

    invoke-virtual {p1, v1}, Lcom/google/common/primitives/k;->k(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public g(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/k;->l(J)I

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
    .locals 5

    iget v0, p0, Lcom/google/common/primitives/k;->c:I

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/google/common/primitives/k;->d:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/common/primitives/k;->b:[J

    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lcom/google/common/primitives/n;->k(J)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public k(I)J
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/primitives/k;->p()I

    move-result v0

    invoke-static {p1, v0}, Lw2/H;->C(II)I

    iget-object v0, p0, Lcom/google/common/primitives/k;->b:[J

    iget v1, p0, Lcom/google/common/primitives/k;->c:I

    add-int/2addr v1, p1

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public l(J)I
    .locals 4

    iget v0, p0, Lcom/google/common/primitives/k;->c:I

    :goto_0
    iget v1, p0, Lcom/google/common/primitives/k;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/common/primitives/k;->b:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    iget p1, p0, Lcom/google/common/primitives/k;->c:I

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

    iget v0, p0, Lcom/google/common/primitives/k;->d:I

    iget v1, p0, Lcom/google/common/primitives/k;->c:I

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

    iget v0, p0, Lcom/google/common/primitives/k;->c:I

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/google/common/primitives/k;->d:I

    iget-object v1, p0, Lcom/google/common/primitives/k;->b:[J

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

.method public o(J)I
    .locals 5

    iget v0, p0, Lcom/google/common/primitives/k;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v1, p0, Lcom/google/common/primitives/k;->c:I

    if-lt v0, v1, :cond_1

    iget-object v2, p0, Lcom/google/common/primitives/k;->b:[J

    aget-wide v3, v2, v0

    cmp-long v2, v3, p1

    if-nez v2, :cond_0

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

    iget v0, p0, Lcom/google/common/primitives/k;->d:I

    iget v1, p0, Lcom/google/common/primitives/k;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/google/common/primitives/k;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[]"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/common/primitives/k;->p()I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/common/primitives/k;->b:[J

    iget v2, p0, Lcom/google/common/primitives/k;->c:I

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/common/primitives/k;->c:I

    :goto_0
    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/google/common/primitives/k;->d:I

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/common/primitives/k;->b:[J

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    invoke-virtual {p0}, Lcom/google/common/primitives/k;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/common/primitives/k;->e:Lcom/google/common/primitives/k;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
