.class public final Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/E0;

.field public b:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/l;

.field public final c:Ljava/util/IdentityHashMap;

.field public final d:Ljava/util/IdentityHashMap;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/E0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->c:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->d:Ljava/util/IdentityHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->f:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a:Lcom/android/tools/r8/graph/E0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;)V
    .locals 11

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a:Lcom/android/tools/r8/graph/E0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->e:Ljava/util/HashMap;

    .line 5
    sget-object v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->i:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    .line 6
    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->e:Ljava/util/HashMap;

    if-ne p2, v1, :cond_2

    move-object p2, v0

    goto/16 :goto_9

    :cond_2
    if-ne v0, v1, :cond_3

    goto :goto_9

    .line 7
    :cond_3
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;)I

    move-result v1

    shr-int/lit8 v9, v1, 0x10

    and-int/lit16 v8, v1, 0xff

    .line 8
    new-instance v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;

    iget-boolean v3, p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->e:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_5

    iget-boolean v3, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->e:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v6, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v6, v4

    :goto_2
    iget-boolean v3, p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->f:Z

    if-nez v3, :cond_7

    iget-boolean v3, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->f:Z

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    move v7, v5

    goto :goto_4

    :cond_7
    :goto_3
    move v7, v4

    :goto_4
    iget-boolean v3, p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->g:Z

    if-nez v3, :cond_9

    iget-boolean v3, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;->g:Z

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    move v10, v5

    goto :goto_6

    :cond_9
    :goto_5
    move v10, v4

    :goto_6
    iget-boolean p2, p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    if-nez p2, :cond_b

    iget-boolean p2, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    if-eqz p2, :cond_a

    goto :goto_7

    :cond_a
    move p2, v5

    goto :goto_8

    :cond_b
    :goto_7
    move p2, v4

    :goto_8
    move-object v3, v1

    move v4, v6

    move v5, v7

    move v6, v10

    move v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$c;-><init>(ZZZZII)V

    move-object p2, v1

    .line 9
    :goto_9
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;)V
    .locals 5

    .line 10
    sget-boolean v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a:Lcom/android/tools/r8/graph/E0;

    iget-object v1, v1, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 11
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->f:Ljava/util/HashMap;

    sget-object v1, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;->e:Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->f:Ljava/util/HashMap;

    if-ne p2, v1, :cond_2

    move-object p2, v0

    goto :goto_3

    :cond_2
    if-ne v0, v1, :cond_3

    goto :goto_3

    .line 13
    :cond_3
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a(Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;)I

    move-result v1

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 14
    new-instance v4, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;

    iget-boolean p2, p2, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    if-nez p2, :cond_5

    iget-boolean p2, v0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$b;->a:Z

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p2, 0x1

    :goto_2
    invoke-direct {v4, v1, v3, p2}, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/m$a;-><init>(IIZ)V

    move-object p2, v4

    .line 15
    :goto_3
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/function/BiConsumer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->d:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 2
    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a:Lcom/android/tools/r8/graph/E0;

    invoke-interface {p1, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/function/BiConsumer;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/j1;

    iget-object v2, p0, Lcom/android/tools/r8/ir/desugar/desugaredlibrary/lint/n;->a:Lcom/android/tools/r8/graph/E0;

    invoke-interface {p1, v2, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
