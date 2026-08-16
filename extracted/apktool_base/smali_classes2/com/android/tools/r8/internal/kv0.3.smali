.class public final Lcom/android/tools/r8/internal/kv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/jW;


# instance fields
.field public final b:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kv0;->b:Ljava/util/TreeMap;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/pv0;)Lcom/android/tools/r8/internal/kv0;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    if-eq p1, v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/pv0;->b:Ljava/util/TreeMap;

    .line 3
    invoke-virtual {p1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

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

    .line 4
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/mv0;

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/internal/kv0;->a(ILcom/android/tools/r8/internal/mv0;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final a(I)Lcom/android/tools/r8/internal/lv0;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/kv0;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/lv0;

    if-nez v0, :cond_1

    .line 6
    sget v0, Lcom/android/tools/r8/internal/mv0;->f:I

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/lv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lv0;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/internal/kv0;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final a()Lcom/android/tools/r8/internal/pv0;
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/android/tools/r8/internal/kv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 12
    iget-object v1, p0, Lcom/android/tools/r8/internal/kv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 13
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/lv0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lv0;->a()Lcom/android/tools/r8/internal/mv0;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/pv0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/pv0;-><init>(Ljava/util/TreeMap;)V

    return-object v1
.end method

.method public final a(II)V
    .locals 3

    if-lez p1, :cond_1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kv0;->a(I)Lcom/android/tools/r8/internal/lv0;

    move-result-object p1

    int-to-long v0, p2

    .line 16
    iget-object p2, p1, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 17
    iget-object v2, p2, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    if-nez v2, :cond_0

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iput-object v2, p2, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    .line 20
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 21
    iget-object p1, p1, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    .line 22
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 23
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field number."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(ILcom/android/tools/r8/internal/mv0;)V
    .locals 3

    const-string v0, " is not a valid field number."

    if-lez p1, :cond_2

    .line 24
    iget-object v1, p0, Lcom/android/tools/r8/internal/kv0;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/kv0;->a(I)Lcom/android/tools/r8/internal/lv0;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/lv0;->a(Lcom/android/tools/r8/internal/mv0;)Lcom/android/tools/r8/internal/lv0;

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/tools/r8/internal/kv0;->b:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget v1, Lcom/android/tools/r8/internal/mv0;->f:I

    .line 27
    new-instance v1, Lcom/android/tools/r8/internal/lv0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/lv0;-><init>()V

    .line 28
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/lv0;->a(Lcom/android/tools/r8/internal/mv0;)Lcom/android/tools/r8/internal/lv0;

    move-result-object p2

    .line 29
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 30
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 31
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(ILcom/android/tools/r8/internal/Be;)Z
    .locals 4

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 p1, p1, 0x7

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kv0;->a(I)Lcom/android/tools/r8/internal/lv0;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Be;->g()I

    move-result p2

    .line 33
    iget-object v0, p1, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 34
    iget-object v2, v0, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iput-object v2, v0, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    .line 37
    :cond_0
    iget-object p1, p1, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 38
    iget-object p1, p1, Lcom/android/tools/r8/internal/mv0;->b:Ljava/util/List;

    .line 39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 40
    :cond_1
    sget p1, Lcom/android/tools/r8/internal/MJ;->c:I

    .line 41
    new-instance p1, Lcom/android/tools/r8/internal/KJ;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/KJ;-><init>()V

    .line 42
    throw p1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 43
    :cond_3
    sget-object p1, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    .line 44
    new-instance p1, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    .line 45
    sget-object v2, Lcom/android/tools/r8/internal/vv;->e:Lcom/android/tools/r8/internal/vv;

    .line 46
    invoke-virtual {p2, v0, p1, v2}, Lcom/android/tools/r8/internal/Be;->a(ILcom/android/tools/r8/internal/jW;Lcom/android/tools/r8/internal/zv;)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kv0;->a(I)Lcom/android/tools/r8/internal/lv0;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object p1

    .line 48
    iget-object v0, p2, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 49
    iget-object v2, v0, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    if-nez v2, :cond_4

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iput-object v2, v0, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    .line 52
    :cond_4
    iget-object p2, p2, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 53
    iget-object p2, p2, Lcom/android/tools/r8/internal/mv0;->e:Ljava/util/List;

    .line 54
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 55
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kv0;->a(I)Lcom/android/tools/r8/internal/lv0;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Be;->d()Lcom/android/tools/r8/internal/i8;

    move-result-object p2

    .line 56
    iget-object v0, p1, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 57
    iget-object v2, v0, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    if-nez v2, :cond_6

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iput-object v2, v0, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    .line 60
    :cond_6
    iget-object p1, p1, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 61
    iget-object p1, p1, Lcom/android/tools/r8/internal/mv0;->d:Ljava/util/List;

    .line 62
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 63
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kv0;->a(I)Lcom/android/tools/r8/internal/lv0;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Be;->h()J

    move-result-wide v2

    .line 64
    iget-object p2, p1, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 65
    iget-object v0, p2, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    if-nez v0, :cond_8

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iput-object v0, p2, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    .line 68
    :cond_8
    iget-object p1, p1, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 69
    iget-object p1, p1, Lcom/android/tools/r8/internal/mv0;->c:Ljava/util/List;

    .line 70
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 71
    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/kv0;->a(I)Lcom/android/tools/r8/internal/lv0;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/Be;->k()J

    move-result-wide v2

    .line 72
    iget-object p2, p1, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 73
    iget-object v0, p2, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    if-nez v0, :cond_a

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iput-object v0, p2, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    .line 76
    :cond_a
    iget-object p1, p1, Lcom/android/tools/r8/internal/lv0;->a:Lcom/android/tools/r8/internal/mv0;

    .line 77
    iget-object p1, p1, Lcom/android/tools/r8/internal/mv0;->a:Ljava/util/List;

    .line 78
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1
.end method

.method public final bridge synthetic build()Lcom/android/tools/r8/internal/kW;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/kv0;->a()Lcom/android/tools/r8/internal/pv0;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    new-instance v0, Lcom/android/tools/r8/internal/kv0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kv0;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/kv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

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

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/lv0;

    iget-object v4, v0, Lcom/android/tools/r8/internal/kv0;->b:Ljava/util/TreeMap;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/lv0;->clone()Lcom/android/tools/r8/internal/lv0;

    move-result-object v2

    invoke-virtual {v4, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getDefaultInstanceForType()Lcom/android/tools/r8/internal/kW;
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/pv0;->c:Lcom/android/tools/r8/internal/pv0;

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final mergeFrom(Lcom/android/tools/r8/internal/Be;Lcom/android/tools/r8/internal/zv;)Lcom/android/tools/r8/internal/jW;
    .locals 0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Be;->s()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/kv0;->a(ILcom/android/tools/r8/internal/Be;)Z

    move-result p2

    if-nez p2, :cond_0

    :cond_1
    return-object p0
.end method
