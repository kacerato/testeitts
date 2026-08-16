.class public Lcom/google/common/collect/P1;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/P1$p;,
        Lcom/google/common/collect/P1$b;,
        Lcom/google/common/collect/P1$n;,
        Lcom/google/common/collect/P1$h;,
        Lcom/google/common/collect/P1$z;,
        Lcom/google/common/collect/P1$m;,
        Lcom/google/common/collect/P1$g;,
        Lcom/google/common/collect/P1$J;,
        Lcom/google/common/collect/P1$y;,
        Lcom/google/common/collect/P1$l;,
        Lcom/google/common/collect/P1$i;,
        Lcom/google/common/collect/P1$e;,
        Lcom/google/common/collect/P1$B;,
        Lcom/google/common/collect/P1$F;,
        Lcom/google/common/collect/P1$D;,
        Lcom/google/common/collect/P1$s;,
        Lcom/google/common/collect/P1$w;,
        Lcom/google/common/collect/P1$u;,
        Lcom/google/common/collect/P1$o;,
        Lcom/google/common/collect/P1$I;,
        Lcom/google/common/collect/P1$f;,
        Lcom/google/common/collect/P1$H;,
        Lcom/google/common/collect/P1$E;,
        Lcom/google/common/collect/P1$C;,
        Lcom/google/common/collect/P1$A;,
        Lcom/google/common/collect/P1$d;,
        Lcom/google/common/collect/P1$r;,
        Lcom/google/common/collect/P1$v;,
        Lcom/google/common/collect/P1$t;,
        Lcom/google/common/collect/P1$G;,
        Lcom/google/common/collect/P1$x;,
        Lcom/google/common/collect/P1$c;,
        Lcom/google/common/collect/P1$j;,
        Lcom/google/common/collect/P1$k;,
        Lcom/google/common/collect/P1$q;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lcom/google/common/collect/P1$j<",
        "TK;TV;TE;>;S:",
        "Lcom/google/common/collect/P1$o<",
        "TK;TV;TE;TS;>;>",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final k:I = 0x40000000

.field public static final l:I = 0x10000

.field public static final m:I = 0x3

.field public static final n:I = 0x3f

.field public static final o:I = 0x10

.field public static final p:J = 0x3cL

.field public static final q:Lcom/google/common/collect/P1$H;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/P1$H<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/P1$f;",
            ">;"
        }
    .end annotation
.end field

.field public static final r:J = 0x5L


# instance fields
.field public final transient b:I

.field public final transient c:I

