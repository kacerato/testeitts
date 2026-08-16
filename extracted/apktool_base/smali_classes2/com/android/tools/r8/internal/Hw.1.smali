.class public final Lcom/android/tools/r8/internal/Hw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/android/tools/r8/internal/Vm0;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    sget v0, Lcom/android/tools/r8/internal/in0;->h:I

    new-instance v0, Lcom/android/tools/r8/internal/Vm0;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Vm0;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/Hw;->b:Z

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-nez p1, :cond_0

    return-object p1

    .line 1
    :cond_0
    check-cast p0, Lcom/android/tools/r8/internal/Ol;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->g()Lcom/android/tools/r8/internal/Vx0;

    move-result-object v0

    sget-object v1, Lcom/android/tools/r8/internal/Vx0;->j:Lcom/android/tools/r8/internal/Vx0;

    if-ne v0, v1, :cond_7

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 3
    instance-of p0, p1, Ljava/util/List;

    if-eqz p0, :cond_5

    .line 4
    move-object p0, p1

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 6
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 7
    instance-of v2, v1, Lcom/android/tools/r8/internal/jW;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/tools/r8/internal/jW;

    invoke-interface {v2}, Lcom/android/tools/r8/internal/jW;->build()Lcom/android/tools/r8/internal/kW;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eq v2, v1, :cond_3

    if-ne p0, p1, :cond_2

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p0, v1

    .line 9
    :cond_2
    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-object p0

    .line 10
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Repeated field should contains a List but actually contains type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :cond_6
    instance-of p0, p1, Lcom/android/tools/r8/internal/jW;

    if-eqz p0, :cond_7

    check-cast p1, Lcom/android/tools/r8/internal/jW;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/jW;->build()Lcom/android/tools/r8/internal/kW;

    move-result-object p0

    return-object p0

    :cond_7
    return-object p1
.end method

.method public static b(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/android/tools/r8/internal/Ol;->n:[Lcom/android/tools/r8/internal/Tx0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, v0, v1

    invoke-static {v1, p1}, Lcom/android/tools/r8/internal/Kw;->b(Lcom/android/tools/r8/internal/Tx0;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v1, v0, v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/Tx0;->b:Lcom/android/tools/r8/internal/Vx0;

    sget-object v2, Lcom/android/tools/r8/internal/Vx0;->j:Lcom/android/tools/r8/internal/Vx0;

    if-ne v1, v2, :cond_0

    instance-of v1, p1, Lcom/android/tools/r8/internal/jW;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Ol;->c:Lcom/android/tools/r8/internal/Ek;

    iget v2, v2, Lcom/android/tools/r8/internal/Ek;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/tools/r8/internal/Ol;->h:Lcom/android/tools/r8/internal/Nl;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget-object p0, v0, p0

    iget-object p0, p0, Lcom/android/tools/r8/internal/Tx0;->b:Lcom/android/tools/r8/internal/Vx0;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 13
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Hw;->b:Z

    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    const/4 v1, 0x1

    .line 15
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Kw;->a(Lcom/android/tools/r8/internal/in0;Z)Lcom/android/tools/r8/internal/Vm0;

    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    .line 17
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/Hw;->b:Z

    :cond_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)V
    .locals 6

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Hw;->a()V

    .line 19
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 20
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    check-cast p2, Ljava/util/List;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    .line 23
    invoke-static {p1, v4}, Lcom/android/tools/r8/internal/Hw;->b(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)V

    .line 24
    iget-boolean v5, p0, Lcom/android/tools/r8/internal/Hw;->c:Z

    if-nez v5, :cond_1

    instance-of v4, v4, Lcom/android/tools/r8/internal/jW;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v2

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v1

    :goto_2
    iput-boolean v4, p0, Lcom/android/tools/r8/internal/Hw;->c:Z

    goto :goto_0

    :cond_2
    move-object p2, v0

    goto :goto_3

    .line 25
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_4
    invoke-static {p1, p2}, Lcom/android/tools/r8/internal/Hw;->b(Lcom/android/tools/r8/internal/Ol;Ljava/lang/Object;)V

    .line 27
    :goto_3
    iget-boolean v0, p0, Lcom/android/tools/r8/internal/Hw;->c:Z

    if-nez v0, :cond_6

    instance-of v0, p2, Lcom/android/tools/r8/internal/jW;

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :cond_6
    :goto_4
    iput-boolean v1, p0, Lcom/android/tools/r8/internal/Hw;->c:Z

    .line 28
    iget-object v0, p0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map$Entry;)V
    .locals 4

    .line 29
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Iw;

    .line 30
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 31
    check-cast v0, Lcom/android/tools/r8/internal/Ol;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 33
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Hw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 36
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    .line 37
    invoke-static {v2}, Lcom/android/tools/r8/internal/Kw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 38
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ol;->g()Lcom/android/tools/r8/internal/Vx0;

    move-result-object v1

    sget-object v2, Lcom/android/tools/r8/internal/Vx0;->j:Lcom/android/tools/r8/internal/Vx0;

    if-ne v1, v2, :cond_5

    .line 41
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/in0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 42
    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/Hw;->a(Lcom/android/tools/r8/internal/Iw;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 43
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    .line 44
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 45
    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 46
    :cond_3
    instance-of v2, v1, Lcom/android/tools/r8/internal/jW;

    if-eqz v2, :cond_4

    .line 47
    check-cast v1, Lcom/android/tools/r8/internal/jW;

    check-cast p1, Lcom/android/tools/r8/internal/kW;

    .line 48
    check-cast v1, Lcom/android/tools/r8/internal/eW;

    check-cast p1, Lcom/android/tools/r8/internal/fW;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/eW;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;

    return-void

    .line 49
    :cond_4
    check-cast v1, Lcom/android/tools/r8/internal/kW;

    .line 50
    invoke-interface {v1}, Lcom/android/tools/r8/internal/kW;->toBuilder()Lcom/android/tools/r8/internal/jW;

    move-result-object v1

    check-cast p1, Lcom/android/tools/r8/internal/kW;

    .line 51
    check-cast v1, Lcom/android/tools/r8/internal/eW;

    check-cast p1, Lcom/android/tools/r8/internal/fW;

    invoke-interface {v1, p1}, Lcom/android/tools/r8/internal/eW;->mergeFrom(Lcom/android/tools/r8/internal/fW;)Lcom/android/tools/r8/internal/eW;

    move-result-object p1

    .line 52
    invoke-interface {p1}, Lcom/android/tools/r8/internal/jW;->build()Lcom/android/tools/r8/internal/kW;

    move-result-object p1

    .line 53
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 54
    :cond_5
    iget-object v1, p0, Lcom/android/tools/r8/internal/Hw;->a:Lcom/android/tools/r8/internal/Vm0;

    .line 55
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kw;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 56
    invoke-virtual {v1, v0, p1}, Lcom/android/tools/r8/internal/in0;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
