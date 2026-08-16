.class public final Lcom/android/tools/r8/internal/He0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/wt0;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Wh;

.field public final c:Lcom/android/tools/r8/internal/sw;

.field public final d:Lcom/android/tools/r8/internal/pv;

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Wh;Lcom/android/tools/r8/internal/sw;Lcom/android/tools/r8/internal/pv;Lcom/android/tools/r8/internal/aL;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/He0;->b:Lcom/android/tools/r8/internal/Wh;

    iput-object p2, p0, Lcom/android/tools/r8/internal/He0;->c:Lcom/android/tools/r8/internal/sw;

    iput-object p3, p0, Lcom/android/tools/r8/internal/He0;->d:Lcom/android/tools/r8/internal/pv;

    iput-object p5, p0, Lcom/android/tools/r8/internal/He0;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;
    .locals 4

    .line 21
    iget-object v0, p2, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    .line 22
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/He0;->e:Ljava/util/List;

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 25
    sget-object v1, Lcom/android/tools/r8/internal/ye0;->a:Lcom/android/tools/r8/internal/ve0;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/internal/ve0;->c(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    new-instance v1, Lcom/android/tools/r8/internal/Ge0;

    const/4 v2, 0x1

    .line 27
    invoke-virtual {p0, p1, p2, v0, v2}, Lcom/android/tools/r8/internal/He0;->a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/android/tools/r8/internal/Ge0;-><init>(Ljava/lang/Class;Ljava/util/LinkedHashMap;)V

    return-object v1

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/He0;->b:Lcom/android/tools/r8/internal/Wh;

    invoke-virtual {v1, p2}, Lcom/android/tools/r8/internal/Wh;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/z30;

    move-result-object v1

    .line 29
    new-instance v2, Lcom/android/tools/r8/internal/Fe0;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/android/tools/r8/internal/He0;->a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lcom/android/tools/r8/internal/Fe0;-><init>(Lcom/android/tools/r8/internal/z30;Ljava/util/LinkedHashMap;)V

    return-object v2

    .line 30
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;Ljava/lang/Class;Z)Ljava/util/LinkedHashMap;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v13, p1

    .line 33
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 34
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_10

    :cond_0
    move-object/from16 v15, p2

    move-object/from16 v12, p3

    .line 35
    :goto_0
    const-class v1, Ljava/lang/Object;

    if-eq v12, v1, :cond_15

    .line 36
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    move-object/from16 v10, p3

    if-eq v12, v10, :cond_2

    .line 37
    array-length v1, v11

    if-lez v1, :cond_2

    .line 38
    iget-object v1, v0, Lcom/android/tools/r8/internal/He0;->e:Ljava/util/List;

    .line 39
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    .line 42
    :cond_2
    :goto_1
    array-length v9, v11

    const/4 v8, 0x0

    move v7, v8

    :goto_2
    if-ge v7, v9, :cond_14

    aget-object v6, v11, v7

    const/4 v5, 0x1

    .line 43
    invoke-virtual {v0, v6, v5}, Lcom/android/tools/r8/internal/He0;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v1

    .line 44
    invoke-virtual {v0, v6, v8}, Lcom/android/tools/r8/internal/He0;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v2

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    move/from16 v32, v7

    move/from16 v26, v8

    move/from16 v27, v9

    move-object/from16 v28, v11

    move-object/from16 p2, v12

    move-object/from16 v19, v15

    goto/16 :goto_f

    :cond_3
    const-class v3, Lcom/android/tools/r8/internal/yl0;

    const/16 v16, 0x0

    if-eqz p4, :cond_7

    .line 45
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move/from16 v17, v8

    :goto_3
    move-object/from16 v18, v16

    goto :goto_5

    .line 46
    :cond_4
    sget-object v4, Lcom/android/tools/r8/internal/ye0;->a:Lcom/android/tools/r8/internal/ve0;

    invoke-virtual {v4, v12, v6}, Lcom/android/tools/r8/internal/ve0;->a(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 47
    invoke-static {v4}, Lcom/android/tools/r8/internal/ye0;->a(Ljava/lang/reflect/AccessibleObject;)V

    .line 48
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v17

    if-eqz v17, :cond_6

    .line 49
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v17

    if-eqz v17, :cond_5

    goto :goto_4

    .line 50
    :cond_5
    invoke-static {v4, v8}, Lcom/android/tools/r8/internal/ye0;->a(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    move-result-object v1

    .line 51
    new-instance v2, Lcom/android/tools/r8/internal/eL;

    .line 52
    const-string v3, "@SerializedName on "

    const-string v4, " is not supported"

    invoke-static {v3, v1, v4}, Lcom/android/tools/r8/internal/Be0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    invoke-direct {v2, v1}, Lcom/android/tools/r8/internal/eL;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_4
    move/from16 v17, v2

    move-object/from16 v18, v4

    goto :goto_5

    :cond_7
    move/from16 v17, v2

    goto :goto_3

    :goto_5
    if-nez v18, :cond_8

    .line 54
    invoke-static {v6}, Lcom/android/tools/r8/internal/ye0;->a(Ljava/lang/reflect/AccessibleObject;)V

    .line 55
    :cond_8
    iget-object v2, v15, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    .line 56
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 57
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v12, v4, v8}, Lcom/android/tools/r8/internal/d;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 58
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/yl0;

    if-nez v2, :cond_9

    .line 59
    iget-object v2, v0, Lcom/android/tools/r8/internal/He0;->c:Lcom/android/tools/r8/internal/sw;

    invoke-virtual {v2, v6}, Lcom/android/tools/r8/internal/sw;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_6
    move/from16 v19, v1

    move-object v4, v2

    goto :goto_7

    .line 61
    :cond_9
    invoke-interface {v2}, Lcom/android/tools/r8/internal/yl0;->value()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-interface {v2}, Lcom/android/tools/r8/internal/yl0;->alternate()[Ljava/lang/String;

    move-result-object v2

    .line 63
    array-length v4, v2

    if-nez v4, :cond_a

    .line 64
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_6

    .line 65
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v19, v1

    array-length v1, v2

    add-int/2addr v1, v5

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-static {v4, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 68
    :goto_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v1, v19

    const/4 v2, 0x0

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    :goto_8
    if-ge v2, v3, :cond_12

    .line 69
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v15

    move-object/from16 v15, v20

    check-cast v15, Ljava/lang/String;

    if-eqz v2, :cond_b

    const/16 v20, 0x0

    goto :goto_9

    :cond_b
    move/from16 v20, v1

    .line 70
    :goto_9
    new-instance v1, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v1, v8}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    .line 71
    iget-object v5, v1, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    if-eqz v5, :cond_c

    .line 72
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v23, 0x1

    goto :goto_a

    :cond_c
    const/16 v23, 0x0

    .line 73
    :goto_a
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v5

    .line 74
    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v24, 0x1

    goto :goto_b

    :cond_d
    const/16 v24, 0x0

    .line 75
    :goto_b
    const-class v5, Lcom/android/tools/r8/internal/ZK;

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/ZK;

    move/from16 v25, v2

    if-eqz v5, :cond_e

    .line 76
    iget-object v2, v0, Lcom/android/tools/r8/internal/He0;->b:Lcom/android/tools/r8/internal/Wh;

    invoke-static {v2, v13, v1, v5}, Lcom/android/tools/r8/internal/aL;->a(Lcom/android/tools/r8/internal/Wh;Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;Lcom/android/tools/r8/internal/ZK;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v2

    goto :goto_c

    :cond_e
    move-object/from16 v2, v16

    :goto_c
    if-eqz v2, :cond_f

    const/16 v26, 0x1

    goto :goto_d

    :cond_f
    const/16 v26, 0x0

    :goto_d
    if-nez v2, :cond_10

    .line 77
    invoke-virtual {v13, v1}, Lcom/android/tools/r8/internal/Oz;->a(Lcom/android/tools/r8/internal/Cu0;)Lcom/android/tools/r8/internal/vt0;

    move-result-object v2

    :cond_10
    move-object/from16 v27, v2

    .line 78
    new-instance v5, Lcom/android/tools/r8/internal/Ce0;

    move-object/from16 v28, v1

    move-object v1, v5

    move-object v2, v15

    move/from16 v29, v3

    move-object v3, v6

    move-object/from16 v30, v4

    move/from16 v4, v20

    move-object v0, v5

    const/16 v22, 0x1

    move/from16 v5, v17

    move-object/from16 v31, v6

    move-object/from16 v6, v18

    move/from16 v32, v7

    move/from16 v7, v26

    move-object/from16 v33, v8

    const/16 v26, 0x0

    move-object/from16 v8, v27

    move/from16 v27, v9

    move-object/from16 v9, p1

    move-object/from16 v10, v28

    move-object/from16 v28, v11

    move/from16 v11, v23

    move-object/from16 p2, v12

    move/from16 v12, v24

    invoke-direct/range {v1 .. v12}, Lcom/android/tools/r8/internal/Ce0;-><init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZZLjava/lang/reflect/Method;ZLcom/android/tools/r8/internal/vt0;Lcom/android/tools/r8/internal/Oz;Lcom/android/tools/r8/internal/Cu0;ZZ)V

    .line 79
    invoke-interface {v14, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/Ce0;

    if-nez v21, :cond_11

    move-object v15, v0

    goto :goto_e

    :cond_11
    move-object/from16 v15, v21

    :goto_e
    add-int/lit8 v2, v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v12, p2

    move-object/from16 v10, p3

    move/from16 v1, v20

    move/from16 v5, v22

    move/from16 v9, v27

    move-object/from16 v11, v28

    move/from16 v3, v29

    move-object/from16 v4, v30

    move-object/from16 v6, v31

    move/from16 v7, v32

    move-object/from16 v8, v33

    goto/16 :goto_8

    :cond_12
    move-object/from16 v31, v6

    move/from16 v32, v7

    move/from16 v27, v9

    move-object/from16 v28, v11

    move-object/from16 p2, v12

    move-object/from16 v21, v15

    const/16 v26, 0x0

    if-nez v21, :cond_13

    :goto_f
    add-int/lit8 v7, v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v12, p2

    move-object/from16 v10, p3

    move-object/from16 v15, v19

    move/from16 v8, v26

    move/from16 v9, v27

    move-object/from16 v11, v28

    goto/16 :goto_2

    .line 80
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v21

    iget-object v2, v15, Lcom/android/tools/r8/internal/Ce0;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'; conflict is caused by fields "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/tools/r8/internal/Ce0;->b:Ljava/lang/reflect/Field;

    .line 81
    sget-object v3, Lcom/android/tools/r8/internal/ye0;->a:Lcom/android/tools/r8/internal/ve0;

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v31 .. v31}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    move-object/from16 p2, v12

    move-object v0, v15

    .line 86
    iget-object v0, v0, Lcom/android/tools/r8/internal/Cu0;->b:Ljava/lang/reflect/Type;

    .line 87
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v3, p2

    invoke-static {v0, v3, v1, v2}, Lcom/android/tools/r8/internal/d;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/HashMap;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 89
    new-instance v15, Lcom/android/tools/r8/internal/Cu0;

    invoke-direct {v15, v0}, Lcom/android/tools/r8/internal/Cu0;-><init>(Ljava/lang/reflect/Type;)V

    .line 90
    iget-object v12, v15, Lcom/android/tools/r8/internal/Cu0;->a:Ljava/lang/Class;

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_15
    :goto_10
    return-object v14
.end method

.method public final a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/He0;->d:Lcom/android/tools/r8/internal/pv;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {v1}, Lcom/android/tools/r8/internal/pv;->a(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, v0, Lcom/android/tools/r8/internal/pv;->c:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/tools/r8/internal/pv;->d:Ljava/util/List;

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/He0;->d:Lcom/android/tools/r8/internal/pv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    and-int/lit16 v1, v1, 0x88

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 7
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    .line 8
    :cond_2
    iget-boolean v1, v0, Lcom/android/tools/r8/internal/pv;->b:Z

    if-eqz v1, :cond_4

    .line 9
    const-class v1, Lcom/android/tools/r8/internal/qv;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/qv;

    if-eqz v1, :cond_a

    if-eqz p2, :cond_3

    .line 10
    invoke-interface {v1}, Lcom/android/tools/r8/internal/qv;->serialize()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_3
    invoke-interface {v1}, Lcom/android/tools/r8/internal/qv;->deserialize()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 11
    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/internal/pv;->a(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    if-eqz p2, :cond_6

    .line 12
    iget-object p2, v0, Lcom/android/tools/r8/internal/pv;->c:Ljava/util/List;

    goto :goto_1

    :cond_6
    iget-object p2, v0, Lcom/android/tools/r8/internal/pv;->d:Ljava/util/List;

    .line 13
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/Yv;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Yv;-><init>(Ljava/lang/reflect/Field;)V

    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_8
    :goto_2
    const/4 p1, 0x1

    return p1

    .line 18
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1}, Ljava/lang/ClassCastException;-><init>()V

    throw p1

    :cond_a
    :goto_3
    const/4 p1, 0x0

    return p1
.end method