.field public final transient d:[Lcom/google/common/collect/P1$o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/P1$o<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Lw2/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final transient g:Lcom/google/common/collect/P1$k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/P1$k<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation
.end field

.field public transient h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/P1$a;

    invoke-direct {v0}, Lcom/google/common/collect/P1$a;-><init>()V

    sput-object v0, Lcom/google/common/collect/P1;->q:Lcom/google/common/collect/P1$H;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/O1;Lcom/google/common/collect/P1$k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/O1;",
            "Lcom/google/common/collect/P1$k<",
            "TK;TV;TE;TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    invoke-virtual {p1}, Lcom/google/common/collect/O1;->b()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/P1;->e:I

    invoke-virtual {p1}, Lcom/google/common/collect/O1;->d()Lw2/m;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/P1;->f:Lw2/m;

    iput-object p2, p0, Lcom/google/common/collect/P1;->g:Lcom/google/common/collect/P1$k;

    invoke-virtual {p1}, Lcom/google/common/collect/O1;->c()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    move v2, p2

    move v1, v0

    :goto_0
    iget v3, p0, Lcom/google/common/collect/P1;->e:I

    if-ge v1, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/common/collect/P1;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/P1;->b:I

    invoke-virtual {p0, v1}, Lcom/google/common/collect/P1;->k(I)[Lcom/google/common/collect/P1$o;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/P1;->d:[Lcom/google/common/collect/P1$o;

    div-int v2, p1, v1

    mul-int/2addr v1, v2

    if-ge v1, p1, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    if-ge v0, v2, :cond_2

    shl-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/google/common/collect/P1;->d:[Lcom/google/common/collect/P1$o;

    array-length v1, p1

    if-ge p2, v1, :cond_3

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/collect/P1;->d(II)Lcom/google/common/collect/P1$o;

    move-result-object v1

    aput-object v1, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static synthetic a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/P1;->p(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lcom/google/common/collect/O1;)Lcom/google/common/collect/P1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/O1;",
            ")",
            "Lcom/google/common/collect/P1<",
            "TK;TV;+",
            "Lcom/google/common/collect/P1$j<",
            "TK;TV;*>;*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/O1;->e()Lcom/google/common/collect/P1$q;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/P1$q;->STRONG:Lcom/google/common/collect/P1$q;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/O1;->f()Lcom/google/common/collect/P1$q;

    move-result-object v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/common/collect/P1;

    invoke-static {}, Lcom/google/common/collect/P1$t$a;->h()Lcom/google/common/collect/P1$t$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/P1;-><init>(Lcom/google/common/collect/O1;Lcom/google/common/collect/P1$k;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/O1;->e()Lcom/google/common/collect/P1$q;

    move-result-object v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/O1;->f()Lcom/google/common/collect/P1$q;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/P1$q;->WEAK:Lcom/google/common/collect/P1$q;

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/google/common/collect/P1;

    invoke-static {}, Lcom/google/common/collect/P1$v$a;->h()Lcom/google/common/collect/P1$v$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/P1;-><init>(Lcom/google/common/collect/O1;Lcom/google/common/collect/P1$k;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/O1;->e()Lcom/google/common/collect/P1$q;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/P1$q;->WEAK:Lcom/google/common/collect/P1$q;

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/O1;->f()Lcom/google/common/collect/P1$q;

    move-result-object v0

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/google/common/collect/P1;

    invoke-static {}, Lcom/google/common/collect/P1$C$a;->h()Lcom/google/common/collect/P1$C$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/P1;-><init>(Lcom/google/common/collect/O1;Lcom/google/common/collect/P1$k;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/O1;->e()Lcom/google/common/collect/P1$q;

    move-result-object v0

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/google/common/collect/O1;->f()Lcom/google/common/collect/P1$q;

    move-result-object v0

    if-ne v0, v2, :cond_3

    new-instance v0, Lcom/google/common/collect/P1;

    invoke-static {}, Lcom/google/common/collect/P1$E$a;->h()Lcom/google/common/collect/P1$E$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/P1;-><init>(Lcom/google/common/collect/O1;Lcom/google/common/collect/P1$k;)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static e(Lcom/google/common/collect/O1;)Lcom/google/common/collect/P1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/O1;",
            ")",
            "Lcom/google/common/collect/P1<",
            "TK;",
            "Lcom/google/common/collect/O1$a;",
            "+",
            "Lcom/google/common/collect/P1$j<",
            "TK;",
            "Lcom/google/common/collect/O1$a;",
            "*>;*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/O1;->e()Lcom/google/common/collect/P1$q;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/P1$q;->STRONG:Lcom/google/common/collect/P1$q;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/O1;->f()Lcom/google/common/collect/P1$q;

    move-result-object v0

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/common/collect/P1;

    invoke-static {}, Lcom/google/common/collect/P1$r$a;->h()Lcom/google/common/collect/P1$r$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/P1;-><init>(Lcom/google/common/collect/O1;Lcom/google/common/collect/P1$k;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/O1;->e()Lcom/google/common/collect/P1$q;

    move-result-object v0

    sget-object v2, Lcom/google/common/collect/P1$q;->WEAK:Lcom/google/common/collect/P1$q;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/O1;->f()Lcom/google/common/collect/P1$q;

    move-result-object v0

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/google/common/collect/P1;

    invoke-static {}, Lcom/google/common/collect/P1$A$a;->h()Lcom/google/common/collect/P1$A$a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/P1;-><init>(Lcom/google/common/collect/O1;Lcom/google/common/collect/P1$k;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/common/collect/O1;->f()Lcom/google/common/collect/P1$q;

    move-result-object p0

    if-ne p0, v2, :cond_2

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Map cannot have both weak and dummy values"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static n(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr p0, v0

    return p0
.end method

.method public static p(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/collect/E1;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    return-object v0
.end method

.method public static q()Lcom/google/common/collect/P1$H;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "E::",
            "Lcom/google/common/collect/P1$j<",
            "TK;TV;TE;>;>()",
            "Lcom/google/common/collect/P1$H<",
            "TK;TV;TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/P1;->q:Lcom/google/common/collect/P1$H;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/google/common/collect/P1$j;Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)TE;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/P1$j;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/P1$o;->g(Lcom/google/common/collect/P1$j;Lcom/google/common/collect/P1$j;)Lcom/google/common/collect/P1$j;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/P1;->d:[Lcom/google/common/collect/P1$o;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/common/collect/P1$o;->b()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/P1$o;->e(Ljava/lang/Object;I)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 16
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/google/common/collect/P1;->d:[Lcom/google/common/collect/P1$o;

    const-wide/16 v4, -0x1

    move v6, v1

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    array-length v7, v3

    const-wide/16 v8, 0x0

    move v10, v1

    :goto_1
    if-ge v10, v7, :cond_4

    aget-object v11, v3, v10

    iget v12, v11, Lcom/google/common/collect/P1$o;->c:I

    iget-object v12, v11, Lcom/google/common/collect/P1$o;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move v13, v1

    :goto_2
    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_3

    invoke-virtual {v12, v13}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/common/collect/P1$j;

    :goto_3
    if-eqz v14, :cond_2

    invoke-virtual {v11, v14}, Lcom/google/common/collect/P1$o;->q(Lcom/google/common/collect/P1$j;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/P1;->r()Lw2/m;

    move-result-object v1

    invoke-virtual {v1, v0, v15}, Lw2/m;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-interface {v14}, Lcom/google/common/collect/P1$j;->getNext()Lcom/google/common/collect/P1$j;

    move-result-object v14

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget v1, v11, Lcom/google/common/collect/P1$o;->d:I

    int-to-long v11, v1

    add-long/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    cmp-long v1, v8, v4

    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move-wide v4, v8

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_4
    return v0
.end method

.method public d(II)Lcom/google/common/collect/P1$o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/P1$o<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1;->g:Lcom/google/common/collect/P1$k;

    invoke-interface {v0, p0, p1, p2}, Lcom/google/common/collect/P1$k;->f(Lcom/google/common/collect/P1;II)Lcom/google/common/collect/P1$o;

    move-result-object p1

    return-object p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1;->j:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/P1$h;

    invoke-direct {v0, p0}, Lcom/google/common/collect/P1$h;-><init>(Lcom/google/common/collect/P1;)V

    iput-object v0, p0, Lcom/google/common/collect/P1;->j:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public f(Ljava/lang/Object;)Lcom/google/common/collect/P1$j;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/P1$o;->m(Ljava/lang/Object;I)Lcom/google/common/collect/P1$j;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/google/common/collect/P1$j;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/P1$j;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/google/common/collect/P1$j;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/P1$o;->l(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/P1;->f:Lw2/m;

    invoke-virtual {v0, p1}, Lw2/m;->f(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/google/common/collect/P1;->n(I)I

    move-result p1

    return p1
.end method

.method public i(Lcom/google/common/collect/P1$j;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$j<",
            "TK;TV;*>;)Z"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/P1$j;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/P1$o;->r(Lcom/google/common/collect/P1$j;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 10

    iget-object v0, p0, Lcom/google/common/collect/P1;->d:[Lcom/google/common/collect/P1$o;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v5, v1

    move v4, v3

    :goto_0
    array-length v7, v0

    if-ge v4, v7, :cond_1

    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/collect/P1$o;->c:I

    if-eqz v7, :cond_0

    return v3

    :cond_0
    aget-object v7, v0, v4

    iget v7, v7, Lcom/google/common/collect/P1$o;->d:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    cmp-long v4, v5, v1

    const/4 v7, 0x1

    if-eqz v4, :cond_5

    move v4, v3

    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_3

    aget-object v8, v0, v4

    iget v8, v8, Lcom/google/common/collect/P1$o;->c:I

    if-eqz v8, :cond_2

    return v3

    :cond_2
    aget-object v8, v0, v4

    iget v8, v8, Lcom/google/common/collect/P1$o;->d:I

    int-to-long v8, v8

    sub-long/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    cmp-long v0, v5, v1

    if-nez v0, :cond_4

    move v3, v7

    :cond_4
    return v3

    :cond_5
    return v7
.end method

.method public j()Lcom/google/common/collect/P1$q;
    .locals 1
    .annotation build Lv2/d;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1;->g:Lcom/google/common/collect/P1$k;

    invoke-interface {v0}, Lcom/google/common/collect/P1$k;->b()Lcom/google/common/collect/P1$q;

    move-result-object v0

    return-object v0
.end method

.method public final k(I)[Lcom/google/common/collect/P1$o;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/collect/P1$o<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    new-array p1, p1, [Lcom/google/common/collect/P1$o;

    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1;->h:Ljava/util/Set;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/P1$m;

    invoke-direct {v0, p0}, Lcom/google/common/collect/P1$m;-><init>(Lcom/google/common/collect/P1;)V

    iput-object v0, p0, Lcom/google/common/collect/P1;->h:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public l(Lcom/google/common/collect/P1$j;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/P1$j;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/P1$o;->F(Lcom/google/common/collect/P1$j;I)Z

    return-void
.end method

.method public m(Lcom/google/common/collect/P1$H;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/P1$H<",
            "TK;TV;TE;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/P1$H;->a()Lcom/google/common/collect/P1$j;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/P1$j;->b()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/collect/P1$j;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/common/collect/P1$o;->G(Ljava/lang/Object;ILcom/google/common/collect/P1$H;)Z

    return-void
.end method

.method public o(I)Lcom/google/common/collect/P1$o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/P1$o<",
            "TK;TV;TE;TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1;->d:[Lcom/google/common/collect/P1$o;

    iget v1, p0, Lcom/google/common/collect/P1;->c:I

    ushr-int/2addr p1, v1

    iget v1, p0, Lcom/google/common/collect/P1;->b:I

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/P1$o;->E(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/P1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1;->h(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/collect/P1$o;->E(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public r()Lw2/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/d;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1;->g:Lcom/google/common/collect/P1$k;

    invoke-interface {v0}, Lcom/google/common/collect/P1$k;->d()Lcom/google/common/collect/P1$q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/P1$q;->b()Lw2/m;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1;->h(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/collect/P1$o;->H(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1;->h(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/P1$o;->I(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1;->h(Ljava/lang/Object;)I

    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/collect/P1$o;->N(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/collect/P1;->h(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/common/collect/P1;->o(I)Lcom/google/common/collect/P1$o;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/collect/P1$o;->O(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public s()Lcom/google/common/collect/P1$q;
    .locals 1
    .annotation build Lv2/d;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1;->g:Lcom/google/common/collect/P1$k;

    invoke-interface {v0}, Lcom/google/common/collect/P1$k;->d()Lcom/google/common/collect/P1$q;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 6

    iget-object v0, p0, Lcom/google/common/collect/P1;->d:[Lcom/google/common/collect/P1$o;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v3

    iget v4, v4, Lcom/google/common/collect/P1$o;->c:I

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lcom/google/common/primitives/l;->x(J)I

    move-result v0

    return v0
.end method

.method public u()Ljava/lang/Object;
    .locals 8

    new-instance v7, Lcom/google/common/collect/P1$p;

    iget-object v0, p0, Lcom/google/common/collect/P1;->g:Lcom/google/common/collect/P1$k;

    invoke-interface {v0}, Lcom/google/common/collect/P1$k;->b()Lcom/google/common/collect/P1$q;

    move-result-object v1

    iget-object v0, p0, Lcom/google/common/collect/P1;->g:Lcom/google/common/collect/P1$k;

    invoke-interface {v0}, Lcom/google/common/collect/P1$k;->d()Lcom/google/common/collect/P1$q;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/P1;->f:Lw2/m;

    iget-object v0, p0, Lcom/google/common/collect/P1;->g:Lcom/google/common/collect/P1$k;

    invoke-interface {v0}, Lcom/google/common/collect/P1$k;->d()Lcom/google/common/collect/P1$q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/P1$q;->b()Lw2/m;

    move-result-object v4

    iget v5, p0, Lcom/google/common/collect/P1;->e:I

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/common/collect/P1$p;-><init>(Lcom/google/common/collect/P1$q;Lcom/google/common/collect/P1$q;Lw2/m;Lw2/m;ILjava/util/concurrent/ConcurrentMap;)V

    return-object v7
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P1;->i:Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/P1$z;

    invoke-direct {v0, p0}, Lcom/google/common/collect/P1$z;-><init>(Lcom/google/common/collect/P1;)V

    iput-object v0, p0, Lcom/google/common/collect/P1;->i:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method
