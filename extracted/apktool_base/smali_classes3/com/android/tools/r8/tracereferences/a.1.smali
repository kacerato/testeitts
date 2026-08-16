.class public abstract Lcom/android/tools/r8/tracereferences/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Z = true


# instance fields
.field public final a:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;)Ljava/lang/String;
    .locals 0

    .line 72
    invoke-interface {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/references/ClassReference;

    invoke-virtual {p0}, Lcom/android/tools/r8/references/ClassReference;->getDescriptor()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;)Ljava/lang/String;
    .locals 0

    .line 74
    invoke-interface {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/references/FieldReference;

    invoke-virtual {p0}, Lcom/android/tools/r8/references/FieldReference;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-interface {p0}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {p0}, Lcom/android/tools/r8/references/MethodReference;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/references/MethodReference;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Lcom/android/tools/r8/references/MethodReference;->getFormalTypes()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/hs1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/hs1;-><init>()V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    sget-object v1, Lcom/android/tools/r8/internal/zq0$a;->b:Lcom/android/tools/r8/internal/zq0$a;

    .line 3
    const-string v2, ", "

    invoke-static {v0, p1, v2, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;Lcom/android/tools/r8/internal/zq0$a;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 16

    move-object/from16 v0, p0

    .line 4
    new-instance v1, Lcom/android/tools/r8/tracereferences/K;

    invoke-direct {v1}, Lcom/android/tools/r8/tracereferences/K;-><init>()V

    .line 5
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 6
    sget-boolean v2, Lcom/android/tools/r8/internal/AT;->a:Z

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_11

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;

    .line 10
    invoke-interface {v5}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/references/ClassReference;

    sget-object v7, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    sget-boolean v8, Lcom/android/tools/r8/internal/TU;->a:Z

    move-object/from16 v8, p4

    .line 11
    invoke-virtual {v8, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move-object v6, v7

    .line 12
    :goto_1
    check-cast v6, Ljava/util/Set;

    .line 13
    invoke-interface {v5}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/references/ClassReference;

    move-object/from16 v10, p3

    .line 14
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    move-object v7, v9

    .line 15
    :cond_1
    check-cast v7, Ljava/util/Set;

    .line 16
    invoke-interface {v5}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->isMissingDefinition()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/tracereferences/a;->b(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;)V

    .line 18
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;

    .line 20
    invoke-interface {v9}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->isMissingDefinition()Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    sget-boolean v11, Lcom/android/tools/r8/tracereferences/a;->b:Z

    if-nez v11, :cond_5

    invoke-interface {v9}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;->getAccessFlags()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_4

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 22
    :cond_5
    :goto_3
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 23
    :cond_6
    new-instance v6, Lcom/android/tools/r8/tracereferences/L;

    invoke-direct {v6}, Lcom/android/tools/r8/tracereferences/L;-><init>()V

    .line 24
    invoke-static {v6}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v6

    .line 25
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 26
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v9, v3

    :goto_4
    if-ge v9, v6, :cond_e

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;

    .line 27
    move-object v12, v0

    check-cast v12, Lcom/android/tools/r8/tracereferences/b;

    .line 28
    invoke-interface {v11}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v13}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "<clinit>"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    goto :goto_4

    .line 29
    :cond_7
    const-string v13, "  "

    .line 30
    iget-object v14, v12, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-interface {v11}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;->getAccessFlags()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;

    invoke-interface {v13}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;->isPublic()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 32
    const-string v13, "public "

    .line 33
    iget-object v14, v12, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 34
    :cond_8
    invoke-interface {v11}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;->getAccessFlags()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;

    invoke-interface {v13}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;->isPrivate()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 35
    const-string v13, "private "

    .line 36
    iget-object v14, v12, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 37
    :cond_9
    invoke-interface {v11}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;->getAccessFlags()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;

    invoke-interface {v13}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;->isProtected()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 38
    const-string v13, "protected "

    .line 39
    iget-object v14, v12, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_a
    :goto_5
    invoke-interface {v11}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedMethod;->getAccessFlags()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;

    invoke-interface {v13}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$MethodAccessFlags;->isStatic()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 41
    const-string v13, "static "

    .line 42
    iget-object v14, v12, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_b
    invoke-interface {v11}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/tools/r8/references/MethodReference;

    .line 44
    invoke-virtual {v13}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "<init>"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 45
    iget-object v13, v12, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 46
    :cond_c
    invoke-virtual {v13}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v14

    if-eqz v14, :cond_d

    invoke-virtual {v13}, Lcom/android/tools/r8/references/MethodReference;->getReturnType()Lcom/android/tools/r8/references/TypeReference;

    move-result-object v14

    invoke-interface {v14}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    :cond_d
    const-string v14, "void"

    .line 47
    :goto_6
    iget-object v15, v12, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string v14, " "

    .line 49
    iget-object v15, v12, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v13}, Lcom/android/tools/r8/references/MethodReference;->getMethodName()Ljava/lang/String;

    move-result-object v13

    .line 51
    iget-object v14, v12, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :goto_7
    invoke-interface {v11}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->getReference()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/tools/r8/references/MethodReference;

    invoke-virtual {v12, v11}, Lcom/android/tools/r8/tracereferences/a;->a(Lcom/android/tools/r8/references/MethodReference;)V

    .line 53
    iget-object v11, v12, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    const-string v12, ";"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 54
    :cond_e
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    new-instance v6, Lcom/android/tools/r8/tracereferences/M;

    invoke-direct {v6}, Lcom/android/tools/r8/tracereferences/M;-><init>()V

    invoke-static {v6}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 56
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v3

    :goto_8
    if-ge v7, v6, :cond_10

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v7, v7, 0x1

    check-cast v9, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;

    .line 57
    invoke-interface {v9}, Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedReference;->isMissingDefinition()Z

    move-result v11

    if-eqz v11, :cond_f

    goto :goto_8

    .line 58
    :cond_f
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/tracereferences/a;->b(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;)V

    goto :goto_8

    .line 59
    :cond_10
    move-object v5, v0

    check-cast v5, Lcom/android/tools/r8/tracereferences/b;

    .line 60
    iget-object v5, v5, Lcom/android/tools/r8/tracereferences/a;->a:Ljava/lang/StringBuilder;

    const-string v6, "}"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_11
    move-object/from16 v10, p3

    move-object/from16 v8, p4

    .line 61
    sget-boolean v1, Lcom/android/tools/r8/tracereferences/a;->b:Z

    if-nez v1, :cond_13

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/tracereferences/N;

    invoke-direct {v3}, Lcom/android/tools/r8/tracereferences/N;-><init>()V

    .line 62
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    .line 63
    :cond_12
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_13
    :goto_9
    if-nez v1, :cond_15

    .line 64
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/qK;->b(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/ap0;->a(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/tracereferences/O;

    invoke-direct {v2}, Lcom/android/tools/r8/tracereferences/O;-><init>()V

    .line 65
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_a

    .line 66
    :cond_14
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 67
    :cond_15
    :goto_a
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/tracereferences/P;

    invoke-direct {v2}, Lcom/android/tools/r8/tracereferences/P;-><init>()V

    .line 68
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 69
    invoke-interface {v1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v1

    .line 70
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 71
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/tracereferences/a;->a(Ljava/util/List;)V

    return-void
.end method

.method public abstract a(Ljava/util/List;)V
.end method

.method public abstract b(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedClass;)V
.end method

.method public abstract b(Lcom/android/tools/r8/tracereferences/TraceReferencesConsumer$TracedField;)V
.end method
