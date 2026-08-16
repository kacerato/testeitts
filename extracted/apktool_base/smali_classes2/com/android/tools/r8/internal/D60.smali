.class public final Lcom/android/tools/r8/internal/D60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/F60;


# static fields
.field public static final synthetic h:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Lcom/android/tools/r8/internal/na;

.field public final e:Lcom/android/tools/r8/internal/F60;

.field public f:Lcom/android/tools/r8/graph/j1;

.field public g:Lcom/android/tools/r8/kotlin/l0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/F60;Lcom/android/tools/r8/internal/na;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/D60;->c:Ljava/util/IdentityHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/internal/D60;->g:Lcom/android/tools/r8/kotlin/l0$b;

    iput-object p1, p0, Lcom/android/tools/r8/internal/D60;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/D60;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/internal/D60;->e:Lcom/android/tools/r8/internal/F60;

    iput-object p3, p0, Lcom/android/tools/r8/internal/D60;->d:Lcom/android/tools/r8/internal/na;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;
    .locals 12

    const-string v0, ";;"

    sget-boolean v1, Lcom/android/tools/r8/internal/D60;->h:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/D60;->f:Lcom/android/tools/r8/graph/j1;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->f()I

    move-result v1

    iget-object v2, p1, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/D60;->g:Lcom/android/tools/r8/kotlin/l0$b;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/tools/r8/internal/D60;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/kotlin/l0$b;

    iput-object v3, p0, Lcom/android/tools/r8/internal/D60;->g:Lcom/android/tools/r8/kotlin/l0$b;

    :cond_2
    iget-object v3, p0, Lcom/android/tools/r8/internal/D60;->g:Lcom/android/tools/r8/kotlin/l0$b;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/tools/r8/internal/D60;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/tools/r8/internal/D60;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, p0, Lcom/android/tools/r8/internal/D60;->f:Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/D60;->a:Lcom/android/tools/r8/graph/y;

    iget-object v4, v4, Lcom/android/tools/r8/graph/y;->L:Ljava/util/IdentityHashMap;

    iget-object v3, v3, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v3}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/R2$k;

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/android/tools/r8/graph/R2$k;->d:Lcom/android/tools/r8/graph/d4;

    check-cast v3, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/kotlin/l0;->c(Ljava/lang/String;)Lcom/android/tools/r8/kotlin/l0$b;

    move-result-object v3

    iput-object v3, p0, Lcom/android/tools/r8/internal/D60;->g:Lcom/android/tools/r8/kotlin/l0$b;

    :cond_4
    iget-object v3, p0, Lcom/android/tools/r8/internal/D60;->c:Ljava/util/IdentityHashMap;

    iget-object v4, p0, Lcom/android/tools/r8/internal/D60;->g:Lcom/android/tools/r8/kotlin/l0$b;

    invoke-virtual {v3, v2, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/internal/D60;->g:Lcom/android/tools/r8/kotlin/l0$b;

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/D60;->g:Lcom/android/tools/r8/kotlin/l0$b;

    :goto_2
    if-nez v2, :cond_6

    iget-object v0, p0, Lcom/android/tools/r8/internal/D60;->e:Lcom/android/tools/r8/internal/F60;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/F60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/kotlin/l0$b;->a(I)Ljava/util/Map$Entry;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v0, p0, Lcom/android/tools/r8/internal/D60;->e:Lcom/android/tools/r8/internal/F60;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/F60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v1, v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/kotlin/l0$a;

    invoke-virtual {v5}, Lcom/android/tools/r8/kotlin/l0$a;->a()Lcom/android/tools/r8/naming/M0;

    move-result-object v5

    iget v5, v5, Lcom/android/tools/r8/naming/M0;->a:I

    add-int/2addr v5, v4

    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/kotlin/l0$a;

    invoke-virtual {v3}, Lcom/android/tools/r8/kotlin/l0$a;->b()Lcom/android/tools/r8/kotlin/l0$c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/kotlin/l0$c;->b()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/tools/r8/internal/D60;->d:Lcom/android/tools/r8/internal/na;

    iget-object v6, v4, Lcom/android/tools/r8/internal/na;->a:Ljava/util/HashMap;

    if-nez v6, :cond_8

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v4, Lcom/android/tools/r8/internal/na;->a:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/na;->a()V

    :cond_8
    iget-object v4, v4, Lcom/android/tools/r8/internal/na;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/dH;

    if-nez v4, :cond_9

    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/dH;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_3
    if-nez v4, :cond_a

    iget-object v0, p0, Lcom/android/tools/r8/internal/D60;->e:Lcom/android/tools/r8/internal/F60;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/F60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    return-object p1

    :cond_a
    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    sget-boolean v7, Lcom/android/tools/r8/internal/na;->c:Z

    if-nez v7, :cond_c

    if-lez v6, :cond_b

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    :goto_4
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v7, :cond_e

    if-lez v0, :cond_d

    goto :goto_5

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_e
    :goto_5
    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Lcom/android/tools/r8/internal/Bl;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    new-array v7, v7, [Lcom/android/tools/r8/graph/L2;

    move v9, v8

    :goto_6
    array-length v10, v0

    if-ge v9, v10, :cond_f

    iget-object v10, p0, Lcom/android/tools/r8/internal/D60;->b:Lcom/android/tools/r8/graph/u1;

    aget-object v11, v0, v9

    invoke-virtual {v10, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/android/tools/r8/internal/D60;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    iget-object v9, p0, Lcom/android/tools/r8/internal/D60;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v9, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    iget-object v9, p0, Lcom/android/tools/r8/internal/D60;->b:Lcom/android/tools/r8/graph/u1;

    invoke-virtual {v9, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {v0, v3, v6, v4, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    iget-object v3, p1, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/E;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v2, v2, Lcom/android/tools/r8/kotlin/l0$b;->b:Lcom/android/tools/r8/internal/kl0;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/kl0;->a(Ljava/lang/Integer;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/kotlin/l0$a;

    invoke-virtual {v1}, Lcom/android/tools/r8/kotlin/l0$a;->a()Lcom/android/tools/r8/naming/M0;

    move-result-object v1

    iget v1, v1, Lcom/android/tools/r8/naming/M0;->a:I

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/B60;->b()Lcom/android/tools/r8/internal/B60$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/B60$a;->a()Lcom/android/tools/r8/internal/B60;

    move-result-object p1

    :cond_10
    iget-object v1, p0, Lcom/android/tools/r8/internal/D60;->e:Lcom/android/tools/r8/internal/F60;

    invoke-static {}, Lcom/android/tools/r8/internal/B60$b;->t()Lcom/android/tools/r8/internal/B60$b$a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/B60$a;->a(I)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/B60$b$a;

    invoke-virtual {v2, v0}, Lcom/android/tools/r8/internal/B60$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/internal/B60$a;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/B60$b$a;

    iput-object p1, v0, Lcom/android/tools/r8/internal/B60$a;->c:Lcom/android/tools/r8/internal/B60;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/B60$b$a;->d()Lcom/android/tools/r8/internal/B60$b;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/tools/r8/internal/F60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_11
    iget-object v0, p0, Lcom/android/tools/r8/internal/D60;->e:Lcom/android/tools/r8/internal/F60;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/F60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    return-object p1
.end method
