.class public abstract Lcom/android/tools/r8/internal/m80;
.super Lcom/android/tools/r8/internal/Vn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/internal/Vn<",
        "Lcom/android/tools/r8/graph/H5;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/android/tools/r8/internal/k80;

.field public static final synthetic e:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/k80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/k80;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/Vn;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/Vn;-><init>(I)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/m80;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/l80;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/l80;-><init>(I)V

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/Yx;)Lcom/android/tools/r8/internal/m80;
    .locals 2

    .line 3
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/graph/uc;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/uc;-><init>(Lcom/android/tools/r8/internal/m80;)V

    invoke-interface {p0, v1}, Lcom/android/tools/r8/internal/Yx;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/O5;Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    .line 28
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/O5;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result p0

    return p0
.end method

.method public static c()Lcom/android/tools/r8/internal/m80;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/l80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/l80;-><init>()V

    return-object v0
.end method

.method public static d()Lcom/android/tools/r8/internal/m80;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/j80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j80;-><init>()V

    return-object v0
.end method

.method public static k(I)Lcom/android/tools/r8/internal/m80;
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/l80;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/l80;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/O5;)Lcom/android/tools/r8/internal/m80;
    .locals 1

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/Uj1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Uj1;-><init>(Lcom/android/tools/r8/graph/O5;)V

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Vn;->removeIf(Ljava/util/function/Predicate;)Z

    return-object p0
.end method

.method public a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/internal/m80;
    .locals 9

    .line 5
    invoke-static {}, Lcom/android/tools/r8/internal/Hz;->g()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H5;

    .line 8
    invoke-virtual {v5, p1, p2, v0}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Hz;Lcom/android/tools/r8/internal/Hz;)Lcom/android/tools/r8/graph/H5;

    move-result-object v6

    if-nez v6, :cond_4

    .line 9
    sget-boolean v6, Lcom/android/tools/r8/internal/m80;->e:Z

    if-nez v6, :cond_2

    .line 10
    instance-of v6, p2, Lcom/android/tools/r8/internal/Nu;

    if-eqz v6, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_2
    :goto_1
    if-nez v3, :cond_0

    if-nez v4, :cond_3

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :cond_3
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-ne v6, v5, :cond_5

    if-eqz v3, :cond_0

    .line 14
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_0

    :cond_5
    if-nez v3, :cond_7

    .line 15
    iget-object v3, p0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    .line 16
    new-instance v7, Lcom/android/tools/r8/internal/l80;

    invoke-direct {v7, v3}, Lcom/android/tools/r8/internal/l80;-><init>(I)V

    .line 17
    new-instance v3, Lcom/android/tools/r8/graph/uc;

    invoke-direct {v3, v7}, Lcom/android/tools/r8/graph/uc;-><init>(Lcom/android/tools/r8/internal/m80;)V

    new-instance v8, Lcom/android/tools/r8/internal/Vj1;

    invoke-direct {v8, v5}, Lcom/android/tools/r8/internal/Vj1;-><init>(Lcom/android/tools/r8/graph/H5;)V

    .line 18
    invoke-static {p0, v3, v8}, Lcom/android/tools/r8/internal/Ye;->a(Lcom/android/tools/r8/internal/m80;Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    if-eqz v4, :cond_6

    .line 19
    invoke-virtual {v7, v4}, Lcom/android/tools/r8/internal/Vn;->removeAll(Ljava/util/Collection;)Z

    move-object v4, v2

    :cond_6
    move-object v3, v7

    .line 20
    :cond_7
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_a

    .line 21
    iget-object p1, p0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    .line 22
    iget-object p2, v3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    if-ge p2, p1, :cond_9

    .line 23
    iget-object p1, v3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    .line 24
    new-instance p2, Ljava/util/IdentityHashMap;

    invoke-direct {p2, p1}, Ljava/util/IdentityHashMap;-><init>(I)V

    .line 25
    iget-object p1, v3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 26
    iput-object p2, v3, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    :cond_9
    return-object v3

    :cond_a
    if-eqz v4, :cond_b

    .line 27
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/internal/Vn;->removeAll(Ljava/util/Collection;)Z

    :cond_b
    return-object p0
.end method

.method public j(I)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Vn;->a()Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
