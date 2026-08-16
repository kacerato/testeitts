.class public final Lcom/android/tools/r8/naming/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic g:Z = true


# instance fields
.field public a:Ljava/util/HashMap;

.field public final b:Ljava/util/ArrayList;

.field public c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/s;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/s;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/s;->c:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/s;->d:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/s;->e:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/naming/s;->f:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/android/tools/r8/naming/l;)Lcom/android/tools/r8/naming/u;
    .locals 0

    .line 64
    new-instance p1, Lcom/android/tools/r8/naming/u;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/naming/u;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static a(Lcom/android/tools/r8/internal/WE;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 61
    invoke-interface {p0, p2}, Lcom/android/tools/r8/internal/NE;->a(I)Z

    .line 62
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/tools/r8/internal/K;->b(II)I

    return-void
.end method

.method public static a(Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/r;)V
    .locals 1

    .line 20
    iget-object p0, p0, Lcom/android/tools/r8/naming/s;->e:Ljava/util/HashMap;

    .line 21
    iget-object v0, p1, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-nez p0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/android/tools/r8/naming/g4;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/naming/g4;-><init>(Lcom/android/tools/r8/naming/r;)V

    invoke-interface {p0, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/naming/t;Lcom/android/tools/r8/internal/WE;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1

    .line 57
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance v0, Lcom/android/tools/r8/naming/h4;

    invoke-direct {v0, p1, p3}, Lcom/android/tools/r8/naming/h4;-><init>(Lcom/android/tools/r8/internal/WE;Ljava/lang/Integer;)V

    .line 58
    invoke-virtual {p0, p2, v0}, Lcom/android/tools/r8/naming/t;->a(ILjava/util/function/Consumer;)V

    return-void
.end method

.method public static b(Ljava/util/Map;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/TypeReference;
    .locals 1

    if-eqz p1, :cond_5

    .line 11
    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->asArray()Lcom/android/tools/r8/references/ArrayReference;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/android/tools/r8/references/ArrayReference;->getBaseType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/tools/r8/naming/s;->b(Ljava/util/Map;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p0

    .line 15
    invoke-virtual {p1}, Lcom/android/tools/r8/references/ArrayReference;->getDimensions()I

    move-result p1

    .line 16
    invoke-static {p0, p1}, Lcom/android/tools/r8/references/Reference;->array(Lcom/android/tools/r8/references/TypeReference;I)Lcom/android/tools/r8/references/ArrayReference;

    move-result-object p0

    return-object p0

    .line 17
    :cond_1
    sget-boolean v0, Lcom/android/tools/r8/naming/s;->g:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->isClass()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 18
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_4

    return-object p1

    .line 19
    :cond_4
    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->classFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_1
    return-object p1
.end method

.method public static b(Lcom/android/tools/r8/naming/r;Lcom/android/tools/r8/naming/V$c;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    instance-of v0, p1, Lcom/android/tools/r8/naming/V$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lcom/android/tools/r8/naming/r;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->a()Lcom/android/tools/r8/naming/V$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/naming/r;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/android/tools/r8/naming/r;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/tools/r8/naming/V$c;->b()Lcom/android/tools/r8/naming/V$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/naming/u;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/tools/r8/naming/s;->d:Ljava/util/HashMap;

    new-instance v1, Lcom/android/tools/r8/naming/l;

    invoke-direct {v1, p1, p2}, Lcom/android/tools/r8/naming/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/tools/r8/naming/b4;

    invoke-direct {p1, p3}, Lcom/android/tools/r8/naming/b4;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/u;

    return-object p1
.end method

.method public final synthetic a(Ljava/util/Map;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/TypeReference;
    .locals 0

    .line 65
    invoke-static {p1, p2}, Lcom/android/tools/r8/naming/s;->b(Ljava/util/Map;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 1

    .line 66
    new-instance v0, Lcom/android/tools/r8/naming/d4;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/naming/d4;-><init>(Lcom/android/tools/r8/naming/s;Ljava/util/Map;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/naming/r;Lcom/android/tools/r8/naming/V$c;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/naming/s;->e:Ljava/util/HashMap;

    .line 25
    iget-object p1, p1, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    .line 26
    new-instance v1, Lcom/android/tools/r8/naming/f4;

    invoke-direct {v1}, Lcom/android/tools/r8/naming/f4;-><init>()V

    invoke-static {v1}, Lcom/android/tools/r8/internal/Ky;->a(Ljava/util/function/Supplier;)Ljava/util/function/Function;

    move-result-object v1

    .line 27
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 28
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/b;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v2, p1, Lcom/android/tools/r8/naming/s;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/naming/r;

    .line 6
    iget-object v5, v3, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v5, p0, Lcom/android/tools/r8/naming/s;->a:Ljava/util/HashMap;

    iget-object v6, v3, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/r;

    if-eqz v5, :cond_0

    .line 8
    invoke-static {p1, v5}, Lcom/android/tools/r8/naming/s;->a(Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/r;)V

    .line 9
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/naming/r;->a(Lcom/android/tools/r8/naming/r;)Lcom/android/tools/r8/naming/r;

    move-result-object v3

    .line 10
    :cond_0
    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/naming/s;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/naming/r;

    .line 14
    invoke-static {p1, v4}, Lcom/android/tools/r8/naming/s;->a(Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/r;)V

    .line 15
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/naming/r;

    if-nez v5, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    new-instance p1, Lcom/android/tools/r8/naming/MappingComposeException;

    .line 17
    iget-object v0, v4, Lcom/android/tools/r8/naming/r;->a:Ljava/lang/String;

    .line 18
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/naming/b;->b(Ljava/lang/String;)Lcom/android/tools/r8/naming/k;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/naming/k;->a:Ljava/lang/String;

    iget-object v1, v4, Lcom/android/tools/r8/naming/r;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate class mapping. Both \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' and \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' maps to \'"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/tools/r8/naming/MappingComposeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    iput-object v1, p0, Lcom/android/tools/r8/naming/s;->a:Ljava/util/HashMap;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/naming/s;Ljava/util/Map;Ljava/util/Map;Lcom/android/tools/r8/naming/l;Lcom/android/tools/r8/internal/M40;)V
    .locals 4

    .line 33
    iget-object p1, p1, Lcom/android/tools/r8/naming/s;->d:Ljava/util/HashMap;

    .line 34
    invoke-virtual {p1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/naming/u;

    .line 35
    iget-object v0, p5, Lcom/android/tools/r8/internal/M40;->b:Lcom/android/tools/r8/references/MethodReference;

    .line 36
    invoke-virtual {v0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 37
    iget-object v0, p1, Lcom/android/tools/r8/naming/u;->a:Ljava/util/List;

    .line 38
    invoke-static {v0}, Lcom/android/tools/r8/naming/t;->a(Ljava/util/List;)Lcom/android/tools/r8/naming/t;

    move-result-object v0

    .line 39
    new-instance v1, Lcom/android/tools/r8/internal/WE;

    const/16 v2, 0x10

    .line 40
    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/WE;-><init>(I)V

    .line 41
    iget-object v2, p5, Lcom/android/tools/r8/internal/M40;->a:Lcom/android/tools/r8/internal/WE;

    .line 42
    new-instance v3, Lcom/android/tools/r8/naming/a4;

    invoke-direct {v3, v0, v1}, Lcom/android/tools/r8/naming/a4;-><init>(Lcom/android/tools/r8/naming/t;Lcom/android/tools/r8/internal/WE;)V

    .line 43
    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 44
    iput-object v1, p5, Lcom/android/tools/r8/internal/M40;->a:Lcom/android/tools/r8/internal/WE;

    .line 45
    iget-object v0, p1, Lcom/android/tools/r8/naming/u;->b:Ljava/lang/String;

    .line 46
    :cond_0
    iget-object p1, p5, Lcom/android/tools/r8/internal/M40;->b:Lcom/android/tools/r8/references/MethodReference;

    .line 47
    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/tools/r8/naming/s;->b(Ljava/util/Map;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/tools/r8/references/TypeReference;->asClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/naming/s;->a(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    .line 49
    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/tools/r8/naming/s;->b(Ljava/util/Map;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p1

    .line 50
    invoke-static {v1, v0, v2, p1}, Lcom/android/tools/r8/references/Reference;->method(Lcom/android/tools/r8/references/ClassReference;Ljava/lang/String;Ljava/util/List;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/MethodReference;

    move-result-object p1

    .line 51
    iput-object p1, p5, Lcom/android/tools/r8/internal/M40;->b:Lcom/android/tools/r8/references/MethodReference;

    .line 52
    new-instance p1, Lcom/android/tools/r8/naming/l;

    .line 53
    invoke-interface {v1}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object p2

    .line 54
    iget-object p4, p4, Lcom/android/tools/r8/naming/l;->b:Ljava/lang/String;

    .line 55
    invoke-direct {p1, p2, p4}, Lcom/android/tools/r8/naming/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {p3, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/util/Map;Lcom/android/tools/r8/internal/Ek0;)V
    .locals 1

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    iget-object v0, p2, Lcom/android/tools/r8/internal/Ek0;->a:Lcom/android/tools/r8/references/ClassReference;

    .line 31
    invoke-static {p1, v0}, Lcom/android/tools/r8/naming/s;->b(Ljava/util/Map;Lcom/android/tools/r8/references/TypeReference;)Lcom/android/tools/r8/references/TypeReference;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/references/TypeReference;->asClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    .line 32
    iput-object p1, p2, Lcom/android/tools/r8/internal/Ek0;->a:Lcom/android/tools/r8/references/ClassReference;

    return-void
.end method

.method public final b(Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/b;)V
    .locals 3

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/naming/b;->d()Lcom/android/tools/r8/internal/g6;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/g6;->b:Ljava/util/Map;

    .line 8
    iget-object v1, p0, Lcom/android/tools/r8/naming/s;->c:Ljava/util/HashMap;

    new-instance v2, Lcom/android/tools/r8/naming/e4;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/tools/r8/naming/e4;-><init>(Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/s;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/naming/s;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 10
    iput-object v0, p0, Lcom/android/tools/r8/naming/s;->c:Ljava/util/HashMap;

    return-void
.end method

.method public final c(Lcom/android/tools/r8/naming/s;Lcom/android/tools/r8/naming/b;)V
    .locals 5

    invoke-virtual {p2}, Lcom/android/tools/r8/naming/b;->d()Lcom/android/tools/r8/internal/g6;

    move-result-object p2

    iget-object p2, p2, Lcom/android/tools/r8/internal/g6;->b:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/tools/r8/naming/s;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/internal/Fk0;

    iget-object v3, v3, Lcom/android/tools/r8/internal/Fk0;->a:Ljava/util/AbstractCollection;

    new-instance v4, Lcom/android/tools/r8/naming/c4;

    invoke-direct {v4, p0, p2}, Lcom/android/tools/r8/naming/c4;-><init>(Lcom/android/tools/r8/naming/s;Ljava/util/Map;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/naming/s;->b:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/tools/r8/naming/s;->b:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
