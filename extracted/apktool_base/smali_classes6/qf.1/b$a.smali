.class public final Lqf/b$a;
.super Lpf/h;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;
.implements Ljava/io/Serializable;
.implements LNf/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqf/b$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpf/h<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;",
        "Ljava/io/Serializable;",
        "LNf/e;"
    }
.end annotation


# instance fields
.field public b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:I

.field public d:I

.field public final e:Lqf/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqf/b$a<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final f:Lqf/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqf/b<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;IILqf/b$a;Lqf/b;)V
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lqf/b$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lqf/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;II",
            "Lqf/b$a<",
            "TE;>;",
            "Lqf/b<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "backing"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "root"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lpf/h;-><init>()V

    iput-object p1, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iput p2, p0, Lqf/b$a;->c:I

    iput p3, p0, Lqf/b$a;->d:I

    iput-object p4, p0, Lqf/b$a;->e:Lqf/b$a;

    iput-object p5, p0, Lqf/b$a;->f:Lqf/b;

    invoke-static {p5}, Lqf/b;->o(Lqf/b;)I

    move-result p1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method

.method private final D()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lqf/b$a;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lqf/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lqf/h;-><init>(Ljava/util/Collection;I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The list cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic k(Lqf/b$a;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic l(Lqf/b$a;)I
    .locals 0

    iget p0, p0, Lqf/b$a;->d:I

    return p0
.end method

.method public static final synthetic m(Lqf/b$a;)I
    .locals 0

    iget p0, p0, Ljava/util/AbstractList;->modCount:I

    return p0
.end method

.method public static final synthetic n(Lqf/b$a;)I
    .locals 0

    iget p0, p0, Lqf/b$a;->c:I

    return p0
.end method

.method public static final synthetic o(Lqf/b$a;)Lqf/b;
    .locals 0

    iget-object p0, p0, Lqf/b$a;->f:Lqf/b;

    return-object p0
.end method

.method private final y(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is supported via proxy only"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final z()V
    .locals 1

    iget v0, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/AbstractList;->modCount:I

    return-void
.end method


# virtual methods
.method public final A(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-direct {p0}, Lqf/b$a;->z()V

    iget-object v0, p0, Lqf/b$a;->e:Lqf/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lqf/b$a;->A(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqf/b$a;->f:Lqf/b;

    invoke-static {v0, p1}, Lqf/b;->r(Lqf/b;I)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iget v0, p0, Lqf/b$a;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lqf/b$a;->d:I

    return-object p1
.end method

.method public final B(II)V
    .locals 1

    if-lez p2, :cond_0

    invoke-direct {p0}, Lqf/b$a;->z()V

    :cond_0
    iget-object v0, p0, Lqf/b$a;->e:Lqf/b$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lqf/b$a;->B(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lqf/b$a;->f:Lqf/b;

    invoke-static {v0, p1, p2}, Lqf/b;->s(Lqf/b;II)V

    :goto_0
    iget p1, p0, Lqf/b$a;->d:I

    sub-int/2addr p1, p2

    iput p1, p0, Lqf/b$a;->d:I

    return-void
.end method

.method public final C(IILjava/util/Collection;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Collection<",
            "+TE;>;Z)I"
        }
    .end annotation

    iget-object v0, p0, Lqf/b$a;->e:Lqf/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lqf/b$a;->C(IILjava/util/Collection;Z)I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqf/b$a;->f:Lqf/b;

    invoke-static {v0, p1, p2, p3, p4}, Lqf/b;->u(Lqf/b;IILjava/util/Collection;Z)I

    move-result p1

    :goto_0
    if-lez p1, :cond_1

    invoke-direct {p0}, Lqf/b$a;->z()V

    :cond_1
    iget p2, p0, Lqf/b$a;->d:I

    sub-int/2addr p2, p1

    iput p2, p0, Lqf/b$a;->d:I

    return p1
.end method

.method public a()I
    .locals 1

    invoke-virtual {p0}, Lqf/b$a;->s()V

    iget v0, p0, Lqf/b$a;->d:I

    return v0
.end method

.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lqf/b$a;->u()V

    .line 5
    invoke-virtual {p0}, Lqf/b$a;->s()V

    .line 6
    sget-object v0, Lpf/d;->b:Lpf/d$a;

    iget v1, p0, Lqf/b$a;->d:I

    invoke-virtual {v0, p1, v1}, Lpf/d$a;->c(II)V

    .line 7
    iget v0, p0, Lqf/b$a;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lqf/b$a;->r(ILjava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lqf/b$a;->u()V

    .line 2
    invoke-virtual {p0}, Lqf/b$a;->s()V

    .line 3
    iget v0, p0, Lqf/b$a;->c:I

    iget v1, p0, Lqf/b$a;->d:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, p1}, Lqf/b$a;->r(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p2    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lqf/b$a;->u()V

    .line 6
    invoke-virtual {p0}, Lqf/b$a;->s()V

    .line 7
    sget-object v0, Lpf/d;->b:Lpf/d$a;

    iget v1, p0, Lqf/b$a;->d:I

    invoke-virtual {v0, p1, v1}, Lpf/d$a;->c(II)V

    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 9
    iget v1, p0, Lqf/b$a;->c:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1, p2, v0}, Lqf/b$a;->p(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lqf/b$a;->u()V

    .line 2
    invoke-virtual {p0}, Lqf/b$a;->s()V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 4
    iget v1, p0, Lqf/b$a;->c:I

    iget v2, p0, Lqf/b$a;->d:I

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1, v0}, Lqf/b$a;->p(ILjava/util/Collection;I)V

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lqf/b$a;->u()V

    invoke-virtual {p0}, Lqf/b$a;->s()V

    iget v0, p0, Lqf/b$a;->c:I

    iget v1, p0, Lqf/b$a;->d:I

    invoke-virtual {p0, v0, v1}, Lqf/b$a;->B(II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lqf/b$a;->s()V

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lqf/b$a;->v(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lqf/b$a;->s()V

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    iget v1, p0, Lqf/b$a;->d:I

    invoke-virtual {v0, p1, v1}, Lpf/d$a;->b(II)V

    iget-object v0, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lqf/b$a;->c:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lqf/b$a;->s()V

    iget-object v0, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lqf/b$a;->c:I

    iget v2, p0, Lqf/b$a;->d:I

    invoke-static {v0, v1, v2}, Lqf/c;->b([Ljava/lang/Object;II)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Lqf/b$a;->s()V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lqf/b$a;->d:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget v2, p0, Lqf/b$a;->c:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lqf/b$a;->s()V

    iget v0, p0, Lqf/b$a;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lqf/b$a;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public j(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Lnf/D;
    .end annotation

    invoke-virtual {p0}, Lqf/b$a;->u()V

    invoke-virtual {p0}, Lqf/b$a;->s()V

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    iget v1, p0, Lqf/b$a;->d:I

    invoke-virtual {v0, p1, v1}, Lpf/d$a;->b(II)V

    iget v0, p0, Lqf/b$a;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lqf/b$a;->A(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3

    invoke-virtual {p0}, Lqf/b$a;->s()V

    iget v0, p0, Lqf/b$a;->d:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget v2, p0, Lqf/b$a;->c:I

    add-int/2addr v2, v0

    aget-object v1, v1, v2

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lqf/b$a;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lqf/b$a;->s()V

    .line 3
    sget-object v0, Lpf/d;->b:Lpf/d$a;

    iget v1, p0, Lqf/b$a;->d:I

    invoke-virtual {v0, p1, v1}, Lpf/d$a;->c(II)V

    .line 4
    new-instance v0, Lqf/b$a$a;

    invoke-direct {v0, p0, p1}, Lqf/b$a$a;-><init>(Lqf/b$a;I)V

    return-object v0
.end method

.method public final p(ILjava/util/Collection;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lqf/b$a;->z()V

    iget-object v0, p0, Lqf/b$a;->e:Lqf/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lqf/b$a;->p(ILjava/util/Collection;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqf/b$a;->f:Lqf/b;

    invoke-static {v0, p1, p2, p3}, Lqf/b;->k(Lqf/b;ILjava/util/Collection;I)V

    :goto_0
    iget-object p1, p0, Lqf/b$a;->f:Lqf/b;

    invoke-static {p1}, Lqf/b;->m(Lqf/b;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget p1, p0, Lqf/b$a;->d:I

    add-int/2addr p1, p3

    iput p1, p0, Lqf/b$a;->d:I

    return-void
.end method

.method public final r(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    invoke-direct {p0}, Lqf/b$a;->z()V

    iget-object v0, p0, Lqf/b$a;->e:Lqf/b$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lqf/b$a;->r(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lqf/b$a;->f:Lqf/b;

    invoke-static {v0, p1, p2}, Lqf/b;->l(Lqf/b;ILjava/lang/Object;)V

    :goto_0
    iget-object p1, p0, Lqf/b$a;->f:Lqf/b;

    invoke-static {p1}, Lqf/b;->m(Lqf/b;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget p1, p0, Lqf/b$a;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lqf/b$a;->d:I

    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lqf/b$a;->u()V

    invoke-virtual {p0}, Lqf/b$a;->s()V

    invoke-virtual {p0, p1}, Lqf/b$a;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lqf/b$a;->j(I)Ljava/lang/Object;

    :cond_0
    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lqf/b$a;->u()V

    invoke-virtual {p0}, Lqf/b$a;->s()V

    iget v0, p0, Lqf/b$a;->c:I

    iget v1, p0, Lqf/b$a;->d:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lqf/b$a;->C(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lqf/b$a;->u()V

    invoke-virtual {p0}, Lqf/b$a;->s()V

    iget v0, p0, Lqf/b$a;->c:I

    iget v1, p0, Lqf/b$a;->d:I

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lqf/b$a;->C(IILjava/util/Collection;Z)I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final s()V
    .locals 2

    iget-object v0, p0, Lqf/b$a;->f:Lqf/b;

    invoke-static {v0}, Lqf/b;->o(Lqf/b;)I

    move-result v0

    iget v1, p0, Ljava/util/AbstractList;->modCount:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lqf/b$a;->u()V

    invoke-virtual {p0}, Lqf/b$a;->s()V

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    iget v1, p0, Lqf/b$a;->d:I

    invoke-virtual {v0, p1, v1}, Lpf/d$a;->b(II)V

    iget-object v0, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lqf/b$a;->c:I

    add-int v2, v1, p1

    aget-object v2, v0, v2

    add-int/2addr v1, p1

    aput-object p2, v0, v1

    return-object v2
.end method

.method public subList(II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    iget v1, p0, Lqf/b$a;->d:I

    invoke-virtual {v0, p1, p2, v1}, Lpf/d$a;->d(III)V

    new-instance v0, Lqf/b$a;

    iget-object v3, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lqf/b$a;->c:I

    add-int v4, v1, p1

    sub-int v5, p2, p1

    iget-object v7, p0, Lqf/b$a;->f:Lqf/b;

    move-object v2, v0

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lqf/b$a;-><init>([Ljava/lang/Object;IILqf/b$a;Lqf/b;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 6
    invoke-virtual {p0}, Lqf/b$a;->s()V

    .line 7
    iget-object v0, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lqf/b$a;->c:I

    iget v2, p0, Lqf/b$a;->d:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lpf/q;->l1([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .param p1    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lqf/b$a;->s()V

    .line 2
    array-length v0, p1

    iget v1, p0, Lqf/b$a;->d:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget v2, p0, Lqf/b$a;->c:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, v2, v1, p1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOfRange(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget v2, p0, Lqf/b$a;->c:I

    add-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v2, v1}, Lpf/q;->B0([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 5
    iget v0, p0, Lqf/b$a;->d:I

    invoke-static {v0, p1}, Lpf/G;->o(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lqf/b$a;->s()V

    iget-object v0, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lqf/b$a;->c:I

    iget v2, p0, Lqf/b$a;->d:I

    invoke-static {v0, v1, v2, p0}, Lqf/c;->c([Ljava/lang/Object;IILjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()V
    .locals 1

    invoke-virtual {p0}, Lqf/b$a;->x()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final v(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lqf/b$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lqf/b$a;->c:I

    iget v2, p0, Lqf/b$a;->d:I

    invoke-static {v0, v1, v2, p1}, Lqf/c;->a([Ljava/lang/Object;IILjava/util/List;)Z

    move-result p1

    return p1
.end method

.method public final x()Z
    .locals 1

    iget-object v0, p0, Lqf/b$a;->f:Lqf/b;

    invoke-static {v0}, Lqf/b;->p(Lqf/b;)Z

    move-result v0

    return v0
.end method
