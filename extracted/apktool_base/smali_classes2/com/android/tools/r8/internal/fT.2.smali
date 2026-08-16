.class public final Lcom/android/tools/r8/internal/fT;
.super Lcom/android/tools/r8/internal/iT;
.source "SourceFile"


# static fields
.field public static final n:Lcom/android/tools/r8/internal/ef0;

.field public static final synthetic o:Z = true


# instance fields
.field public final c:Lcom/android/tools/r8/graph/y;

.field public final d:Lcom/android/tools/r8/graph/H5;

.field public final e:Lcom/android/tools/r8/graph/A2;

.field public final f:Lcom/android/tools/r8/internal/Hz;

.field public final g:Lcom/android/tools/r8/internal/Hz;

.field public final h:Lcom/android/tools/r8/internal/RR;

.field public final i:Z

.field public j:I

.field public k:Ljava/util/AbstractCollection;

.field public l:Ljava/util/IdentityHashMap;

.field public m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/tools/r8/internal/QC;->c:I

    sget-object v0, Lcom/android/tools/r8/internal/ef0;->j:Lcom/android/tools/r8/internal/ef0;

    sput-object v0, Lcom/android/tools/r8/internal/fT;->n:Lcom/android/tools/r8/internal/ef0;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/WS;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/RR;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/tools/r8/internal/iT;-><init>(Lcom/android/tools/r8/internal/WS;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/tools/r8/internal/fT;->j:I

    sget-object v0, Lcom/android/tools/r8/internal/fT;->n:Lcom/android/tools/r8/internal/ef0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/fT;->k:Ljava/util/AbstractCollection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fT;->l:Ljava/util/IdentityHashMap;

    iput-boolean p2, p0, Lcom/android/tools/r8/internal/fT;->m:Z

    iput-object p1, p0, Lcom/android/tools/r8/internal/fT;->c:Lcom/android/tools/r8/graph/y;

    iput-object p3, p0, Lcom/android/tools/r8/internal/fT;->d:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    iput-object v1, p0, Lcom/android/tools/r8/internal/fT;->e:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    iput-object v1, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object p3

    check-cast p3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/Hz;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    iput-object p4, p0, Lcom/android/tools/r8/internal/fT;->h:Lcom/android/tools/r8/internal/RR;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->l()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->d()Lcom/android/tools/r8/internal/R00;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/internal/Fa1;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/Fa1;-><init>(Lcom/android/tools/r8/internal/fT;)V

    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/R00;->a(Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/R00;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    instance-of p1, v0, Lcom/android/tools/r8/internal/V00;

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    :cond_1
    iput-boolean p2, p0, Lcom/android/tools/r8/internal/fT;->i:Z

    return-void
.end method

.method public static synthetic a(Ljava/util/List;[Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/graph/A2;)Ljava/lang/Integer;
    .locals 0

    .line 88
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    array-length p1, p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/VS;ILcom/android/tools/r8/internal/N8;)Z
    .locals 0

    .line 83
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result p2

    .line 84
    iget-object p0, p0, Lcom/android/tools/r8/internal/VS;->b:Lcom/android/tools/r8/internal/dH;

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/N8;

    .line 86
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/N8;->size()I

    move-result p0

    if-le p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    return v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/YS;)Lcom/android/tools/r8/internal/YS;
    .locals 0

    if-eqz p4, :cond_2

    if-ne p4, p1, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/fT;->k:Ljava/util/AbstractCollection;

    sget-object p3, Lcom/android/tools/r8/internal/fT;->n:Lcom/android/tools/r8/internal/ef0;

    if-ne p1, p3, :cond_1

    .line 51
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/fT;->k:Ljava/util/AbstractCollection;

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/fT;->k:Ljava/util/AbstractCollection;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2

    :cond_2
    :goto_0
    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/YS;)Lcom/android/tools/r8/internal/YS;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->l:Ljava/util/IdentityHashMap;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/YS;

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->l:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 63
    iget-object v1, p0, Lcom/android/tools/r8/internal/iT;->a:Lcom/android/tools/r8/internal/WS;

    .line 64
    iget-object v1, v1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 65
    array-length v1, v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/fT;->l:Ljava/util/IdentityHashMap;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->l:Ljava/util/IdentityHashMap;

    .line 67
    new-instance v1, Lcom/android/tools/r8/internal/Ga1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/tools/r8/internal/Ga1;-><init>(Lcom/android/tools/r8/internal/fT;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 68
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V
    .locals 8

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    iget-object v2, p0, Lcom/android/tools/r8/internal/fT;->e:Lcom/android/tools/r8/graph/A2;

    iget-object v4, p0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {p3}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object v5

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    instance-of v1, v1, Lcom/android/tools/r8/internal/xA;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 14
    iget-object v1, v0, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v1

    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    instance-of v1, v1, Lcom/android/tools/r8/internal/Aa0;

    if-eqz v1, :cond_1

    .line 18
    iget-object v1, v0, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 19
    iget-object v1, v1, Lcom/android/tools/r8/graph/proto/j;->b:Lcom/android/tools/r8/graph/proto/c;

    .line 20
    iget-object v1, v1, Lcom/android/tools/r8/graph/proto/c;->c:Lcom/android/tools/r8/graph/proto/d;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    instance-of v1, v1, Lcom/android/tools/r8/graph/proto/f;

    :goto_0
    xor-int/2addr v1, v3

    goto :goto_4

    .line 23
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Hz;->e()Lcom/android/tools/r8/internal/cx0;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 24
    iget-object v4, v0, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 25
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    .line 26
    :goto_1
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/tools/r8/graph/A2;->a(Z)I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 27
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/android/tools/r8/graph/A2;->a(IZ)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 28
    iget-object v6, v1, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    .line 29
    iget-object v6, v6, Lcom/android/tools/r8/internal/nx0;->b:Lcom/android/tools/r8/internal/m6;

    .line 30
    invoke-interface {v6, v5}, Lcom/android/tools/r8/internal/j6;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    move v1, v3

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 31
    :cond_4
    sget-boolean v1, Lcom/android/tools/r8/internal/fT;->o:Z

    if-nez v1, :cond_6

    .line 32
    iget-object v1, v0, Lcom/android/tools/r8/internal/NW;->e:Lcom/android/tools/r8/graph/proto/j;

    .line 33
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/proto/j;->c()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_3
    move v1, v2

    :goto_4
    if-eqz v1, :cond_7

    .line 34
    iput-boolean v3, p0, Lcom/android/tools/r8/internal/fT;->m:Z

    return-void

    .line 35
    :cond_7
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/kK;->a(Z)I

    move-result p3

    .line 36
    iget-object v1, v0, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 37
    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 38
    iget-object v4, v0, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 39
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/graph/A2;ILcom/android/tools/r8/internal/NW;)Z

    move-result v0

    .line 40
    invoke-virtual {v4, v0}, Lcom/android/tools/r8/internal/kK;->a(Z)I

    move-result v0

    .line 41
    sget-boolean v5, Lcom/android/tools/r8/internal/fT;->o:Z

    if-nez v5, :cond_9

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v7

    if-eq v6, v7, :cond_9

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result v6

    if-eqz v6, :cond_8

    goto :goto_5

    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_9
    :goto_5
    if-eq v0, p3, :cond_10

    if-nez v5, :cond_f

    if-eq p2, v4, :cond_f

    .line 42
    sget-object p1, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    if-ne p2, p1, :cond_a

    move v2, v3

    :cond_a
    if-eqz v2, :cond_b

    .line 43
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result p1

    if-nez p1, :cond_f

    .line 44
    :cond_b
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result p1

    if-nez p1, :cond_f

    .line 45
    :cond_c
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/kK;->d()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result p1

    if-nez p1, :cond_f

    .line 46
    :cond_d
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/kK;->e()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kK;->b()Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/kK;->c()Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_6

    .line 47
    :cond_e
    new-instance p1, Ljava/lang/AssertionError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 48
    :cond_f
    :goto_6
    iget p1, p0, Lcom/android/tools/r8/internal/fT;->j:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/android/tools/r8/internal/fT;->j:I

    return-void

    .line 49
    :cond_10
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;)V
    .locals 1

    .line 82
    sget-object p2, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 81
    sget-object p2, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/ZY;)V
    .locals 1

    .line 69
    iget-object p2, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/J2;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/YS;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    .line 76
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->b()Lcom/android/tools/r8/internal/xA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/iw;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iw;->b()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/fT;->m:Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;)V
    .locals 1

    .line 70
    iget-object p2, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    .line 71
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Hz;->b()Lcom/android/tools/r8/internal/xA;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {p2, v0, p1}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/iw;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iw;->b()Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 74
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/fT;->m:Z

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fT;->b(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/YS;)V
    .locals 4

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->l:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Ljava/util/IdentityHashMap;

    .line 55
    iget-object v1, p0, Lcom/android/tools/r8/internal/iT;->a:Lcom/android/tools/r8/internal/WS;

    .line 56
    iget-object v1, v1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 57
    array-length v1, v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/fT;->l:Ljava/util/IdentityHashMap;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->l:Ljava/util/IdentityHashMap;

    .line 59
    invoke-virtual {v0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/YS;

    if-eqz v0, :cond_3

    if-ne v0, p2, :cond_2

    goto :goto_0

    .line 60
    :cond_2
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected rewriting of item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to two distinct items: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/A2;ILcom/android/tools/r8/internal/NW;)Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p3, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 92
    check-cast v0, Lcom/android/tools/r8/graph/A2;

    .line 93
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    instance-of v0, v0, Lcom/android/tools/r8/internal/cx0;

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    .line 97
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->e()Lcom/android/tools/r8/internal/cx0;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 99
    iget-object v0, v0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    .line 100
    iget-object v0, v0, Lcom/android/tools/r8/internal/nx0;->b:Lcom/android/tools/r8/internal/m6;

    .line 101
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/j6;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 102
    :goto_0
    iget-object p1, p3, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 103
    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 104
    iget-object p3, p0, Lcom/android/tools/r8/internal/fT;->c:Lcom/android/tools/r8/graph/y;

    invoke-static {p2}, Lcom/android/tools/r8/internal/gT;->a(I)Z

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    invoke-interface {p3, p1}, Lcom/android/tools/r8/graph/d1;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 106
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p1

    return p1

    :cond_1
    return p2

    .line 107
    :cond_2
    iget-object p1, p3, Lcom/android/tools/r8/internal/NW;->c:Lcom/android/tools/r8/internal/t40;

    .line 108
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->e()Z

    move-result p1

    if-nez p1, :cond_3

    .line 109
    iget-object p1, p3, Lcom/android/tools/r8/internal/NW;->c:Lcom/android/tools/r8/internal/t40;

    .line 110
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result p1

    return p1

    .line 111
    :cond_3
    invoke-static {p2}, Lcom/android/tools/r8/internal/gT;->a(I)Z

    move-result p1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/R00;)Z
    .locals 1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    instance-of v0, p1, Lcom/android/tools/r8/internal/V00;

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final a(Lcom/android/tools/r8/internal/WS;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/iT;->a:Lcom/android/tools/r8/internal/WS;

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    .line 4
    iget-object p1, p1, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    .line 5
    new-instance v1, Lcom/android/tools/r8/internal/Ja1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Ja1;-><init>(Lcom/android/tools/r8/internal/VS;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/VS;->a(Lcom/android/tools/r8/internal/aI;)Z

    move-result p1

    return p1
.end method

.method public final b(Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/WS;
    .locals 12

    .line 13
    iget-object v0, p1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 14
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v3, v1, :cond_c

    aget-object v8, v0, v3

    .line 15
    instance-of v9, v8, Lcom/android/tools/r8/graph/M2;

    if-eqz v9, :cond_0

    .line 16
    check-cast v8, Lcom/android/tools/r8/graph/M2;

    .line 17
    iget-object v7, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    iget-object v9, p0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v7, v9, v8}, Lcom/android/tools/r8/internal/Hz;->e(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/YS;)V

    goto/16 :goto_4

    .line 18
    :cond_0
    instance-of v9, v8, Lcom/android/tools/r8/graph/l1;

    if-eqz v9, :cond_5

    .line 19
    check-cast v8, Lcom/android/tools/r8/graph/l1;

    .line 20
    iget-object v4, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    iget-object v9, p0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v4, v9, v8}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/iw;

    move-result-object v4

    .line 21
    sget-boolean v9, Lcom/android/tools/r8/internal/fT;->o:Z

    if-nez v9, :cond_2

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/iw;->b()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    instance-of v10, v10, Lcom/android/tools/r8/internal/xA;

    if-eqz v10, :cond_1

    goto :goto_1

    .line 23
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez v9, :cond_4

    .line 24
    iget-object v9, v4, Lcom/android/tools/r8/internal/iw;->d:Lcom/android/tools/r8/graph/M2;

    if-eqz v9, :cond_4

    .line 25
    iget-object v9, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    instance-of v9, v9, Lcom/android/tools/r8/internal/xA;

    if-eqz v9, :cond_3

    goto :goto_2

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 28
    :cond_4
    :goto_2
    iget-object v4, v4, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 29
    invoke-virtual {p0, v8, v4}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/YS;)V

    move v4, v7

    goto :goto_4

    .line 30
    :cond_5
    instance-of v9, v8, Lcom/android/tools/r8/graph/D0;

    if-eqz v9, :cond_6

    .line 31
    check-cast v8, Lcom/android/tools/r8/graph/D0;

    .line 32
    iget-object v7, p0, Lcom/android/tools/r8/internal/fT;->h:Lcom/android/tools/r8/internal/RR;

    iget-object v9, p0, Lcom/android/tools/r8/internal/fT;->d:Lcom/android/tools/r8/graph/H5;

    invoke-virtual {v7, v8, v9}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/D0;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/graph/D0;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/YS;)V

    goto :goto_4

    .line 33
    :cond_6
    instance-of v9, v8, Lcom/android/tools/r8/internal/MS;

    if-eqz v9, :cond_8

    .line 34
    check-cast v8, Lcom/android/tools/r8/internal/MS;

    .line 35
    iget-object v5, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    iget-object v9, p0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    .line 36
    iget-object v10, v8, Lcom/android/tools/r8/internal/MS;->b:Lcom/android/tools/r8/internal/ZY;

    .line 37
    invoke-virtual {v10, v5, v9}, Lcom/android/tools/r8/internal/ZY;->a(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/ZY;

    move-result-object v5

    .line 38
    iget-object v9, v8, Lcom/android/tools/r8/internal/MS;->b:Lcom/android/tools/r8/internal/ZY;

    if-eq v5, v9, :cond_7

    .line 39
    new-instance v9, Lcom/android/tools/r8/internal/MS;

    invoke-direct {v9, v5}, Lcom/android/tools/r8/internal/MS;-><init>(Lcom/android/tools/r8/internal/ZY;)V

    goto :goto_3

    :cond_7
    move-object v9, v8

    .line 40
    :goto_3
    invoke-virtual {p0, v8, v9}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/YS;)V

    move v5, v7

    goto :goto_4

    .line 41
    :cond_8
    instance-of v9, v8, Lcom/android/tools/r8/graph/C2;

    if-eqz v9, :cond_9

    .line 42
    check-cast v8, Lcom/android/tools/r8/graph/C2;

    .line 43
    iget-object v7, p0, Lcom/android/tools/r8/internal/fT;->h:Lcom/android/tools/r8/internal/RR;

    iget-object v9, p0, Lcom/android/tools/r8/internal/fT;->d:Lcom/android/tools/r8/graph/H5;

    .line 44
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    const/4 v10, 0x2

    invoke-virtual {v7, v8, v10, v9}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/C2;ILcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/C2;

    move-result-object v7

    .line 46
    invoke-virtual {p0, v8, v7}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/YS;)V

    goto :goto_4

    .line 47
    :cond_9
    instance-of v9, v8, Lcom/android/tools/r8/graph/I2;

    if-eqz v9, :cond_a

    .line 48
    check-cast v8, Lcom/android/tools/r8/graph/I2;

    .line 49
    iget-object v7, p0, Lcom/android/tools/r8/internal/fT;->h:Lcom/android/tools/r8/internal/RR;

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/RR;->a(Lcom/android/tools/r8/graph/I2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/internal/YS;Lcom/android/tools/r8/internal/YS;)V

    goto :goto_4

    :cond_a
    if-nez v6, :cond_b

    .line 50
    instance-of v8, v8, Lcom/android/tools/r8/graph/A2;

    if-eqz v8, :cond_b

    move v6, v7

    :cond_b
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    if-eqz v4, :cond_d

    .line 51
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    instance-of v1, v0, Lcom/android/tools/r8/internal/xA;

    if-nez v1, :cond_e

    .line 54
    instance-of v0, v0, Lcom/android/tools/r8/internal/cx0;

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    move v7, v2

    :cond_e
    :goto_5
    if-nez v5, :cond_f

    if-nez v7, :cond_f

    if-eqz v6, :cond_11

    .line 55
    :cond_f
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dT;

    .line 56
    invoke-interface {v1, p0}, Lcom/android/tools/r8/internal/dT;->a(Lcom/android/tools/r8/internal/cT;)V

    .line 57
    iget-boolean v1, p0, Lcom/android/tools/r8/internal/fT;->m:Z

    if-eqz v1, :cond_10

    const/4 p1, 0x0

    return-object p1

    .line 58
    :cond_11
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->l:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_12

    goto :goto_6

    .line 59
    :cond_12
    new-instance v0, Lcom/android/tools/r8/internal/Ia1;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/Ia1;-><init>(Lcom/android/tools/r8/internal/fT;)V

    .line 60
    iget-object v1, p1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    new-array v2, v2, [Lcom/android/tools/r8/internal/YS;

    invoke-static {v1, v0, v2}, Lcom/android/tools/r8/internal/X3;->a([Ljava/lang/Object;Ljava/util/function/Function;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Lcom/android/tools/r8/internal/YS;

    .line 61
    iget-object v0, p1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    if-ne v0, v2, :cond_13

    :goto_6
    return-object p1

    .line 62
    :cond_13
    new-instance v0, Lcom/android/tools/r8/internal/WS;

    iget-object v3, p1, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    iget v4, p1, Lcom/android/tools/r8/internal/WS;->i:I

    iget-object v5, p1, Lcom/android/tools/r8/internal/WS;->j:[B

    iget v6, p1, Lcom/android/tools/r8/internal/WS;->k:I

    iget-object v7, p1, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    iget-object v8, p1, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    iget-object v9, p1, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    iget-boolean v10, p1, Lcom/android/tools/r8/internal/WS;->f:Z

    iget-object v11, p1, Lcom/android/tools/r8/internal/WS;->n:Lcom/android/tools/r8/internal/dH;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/android/tools/r8/internal/WS;-><init>([Lcom/android/tools/r8/internal/YS;[Lcom/android/tools/r8/internal/SS;I[BILcom/android/tools/r8/internal/VS;Lcom/android/tools/r8/internal/QS;Lcom/android/tools/r8/internal/uT;ZLcom/android/tools/r8/internal/dH;)V

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 12
    sget-object p2, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->b()Lcom/android/tools/r8/internal/xA;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Hz;->f(Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/iw;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/iw;->d:Lcom/android/tools/r8/graph/M2;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Hz;->e()Lcom/android/tools/r8/internal/cx0;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/l1;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/internal/cx0;->n:Lcom/android/tools/r8/internal/nx0;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/nx0;->b:Lcom/android/tools/r8/internal/m6;

    .line 10
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/j6;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/android/tools/r8/internal/fT;->m:Z

    :cond_2
    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/l1;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/fT;->b(Lcom/android/tools/r8/graph/l1;)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/internal/WS;)Lcom/android/tools/r8/internal/WS;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3
    iget v2, v0, Lcom/android/tools/r8/internal/fT;->j:I

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/tools/r8/internal/fT;->k:Ljava/util/AbstractCollection;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v2, Lcom/android/tools/r8/internal/qd0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/qd0;-><init>()V

    .line 5
    iget-object v3, v1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 6
    array-length v4, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    .line 7
    aget-object v7, v3, v6

    .line 8
    instance-of v8, v7, Lcom/android/tools/r8/graph/A2;

    if-eqz v8, :cond_1

    .line 9
    check-cast v7, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v6, v7}, Lcom/android/tools/r8/internal/qd0;->b(ILjava/lang/Object;)I

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 10
    :cond_2
    new-instance v4, Lcom/android/tools/r8/internal/X7;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/X7;-><init>()V

    .line 11
    new-instance v6, Lcom/android/tools/r8/internal/wT;

    invoke-direct {v6, v4}, Lcom/android/tools/r8/internal/wT;-><init>(Lcom/android/tools/r8/internal/X7;)V

    .line 12
    new-instance v7, Ljava/util/ArrayList;

    iget v8, v0, Lcom/android/tools/r8/internal/fT;->j:I

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/internal/WS;->E0()Lcom/android/tools/r8/internal/eT;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/dT;

    .line 14
    invoke-interface {v9}, Lcom/android/tools/r8/internal/dT;->a()I

    move-result v11

    .line 15
    invoke-static {v11}, Lcom/android/tools/r8/internal/kT;->e(I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 16
    invoke-virtual {v6, v11}, Lcom/android/tools/r8/internal/wT;->a(I)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {v11}, Lcom/android/tools/r8/internal/gT;->b(I)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 18
    sget-boolean v12, Lcom/android/tools/r8/internal/fT;->o:Z

    if-nez v12, :cond_6

    invoke-static {v11}, Lcom/android/tools/r8/internal/gT;->b(I)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 19
    :cond_6
    :goto_2
    iget-object v12, v0, Lcom/android/tools/r8/internal/fT;->k:Ljava/util/AbstractCollection;

    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    const/16 v13, 0xb9

    const/16 v14, 0xb6

    if-nez v12, :cond_7

    goto :goto_3

    .line 20
    :cond_7
    iget-object v12, v0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/Hz;->j()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-static {v11}, Lcom/android/tools/r8/internal/gT;->b(I)Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_3

    :cond_8
    if-ne v11, v14, :cond_9

    goto :goto_3

    :cond_9
    if-ne v11, v13, :cond_a

    goto :goto_3

    .line 21
    :cond_a
    iget-boolean v12, v0, Lcom/android/tools/r8/internal/fT;->i:Z

    const/16 v15, 0xcf

    if-eqz v12, :cond_e

    const/16 v12, 0xcd

    if-eq v11, v12, :cond_10

    const/16 v12, 0xce

    if-ne v11, v12, :cond_b

    goto :goto_3

    :cond_b
    if-ne v11, v13, :cond_c

    goto :goto_3

    :cond_c
    if-eq v11, v15, :cond_10

    const/16 v12, 0xd0

    if-ne v11, v12, :cond_d

    goto :goto_3

    :cond_d
    if-ne v11, v14, :cond_e

    goto :goto_3

    .line 22
    :cond_e
    iget-object v12, v0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    instance-of v12, v12, Lcom/android/tools/r8/internal/cx0;

    if-eqz v12, :cond_19

    const/16 v12, 0xcc

    if-ne v11, v12, :cond_f

    goto :goto_3

    :cond_f
    if-ne v11, v15, :cond_19

    .line 24
    :cond_10
    :goto_3
    sget-boolean v12, Lcom/android/tools/r8/internal/gT;->a:Z

    if-nez v12, :cond_12

    invoke-static {v11}, Lcom/android/tools/r8/internal/gT;->b(I)Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_4

    :cond_11
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_12
    :goto_4
    if-eq v11, v14, :cond_15

    const/16 v12, 0xb8

    if-eq v11, v12, :cond_14

    if-eq v11, v13, :cond_13

    packed-switch v11, :pswitch_data_0

    .line 25
    new-instance v1, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw v1

    .line 26
    :pswitch_0
    sget-object v12, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    :goto_5
    move-object/from16 v16, v12

    goto :goto_6

    .line 27
    :pswitch_1
    sget-object v12, Lcom/android/tools/r8/internal/kK;->d:Lcom/android/tools/r8/internal/kK;

    goto :goto_5

    .line 28
    :cond_13
    sget-object v12, Lcom/android/tools/r8/internal/kK;->e:Lcom/android/tools/r8/internal/kK;

    goto :goto_5

    .line 29
    :cond_14
    :pswitch_2
    sget-object v12, Lcom/android/tools/r8/internal/kK;->f:Lcom/android/tools/r8/internal/kK;

    goto :goto_5

    .line 30
    :cond_15
    sget-object v12, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    goto :goto_5

    .line 31
    :goto_6
    invoke-static {v11}, Lcom/android/tools/r8/internal/gT;->a(I)Z

    move-result v12

    .line 32
    invoke-interface {v9}, Lcom/android/tools/r8/internal/dT;->o()I

    move-result v19

    .line 33
    iget-object v13, v1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    aget-object v13, v13, v19

    .line 34
    move-object v15, v13

    check-cast v15, Lcom/android/tools/r8/graph/A2;

    .line 35
    iget-object v13, v0, Lcom/android/tools/r8/internal/fT;->f:Lcom/android/tools/r8/internal/Hz;

    iget-object v14, v0, Lcom/android/tools/r8/internal/fT;->d:Lcom/android/tools/r8/graph/H5;

    .line 36
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v14

    move-object/from16 v17, v14

    check-cast v17, Lcom/android/tools/r8/graph/A2;

    iget-object v14, v0, Lcom/android/tools/r8/internal/fT;->g:Lcom/android/tools/r8/internal/Hz;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {v12}, Lcom/android/tools/r8/internal/t40;->a(Z)Lcom/android/tools/r8/internal/t40;

    move-result-object v18

    move-object v12, v14

    move-object v14, v15

    move-object v5, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v12

    invoke-virtual/range {v13 .. v18}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/t40;)Lcom/android/tools/r8/internal/NW;

    move-result-object v12

    .line 38
    invoke-virtual {v0, v5, v11, v12}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/graph/A2;ILcom/android/tools/r8/internal/NW;)Z

    move-result v13

    .line 39
    iget-object v14, v12, Lcom/android/tools/r8/internal/NW;->d:Lcom/android/tools/r8/internal/kK;

    .line 40
    invoke-virtual {v14, v13}, Lcom/android/tools/r8/internal/kK;->a(Z)I

    move-result v13

    if-ne v13, v11, :cond_17

    .line 41
    iget-object v14, v0, Lcom/android/tools/r8/internal/fT;->k:Ljava/util/AbstractCollection;

    invoke-interface {v14, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    goto :goto_8

    :cond_16
    :goto_7
    move/from16 v5, v19

    goto :goto_a

    .line 42
    :cond_17
    :goto_8
    iget-object v5, v12, Lcom/android/tools/r8/internal/IV;->a:Lcom/android/tools/r8/graph/v2;

    .line 43
    check-cast v5, Lcom/android/tools/r8/graph/A2;

    new-instance v12, Lcom/android/tools/r8/internal/Ha1;

    invoke-direct {v12, v7, v3}, Lcom/android/tools/r8/internal/Ha1;-><init>(Ljava/util/List;[Lcom/android/tools/r8/internal/YS;)V

    .line 44
    invoke-interface {v2, v5, v12}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 45
    iget v5, v0, Lcom/android/tools/r8/internal/fT;->j:I

    if-eq v13, v11, :cond_18

    goto :goto_9

    :cond_18
    const/4 v10, 0x0

    :goto_9
    invoke-static {v10}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v10

    sub-int/2addr v5, v10

    iput v5, v0, Lcom/android/tools/r8/internal/fT;->j:I

    goto :goto_7

    .line 46
    :goto_a
    sget-boolean v10, Lcom/android/tools/r8/internal/o8;->a:Z

    .line 47
    invoke-interface {v9}, Lcom/android/tools/r8/internal/dT;->m()I

    move-result v10

    add-int/lit8 v11, v10, 0x4

    .line 48
    invoke-virtual {v6, v13, v11}, Lcom/android/tools/r8/internal/wT;->a(II)V

    .line 49
    new-instance v11, Lcom/android/tools/r8/internal/TQ0;

    invoke-direct {v11, v6}, Lcom/android/tools/r8/internal/TQ0;-><init>(Lcom/android/tools/r8/internal/wT;)V

    invoke-static {v5, v11}, Lcom/android/tools/r8/internal/o8;->a(ILcom/android/tools/r8/internal/q8;)V

    :goto_b
    add-int/lit8 v5, v10, -0x1

    if-lez v10, :cond_3

    .line 50
    invoke-interface {v9}, Lcom/android/tools/r8/internal/dT;->j()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/android/tools/r8/internal/wT;->b(I)V

    move v10, v5

    goto :goto_b

    .line 51
    :cond_19
    invoke-interface {v9}, Lcom/android/tools/r8/internal/dT;->m()I

    move-result v5

    .line 52
    invoke-virtual {v6, v11, v5}, Lcom/android/tools/r8/internal/wT;->a(II)V

    :goto_c
    add-int/lit8 v10, v5, -0x1

    if-lez v5, :cond_3

    .line 53
    invoke-interface {v9}, Lcom/android/tools/r8/internal/dT;->j()I

    move-result v5

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/wT;->b(I)V

    move v5, v10

    goto :goto_c

    .line 54
    :cond_1a
    sget-boolean v2, Lcom/android/tools/r8/internal/fT;->o:Z

    if-nez v2, :cond_1c

    iget v2, v0, Lcom/android/tools/r8/internal/fT;->j:I

    if-nez v2, :cond_1b

    goto :goto_d

    :cond_1b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 55
    :cond_1c
    :goto_d
    iget-object v2, v1, Lcom/android/tools/r8/internal/WS;->g:[Lcom/android/tools/r8/internal/YS;

    .line 56
    sget-boolean v3, Lcom/android/tools/r8/internal/X3;->a:Z

    .line 57
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_f

    .line 58
    :cond_1d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v10, :cond_1e

    const/4 v3, 0x0

    .line 59
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    goto :goto_f

    :cond_1e
    const/4 v3, 0x0

    .line 60
    array-length v5, v2

    .line 61
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 62
    :goto_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_1f

    add-int v6, v5, v3

    .line 63
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 64
    :cond_1f
    :goto_f
    move-object v6, v2

    check-cast v6, [Lcom/android/tools/r8/internal/YS;

    .line 65
    iget-object v2, v4, Lcom/android/tools/r8/internal/X7;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 66
    new-instance v2, Lcom/android/tools/r8/internal/WS;

    iget-object v7, v1, Lcom/android/tools/r8/internal/WS;->h:[Lcom/android/tools/r8/internal/SS;

    iget v8, v1, Lcom/android/tools/r8/internal/WS;->i:I

    iget v10, v1, Lcom/android/tools/r8/internal/WS;->k:I

    iget-object v11, v1, Lcom/android/tools/r8/internal/WS;->l:Lcom/android/tools/r8/internal/VS;

    iget-object v12, v1, Lcom/android/tools/r8/internal/WS;->m:Lcom/android/tools/r8/internal/QS;

    iget-object v13, v1, Lcom/android/tools/r8/internal/WS;->e:Lcom/android/tools/r8/internal/uT;

    iget-boolean v14, v1, Lcom/android/tools/r8/internal/WS;->f:Z

    iget-object v15, v1, Lcom/android/tools/r8/internal/WS;->n:Lcom/android/tools/r8/internal/dH;

    move-object v5, v2

    invoke-direct/range {v5 .. v15}, Lcom/android/tools/r8/internal/WS;-><init>([Lcom/android/tools/r8/internal/YS;[Lcom/android/tools/r8/internal/SS;I[BILcom/android/tools/r8/internal/VS;Lcom/android/tools/r8/internal/QS;Lcom/android/tools/r8/internal/uT;ZLcom/android/tools/r8/internal/dH;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0xcc
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;)V
    .locals 1

    .line 2
    sget-object p2, Lcom/android/tools/r8/internal/kK;->h:Lcom/android/tools/r8/internal/kK;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    return-void
.end method

.method public final c(Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 1
    sget-object p2, Lcom/android/tools/r8/internal/kK;->g:Lcom/android/tools/r8/internal/kK;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/fT;->a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/internal/kK;Z)V

    return-void
.end method
