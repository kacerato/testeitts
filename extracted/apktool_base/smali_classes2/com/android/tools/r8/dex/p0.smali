.class public final Lcom/android/tools/r8/dex/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/dex/p0;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/tools/r8/dex/p0;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/H2;)I
    .locals 2

    .line 13
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 14
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 p2, 0x2e

    .line 15
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 16
    invoke-virtual {p0, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    if-ne p2, v1, :cond_0

    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    if-ne p2, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-virtual {p0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_3

    return p2

    .line 21
    :cond_3
    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/qo0;)Lcom/android/tools/r8/dex/p0;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/dex/p0;->a(Ljava/util/IdentityHashMap;)Ljava/util/Comparator;

    move-result-object p1

    .line 2
    invoke-static {p2}, Lcom/android/tools/r8/dex/p0;->a(Lcom/android/tools/r8/internal/qo0;)Ljava/util/function/Predicate;

    move-result-object p2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H2;

    .line 6
    invoke-interface {p2, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 10
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 11
    new-instance p0, Lcom/android/tools/r8/dex/p0;

    invoke-direct {p0, v0, v1}, Lcom/android/tools/r8/dex/p0;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public static a(Ljava/util/IdentityHashMap;)Ljava/util/Comparator;
    .locals 1

    .line 12
    new-instance v0, Lu/E1;

    invoke-direct {v0, p0}, Lu/E1;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/internal/qo0;)Ljava/util/function/Predicate;
    .locals 1

    .line 22
    new-instance v0, Lu/D1;

    invoke-direct {v0, p0}, Lu/D1;-><init>(Lcom/android/tools/r8/internal/qo0;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/qo0;Lcom/android/tools/r8/graph/H2;)Z
    .locals 0

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/qo0;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result p0

    return p0
.end method
