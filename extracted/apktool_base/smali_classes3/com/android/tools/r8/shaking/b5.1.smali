.class public Lcom/android/tools/r8/shaking/b5;
.super Lcom/android/tools/r8/shaking/t;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/shaking/t;-><init>(Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/position/Position;)Ljava/lang/String;
    .locals 2

    .line 71
    instance-of v0, p0, Lcom/android/tools/r8/position/TextRange;

    if-eqz v0, :cond_0

    .line 72
    check-cast p0, Lcom/android/tools/r8/position/TextRange;

    invoke-virtual {p0}, Lcom/android/tools/r8/position/TextRange;->getStart()Lcom/android/tools/r8/position/TextPosition;

    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/android/tools/r8/position/TextPosition;->getLine()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/tools/r8/position/TextPosition;->getColumn()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 74
    :cond_0
    invoke-interface {p0}, Lcom/android/tools/r8/position/Position;->getDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz;Lcom/android/tools/r8/shaking/Z4;)V
    .locals 4

    .line 61
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/Dz;->b()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 62
    :goto_0
    iget v2, p2, Lcom/android/tools/r8/shaking/Z4;->b:I

    const-string v3, "  "

    if-ge v1, v2, :cond_0

    .line 63
    iget-object v2, p2, Lcom/android/tools/r8/shaking/Z4;->a:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p2, Lcom/android/tools/r8/shaking/Z4;->a:Ljava/io/PrintStream;

    const-string v2, "|- "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 65
    iget-object v1, p2, Lcom/android/tools/r8/shaking/Z4;->a:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/android/tools/r8/shaking/b5;->d(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/zq0;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move v1, v0

    .line 67
    :goto_2
    iget v2, p2, Lcom/android/tools/r8/shaking/Z4;->b:I

    if-ge v1, v2, :cond_1

    .line 68
    iget-object v2, p2, Lcom/android/tools/r8/shaking/Z4;->a:Ljava/io/PrintStream;

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 69
    :cond_1
    iget-object v1, p2, Lcom/android/tools/r8/shaking/Z4;->a:Ljava/io/PrintStream;

    const-string v2, "|  "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 70
    iget-object v1, p2, Lcom/android/tools/r8/shaking/Z4;->a:Ljava/io/PrintStream;

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static d(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;)Ljava/lang/String;
    .locals 7

    instance-of v0, p0, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    invoke-virtual {p0}, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;->getReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/internal/Bl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    const-string v1, "."

    const-string v2, " "

    if-eqz v0, :cond_2

    check-cast p0, Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    invoke-virtual {p0}, Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;->getReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "void"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object p0

    new-instance v5, Lcom/android/tools/r8/internal/hs1;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/hs1;-><init>()V

    invoke-static {p0, v5}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p0

    sget-object v5, Lcom/android/tools/r8/internal/zq0$a;->b:Lcom/android/tools/r8/internal/zq0$a;

    const-string v6, ","

    invoke-static {v6, p0, v5}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;Ljava/lang/Iterable;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/String;

    move-result-object p0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    invoke-virtual {p0}, Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;->getReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->getFieldType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->getHolderClass()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->getFieldName()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/origin/Origin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/experimental/graphinfo/KeepRuleGraphNode;->getPosition()Lcom/android/tools/r8/position/Position;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/shaking/b5;->a(Lcom/android/tools/r8/position/Position;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->cycle()Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "only cyclic dependencies remain, failed to determine a path from a keep rule"

    return-object p0

    :cond_6
    sget-boolean v0, Lcom/android/tools/r8/shaking/b5;->c:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected graph node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/shaking/a5;)Ljava/util/ArrayList;
    .locals 12

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 36
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    :goto_0
    iget-object v1, p2, Lcom/android/tools/r8/shaking/a5;->b:Lcom/android/tools/r8/shaking/a5;

    const-string v2, "Unexpected empty set of graph edge info"

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 38
    iget-object v1, p2, Lcom/android/tools/r8/shaking/a5;->a:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    .line 39
    invoke-virtual {v1}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->isCycle()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    new-instance v2, Lcom/android/tools/r8/internal/o50;

    new-instance v3, Lcom/android/tools/r8/internal/Dz;

    sget-object v4, Lcom/android/tools/r8/internal/Dz$a;->t:Lcom/android/tools/r8/internal/Dz$a;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/Dz;-><init>(Lcom/android/tools/r8/internal/Dz$a;)V

    invoke-direct {v2, v1, v3}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 41
    :cond_1
    iget-object v4, p2, Lcom/android/tools/r8/shaking/a5;->b:Lcom/android/tools/r8/shaking/a5;

    iget-object v4, v4, Lcom/android/tools/r8/shaking/a5;->a:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    .line 42
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/t;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 43
    new-instance v5, Lcom/android/tools/r8/internal/o50;

    .line 44
    invoke-static {}, Lcom/android/tools/r8/internal/Dz$a;->a()[Lcom/android/tools/r8/internal/Dz$a;

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v3, v7, :cond_4

    aget-object v8, v6, v3

    .line 45
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/internal/Dz;

    .line 46
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/Dz;->a()Lcom/android/tools/r8/internal/Dz$a;

    move-result-object v11

    if-ne v11, v8, :cond_2

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 47
    :cond_4
    sget-boolean v3, Lcom/android/tools/r8/shaking/b5;->c:Z

    if-eqz v3, :cond_5

    .line 48
    sget-object v10, Lcom/android/tools/r8/internal/Dz;->b:Lcom/android/tools/r8/internal/Dz;

    .line 49
    :goto_2
    invoke-direct {v5, v1, v10}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :goto_3
    iget-object p2, p2, Lcom/android/tools/r8/shaking/a5;->b:Lcom/android/tools/r8/shaking/a5;

    goto :goto_0

    .line 51
    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 52
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/shaking/t;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;)Ljava/util/Map;

    move-result-object p1

    iget-object v1, p2, Lcom/android/tools/r8/shaking/a5;->a:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 53
    new-instance v1, Lcom/android/tools/r8/internal/o50;

    iget-object p2, p2, Lcom/android/tools/r8/shaking/a5;->a:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    .line 54
    invoke-static {}, Lcom/android/tools/r8/internal/Dz$a;->a()[Lcom/android/tools/r8/internal/Dz$a;

    move-result-object v4

    array-length v5, v4

    :goto_4
    if-ge v3, v5, :cond_9

    aget-object v6, v4, v3

    .line 55
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/Dz;

    .line 56
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/Dz;->a()Lcom/android/tools/r8/internal/Dz$a;

    move-result-object v9

    if-ne v9, v6, :cond_7

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 57
    :cond_9
    sget-boolean p1, Lcom/android/tools/r8/shaking/b5;->c:Z

    if-eqz p1, :cond_a

    .line 58
    sget-object v8, Lcom/android/tools/r8/internal/Dz;->b:Lcom/android/tools/r8/internal/Dz;

    .line 59
    :goto_5
    invoke-direct {v1, p2, v8}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 60
    :cond_a
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Ljava/io/PrintStream;)V
    .locals 7

    .line 11
    new-instance v0, Lcom/android/tools/r8/shaking/Z4;

    invoke-direct {v0, p2}, Lcom/android/tools/r8/shaking/Z4;-><init>(Ljava/io/PrintStream;)V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_3

    .line 12
    :cond_0
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 13
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    move-object v4, p1

    .line 14
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/shaking/t;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/shaking/b5;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/shaking/a5;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_3

    .line 16
    :cond_1
    sget-boolean v5, Lcom/android/tools/r8/shaking/b5;->c:Z

    if-nez v5, :cond_3

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 17
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    .line 18
    invoke-virtual {v2, v5}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 19
    invoke-virtual {v2, v5, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v6, Lcom/android/tools/r8/shaking/a5;

    invoke-direct {v6, v5, v1}, Lcom/android/tools/r8/shaking/a5;-><init>(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/shaking/a5;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 21
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 22
    new-instance v2, Lcom/android/tools/r8/shaking/a5;

    invoke-static {}, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;->cycle()Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/android/tools/r8/shaking/a5;-><init>(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/shaking/a5;)V

    invoke-virtual {p0, p1, v2}, Lcom/android/tools/r8/shaking/b5;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/shaking/a5;)Ljava/util/ArrayList;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_6

    .line 23
    const-string v0, "Nothing is keeping "

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lcom/android/tools/r8/shaking/b5;->d(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 25
    :cond_6
    invoke-static {p1}, Lcom/android/tools/r8/shaking/b5;->d(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;)Ljava/lang/String;

    move-result-object p1

    .line 26
    iget p2, v0, Lcom/android/tools/r8/shaking/Z4;->b:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcom/android/tools/r8/shaking/Z4;->b:I

    const/4 p2, 0x0

    .line 27
    :goto_4
    iget v2, v0, Lcom/android/tools/r8/shaking/Z4;->b:I

    if-ge p2, v2, :cond_7

    .line 28
    iget-object v2, v0, Lcom/android/tools/r8/shaking/Z4;->a:Ljava/io/PrintStream;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 29
    :cond_7
    iget-object p2, v0, Lcom/android/tools/r8/shaking/Z4;->a:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 30
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_5
    if-ltz p1, :cond_8

    .line 31
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/o50;

    .line 32
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/Dz;

    invoke-static {v2, p2, v0}, Lcom/android/tools/r8/shaking/b5;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Lcom/android/tools/r8/internal/Dz;Lcom/android/tools/r8/shaking/Z4;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_5

    .line 33
    :cond_8
    iget p1, v0, Lcom/android/tools/r8/shaking/Z4;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Lcom/android/tools/r8/shaking/Z4;->b:I

    return-void

    .line 34
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/shaking/a5;

    .line 35
    iget-object v4, v1, Lcom/android/tools/r8/shaking/a5;->a:Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    goto/16 :goto_0
.end method

.method public a(Lcom/android/tools/r8/references/ClassReference;Ljava/io/PrintStream;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/t;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    .line 2
    instance-of v2, v1, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    invoke-virtual {v1}, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;->getReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/references/ClassReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    new-instance v1, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;

    const/4 v0, 0x0

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/experimental/graphinfo/ClassGraphNode;-><init>(ZLcom/android/tools/r8/references/ClassReference;)V

    :goto_1
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/shaking/b5;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Ljava/io/PrintStream;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/references/FieldReference;Ljava/io/PrintStream;)V
    .locals 3

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/t;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    .line 9
    instance-of v2, v1, Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    invoke-virtual {v1}, Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;->getReference()Lcom/android/tools/r8/references/FieldReference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/references/FieldReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    new-instance v1, Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;

    const/4 v0, 0x0

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/experimental/graphinfo/FieldGraphNode;-><init>(ZLcom/android/tools/r8/references/FieldReference;)V

    :goto_1
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/shaking/b5;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Ljava/io/PrintStream;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/references/MethodReference;Ljava/io/PrintStream;)V
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/shaking/t;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/experimental/graphinfo/GraphNode;

    .line 5
    instance-of v2, v1, Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    .line 6
    invoke-virtual {v1}, Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;->getReference()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/tools/r8/references/MethodReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v1, Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;

    const/4 v0, 0x0

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/experimental/graphinfo/MethodGraphNode;-><init>(ZLcom/android/tools/r8/references/MethodReference;)V

    :goto_1
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/shaking/b5;->a(Lcom/android/tools/r8/experimental/graphinfo/GraphNode;Ljava/io/PrintStream;)V

    return-void
.end method
