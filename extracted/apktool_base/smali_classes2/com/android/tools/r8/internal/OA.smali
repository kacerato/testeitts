.class public Lcom/android/tools/r8/internal/OA;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/graph/j;

.field public b:Lcom/android/tools/r8/internal/Ef0;

.field public final c:Ljava/util/Set;

.field public final d:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/ns0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/OA;->c:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/tools/r8/internal/OA;->d:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/M2;Ljava/util/List;)V
    .locals 5

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/V2;

    .line 50
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/V2;

    .line 51
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/internal/V2;->a(Lcom/android/tools/r8/internal/V2;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .line 52
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/If;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported Machine specification for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    return-void
.end method

.method public static a(Ljava/util/HashMap;)V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 41
    new-instance v1, Lcom/android/tools/r8/internal/wP0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/wP0;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 42
    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lcom/android/tools/r8/internal/xP0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/xP0;-><init>(Ljava/util/Map;)V

    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 43
    new-instance p0, Lcom/android/tools/r8/internal/yP0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/yP0;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/IdentityHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/internal/V2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/eu;)V
    .locals 0

    .line 46
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p2, p3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/internal/V2;Lcom/android/tools/r8/internal/CU;)V
    .locals 1

    .line 44
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/oP0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/oP0;-><init>(Ljava/util/Map;Lcom/android/tools/r8/internal/V2;)V

    .line 45
    invoke-interface {p2, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/internal/V2;Lcom/android/tools/r8/internal/CU;)V
    .locals 0

    .line 53
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/CU;->g()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Map;Lcom/android/tools/r8/graph/M2;)Z
    .locals 0

    .line 48
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/util/HashMap;)Ljava/util/Set;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/tools/r8/internal/uP0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/uP0;-><init>(Ljava/util/Set;)V

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/IA;Ljava/lang/String;ZLjava/lang/String;)Lcom/android/tools/r8/internal/CU;
    .locals 10

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/internal/OA;->d:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "convert rewriting flags"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 86
    sget-boolean v0, Lcom/android/tools/r8/internal/CU;->s:Z

    .line 87
    new-instance v0, Lcom/android/tools/r8/internal/BU;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/BU;-><init>()V

    .line 88
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->b()Ljava/util/Map;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/android/tools/r8/internal/OA;->a:Lcom/android/tools/r8/graph/j;

    iget-object v4, p0, Lcom/android/tools/r8/internal/OA;->b:Lcom/android/tools/r8/internal/Ef0;

    .line 90
    sget v5, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v5, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 91
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v6, Lcom/android/tools/r8/internal/fm;

    invoke-direct {v6, v3, v4, v5}, Lcom/android/tools/r8/internal/fm;-><init>(Lcom/android/tools/r8/graph/d1;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/androidapi/f;)V

    .line 93
    invoke-virtual {v6, v1, v2}, Lcom/android/tools/r8/internal/fm;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 94
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->b()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/zP0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/zP0;-><init>(Lcom/android/tools/r8/internal/BU;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 95
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->a()Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/BP0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/BP0;-><init>(Lcom/android/tools/r8/internal/BU;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 96
    iget-object v1, p1, Lcom/android/tools/r8/internal/IA;->l:Lcom/android/tools/r8/internal/nC;

    .line 97
    new-instance v2, Lcom/android/tools/r8/internal/CP0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/CP0;-><init>(Lcom/android/tools/r8/internal/BU;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 98
    iget-object v1, p1, Lcom/android/tools/r8/internal/IA;->q:Lcom/android/tools/r8/internal/QC;

    .line 99
    new-instance v2, Lcom/android/tools/r8/internal/pP0;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/pP0;-><init>(Lcom/android/tools/r8/internal/BU;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 100
    new-instance v1, Lcom/android/tools/r8/internal/NA;

    iget-object v2, p0, Lcom/android/tools/r8/internal/OA;->a:Lcom/android/tools/r8/graph/j;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/NA;-><init>(Lcom/android/tools/r8/graph/j;)V

    new-instance v2, Lcom/android/tools/r8/internal/qP0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/qP0;-><init>(Lcom/android/tools/r8/internal/OA;)V

    .line 101
    invoke-virtual {v1, p1, v0, v2}, Lcom/android/tools/r8/internal/NA;->a(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/internal/BU;Ljava/util/function/BiConsumer;)V

    .line 102
    new-instance v1, Lcom/android/tools/r8/internal/LA;

    iget-object v2, p0, Lcom/android/tools/r8/internal/OA;->a:Lcom/android/tools/r8/graph/j;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/LA;-><init>(Lcom/android/tools/r8/graph/j;)V

    iget-object v2, p0, Lcom/android/tools/r8/internal/OA;->a:Lcom/android/tools/r8/graph/j;

    new-instance v3, Lcom/android/tools/r8/internal/qP0;

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/qP0;-><init>(Lcom/android/tools/r8/internal/OA;)V

    .line 103
    invoke-virtual {v1, p1, v2, v0, v3}, Lcom/android/tools/r8/internal/LA;->a(Lcom/android/tools/r8/internal/IA;Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/BU;Ljava/util/function/BiConsumer;)V

    .line 104
    new-instance v8, Lcom/android/tools/r8/internal/MA;

    iget-object v2, p0, Lcom/android/tools/r8/internal/OA;->a:Lcom/android/tools/r8/graph/j;

    move-object v1, v8

    move-object v3, v0

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/MA;-><init>(Lcom/android/tools/r8/graph/j;Lcom/android/tools/r8/internal/BU;Ljava/lang/String;ZLjava/lang/String;Lcom/android/tools/r8/internal/IA;)V

    new-instance p2, Lcom/android/tools/r8/internal/rP0;

    invoke-direct {p2, p0}, Lcom/android/tools/r8/internal/rP0;-><init>(Lcom/android/tools/r8/internal/OA;)V

    .line 105
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/MA;->a()V

    .line 106
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->g()Ljava/util/Map;

    move-result-object p3

    .line 107
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/M2;

    .line 108
    invoke-virtual {v8, p4}, Lcom/android/tools/r8/internal/MA;->d(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_1

    .line 109
    :cond_1
    iget-object p3, p1, Lcom/android/tools/r8/internal/IA;->i:Lcom/android/tools/r8/internal/nC;

    .line 110
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/M2;

    .line 111
    invoke-virtual {v8, p4}, Lcom/android/tools/r8/internal/MA;->d(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_2

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->c()Ljava/util/Map;

    move-result-object p3

    .line 113
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/M2;

    .line 114
    invoke-virtual {v8, p4}, Lcom/android/tools/r8/internal/MA;->d(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_3

    .line 115
    :cond_3
    iget-object p3, p1, Lcom/android/tools/r8/internal/IA;->j:Lcom/android/tools/r8/internal/nC;

    .line 116
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 117
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {v8, p4}, Lcom/android/tools/r8/internal/MA;->d(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_4

    .line 118
    :cond_4
    iget-object p3, p1, Lcom/android/tools/r8/internal/IA;->k:Lcom/android/tools/r8/internal/nC;

    .line 119
    invoke-interface {p3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 120
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/v2;->s0()Lcom/android/tools/r8/graph/M2;

    move-result-object p4

    invoke-virtual {v8, p4}, Lcom/android/tools/r8/internal/MA;->d(Lcom/android/tools/r8/graph/M2;)V

    goto :goto_5

    .line 121
    :cond_5
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->e()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {v8, p3}, Lcom/android/tools/r8/internal/MA;->a(Ljava/util/Map;)V

    .line 122
    iget-object p3, p1, Lcom/android/tools/r8/internal/IA;->i:Lcom/android/tools/r8/internal/nC;

    .line 123
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 124
    iget-object v1, p4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/MA;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 125
    iget-object v2, v8, Lcom/android/tools/r8/internal/MA;->b:Lcom/android/tools/r8/internal/BU;

    iget-object p4, p4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 126
    iget-object v2, v2, Lcom/android/tools/r8/internal/BU;->c:Ljava/util/IdentityHashMap;

    .line 127
    invoke-virtual {v2, p4, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 128
    :cond_6
    iget-object p3, p1, Lcom/android/tools/r8/internal/IA;->k:Lcom/android/tools/r8/internal/nC;

    .line 129
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/tools/r8/graph/A2;

    .line 130
    iget-object v1, p4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/internal/MA;->a(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 131
    iget-object v2, v8, Lcom/android/tools/r8/internal/MA;->b:Lcom/android/tools/r8/internal/BU;

    iget-object p4, p4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 132
    iget-object v2, v2, Lcom/android/tools/r8/internal/BU;->c:Ljava/util/IdentityHashMap;

    .line 133
    invoke-virtual {v2, p4, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 134
    :cond_7
    iget-object p3, p1, Lcom/android/tools/r8/internal/IA;->l:Lcom/android/tools/r8/internal/nC;

    .line 135
    invoke-virtual {v8, p3}, Lcom/android/tools/r8/internal/MA;->a(Lcom/android/tools/r8/internal/nC;)V

    .line 136
    invoke-virtual {v8, p2}, Lcom/android/tools/r8/internal/MA;->a(Ljava/util/function/BiConsumer;)V

    .line 137
    new-instance p2, Lcom/android/tools/r8/internal/QA;

    iget-object p3, p0, Lcom/android/tools/r8/internal/OA;->a:Lcom/android/tools/r8/graph/j;

    invoke-direct {p2, p3}, Lcom/android/tools/r8/internal/QA;-><init>(Lcom/android/tools/r8/graph/j;)V

    new-instance p3, Lcom/android/tools/r8/internal/qP0;

    invoke-direct {p3, p0}, Lcom/android/tools/r8/internal/qP0;-><init>(Lcom/android/tools/r8/internal/OA;)V

    .line 138
    new-instance p4, Ljava/util/IdentityHashMap;

    invoke-direct {p4}, Ljava/util/IdentityHashMap;-><init>()V

    .line 139
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->j()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/M2;

    .line 140
    new-instance v3, Lcom/android/tools/r8/internal/PA;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/PA;-><init>()V

    invoke-virtual {p4, v2, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 141
    :cond_8
    invoke-virtual {p2, p1, p4}, Lcom/android/tools/r8/internal/QA;->a(Lcom/android/tools/r8/internal/IA;Ljava/util/IdentityHashMap;)V

    .line 142
    invoke-static {p4}, Lcom/android/tools/r8/internal/QA;->a(Ljava/util/IdentityHashMap;)Ljava/util/LinkedHashMap;

    move-result-object p4

    .line 143
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->j()Ljava/util/Map;

    move-result-object v1

    .line 144
    invoke-virtual {p4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/PA;

    .line 145
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 146
    iget-object v5, v3, Lcom/android/tools/r8/internal/PA;->b:Ljava/util/ArrayList;

    .line 147
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_a
    :goto_a
    if-ge v7, v6, :cond_b

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/tools/r8/graph/M2;

    .line 148
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 149
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 150
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 151
    iget-object v3, v3, Lcom/android/tools/r8/internal/PA;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 152
    :cond_c
    invoke-static {p4, v0}, Lcom/android/tools/r8/internal/QA;->a(Ljava/util/LinkedHashMap;Lcom/android/tools/r8/internal/BU;)V

    .line 153
    iget-object p4, p2, Lcom/android/tools/r8/internal/QA;->c:Ljava/util/Set;

    const-string v1, "The following types to wrap are missing: "

    invoke-interface {p3, v1, p4}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    iget-object p2, p2, Lcom/android/tools/r8/internal/QA;->d:Ljava/util/Set;

    const-string p4, "The following methods cannot be handled by the wrappers due to their flags: "

    invoke-interface {p3, p4, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->c()Ljava/util/Map;

    move-result-object p2

    new-instance p3, Lcom/android/tools/r8/internal/sP0;

    invoke-direct {p3, p0, v0}, Lcom/android/tools/r8/internal/sP0;-><init>(Lcom/android/tools/r8/internal/OA;Lcom/android/tools/r8/internal/BU;)V

    .line 156
    invoke-interface {p2, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 157
    iget-object p2, p0, Lcom/android/tools/r8/internal/OA;->c:Ljava/util/Set;

    const-string p3, "Cannot register custom conversion due to missing type: "

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/internal/OA;->b(Ljava/lang/String;Ljava/util/Set;)V

    .line 158
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->d()Ljava/util/Set;

    move-result-object p2

    new-instance p3, Lcom/android/tools/r8/internal/tP0;

    invoke-direct {p3, v0}, Lcom/android/tools/r8/internal/tP0;-><init>(Lcom/android/tools/r8/internal/BU;)V

    invoke-interface {p2, p3}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 159
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/IA;->f()Ljava/util/Map;

    move-result-object p1

    new-instance p2, Lcom/android/tools/r8/internal/AP0;

    invoke-direct {p2, v0}, Lcom/android/tools/r8/internal/AP0;-><init>(Lcom/android/tools/r8/internal/BU;)V

    invoke-interface {p1, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 160
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/BU;->a()Lcom/android/tools/r8/internal/CU;

    move-result-object p1

    .line 161
    iget-object p2, p0, Lcom/android/tools/r8/internal/OA;->d:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p1
.end method

.method public a(Lcom/android/tools/r8/internal/iY;Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/internal/pY;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/OA;->d:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Legacy to human all API convert"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    iget-object v0, p2, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/OA;->b:Lcom/android/tools/r8/internal/Ef0;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->d()Lcom/android/tools/r8/synthesis/E;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/h;

    move-result-object p2

    .line 4
    sget-boolean v0, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/j;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/graph/j;-><init>(Lcom/android/tools/r8/graph/h;)V

    .line 6
    iput-object v0, p0, Lcom/android/tools/r8/internal/OA;->a:Lcom/android/tools/r8/graph/j;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iY;->d()Lcom/android/tools/r8/internal/SA;

    move-result-object p2

    .line 8
    new-instance v7, Lcom/android/tools/r8/internal/EU;

    .line 9
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/SA;->c()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/SA;->d()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/SA;->b()Ljava/lang/String;

    move-result-object v3

    .line 12
    iget-object v4, p2, Lcom/android/tools/r8/internal/SA;->d:Ljava/lang/String;

    .line 13
    iget-boolean v5, p2, Lcom/android/tools/r8/internal/SA;->e:Z

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/SA;->a()Ljava/util/List;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/EU;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 15
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/EU;->e()Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/EU;->c()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iY;->a()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, p2, v2, v0}, Lcom/android/tools/r8/internal/OA;->a(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iY;->c()Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p2, v4, v0}, Lcom/android/tools/r8/internal/OA;->a(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/iY;->b()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1, p2, v2, v0}, Lcom/android/tools/r8/internal/OA;->a(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    .line 20
    invoke-static {v1}, Lcom/android/tools/r8/internal/OA;->b(Ljava/util/HashMap;)Ljava/util/Set;

    move-result-object p2

    .line 21
    invoke-static {v3}, Lcom/android/tools/r8/internal/OA;->b(Ljava/util/HashMap;)Ljava/util/Set;

    move-result-object v0

    .line 22
    invoke-static {p1}, Lcom/android/tools/r8/internal/OA;->b(Ljava/util/HashMap;)Ljava/util/Set;

    move-result-object v2

    if-eqz p2, :cond_5

    .line 23
    const-string v4, "set2"

    if-eqz v0, :cond_4

    .line 24
    new-instance v5, Lcom/android/tools/r8/internal/Cl0;

    invoke-direct {v5, p2, v0}, Lcom/android/tools/r8/internal/Cl0;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 25
    invoke-static {v0, p2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_2

    .line 26
    new-instance v4, Lcom/android/tools/r8/internal/Cl0;

    invoke-direct {v4, p2, v2}, Lcom/android/tools/r8/internal/Cl0;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 27
    invoke-static {v2, p2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 28
    new-instance p2, Lcom/android/tools/r8/internal/Cl0;

    invoke-direct {p2, v2, v0}, Lcom/android/tools/r8/internal/Cl0;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 29
    invoke-static {v0, v2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 30
    invoke-static {v1}, Lcom/android/tools/r8/internal/OA;->a(Ljava/util/HashMap;)V

    .line 31
    invoke-static {v3}, Lcom/android/tools/r8/internal/OA;->a(Ljava/util/HashMap;)V

    .line 32
    invoke-static {p1}, Lcom/android/tools/r8/internal/OA;->a(Ljava/util/HashMap;)V

    .line 33
    new-instance p2, Lcom/android/tools/r8/internal/pY;

    .line 34
    invoke-direct {p2, v7, v1, p1, v3}, Lcom/android/tools/r8/internal/pY;-><init>(Lcom/android/tools/r8/internal/EU;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 35
    iget-object p1, p0, Lcom/android/tools/r8/internal/OA;->d:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-object p2

    .line 36
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/If;

    const-string p2, "Cannot have emulated interface split across flag types"

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "set1"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/android/tools/r8/internal/DA;Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/internal/xU;
    .locals 9

    .line 58
    iget-object v0, p0, Lcom/android/tools/r8/internal/OA;->d:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Human to machine convert"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 59
    iget-object v0, p2, Lcom/android/tools/r8/graph/x0;->d:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    iput-object v0, p0, Lcom/android/tools/r8/internal/OA;->b:Lcom/android/tools/r8/internal/Ef0;

    .line 60
    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->d()Lcom/android/tools/r8/synthesis/E;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/h;

    move-result-object v0

    .line 61
    sget-boolean v1, Lcom/android/tools/r8/graph/j;->i:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->h()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 62
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/tools/r8/graph/j;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/graph/j;-><init>(Lcom/android/tools/r8/graph/h;)V

    .line 63
    iput-object v1, p0, Lcom/android/tools/r8/internal/OA;->a:Lcom/android/tools/r8/graph/j;

    .line 64
    iget-boolean v0, p1, Lcom/android/tools/r8/internal/DA;->a:Z

    .line 65
    iget-object v1, p1, Lcom/android/tools/r8/internal/DA;->b:Lcom/android/tools/r8/internal/SA;

    .line 66
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/SA;->c()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    .line 67
    invoke-static {p2, v0, v1}, Lcom/android/tools/r8/internal/eS;->a(Lcom/android/tools/r8/graph/x0;ZLcom/android/tools/r8/internal/C2;)V

    .line 68
    iget-object p2, p1, Lcom/android/tools/r8/internal/DA;->c:Lcom/android/tools/r8/internal/IA;

    .line 69
    iget-object v0, p1, Lcom/android/tools/r8/internal/DA;->b:Lcom/android/tools/r8/internal/SA;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/SA;->d()Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-boolean v1, p1, Lcom/android/tools/r8/internal/DA;->a:Z

    .line 71
    iget-object v2, p1, Lcom/android/tools/r8/internal/DA;->b:Lcom/android/tools/r8/internal/SA;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/SA;->b()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/android/tools/r8/internal/OA;->a(Lcom/android/tools/r8/internal/IA;Ljava/lang/String;ZLjava/lang/String;)Lcom/android/tools/r8/internal/CU;

    move-result-object p2

    .line 73
    iget-object v0, p1, Lcom/android/tools/r8/internal/DA;->b:Lcom/android/tools/r8/internal/SA;

    .line 74
    new-instance v8, Lcom/android/tools/r8/internal/EU;

    .line 75
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/SA;->c()Lcom/android/tools/r8/internal/C2;

    move-result-object v2

    .line 76
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/SA;->d()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/SA;->b()Ljava/lang/String;

    move-result-object v4

    .line 78
    iget-object v5, v0, Lcom/android/tools/r8/internal/SA;->d:Ljava/lang/String;

    .line 79
    iget-boolean v6, v0, Lcom/android/tools/r8/internal/SA;->e:Z

    .line 80
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/SA;->a()Ljava/util/List;

    move-result-object v7

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/internal/EU;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    .line 81
    iget-object v0, p0, Lcom/android/tools/r8/internal/OA;->d:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 82
    new-instance v0, Lcom/android/tools/r8/internal/xU;

    .line 83
    iget-boolean p1, p1, Lcom/android/tools/r8/internal/DA;->a:Z

    .line 84
    invoke-direct {v0, p1, v8, p2}, Lcom/android/tools/r8/internal/xU;-><init>(ZLcom/android/tools/r8/internal/EU;Lcom/android/tools/r8/internal/CU;)V

    return-object v0
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/HashMap;
    .locals 8

    .line 54
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 55
    new-instance v7, Lcom/android/tools/r8/internal/vP0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, v6

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/vP0;-><init>(Lcom/android/tools/r8/internal/OA;Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-object v6
.end method

.method public final a(Lcom/android/tools/r8/internal/BU;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)V
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/android/tools/r8/internal/OA;->a:Lcom/android/tools/r8/graph/j;

    .line 163
    iget-object v1, p1, Lcom/android/tools/r8/internal/BU;->a:Ljava/util/IdentityHashMap;

    .line 164
    invoke-virtual {v1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/M2;

    if-nez v1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/android/tools/r8/internal/OA;->c:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v2

    filled-new-array {p2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 167
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    .line 168
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    iget-object v4, v4, Lcom/android/tools/r8/graph/u1;->o0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3, p3, v2, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 169
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    invoke-virtual {v3, p2, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 170
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v3

    .line 171
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v0

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->o0:Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v3, p3, v1, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p3

    .line 172
    new-instance v0, Lcom/android/tools/r8/internal/ui;

    invoke-direct {v0, p3, v2}, Lcom/android/tools/r8/internal/ui;-><init>(Lcom/android/tools/r8/graph/A2;Lcom/android/tools/r8/graph/A2;)V

    .line 173
    iget-object p1, p1, Lcom/android/tools/r8/internal/BU;->o:Lcom/android/tools/r8/internal/kC;

    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3

    .line 177
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/OA;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Specification conversion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 175
    new-instance p2, Lcom/android/tools/r8/graph/lh;

    invoke-direct {p2}, Lcom/android/tools/r8/graph/lh;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 176
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/OA;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final synthetic a(Ljava/util/Map;Ljava/lang/String;ZLjava/lang/String;Lcom/android/tools/r8/internal/V2;Lcom/android/tools/r8/internal/IA;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p6, p2, p3, p4}, Lcom/android/tools/r8/internal/OA;->a(Lcom/android/tools/r8/internal/IA;Ljava/lang/String;ZLjava/lang/String;)Lcom/android/tools/r8/internal/CU;

    move-result-object p2

    .line 57
    invoke-interface {p1, p5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/util/Set;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    new-instance p2, Lu/C1;

    invoke-direct {p2}, Lu/C1;-><init>()V

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/OA;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
