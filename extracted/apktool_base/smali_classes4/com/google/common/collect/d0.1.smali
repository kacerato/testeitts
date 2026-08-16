.class public final Lcom/google/common/collect/d0;
.super Lcom/google/common/collect/i;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/d0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Lcom/google/common/collect/i<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# static fields
.field public static final i:J
    .annotation build Lv2/c;
    .end annotation
.end field


# instance fields
.field public transient d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TE;>;"
        }
    .end annotation
.end field

.field public transient e:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field public transient f:[I

.field public transient g:I

.field public transient h:J


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/i;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/d0;->d:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    iput-object p1, p0, Lcom/google/common/collect/d0;->e:[Ljava/lang/Enum;

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/common/collect/d0;->f:[I

    return-void
.end method

.method public static synthetic h(Lcom/google/common/collect/d0;)[Ljava/lang/Enum;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/d0;->e:[Ljava/lang/Enum;

    return-object p0
.end method

.method public static synthetic i(Lcom/google/common/collect/d0;)[I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/d0;->f:[I

    return-object p0
.end method

.method public static synthetic j(Lcom/google/common/collect/d0;)I
    .locals 2

    iget v0, p0, Lcom/google/common/collect/d0;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/d0;->g:I

    return v0
.end method

.method public static synthetic k(Lcom/google/common/collect/d0;J)J
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/d0;->h:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/d0;->h:J

    return-wide v0
.end method

.method public static n(Ljava/lang/Class;)Lcom/google/common/collect/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/google/common/collect/d0<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d0;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Iterable;)Lcom/google/common/collect/d0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lcom/google/common/collect/d0<",
            "TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "EnumMultiset constructor passed empty Iterable"

    invoke-static {v1, v2}, Lw2/H;->e(ZLjava/lang/Object;)V

    new-instance v1, Lcom/google/common/collect/d0;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/common/collect/d0;-><init>(Ljava/lang/Class;)V

    invoke-static {v1, p0}, Lcom/google/common/collect/D1;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object v1
.end method

.method public static p(Ljava/lang/Iterable;Ljava/lang/Class;)Lcom/google/common/collect/d0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lcom/google/common/collect/d0<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/collect/d0;->n(Ljava/lang/Class;)Lcom/google/common/collect/d0;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/google/common/collect/D1;->a(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    return-object p1
.end method

.method private s(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/common/collect/d0;->d:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    iput-object v0, p0, Lcom/google/common/collect/d0;->e:[Ljava/lang/Enum;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/common/collect/d0;->f:[I

    invoke-static {p0, p1}, Lcom/google/common/collect/B2;->f(Lcom/google/common/collect/V1;Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private v(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    iget-object v0, p0, Lcom/google/common/collect/d0;->d:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/google/common/collect/B2;->k(Lcom/google/common/collect/V1;Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public Ad(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0;->r(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Enum;

    iget-object v0, p0, Lcom/google/common/collect/d0;->f:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic P9(Ljava/lang/Object;I)I
    .locals 0
    .annotation build LI2/a;
    .end annotation

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/d0;->u(Ljava/lang/Enum;I)I

    move-result p1

    return p1
.end method

.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i;->S1()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/common/collect/d0;->g:I

    return v0
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/d0;->f:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/common/collect/d0;->h:J

    iput v1, p0, Lcom/google/common/collect/d0;->g:I

    return-void
.end method

.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/i;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d0$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d0$a;-><init>(Lcom/google/common/collect/d0;)V

    return-object v0
.end method

.method public bridge synthetic e7(Ljava/lang/Object;II)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/i;->e7(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d0$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d0$b;-><init>(Lcom/google/common/collect/d0;)V

    return-object v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/i;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/collect/W1;->n(Lcom/google/common/collect/V1;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public l(Ljava/lang/Enum;I)I
    .locals 7
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0;->m(Ljava/lang/Object;)V

    const-string v0, "occurrences"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0;->Ad(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v0, p0, Lcom/google/common/collect/d0;->f:[I

    aget v0, v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    add-long/2addr v1, v3

    const-wide/32 v5, 0x7fffffff

    cmp-long p2, v1, v5

    const/4 v5, 0x1

    if-gtz p2, :cond_1

    move p2, v5

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    const-string v6, "too many occurrences: %s"

    invoke-static {p2, v6, v1, v2}, Lw2/H;->p(ZLjava/lang/String;J)V

    iget-object p2, p0, Lcom/google/common/collect/d0;->f:[I

    long-to-int v1, v1

    aput v1, p2, p1

    if-nez v0, :cond_2

    iget p1, p0, Lcom/google/common/collect/d0;->g:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/common/collect/d0;->g:I

    :cond_2
    iget-wide p1, p0, Lcom/google/common/collect/d0;->h:J

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/google/common/collect/d0;->h:J

    return v0
.end method

.method public final m(Ljava/lang/Object;)V
    .locals 4

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0;->r(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    iget-object v1, p0, Lcom/google/common/collect/d0;->d:Ljava/lang/Class;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expected an "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " but got "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pc(Ljava/lang/Object;I)I
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0;->r(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    const-string v2, "occurrences"

    invoke-static {p2, v2}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0;->Ad(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v1, p0, Lcom/google/common/collect/d0;->f:[I

    aget v2, v1, p1

    if-nez v2, :cond_2

    return v0

    :cond_2
    if-gt v2, p2, :cond_3

    aput v0, v1, p1

    iget p1, p0, Lcom/google/common/collect/d0;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/d0;->g:I

    iget-wide p1, p0, Lcom/google/common/collect/d0;->h:J

    int-to-long v0, v2

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/common/collect/d0;->h:J

    goto :goto_0

    :cond_3
    sub-int v0, v2, p2

    aput v0, v1, p1

    iget-wide v0, p0, Lcom/google/common/collect/d0;->h:J

    int-to-long p1, p2

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/common/collect/d0;->h:J

    :goto_0
    return v2

    :cond_4
    :goto_1
    return v0
.end method

.method public final r(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/lang/Enum;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iget-object v2, p0, Lcom/google/common/collect/d0;->e:[Ljava/lang/Enum;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v0, v2, v0

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public size()I
    .locals 2

    iget-wide v0, p0, Lcom/google/common/collect/d0;->h:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/l;->x(J)I

    move-result v0

    return v0
.end method

.method public u(Ljava/lang/Enum;I)I
    .locals 6
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/d0;->m(Ljava/lang/Object;)V

    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/google/common/collect/B;->b(ILjava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v0, p0, Lcom/google/common/collect/d0;->f:[I

    aget v1, v0, p1

    aput p2, v0, p1

    iget-wide v2, p0, Lcom/google/common/collect/d0;->h:J

    sub-int p1, p2, v1

    int-to-long v4, p1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/common/collect/d0;->h:J

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    iget p1, p0, Lcom/google/common/collect/d0;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/collect/d0;->g:I

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    if-nez p2, :cond_1

    iget p1, p0, Lcom/google/common/collect/d0;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/d0;->g:I

    :cond_1
    :goto_0
    return v1
.end method

.method public bridge synthetic y6(Ljava/lang/Object;I)I
    .locals 0
    .annotation build LI2/a;
    .end annotation

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/d0;->l(Ljava/lang/Enum;I)I

    move-result p1

    return p1
.end method
