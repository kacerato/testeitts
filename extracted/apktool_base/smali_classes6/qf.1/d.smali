.class public final Lqf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements LNf/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqf/d$a;,
        Lqf/d$b;,
        Lqf/d$c;,
        Lqf/d$d;,
        Lqf/d$e;,
        Lqf/d$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "LNf/g;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,752:1\n1#2:753\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,752:1\n1#2:753\n*E\n"
    }
.end annotation


# static fields
.field public static final o:Lqf/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final p:I = -0x61c88647

.field public static final q:I = 0x8

.field public static final r:I = 0x2

.field public static final s:I = -0x1

.field public static final t:Lqf/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public e:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Lqf/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqf/f<",
            "TK;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public l:Lqf/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqf/g<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public m:Lqf/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqf/e<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lqf/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqf/d$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lqf/d;->o:Lqf/d$a;

    new-instance v0, Lqf/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lqf/d;-><init>(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lqf/d;->n:Z

    sput-object v0, Lqf/d;->t:Lqf/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 9
    invoke-direct {p0, v0}, Lqf/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 10
    invoke-static {p1}, Lqf/c;->d(I)[Ljava/lang/Object;

    move-result-object v1

    .line 11
    new-array v3, p1, [I

    .line 12
    sget-object v0, Lqf/d;->o:Lqf/d$a;

    invoke-static {v0, p1}, Lqf/d$a;->a(Lqf/d$a;I)I

    move-result p1

    new-array v4, p1, [I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v6}, Lqf/d;-><init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;[I[III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;[I[III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lqf/d;->b:[Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lqf/d;->c:[Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lqf/d;->d:[I

    .line 5
    iput-object p4, p0, Lqf/d;->e:[I

    .line 6
    iput p5, p0, Lqf/d;->f:I

    .line 7
    iput p6, p0, Lqf/d;->g:I

    .line 8
    sget-object p1, Lqf/d;->o:Lqf/d$a;

    invoke-virtual {p0}, Lqf/d;->B()I

    move-result p2

    invoke-static {p1, p2}, Lqf/d$a;->b(Lqf/d$a;I)I

    move-result p1

    iput p1, p0, Lqf/d;->h:I

    return-void
.end method

.method private final M(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization is supported via proxy only"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final N()V
    .locals 1

    iget v0, p0, Lqf/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lqf/d;->i:I

    return-void
.end method

.method private final X()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lqf/d;->n:Z

    if-eqz v0, :cond_0

    new-instance v0, Lqf/i;

    invoke-direct {v0, p0}, Lqf/i;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "The map cannot be serialized while it is being built."

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final synthetic a(Lqf/d;)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lqf/d;->m()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic e()Lqf/d;
    .locals 1

    sget-object v0, Lqf/d;->t:Lqf/d;

    return-object v0
.end method

.method public static final synthetic f(Lqf/d;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqf/d;->b:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic g(Lqf/d;)I
    .locals 0

    iget p0, p0, Lqf/d;->g:I

    return p0
.end method

.method public static final synthetic h(Lqf/d;)I
    .locals 0

    iget p0, p0, Lqf/d;->i:I

    return p0
.end method

.method public static final synthetic i(Lqf/d;)[I
    .locals 0

    iget-object p0, p0, Lqf/d;->d:[I

    return-object p0
.end method

.method public static final synthetic j(Lqf/d;)[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lqf/d;->c:[Ljava/lang/Object;

    return-object p0
.end method

.method public static final synthetic k(Lqf/d;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lqf/d;->Q(I)V

    return-void
.end method

.method private final u(I)V
    .locals 2

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lqf/d;->z()I

    move-result v0

    if-le p1, v0, :cond_1

    sget-object v0, Lpf/d;->b:Lpf/d$a;

    invoke-virtual {p0}, Lqf/d;->z()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lpf/d$a;->e(II)I

    move-result p1

    iget-object v0, p0, Lqf/d;->b:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lqf/c;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lqf/d;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lqf/d;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lqf/c;->e([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lqf/d;->c:[Ljava/lang/Object;

    iget-object v0, p0, Lqf/d;->d:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lqf/d;->d:[I

    sget-object v0, Lqf/d;->o:Lqf/d$a;

    invoke-static {v0, p1}, Lqf/d$a;->a(Lqf/d$a;I)I

    move-result p1

    invoke-virtual {p0}, Lqf/d;->B()I

    move-result v0

    if-le p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lqf/d;->O(I)V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method private final v(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lqf/d;->V(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lqf/d;->p(Z)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lqf/d;->g:I

    add-int/2addr v0, p1

    invoke-direct {p0, v0}, Lqf/d;->u(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public A()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lqf/d;->m:Lqf/e;

    if-nez v0, :cond_0

    new-instance v0, Lqf/e;

    invoke-direct {v0, p0}, Lqf/e;-><init>(Lqf/d;)V

    iput-object v0, p0, Lqf/d;->m:Lqf/e;

    :cond_0
    return-object v0
.end method

.method public final B()I
    .locals 1

    iget-object v0, p0, Lqf/d;->e:[I

    array-length v0, v0

    return v0
.end method

.method public C()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lqf/d;->k:Lqf/f;

    if-nez v0, :cond_0

    new-instance v0, Lqf/f;

    invoke-direct {v0, p0}, Lqf/f;-><init>(Lqf/d;)V

    iput-object v0, p0, Lqf/d;->k:Lqf/f;

    :cond_0
    return-object v0
.end method

.method public D()I
    .locals 1

    iget v0, p0, Lqf/d;->j:I

    return v0
.end method

.method public E()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lqf/d;->l:Lqf/g;

    if-nez v0, :cond_0

    new-instance v0, Lqf/g;

    invoke-direct {v0, p0}, Lqf/g;-><init>(Lqf/d;)V

    iput-object v0, p0, Lqf/d;->l:Lqf/g;

    :cond_0
    return-object v0
.end method

.method public final F(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const v0, -0x61c88647

    mul-int/2addr p1, v0

    iget v0, p0, Lqf/d;->h:I

    ushr-int/2addr p1, v0

    return p1
.end method

.method public final H()Z
    .locals 1

    iget-boolean v0, p0, Lqf/d;->n:Z

    return v0
.end method

.method public final I()Lqf/d$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqf/d$e<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lqf/d$e;

    invoke-direct {v0, p0}, Lqf/d$e;-><init>(Lqf/d;)V

    return-object v0
.end method

.method public final J(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)Z"
        }
    .end annotation

    .annotation runtime Lnf/D;
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lqf/d;->v(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lqf/d;->K(Ljava/util/Map$Entry;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final K(Ljava/util/Map$Entry;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqf/d;->l(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lqf/d;->m()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    if-ltz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v0

    return v2

    :cond_0
    neg-int v0, v0

    sub-int/2addr v0, v2

    aget-object v3, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v0

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final L(I)Z
    .locals 5

    iget-object v0, p0, Lqf/d;->b:[Ljava/lang/Object;

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lqf/d;->F(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lqf/d;->f:I

    :goto_0
    iget-object v2, p0, Lqf/d;->e:[I

    aget v3, v2, v0

    const/4 v4, 0x1

    if-nez v3, :cond_0

    add-int/lit8 v1, p1, 0x1

    aput v1, v2, v0

    iget-object v1, p0, Lqf/d;->d:[I

    aput v0, v1, p1

    return v4

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-gez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lqf/d;->B()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final O(I)V
    .locals 3

    invoke-direct {p0}, Lqf/d;->N()V

    iget v0, p0, Lqf/d;->g:I

    invoke-virtual {p0}, Lqf/d;->size()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lqf/d;->p(Z)V

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lqf/d;->e:[I

    sget-object v0, Lqf/d;->o:Lqf/d$a;

    invoke-static {v0, p1}, Lqf/d$a;->b(Lqf/d$a;I)I

    move-result p1

    iput p1, p0, Lqf/d;->h:I

    :goto_0
    iget p1, p0, Lqf/d;->g:I

    if-ge v2, p1, :cond_2

    add-int/lit8 p1, v2, 0x1

    invoke-virtual {p0, v2}, Lqf/d;->L(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-void
.end method

.method public final P(Ljava/util/Map$Entry;)Z
    .locals 3
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lqf/d;->o()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqf/d;->x(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lqf/d;->c:[Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    aget-object v2, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v0}, Lqf/d;->Q(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final Q(I)V
    .locals 2

    iget-object v0, p0, Lqf/d;->b:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lqf/c;->f([Ljava/lang/Object;I)V

    iget-object v0, p0, Lqf/d;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lqf/c;->f([Ljava/lang/Object;I)V

    :cond_0
    iget-object v0, p0, Lqf/d;->d:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lqf/d;->R(I)V

    iget-object v0, p0, Lqf/d;->d:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    invoke-virtual {p0}, Lqf/d;->size()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lqf/d;->j:I

    invoke-direct {p0}, Lqf/d;->N()V

    return-void
.end method

.method public final R(I)V
    .locals 9

    iget v0, p0, Lqf/d;->f:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lqf/d;->B()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, LVf/u;->D(II)I

    move-result v0

    const/4 v1, 0x0

    move v2, v0

    move v3, v1

    move v0, p1

    :cond_0
    add-int/lit8 v4, p1, -0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lqf/d;->B()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    move p1, v4

    :goto_0
    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lqf/d;->f:I

    if-le v3, v4, :cond_2

    iget-object p1, p0, Lqf/d;->e:[I

    aput v1, p1, v0

    return-void

    :cond_2
    iget-object v4, p0, Lqf/d;->e:[I

    aget v5, v4, p1

    if-nez v5, :cond_3

    aput v1, v4, v0

    return-void

    :cond_3
    const/4 v6, -0x1

    if-gez v5, :cond_4

    aput v6, v4, v0

    :goto_1
    move v0, p1

    move v3, v1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lqf/d;->b:[Ljava/lang/Object;

    add-int/lit8 v7, v5, -0x1

    aget-object v4, v4, v7

    invoke-virtual {p0, v4}, Lqf/d;->F(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p1

    invoke-virtual {p0}, Lqf/d;->B()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    and-int/2addr v4, v8

    if-lt v4, v3, :cond_5

    iget-object v3, p0, Lqf/d;->e:[I

    aput v5, v3, v0

    iget-object v3, p0, Lqf/d;->d:[I

    aput v0, v3, v7

    goto :goto_1

    :cond_5
    :goto_2
    add-int/2addr v2, v6

    if-gez v2, :cond_0

    iget-object p1, p0, Lqf/d;->e:[I

    aput v6, p1, v0

    return-void
.end method

.method public final T(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lqf/d;->o()V

    invoke-virtual {p0, p1}, Lqf/d;->x(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lqf/d;->Q(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final U(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lqf/d;->o()V

    invoke-virtual {p0, p1}, Lqf/d;->y(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lqf/d;->Q(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final V(I)Z
    .locals 3

    invoke-virtual {p0}, Lqf/d;->z()I

    move-result v0

    iget v1, p0, Lqf/d;->g:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lqf/d;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, p1, :cond_0

    add-int/2addr v0, v1

    if-lt v0, p1, :cond_0

    invoke-virtual {p0}, Lqf/d;->z()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    if-lt v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final W()Lqf/d$f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqf/d$f<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lqf/d$f;

    invoke-direct {v0, p0}, Lqf/d$f;-><init>(Lqf/d;)V

    return-object v0
.end method

.method public clear()V
    .locals 6

    invoke-virtual {p0}, Lqf/d;->o()V

    iget v0, p0, Lqf/d;->g:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lqf/d;->d:[I

    aget v4, v3, v2

    if-ltz v4, :cond_0

    iget-object v5, p0, Lqf/d;->e:[I

    aput v1, v5, v4

    const/4 v4, -0x1

    aput v4, v3, v2

    :cond_0
    if-eq v2, v0, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lqf/d;->b:[Ljava/lang/Object;

    iget v2, p0, Lqf/d;->g:I

    invoke-static {v0, v1, v2}, Lqf/c;->g([Ljava/lang/Object;II)V

    iget-object v0, p0, Lqf/d;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget v2, p0, Lqf/d;->g:I

    invoke-static {v0, v1, v2}, Lqf/c;->g([Ljava/lang/Object;II)V

    :cond_2
    iput v1, p0, Lqf/d;->j:I

    iput v1, p0, Lqf/d;->g:I

    invoke-direct {p0}, Lqf/d;->N()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lqf/d;->x(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lqf/d;->y(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lqf/d;->A()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eq p1, p0, :cond_1

    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lqf/d;->s(Ljava/util/Map;)Z

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

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lqf/d;->x(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lqf/d;->c:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    aget-object p1, v0, p1

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lqf/d;->w()Lqf/d$b;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lqf/d$d;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lqf/d$b;->m()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lqf/d;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lqf/d;->C()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/lang/Object;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lqf/d;->o()V

    :goto_0
    invoke-virtual {p0, p1}, Lqf/d;->F(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lqf/d;->f:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lqf/d;->B()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, LVf/u;->D(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lqf/d;->e:[I

    aget v3, v3, v0

    const/4 v4, 0x1

    if-gtz v3, :cond_2

    iget v1, p0, Lqf/d;->g:I

    invoke-virtual {p0}, Lqf/d;->z()I

    move-result v3

    if-lt v1, v3, :cond_0

    invoke-direct {p0, v4}, Lqf/d;->v(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lqf/d;->g:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lqf/d;->g:I

    iget-object v5, p0, Lqf/d;->b:[Ljava/lang/Object;

    aput-object p1, v5, v1

    iget-object p1, p0, Lqf/d;->d:[I

    aput v0, p1, v1

    iget-object p1, p0, Lqf/d;->e:[I

    aput v3, p1, v0

    invoke-virtual {p0}, Lqf/d;->size()I

    move-result p1

    add-int/2addr p1, v4

    iput p1, p0, Lqf/d;->j:I

    invoke-direct {p0}, Lqf/d;->N()V

    iget p1, p0, Lqf/d;->f:I

    if-le v2, p1, :cond_1

    iput v2, p0, Lqf/d;->f:I

    :cond_1
    return v1

    :cond_2
    iget-object v5, p0, Lqf/d;->b:[Ljava/lang/Object;

    add-int/lit8 v6, v3, -0x1

    aget-object v5, v5, v6

    invoke-static {v5, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    neg-int p1, v3

    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    if-le v2, v1, :cond_4

    invoke-virtual {p0}, Lqf/d;->B()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lqf/d;->O(I)V

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v0, -0x1

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lqf/d;->B()I

    move-result v0

    sub-int/2addr v0, v4

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method public final m()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TV;"
        }
    .end annotation

    iget-object v0, p0, Lqf/d;->c:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lqf/d;->z()I

    move-result v0

    invoke-static {v0}, Lqf/c;->d(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lqf/d;->c:[Ljava/lang/Object;

    return-object v0
.end method

.method public final n()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lqf/d;->o()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqf/d;->n:Z

    invoke-virtual {p0}, Lqf/d;->size()I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lqf/d;->t:Lqf/d;

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->n(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final o()V
    .locals 1

    iget-boolean v0, p0, Lqf/d;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final p(Z)V
    .locals 7

    iget-object v0, p0, Lqf/d;->c:[Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lqf/d;->g:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lqf/d;->d:[I

    aget v4, v3, v1

    if-ltz v4, :cond_2

    iget-object v5, p0, Lqf/d;->b:[Ljava/lang/Object;

    aget-object v6, v5, v1

    aput-object v6, v5, v2

    if-eqz v0, :cond_0

    aget-object v5, v0, v1

    aput-object v5, v0, v2

    :cond_0
    if-eqz p1, :cond_1

    aput v4, v3, v2

    iget-object v3, p0, Lqf/d;->e:[I

    add-int/lit8 v5, v2, 0x1

    aput v5, v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lqf/d;->b:[Ljava/lang/Object;

    invoke-static {p1, v2, v3}, Lqf/c;->g([Ljava/lang/Object;II)V

    if-eqz v0, :cond_4

    iget p1, p0, Lqf/d;->g:I

    invoke-static {v0, v2, p1}, Lqf/c;->g([Ljava/lang/Object;II)V

    :cond_4
    iput v2, p0, Lqf/d;->g:I

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lqf/d;->o()V

    invoke-virtual {p0, p1}, Lqf/d;->l(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0}, Lqf/d;->m()[Ljava/lang/Object;

    move-result-object v0

    if-gez p1, :cond_0

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1

    :cond_0
    aput-object p2, v0, p1

    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lqf/d;->o()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lqf/d;->J(Ljava/util/Collection;)Z

    return-void
.end method

.method public final q(Ljava/util/Collection;)Z
    .locals 2
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

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {p0, v0}, Lqf/d;->r(Ljava/util/Map$Entry;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    nop

    :catch_0
    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final r(Ljava/util/Map$Entry;)Z
    .locals 2
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lqf/d;->x(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v1, p0, Lqf/d;->c:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    aget-object v0, v1, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lqf/d;->o()V

    invoke-virtual {p0, p1}, Lqf/d;->x(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lqf/d;->c:[Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    aget-object v0, v0, p1

    invoke-virtual {p0, p1}, Lqf/d;->Q(I)V

    return-object v0
.end method

.method public final s(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lqf/d;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0, p1}, Lqf/d;->q(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final bridge size()I
    .locals 1

    invoke-virtual {p0}, Lqf/d;->D()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lqf/d;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lqf/d;->w()Lqf/d$b;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lqf/d$d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    if-lez v2, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v0}, Lqf/d$b;->k(Ljava/lang/StringBuilder;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lqf/d;->E()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final w()Lqf/d$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lqf/d$b<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lqf/d$b;

    invoke-direct {v0, p0}, Lqf/d$b;-><init>(Lqf/d;)V

    return-object v0
.end method

.method public final x(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lqf/d;->F(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lqf/d;->f:I

    :goto_0
    iget-object v2, p0, Lqf/d;->e:[I

    aget v2, v2, v0

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-lez v2, :cond_1

    iget-object v4, p0, Lqf/d;->b:[Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    aget-object v4, v4, v2

    invoke-static {v4, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v2

    :cond_1
    add-int/2addr v1, v3

    if-gez v1, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v0, -0x1

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lqf/d;->B()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final y(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    iget v0, p0, Lqf/d;->g:I

    :cond_0
    const/4 v1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lqf/d;->d:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lqf/d;->c:[Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    return v1
.end method

.method public final z()I
    .locals 1

    iget-object v0, p0, Lqf/d;->b:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method
