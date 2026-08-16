.class public Lcom/android/tools/r8/dex/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic k:Z = true


# instance fields
.field public final a:I

.field public final b:Lcom/android/tools/r8/dex/s0;

.field public final c:Lcom/android/tools/r8/dex/n0;

.field public final d:Lcom/android/tools/r8/FeatureSplit;

.field public final e:Lcom/android/tools/r8/internal/qo0;

.field public final f:Lcom/android/tools/r8/graph/L2;

.field public g:Lcom/android/tools/r8/internal/oj;

.field public h:Z

.field public i:Lcom/android/tools/r8/internal/gA;

.field public j:Lcom/android/tools/r8/graph/w5;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/FeatureSplit;Lcom/android/tools/r8/internal/qo0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/dex/t0;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/dex/t0;->j:Lcom/android/tools/r8/graph/w5;

    iput p1, p0, Lcom/android/tools/r8/dex/t0;->a:I

    new-instance p1, Lcom/android/tools/r8/dex/s0;

    invoke-direct {p1, p2}, Lcom/android/tools/r8/dex/s0;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p1, p0, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    new-instance v1, Lcom/android/tools/r8/dex/n0;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/dex/n0;-><init>(Lcom/android/tools/r8/dex/s0;Lcom/android/tools/r8/graph/y;)V

    iput-object v1, p0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    iput-object p4, p0, Lcom/android/tools/r8/dex/t0;->d:Lcom/android/tools/r8/FeatureSplit;

    iput-object p5, p0, Lcom/android/tools/r8/dex/t0;->e:Lcom/android/tools/r8/internal/qo0;

    if-nez p3, :cond_0

    iput-object v0, p0, Lcom/android/tools/r8/dex/t0;->f:Lcom/android/tools/r8/graph/L2;

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    move-result-object p3

    iput-object p3, p0, Lcom/android/tools/r8/dex/t0;->f:Lcom/android/tools/r8/graph/L2;

    iget-object p3, p2, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {p3}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/synthesis/J;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/hC;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->s()Lcom/android/tools/r8/naming/r0;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/naming/r0;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/L2;

    return-void

    :cond_1
    sget-boolean p2, Lcom/android/tools/r8/dex/t0;->k:Z

    if-nez p2, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".dex"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "`."

    const-string v4, "Illegal suffix for dex file: `"

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v5, 0x4

    .line 4
    invoke-static {v0, v5, v1}, Lcom/android/tools/r8/a;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x2

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 6
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7
    invoke-static {v7}, Lcom/android/tools/r8/internal/zq0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 8
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v8, v6, 0x1

    if-ne v7, v6, :cond_0

    move v6, v8

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "DEX files are not numbered consecutively."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Input filenames lack common prefix."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v1

    .line 14
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/naming/b;)Ljava/util/IdentityHashMap;
    .locals 2

    .line 15
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 16
    new-instance v1, Lu/I1;

    invoke-direct {v1, p1, v0, p2}, Lu/I1;-><init>(Lcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/naming/b;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Hz;Ljava/util/Map;Lcom/android/tools/r8/naming/b;Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 17
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Hz;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/M2;->V0()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/tools/r8/internal/Bl;->a(Ljava/lang/String;Lcom/android/tools/r8/naming/b;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-interface {p1, p3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/I2;Ljava/util/AbstractMap;Ljava/util/HashMap;Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/u1;)Z
    .locals 2

    .line 53
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/I2;->l0()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lu/H1;

    invoke-direct {v1, p4}, Lu/H1;-><init>(Lcom/android/tools/r8/graph/u1;)V

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/L2;

    .line 56
    invoke-interface {p3, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 57
    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 43
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->d:Ljava/util/LinkedHashSet;

    .line 44
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 45
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 46
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->f:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 47
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 48
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->g:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 49
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->i:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 50
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->j:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 51
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->k:Ljava/util/LinkedHashSet;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 52
    iget-object v0, v0, Lcom/android/tools/r8/dex/n0;->l:Lcom/android/tools/r8/dex/m0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 24
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->a:Lcom/android/tools/r8/graph/y;

    .line 25
    iget-object v2, v0, Lcom/android/tools/r8/dex/n0;->c:Lcom/android/tools/r8/internal/RR;

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/M;Lcom/android/tools/r8/internal/RR;)V

    const/4 p1, 0x0

    .line 26
    iput-object p1, v0, Lcom/android/tools/r8/dex/n0;->m:Lcom/android/tools/r8/graph/H2;

    .line 27
    iget-object p1, v0, Lcom/android/tools/r8/dex/n0;->l:Lcom/android/tools/r8/dex/m0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    iget-object p1, v0, Lcom/android/tools/r8/dex/n0;->l:Lcom/android/tools/r8/dex/m0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;ILcom/android/tools/r8/internal/ns0;Lcom/android/tools/r8/graph/w5;)V
    .locals 17

    move-object/from16 v15, p0

    .line 20
    sget-boolean v0, Lcom/android/tools/r8/dex/t0;->k:Z

    if-nez v0, :cond_1

    iget-object v1, v15, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    invoke-virtual {v1}, Lcom/android/tools/r8/dex/n0;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    .line 21
    iget-object v0, v15, Lcom/android/tools/r8/dex/t0;->j:Lcom/android/tools/r8/graph/w5;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 22
    :cond_3
    :goto_1
    new-instance v14, Lcom/android/tools/r8/graph/w5;

    iget-object v0, v15, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    iget-object v3, v0, Lcom/android/tools/r8/dex/n0;->c:Lcom/android/tools/r8/internal/RR;

    iget-object v0, v15, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v4, v0, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    iget-object v5, v0, Lcom/android/tools/r8/dex/s0;->d:Ljava/util/IdentityHashMap;

    iget-object v6, v0, Lcom/android/tools/r8/dex/s0;->e:Ljava/util/Set;

    iget-object v7, v0, Lcom/android/tools/r8/dex/s0;->f:Ljava/util/Set;

    iget-object v8, v0, Lcom/android/tools/r8/dex/s0;->g:Ljava/util/Set;

    iget-object v9, v0, Lcom/android/tools/r8/dex/s0;->h:Ljava/util/Set;

    iget-object v10, v0, Lcom/android/tools/r8/dex/s0;->i:Ljava/util/Set;

    iget-object v11, v0, Lcom/android/tools/r8/dex/s0;->j:Ljava/util/Set;

    iget-object v13, v15, Lcom/android/tools/r8/dex/t0;->e:Lcom/android/tools/r8/internal/qo0;

    move-object v0, v14

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v12, p2

    move-object/from16 v16, v14

    move-object/from16 v14, p0

    move-object/from16 v15, p3

    invoke-direct/range {v0 .. v15}, Lcom/android/tools/r8/graph/w5;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/w5;Lcom/android/tools/r8/internal/RR;Ljava/util/Set;Ljava/util/Map;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;ILcom/android/tools/r8/internal/qo0;Lcom/android/tools/r8/dex/t0;Lcom/android/tools/r8/internal/ns0;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v1, v0, Lcom/android/tools/r8/dex/t0;->j:Lcom/android/tools/r8/graph/w5;

    return-void
.end method

.method public final a(I)Z
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 30
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->f:Ljava/util/LinkedHashSet;

    .line 31
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v0, v0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    .line 32
    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->f:Ljava/util/Set;

    .line 33
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_1

    .line 34
    iget-object v0, p0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 35
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->e:Ljava/util/LinkedHashSet;

    .line 36
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v0, v0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    .line 37
    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->g:Ljava/util/Set;

    .line 38
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-gt v0, p1, :cond_1

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/dex/t0;->c:Lcom/android/tools/r8/dex/n0;

    .line 40
    iget-object v1, v0, Lcom/android/tools/r8/dex/n0;->g:Ljava/util/LinkedHashSet;

    .line 41
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v0, v0, Lcom/android/tools/r8/dex/n0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->e:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-le v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/dex/t0;->a:I

    return v0
.end method

.method public final c()Lcom/android/tools/r8/graph/w5;
    .locals 1

    sget-boolean v0, Lcom/android/tools/r8/dex/t0;->k:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/dex/t0;->j:Lcom/android/tools/r8/graph/w5;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/dex/t0;->j:Lcom/android/tools/r8/graph/w5;

    return-object v0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/dex/t0;->b:Lcom/android/tools/r8/dex/s0;

    iget-object v0, v0, Lcom/android/tools/r8/dex/s0;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/dex/t0;->h:Z

    return-void
.end method
