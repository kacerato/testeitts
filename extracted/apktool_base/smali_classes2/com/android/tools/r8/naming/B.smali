.class public final Lcom/android/tools/r8/naming/B;
.super Lcom/android/tools/r8/naming/C;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final d:Lcom/android/tools/r8/naming/Q0;

.field public final e:Lcom/android/tools/r8/naming/m0;

.field public final f:Ljava/util/function/BiPredicate;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/naming/Q0;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/naming/Q0;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 2
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/tools/r8/naming/B;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;Lcom/android/tools/r8/naming/Q0;Ljava/util/IdentityHashMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;Lcom/android/tools/r8/naming/Q0;Ljava/util/IdentityHashMap;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p4}, Lcom/android/tools/r8/naming/C;-><init>(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;)V

    .line 4
    iput-object p3, p0, Lcom/android/tools/r8/naming/B;->d:Lcom/android/tools/r8/naming/Q0;

    .line 5
    iput-object p2, p0, Lcom/android/tools/r8/naming/B;->e:Lcom/android/tools/r8/naming/m0;

    .line 6
    new-instance p1, Lcom/android/tools/r8/naming/X0;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/naming/X0;-><init>(Lcom/android/tools/r8/naming/Q0;)V

    iput-object p1, p0, Lcom/android/tools/r8/naming/B;->f:Ljava/util/function/BiPredicate;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/Q0;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/F5;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/graph/l1;

    iget-object p2, p2, Lcom/android/tools/r8/graph/l1;->i:Lcom/android/tools/r8/graph/M2;

    .line 2
    iget-object p2, p0, Lcom/android/tools/r8/naming/C;->b:Lcom/android/tools/r8/graph/y;

    .line 3
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 5
    check-cast p2, Lcom/android/tools/r8/naming/P0;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p2, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/L2;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p2, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/graph/L2;

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/naming/Q0;->d:Lcom/android/tools/r8/naming/Q0;

    if-nez p2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, p2, Lcom/android/tools/r8/naming/C;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 10
    iget-object p2, p2, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 11
    check-cast p2, Lcom/android/tools/r8/naming/P0;

    if-nez p2, :cond_4

    :goto_1
    move-object v1, v0

    goto :goto_2

    .line 12
    :cond_4
    iget-object v1, p2, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/L2;

    if-eqz v1, :cond_5

    goto :goto_2

    .line 13
    :cond_5
    iget-object p2, p2, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/tools/r8/graph/L2;

    :goto_2
    const/4 p2, 0x1

    if-nez v1, :cond_a

    .line 14
    iget-object p0, p0, Lcom/android/tools/r8/naming/Q0;->d:Lcom/android/tools/r8/naming/Q0;

    if-nez p0, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget-object v1, p0, Lcom/android/tools/r8/naming/C;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    .line 16
    iget-object p0, p0, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, v1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/tools/r8/naming/P0;

    if-nez p0, :cond_7

    goto :goto_3

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    if-eqz v0, :cond_8

    goto :goto_3

    .line 19
    :cond_8
    iget-object p0, p0, Lcom/android/tools/r8/naming/P0;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/graph/L2;

    :goto_3
    if-eqz v0, :cond_9

    goto :goto_4

    :cond_9
    const/4 p0, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    move p0, p2

    :goto_5
    xor-int/2addr p0, p2

    return p0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    .line 20
    new-instance v0, Lcom/android/tools/r8/naming/A;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/naming/A;-><init>(Lcom/android/tools/r8/naming/B;)V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 7

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/naming/C;->c:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/M2;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/naming/A;

    new-instance v4, Lcom/android/tools/r8/naming/A;

    iget-object v5, v2, Lcom/android/tools/r8/naming/A;->d:Lcom/android/tools/r8/naming/B;

    iget v6, v2, Lcom/android/tools/r8/naming/A;->c:I

    iget v2, v2, Lcom/android/tools/r8/naming/A;->b:I

    invoke-direct {v4, v5, v6, v2}, Lcom/android/tools/r8/naming/A;-><init>(Lcom/android/tools/r8/naming/B;II)V

    invoke-virtual {v0, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/tools/r8/naming/B;

    iget-object v2, p0, Lcom/android/tools/r8/naming/C;->b:Lcom/android/tools/r8/graph/y;

    iget-object v3, p0, Lcom/android/tools/r8/naming/B;->e:Lcom/android/tools/r8/naming/m0;

    iget-object v4, p0, Lcom/android/tools/r8/naming/B;->d:Lcom/android/tools/r8/naming/Q0;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/tools/r8/naming/B;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/naming/m0;Lcom/android/tools/r8/naming/Q0;Ljava/util/IdentityHashMap;)V

    return-object v1
.end method
