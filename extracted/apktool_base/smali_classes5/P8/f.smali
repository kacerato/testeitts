.class public LP8/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LP8/f$P;,
        LP8/f$Q;
    }
.end annotation


# static fields
.field public static a:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    sput-object v0, LP8/f;->a:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;
    .locals 46
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "classAddress",
            "instance",
            "context",
            "gameObject",
            "autoSetValue",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Z",
            "LP8/p;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v14, p5

    const-class v15, LJAVARuntime/InspectorMemory;

    new-instance v8, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v8}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-nez v11, :cond_0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object v1

    :cond_0
    if-eqz v9, :cond_5b

    const-class v7, LP8/o;

    invoke-virtual {v9, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "JAVARuntime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Class needs to be an InternalDisplayableClass or from JAVARuntime"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    if-eqz v10, :cond_5a

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :goto_1
    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_3
    invoke-static {v1, v14}, LP8/f;->u([Ljava/lang/reflect/Field;LP8/p;)[Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-static {v5}, LP8/f;->q([Ljava/lang/reflect/Field;)Ljava/util/Set;

    move-result-object v16

    if-eqz v5, :cond_5b

    array-length v4, v5

    const/16 v17, 0x0

    move/from16 v3, v17

    :goto_4
    if-ge v3, v4, :cond_5b

    aget-object v2, v5, v3

    invoke-virtual {v2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    const/4 v11, 0x1

    if-nez v1, :cond_3

    invoke-virtual {v2, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_3
    invoke-static {v2, v10, v9}, LP8/f;->N(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move v10, v13

    move-object/from16 v36, v15

    move-object v13, v12

    goto/16 :goto_a1

    :cond_4
    const-class v1, LJAVARuntime/Header;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, LJAVARuntime/Header;

    if-eqz v1, :cond_5

    invoke-interface {v1}, LJAVARuntime/Header;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_5

    new-instance v6, LC5/b;

    sget-object v11, LC5/b$a;->Header:LC5/b$a;

    invoke-direct {v6, v1, v11}, LC5/b;-><init>(Ljava/lang/String;LC5/b$a;)V

    invoke-static {v8, v2, v6}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V

    :cond_5
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    const-string v11, ""

    const-string v6, ")"

    move-object/from16 v20, v11

    const-class v11, LJAVARuntime/Component;

    const-class v14, Ljava/lang/Boolean;

    move-object/from16 v21, v8

    const-class v8, Ljava/lang/String;

    const-string v9, "Element "

    if-eqz v1, :cond_13

    :try_start_1
    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LP8/f;->Q(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_13

    if-eqz v1, :cond_12

    move-object/from16 v23, v15

    :try_start_2
    new-instance v15, LC5/b;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_11

    move/from16 v24, v3

    :try_start_3
    new-instance v3, LC5/a;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v2

    invoke-static/range {v25 .. v25}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_f

    move/from16 v25, v4

    const/4 v4, 0x1

    :try_start_4
    invoke-direct {v3, v2, v4}, LC5/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v15, v3}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v15, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, LC5/a;->b:Ljava/lang/String;

    iget-object v2, v15, LC5/b;->Q:LC5/a;

    iget-object v6, v2, LC5/a;->o:Ljava/util/List;

    new-instance v4, LC5/b;

    new-instance v3, LP8/f$k;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_d

    move-object/from16 v27, v1

    move-object v1, v3

    move-object/from16 v28, v26

    move-object/from16 v2, v27

    move-object v10, v3

    move-object/from16 v3, v28

    move-object v12, v4

    move-object/from16 v4, p3

    move-object/from16 v26, v5

    move-object/from16 v5, p1

    move-object/from16 v18, v11

    move-object v11, v6

    move-object/from16 v6, p5

    move-object/from16 v29, v7

    move-object/from16 v7, p0

    :try_start_5
    invoke-direct/range {v1 .. v7}, LP8/f$k;-><init>([Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Ljava/lang/Object;LP8/p;Ljava/lang/Class;)V

    const-string v1, "size"

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v12, v10, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_b

    if-ne v1, v2, :cond_8

    move/from16 v8, v17

    move-object/from16 v10, v27

    :goto_5
    :try_start_6
    array-length v1, v10

    if-ge v8, v1, :cond_6

    iget-object v1, v15, LC5/b;->Q:LC5/a;

    iget-object v11, v1, LC5/a;->o:Ljava/util/List;

    new-instance v12, LC5/b;

    new-instance v14, LP8/f$v;

    move-object v1, v14

    move-object v2, v10

    move v3, v8

    move-object/from16 v4, v28

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, LP8/f$v;-><init>([Ljava/lang/Object;ILjava/lang/reflect/Field;Ljava/lang/Object;LP8/p;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v12, v14, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_6
    move-object v1, v0

    move-object/from16 v12, v21

    goto/16 :goto_1c

    :catch_3
    move-exception v0

    goto :goto_6

    :cond_6
    move-object/from16 v12, v21

    :cond_7
    move-object/from16 v10, v28

    goto/16 :goto_16

    :cond_8
    move-object/from16 v10, v27

    :try_start_7
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_b

    if-ne v1, v2, :cond_9

    move/from16 v8, v17

    :goto_7
    :try_start_8
    array-length v1, v10

    if-ge v8, v1, :cond_6

    iget-object v1, v15, LC5/b;->Q:LC5/a;

    iget-object v11, v1, LC5/a;->o:Ljava/util/List;

    new-instance v12, LC5/b;

    new-instance v14, LP8/f$G;

    move-object v1, v14

    move-object v2, v10

    move v3, v8

    move-object/from16 v4, v28

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, LP8/f$G;-><init>([Ljava/lang/Object;ILjava/lang/reflect/Field;Ljava/lang/Object;LP8/p;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v12, v14, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    :try_start_9
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_b

    if-ne v1, v8, :cond_a

    move/from16 v8, v17

    :goto_8
    :try_start_a
    array-length v1, v10

    if-ge v8, v1, :cond_6

    iget-object v1, v15, LC5/b;->Q:LC5/a;

    iget-object v11, v1, LC5/a;->o:Ljava/util/List;

    new-instance v12, LC5/b;

    new-instance v14, LP8/f$J;

    move-object v1, v14

    move-object v2, v10

    move v3, v8

    move-object/from16 v4, v28

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, LP8/f$J;-><init>([Ljava/lang/Object;ILjava/lang/reflect/Field;Ljava/lang/Object;LP8/p;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v12, v14, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_2

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_a
    :try_start_b
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_b

    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_b

    if-ne v1, v14, :cond_c

    :cond_b
    move-object/from16 v12, v21

    goto/16 :goto_14

    :cond_c
    :try_start_c
    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    :goto_9
    move-object v1, v0

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_9

    :goto_a
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v11, v20

    :goto_b
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, LW7/b;->j:Ld8/j;

    invoke-static {v11}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    move/from16 v14, v17

    :goto_c
    array-length v1, v10
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_b

    if-ge v14, v1, :cond_6

    if-eqz v12, :cond_f

    move-object/from16 v8, v18

    :try_start_e
    invoke-virtual {v8, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_2

    if-nez v1, :cond_e

    :try_start_f
    new-instance v7, LC5/b;

    new-instance v1, LC5/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LC5/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v7, v1}, LC5/b;-><init>(LC5/a;)V

    iget-object v1, v7, LC5/b;->Q:LC5/a;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_f} :catch_3

    const v6, 0x7f0500b2

    :try_start_10
    iput v6, v1, LC5/a;->p:I

    iget-object v5, v1, LC5/a;->o:Ljava/util/List;

    aget-object v2, v10, v14
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_10} :catch_3

    move-object v1, v12

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v18, v8

    move-object v8, v5

    move/from16 v5, p4

    move/from16 v22, v6

    move-object/from16 v6, p5

    :try_start_11
    invoke-static/range {v1 .. v6}, LP8/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v15, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_11} :catch_3

    :cond_d
    :goto_d
    move-object/from16 v20, v11

    move-object/from16 v27, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v21

    goto/16 :goto_13

    :catch_6
    move-exception v0

    :goto_e
    move-object v1, v0

    goto :goto_f

    :catch_7
    move-exception v0

    move/from16 v22, v6

    move-object/from16 v18, v8

    goto :goto_e

    :catch_8
    move-exception v0

    move-object/from16 v18, v8

    const v22, 0x7f0500b2

    goto :goto_e

    :goto_f
    :try_start_12
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_d

    :cond_e
    move-object/from16 v18, v8

    :cond_f
    const v22, 0x7f0500b2

    :try_start_13
    new-instance v8, LP8/q;

    move-object/from16 v7, p3

    invoke-direct {v8, v7}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v1

    array-length v2, v1

    move/from16 v3, v17

    :goto_10
    if-ge v3, v2, :cond_d

    aget-object v4, v1, v3

    iget-object v5, v4, LP8/h;->a:LP8/i;

    invoke-interface {v5, v11, v8}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v6, v4, LP8/h;->a:LP8/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-instance v27, LP8/f$L;

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, p1

    move-object v4, v10

    move-object/from16 v5, p5

    move-object/from16 v30, v6

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, LP8/f$L;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;LP8/p;Ljava/lang/Class;)V
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_b

    move-object/from16 v1, v30

    move-object/from16 v2, p2

    move-object v3, v10

    move v4, v14

    move-object/from16 v5, p1

    move-object/from16 v6, v20

    move-object/from16 v20, v11

    move-object v11, v7

    move-object/from16 v7, v27

    move-object/from16 v27, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v21

    :try_start_14
    invoke-interface/range {v1 .. v8}, LP8/i;->getInspectorForArray(Landroid/content/Context;[Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v2, v15, LC5/b;->Q:LC5/a;

    iget-object v2, v2, LC5/a;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :catch_9
    move-exception v0

    :goto_11
    move-object v1, v0

    goto/16 :goto_1c

    :catch_a
    move-exception v0

    goto :goto_11

    :catch_b
    move-exception v0

    :goto_12
    move-object/from16 v12, v21

    goto :goto_11

    :catch_c
    move-exception v0

    goto :goto_12

    :cond_10
    move-object/from16 v20, v11

    move-object/from16 v27, v12

    move-object/from16 v11, v18

    move-object/from16 v12, v21

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v7, p3

    move-object/from16 v11, v20

    move-object/from16 v12, v27

    goto :goto_10

    :cond_11
    :goto_13
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v18, v11

    move-object/from16 v21, v12

    move-object/from16 v11, v20

    move-object/from16 v12, v27

    goto/16 :goto_c

    :goto_14
    move/from16 v8, v17

    :goto_15
    array-length v1, v10

    if-ge v8, v1, :cond_7

    iget-object v1, v15, LC5/b;->Q:LC5/a;

    iget-object v11, v1, LC5/a;->o:Ljava/util/List;

    new-instance v14, LC5/b;

    new-instance v7, LP8/f$K;

    move-object v1, v7

    move-object v2, v10

    move v3, v8

    move-object/from16 v4, v28

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v27, v10

    move-object v10, v7

    move-object/from16 v7, p0

    invoke-direct/range {v1 .. v7}, LP8/f$K;-><init>([Ljava/lang/Object;ILjava/lang/reflect/Field;Ljava/lang/Object;LP8/p;Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v14, v10, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v10, v27

    goto :goto_15

    :goto_16
    invoke-static {v12, v10, v15}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_9

    goto :goto_1a

    :catch_d
    move-exception v0

    :goto_17
    move-object/from16 v26, v5

    move-object/from16 v29, v7

    goto :goto_12

    :catch_e
    move-exception v0

    goto :goto_17

    :catch_f
    move-exception v0

    :goto_18
    move/from16 v25, v4

    goto :goto_17

    :catch_10
    move-exception v0

    goto :goto_18

    :catch_11
    move-exception v0

    :goto_19
    move/from16 v24, v3

    goto :goto_18

    :catch_12
    move-exception v0

    goto :goto_19

    :cond_12
    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v29, v7

    move-object/from16 v23, v15

    move-object/from16 v12, v21

    :goto_1a
    move-object v8, v12

    move v10, v13

    move-object/from16 v36, v23

    move-object/from16 v7, v29

    move-object/from16 v13, p3

    goto/16 :goto_a1

    :catch_13
    move-exception v0

    :goto_1b
    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v29, v7

    move-object/from16 v23, v15

    goto/16 :goto_12

    :catch_14
    move-exception v0

    goto :goto_1b

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a

    :cond_13
    move-object v10, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move-object/from16 v26, v5

    move-object/from16 v29, v7

    move-object/from16 v23, v15

    move-object/from16 v12, v21

    const v22, 0x7f0500b2

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v7, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    move/from16 v3, v17

    :goto_1d
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :cond_14
    move-object/from16 v15, p1

    :try_start_15
    invoke-virtual {v10, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_15} :catch_15

    goto :goto_1e

    :catch_15
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v6, 0x0

    :goto_1e
    if-eqz v6, :cond_15

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v32, v11

    goto :goto_1f

    :cond_15
    move-object/from16 v32, v20

    :goto_1f
    new-instance v8, LC5/b;

    new-instance v31, LP8/f$M;

    move-object/from16 v1, v31

    move-object v2, v10

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p0

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, LP8/f$M;-><init>(Ljava/lang/reflect/Field;Ljava/lang/Object;LP8/p;Ljava/lang/Class;Ljava/util/Set;)V

    sget-object v34, LC5/b$a;->SLDropdown:LC5/b$a;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v30, v8

    move-object/from16 v33, v7

    invoke-direct/range {v30 .. v35}, LC5/b;-><init>(LD5/h;Ljava/lang/String;Ljava/util/List;LC5/b$a;Ljava/lang/String;)V

    invoke-static {v12, v10, v8}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V

    goto/16 :goto_1a

    :cond_16
    move-object/from16 v15, p1

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_17

    new-instance v7, LC5/b;

    new-instance v8, LP8/f$N;

    move-object v1, v8

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, LP8/f$N;-><init>(Ljava/lang/reflect/Field;Landroid/content/Context;LP8/p;Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v7, v8, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-static {v12, v10, v7}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V

    goto/16 :goto_1a

    :cond_17
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v7, Ljava/lang/Float;

    if-ne v1, v7, :cond_18

    new-instance v7, LC5/b;

    new-instance v8, LP8/f$O;

    move-object v1, v8

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, LP8/f$O;-><init>(Ljava/lang/reflect/Field;Landroid/content/Context;LP8/p;Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v7, v8, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-static {v12, v10, v7}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V

    goto/16 :goto_1a

    :cond_18
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_19

    new-instance v7, LC5/b;

    new-instance v8, LP8/f$a;

    move-object v1, v8

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, LP8/f$a;-><init>(Ljava/lang/reflect/Field;Landroid/content/Context;LP8/p;Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v7, v8, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-static {v12, v10, v7}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V

    goto/16 :goto_1a

    :cond_19
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Ljava/lang/Integer;

    if-ne v1, v5, :cond_1a

    new-instance v7, LC5/b;

    new-instance v8, LP8/f$b;

    move-object v1, v8

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, LP8/f$b;-><init>(Ljava/lang/reflect/Field;Landroid/content/Context;LP8/p;Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;

    invoke-direct {v7, v8, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-static {v12, v10, v7}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V

    goto/16 :goto_1a

    :cond_1a
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v8, :cond_1b

    new-instance v7, LC5/b;

    new-instance v8, LP8/f$c;

    move-object v1, v8

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, LP8/f$c;-><init>(Ljava/lang/reflect/Field;Landroid/content/Context;LP8/p;Ljava/lang/Object;Ljava/lang/Class;)V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v7, v8, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-static {v12, v10, v7}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V

    goto/16 :goto_1a

    :cond_1b
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1c

    new-instance v8, LC5/b;

    new-instance v9, LP8/f$d;

    move-object v1, v9

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, LP8/f$d;-><init>(Ljava/lang/reflect/Field;Landroid/content/Context;LP8/p;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Set;)V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v8, v9, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-static {v12, v10, v8}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V

    goto/16 :goto_1a

    :cond_1c
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v14, :cond_1d

    new-instance v8, LC5/b;

    new-instance v9, LP8/f$e;

    move-object v1, v9

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move-object/from16 v7, v16

    invoke-direct/range {v1 .. v7}, LP8/f$e;-><init>(Ljava/lang/reflect/Field;Landroid/content/Context;LP8/p;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Set;)V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v8, v9, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-static {v12, v10, v8}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V

    goto/16 :goto_1a

    :cond_1d
    invoke-static {v10}, LP8/f;->D(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_55

    :try_start_16
    invoke-virtual {v10, v15}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/util/List;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_16} :catch_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_8c

    if-eqz v4, :cond_53

    move-object/from16 v3, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    :try_start_17
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v18
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_17} :catch_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_8a

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    if-eqz v18, :cond_1f

    move-object/from16 v23, v2

    :try_start_18
    move-object v2, v15

    check-cast v2, LJAVARuntime/InspectorMemory;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LJAVARuntime/InspectorMemory;->load(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_18} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_1c

    :try_start_19
    sget-object v18, LW7/b;->e:LX7/a;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_19
    .catch Ljava/lang/Error; {:try_start_19 .. :try_end_19} :catch_18

    move-object/from16 v21, v12

    :try_start_1a
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v12

    invoke-virtual {v12, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_17
    .catch Ljava/lang/Error; {:try_start_1a .. :try_end_1a} :catch_16

    goto :goto_23

    :catch_16
    move-exception v0

    :goto_20
    move-object v3, v0

    goto :goto_22

    :catch_17
    move-exception v0

    goto :goto_20

    :catch_18
    move-exception v0

    :goto_21
    move-object/from16 v21, v12

    goto :goto_20

    :catch_19
    move-exception v0

    goto :goto_21

    :goto_22
    :try_start_1b
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v3, 0x0

    :goto_23
    if-nez v3, :cond_1e

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    goto :goto_26

    :catch_1a
    move-exception v0

    :goto_24
    move-object v1, v0

    move v10, v13

    :goto_25
    move-object/from16 v8, v21

    move-object/from16 v36, v23

    goto/16 :goto_9b

    :catch_1b
    move-exception v0

    goto :goto_24

    :cond_1e
    :goto_26
    new-instance v12, LP8/f$f;

    invoke-direct {v12, v2, v10, v3}, LP8/f$f;-><init>(LJAVARuntime/InspectorMemory;Ljava/lang/reflect/Field;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iput-object v12, v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->b:Lgb/f;

    goto :goto_28

    :catch_1c
    move-exception v0

    :goto_27
    move-object/from16 v21, v12

    goto :goto_24

    :catch_1d
    move-exception v0

    goto :goto_27

    :cond_1f
    move-object/from16 v23, v2

    move-object/from16 v21, v12

    const/4 v3, 0x0

    :goto_28
    if-nez v3, :cond_20

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v3}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_1b} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_1a

    :cond_20
    :try_start_1c
    new-instance v12, LC5/b;

    new-instance v2, LC5/a;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v20, v1

    invoke-static/range {v18 .. v18}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x1

    invoke-direct {v2, v1, v15, v3}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    invoke-direct {v12, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v1, v12, LC5/b;->Q:LC5/a;

    const v2, 0x7f0500b2

    iput v2, v1, LC5/a;->p:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "L ("

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, LC5/a;->b:Ljava/lang/String;

    invoke-static {v10}, LP8/f;->C(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v15

    const/4 v1, -0x1

    filled-new-array {v1}, [I

    move-result-object v6

    move/from16 v1, v17

    move v3, v1

    :goto_29
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_1c} :catch_89
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_88

    if-ge v3, v2, :cond_50

    :try_start_1d
    invoke-static {v3, v4}, LMc/e;->a(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_1d} :catch_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_82

    move-object/from16 v18, v6

    const-string v6, " - "

    move-object/from16 v27, v6

    const-string v6, "name"

    move/from16 v28, v1

    const-string v1, "/"

    if-eqz v15, :cond_3b

    move-object/from16 v30, v2

    :try_start_1e
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_1e} :catch_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_52

    if-eq v15, v2, :cond_21

    if-ne v15, v7, :cond_22

    :cond_21
    move/from16 v33, v3

    move-object/from16 v37, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v11

    move-object v11, v12

    move v8, v13

    move-object/from16 v32, v15

    move-object/from16 v38, v18

    move-object/from16 v7, v20

    move/from16 v12, v28

    move-object/from16 v27, v30

    move-object v15, v4

    move-object/from16 v28, v10

    move-object/from16 v20, v14

    move-object v14, v9

    goto/16 :goto_5c

    :cond_22
    :try_start_1f
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_1f} :catch_4d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_4c

    if-eq v15, v2, :cond_23

    if-ne v15, v5, :cond_24

    :cond_23
    move/from16 v33, v3

    move-object/from16 v37, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object v8, v9

    move-object/from16 v41, v11

    move-object v11, v12

    move-object/from16 v32, v15

    move/from16 v12, v28

    move-object/from16 v27, v30

    move-object v15, v4

    move-object/from16 v28, v10

    move-object/from16 v45, v20

    move-object/from16 v20, v14

    move-object/from16 v14, v18

    move-object/from16 v18, v45

    goto/16 :goto_58

    :cond_24
    if-ne v15, v8, :cond_25

    :try_start_20
    iget-object v1, v12, LC5/b;->Q:LC5/a;

    iget-object v6, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v1, LP8/f$i;

    move-object/from16 v31, v12

    move-object/from16 v12, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v20

    move-object/from16 v32, v12

    move-object v12, v2

    move-object v2, v4

    move/from16 v33, v3

    move/from16 v3, v28

    move-object/from16 v36, v4

    move-object/from16 v4, p5

    move-object/from16 v37, v5

    move-object v5, v10

    move-object/from16 v38, v18

    move-object/from16 v18, v10

    move-object v10, v6

    move-object/from16 v6, p1

    move-object/from16 v39, v7

    move-object/from16 v7, p0

    move-object/from16 v40, v8

    move-object/from16 v8, v30

    invoke-direct/range {v1 .. v8}, LP8/f$i;-><init>(Ljava/util/List;ILP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v28

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLString:LC5/b$a;

    move-object/from16 v3, v20

    invoke-direct {v12, v3, v1, v2, v13}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_20} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_1a

    move v12, v8

    move-object/from16 v44, v11

    move v10, v13

    move-object/from16 v20, v14

    move-object/from16 v28, v18

    move-object/from16 v34, v31

    move-object/from16 v31, v32

    move-object/from16 v13, v36

    move-object/from16 v27, v37

    move-object/from16 v30, v39

    move-object/from16 v18, v40

    move-object/from16 v32, v15

    move-object/from16 v36, v23

    move-object v15, v9

    goto/16 :goto_8f

    :cond_25
    move/from16 v33, v3

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v31, v12

    move-object/from16 v38, v18

    move-object/from16 v32, v20

    move/from16 v8, v28

    move-object/from16 v18, v10

    :try_start_21
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_21} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_32

    if-eq v15, v2, :cond_26

    if-ne v15, v14, :cond_27

    :cond_26
    move v12, v8

    move-object/from16 v34, v9

    move-object/from16 v41, v11

    move-object/from16 v20, v14

    move-object/from16 v28, v18

    move-object/from16 v10, v30

    move-object/from16 v11, v31

    move-object/from16 v18, v32

    move-object/from16 v14, v38

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v32, v15

    move-object/from16 v15, v36

    goto/16 :goto_57

    :cond_27
    :try_start_22
    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_22} :catch_47
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_46

    if-eqz v2, :cond_2d

    :try_start_23
    invoke-virtual {v11, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_23} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_2c

    if-nez v2, :cond_2d

    move-object/from16 v10, p0

    move-object/from16 v12, v23

    :try_start_24
    invoke-virtual {v12, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_24} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_24} :catch_2a

    if-eqz v2, :cond_29

    move-object/from16 v7, p1

    :try_start_25
    move-object v2, v7

    check-cast v2, LJAVARuntime/InspectorMemory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, LJAVARuntime/InspectorMemory;->load(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_25} :catch_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_25} :catch_22

    :try_start_26
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_21
    .catch Ljava/lang/Error; {:try_start_26 .. :try_end_26} :catch_20

    move-object/from16 v5, v32

    :try_start_27
    invoke-virtual {v3, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_1f
    .catch Ljava/lang/Error; {:try_start_27 .. :try_end_27} :catch_1e

    goto :goto_2d

    :catch_1e
    move-exception v0

    :goto_2a
    move-object v1, v0

    goto :goto_2c

    :catch_1f
    move-exception v0

    goto :goto_2a

    :catch_20
    move-exception v0

    :goto_2b
    move-object/from16 v5, v32

    goto :goto_2a

    :catch_21
    move-exception v0

    goto :goto_2b

    :goto_2c
    :try_start_28
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_2d
    if-nez v1, :cond_28

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    goto :goto_30

    :catch_22
    move-exception v0

    :goto_2e
    move-object v1, v0

    move-object/from16 v36, v12

    move v10, v13

    :goto_2f
    move-object/from16 v8, v21

    goto/16 :goto_9b

    :catch_23
    move-exception v0

    goto :goto_2e

    :cond_28
    :goto_30
    new-instance v3, LP8/f$l;

    move-object/from16 v4, v18

    invoke-direct {v3, v2, v4, v8, v1}, LP8/f$l;-><init>(LJAVARuntime/InspectorMemory;Ljava/lang/reflect/Field;ILcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->b:Lgb/f;

    goto :goto_31

    :cond_29
    move-object/from16 v7, p1

    move-object/from16 v4, v18

    move-object/from16 v5, v32

    const/4 v1, 0x0

    :goto_31
    if-nez v1, :cond_2a

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_28} :catch_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_28 .. :try_end_28} :catch_22

    :cond_2a
    :try_start_29
    new-instance v3, LC5/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v18, v11

    const/4 v11, 0x1

    invoke-direct {v3, v2, v11, v1}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    const v1, 0x7f0500b2

    iput v1, v3, LC5/a;->p:I

    iget-object v2, v3, LC5/a;->o:Ljava/util/List;

    move-object v1, v15

    move-object v11, v2

    move-object/from16 v2, v30

    move-object/from16 v20, v14

    move-object v14, v3

    move-object/from16 v3, p2

    move-object/from16 v28, v4

    move-object/from16 v4, p3

    move-object v13, v5

    move/from16 v5, p4

    move-object/from16 v23, v9

    move-object/from16 v32, v13

    move-object/from16 v9, v27

    move-object v13, v6

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, LP8/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v14, LC5/a;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2b
    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_29} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_29} :catch_28

    if-eqz v2, :cond_2c

    :try_start_2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC5/b;

    iget-object v3, v2, LC5/b;->n:LC5/b$a;

    sget-object v4, LC5/b$a;->SLString:LC5/b$a;

    if-ne v3, v4, :cond_2b

    iget-object v3, v2, LC5/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_2a
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_2a} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_2a} :catch_26

    if-eqz v3, :cond_2b

    :try_start_2b
    iget-object v3, v2, LC5/b;->b:LD5/h;

    invoke-interface {v3}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, LC5/b;->b:LD5/h;

    invoke-interface {v2}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, LC5/a;->a:Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_25
    .catch Ljava/lang/Error; {:try_start_2b .. :try_end_2b} :catch_24

    :cond_2c
    move-object/from16 v11, v31

    goto :goto_36

    :catch_24
    move-exception v0

    :goto_33
    move-object v2, v0

    goto :goto_34

    :catch_25
    move-exception v0

    goto :goto_33

    :goto_34
    :try_start_2c
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2c .. :try_end_2c} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_2c} :catch_26

    goto :goto_32

    :catch_26
    move-exception v0

    :goto_35
    move/from16 v10, p4

    move-object v1, v0

    move-object/from16 v36, v12

    goto/16 :goto_2f

    :catch_27
    move-exception v0

    goto :goto_35

    :goto_36
    :try_start_2d
    iget-object v1, v11, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, LP8/f$m;
    :try_end_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_2d} :catch_29
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2d .. :try_end_2d} :catch_28

    move-object/from16 v6, p2

    move-object/from16 v5, p5

    move-object/from16 v9, v20

    move-object/from16 v13, v36

    move-object/from16 v4, v38

    :try_start_2e
    invoke-direct {v3, v4, v13, v5, v6}, LP8/f$m;-><init>([ILjava/util/List;LP8/p;Landroid/content/Context;)V

    move-object/from16 v20, v9

    move-object/from16 v9, v30

    invoke-direct {v2, v14, v9, v3}, LC5/b;-><init>(LC5/a;Ljava/lang/Object;LD5/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_2e} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_2e} :catch_26

    move-object v14, v4

    move-object v9, v5

    move-object/from16 v41, v18

    move-object/from16 v34, v23

    move-object/from16 v18, v32

    move-object/from16 v23, v12

    move-object/from16 v32, v15

    move v12, v8

    move-object v15, v13

    move-object v8, v6

    goto/16 :goto_53

    :catch_28
    move-exception v0

    :goto_37
    move-object/from16 v6, p2

    move-object/from16 v5, p5

    goto :goto_35

    :catch_29
    move-exception v0

    goto :goto_37

    :catch_2a
    move-exception v0

    :goto_38
    move-object/from16 v7, p1

    goto :goto_37

    :catch_2b
    move-exception v0

    goto :goto_38

    :cond_2d
    move-object/from16 v10, p0

    move-object/from16 v7, p1

    move-object/from16 v5, p5

    move-object v13, v6

    move-object/from16 v28, v18

    move-object/from16 v12, v23

    move-object/from16 v2, v27

    move-object/from16 v3, v36

    move-object/from16 v4, v38

    move-object/from16 v6, p2

    move-object/from16 v23, v9

    move-object/from16 v18, v11

    move-object/from16 v9, v30

    move-object/from16 v11, v31

    move-object/from16 v20, v14

    goto :goto_3a

    :catch_2c
    move-exception v0

    :goto_39
    move-object/from16 v10, p0

    move-object/from16 v7, p1

    move-object/from16 v6, p2

    move-object/from16 v5, p5

    move-object/from16 v12, v23

    goto :goto_35

    :catch_2d
    move-exception v0

    goto :goto_39

    :goto_3a
    :try_start_2f
    new-instance v14, LP8/q;

    move-object/from16 v27, v13

    move-object/from16 v41, v18

    move-object/from16 v13, p3

    invoke-direct {v14, v13}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    move-object/from16 v18, v2

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v2

    move-object/from16 v38, v4

    array-length v4, v2
    :try_end_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_2f} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_2f} :catch_44

    move/from16 v6, v17

    :goto_3b
    if-ge v6, v4, :cond_33

    move/from16 v30, v4

    :try_start_30
    aget-object v4, v2, v6

    move-object/from16 v31, v2

    iget-object v2, v4, LP8/h;->a:LP8/i;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13, v14}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v12, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_30
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_30} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_30} :catch_38

    if-eqz v2, :cond_2f

    :try_start_31
    move-object v2, v7

    check-cast v2, LJAVARuntime/InspectorMemory;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, LJAVARuntime/InspectorMemory;->load(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_31} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_31} :catch_26

    :try_start_32
    sget-object v6, LW7/b;->e:LX7/a;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v6
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_31
    .catch Ljava/lang/Error; {:try_start_32 .. :try_end_32} :catch_30

    move-object/from16 v13, v32

    :try_start_33
    invoke-virtual {v6, v1, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_2f
    .catch Ljava/lang/Error; {:try_start_33 .. :try_end_33} :catch_2e

    goto :goto_3f

    :catch_2e
    move-exception v0

    :goto_3c
    move-object v1, v0

    goto :goto_3e

    :catch_2f
    move-exception v0

    goto :goto_3c

    :catch_30
    move-exception v0

    :goto_3d
    move-object/from16 v13, v32

    goto :goto_3c

    :catch_31
    move-exception v0

    goto :goto_3d

    :goto_3e
    :try_start_34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v6, 0x0

    :goto_3f
    if-nez v6, :cond_2e

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    move-object v6, v1

    :cond_2e
    new-instance v1, LP8/f$n;

    move-object/from16 v32, v15

    move-object/from16 v15, v28

    invoke-direct {v1, v2, v15, v8, v6}, LP8/f$n;-><init>(LJAVARuntime/InspectorMemory;Ljava/lang/reflect/Field;ILcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iput-object v1, v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->b:Lgb/f;

    goto :goto_40

    :cond_2f
    move-object/from16 v13, v32

    move-object/from16 v32, v15

    move-object/from16 v15, v28

    const/4 v6, 0x0

    :goto_40
    if-nez v6, :cond_30

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v6}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V
    :try_end_34
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_34} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_34 .. :try_end_34} :catch_26

    :cond_30
    :try_start_35
    new-instance v2, LC5/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v13

    move-object/from16 v13, v23

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_35} :catch_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_35} :catch_38

    move-object/from16 v23, v12

    const/4 v12, 0x1

    :try_start_36
    invoke-direct {v2, v1, v12, v6}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    const v1, 0x7f0500b2

    iput v1, v2, LC5/a;->p:I

    iget-object v1, v4, LP8/h;->a:LP8/i;

    new-instance v4, Ld8/h;

    invoke-direct {v4, v3}, Ld8/h;-><init>(Ljava/util/List;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v12, LP8/f$o;

    invoke-direct {v12, v5, v15, v7, v10}, LP8/f$o;-><init>(LP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_36} :catch_37
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_36} :catch_36

    move-object/from16 v34, v13

    move-object v13, v2

    move-object/from16 v2, p2

    move-object/from16 v35, v15

    move-object v15, v3

    move-object v3, v4

    move-object/from16 v10, v38

    move v4, v8

    move-object/from16 v19, v9

    move-object v9, v5

    move-object/from16 v5, p1

    move-object v7, v12

    move v12, v8

    move-object v8, v14

    :try_start_37
    invoke-interface/range {v1 .. v8}, LP8/i;->getInspectorForList(Landroid/content/Context;Ld8/h;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;

    move-result-object v1
    :try_end_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_37} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_37} :catch_34

    if-eqz v1, :cond_31

    :try_start_38
    iget-object v2, v13, LC5/a;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_38} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_38} :catch_32

    goto :goto_42

    :catch_32
    move-exception v0

    :goto_41
    move/from16 v10, p4

    move-object v1, v0

    goto/16 :goto_25

    :catch_33
    move-exception v0

    goto :goto_41

    :cond_31
    :goto_42
    :try_start_39
    iget-object v1, v11, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, LP8/f$p;
    :try_end_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_39} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_39 .. :try_end_39} :catch_34

    move-object/from16 v8, p2

    :try_start_3a
    invoke-direct {v3, v10, v15, v9, v8}, LP8/f$p;-><init>([ILjava/util/List;LP8/p;Landroid/content/Context;)V

    move-object/from16 v7, v19

    invoke-direct {v2, v13, v7, v3}, LC5/b;-><init>(LC5/a;Ljava/lang/Object;LD5/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3a .. :try_end_3a} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_3a} :catch_32

    move-object v14, v10

    move-object/from16 v18, v28

    move-object/from16 v28, v35

    goto/16 :goto_53

    :catch_34
    move-exception v0

    :goto_43
    move-object/from16 v8, p2

    goto :goto_41

    :catch_35
    move-exception v0

    goto :goto_43

    :catch_36
    move-exception v0

    :goto_44
    move-object/from16 v8, p2

    move-object v9, v5

    goto :goto_41

    :catch_37
    move-exception v0

    goto :goto_44

    :catch_38
    move-exception v0

    :goto_45
    move-object/from16 v8, p2

    move-object v9, v5

    :goto_46
    move-object/from16 v23, v12

    goto :goto_41

    :catch_39
    move-exception v0

    goto :goto_45

    :cond_32
    move-object v7, v9

    move-object/from16 v34, v23

    move-object/from16 v35, v28

    move-object/from16 v28, v32

    move-object/from16 v10, v38

    move-object v9, v5

    move-object/from16 v23, v12

    move-object/from16 v32, v15

    move-object v15, v3

    move v12, v8

    move-object/from16 v8, p2

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v13, p3

    move v8, v12

    move-object/from16 v12, v23

    move/from16 v4, v30

    move-object/from16 v2, v31

    move-object/from16 v15, v32

    move-object/from16 v23, v34

    move-object/from16 v10, p0

    move-object v9, v7

    move-object/from16 v32, v28

    move-object/from16 v28, v35

    move-object/from16 v7, p1

    goto/16 :goto_3b

    :cond_33
    move-object v7, v9

    move-object v13, v12

    move-object/from16 v34, v23

    move-object/from16 v35, v28

    move-object/from16 v28, v32

    move-object/from16 v14, v38

    move-object v9, v5

    move v12, v8

    move-object/from16 v32, v15

    move-object/from16 v8, p2

    move-object v15, v3

    :try_start_3b
    invoke-virtual {v13, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_3b} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_3b} :catch_42

    if-eqz v2, :cond_35

    move-object/from16 v6, p1

    :try_start_3c
    move-object v2, v6

    check-cast v2, LJAVARuntime/InspectorMemory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, LJAVARuntime/InspectorMemory;->load(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_3c} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_3c} :catch_3e

    :try_start_3d
    sget-object v3, LW7/b;->e:LX7/a;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v3
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3d} :catch_3d
    .catch Ljava/lang/Error; {:try_start_3d .. :try_end_3d} :catch_3c

    move-object/from16 v5, v28

    :try_start_3e
    invoke-virtual {v3, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_3e} :catch_3b
    .catch Ljava/lang/Error; {:try_start_3e .. :try_end_3e} :catch_3a

    goto :goto_4a

    :catch_3a
    move-exception v0

    :goto_47
    move-object v1, v0

    goto :goto_49

    :catch_3b
    move-exception v0

    goto :goto_47

    :catch_3c
    move-exception v0

    :goto_48
    move-object/from16 v5, v28

    goto :goto_47

    :catch_3d
    move-exception v0

    goto :goto_48

    :goto_49
    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_4a
    if-nez v1, :cond_34

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    goto :goto_4c

    :catch_3e
    move-exception v0

    :goto_4b
    move/from16 v10, p4

    move-object v1, v0

    move-object/from16 v36, v13

    goto/16 :goto_2f

    :catch_3f
    move-exception v0

    goto :goto_4b

    :cond_34
    :goto_4c
    new-instance v3, LP8/f$q;

    move-object/from16 v4, v35

    invoke-direct {v3, v2, v4, v12, v1}, LP8/f$q;-><init>(LJAVARuntime/InspectorMemory;Ljava/lang/reflect/Field;ILcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->b:Lgb/f;

    goto :goto_4d

    :cond_35
    move-object/from16 v6, p1

    move-object/from16 v5, v28

    move-object/from16 v4, v35

    const/4 v1, 0x0

    :goto_4d
    if-nez v1, :cond_36

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V
    :try_end_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_3f} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_3f} :catch_3e

    :cond_36
    :try_start_40
    new-instance v3, LC5/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v34

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_40} :catch_43
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_40} :catch_42

    move-object/from16 v23, v13

    const/4 v13, 0x1

    :try_start_41
    invoke-direct {v3, v2, v13, v1}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    const v1, 0x7f0500b2

    iput v1, v3, LC5/a;->p:I

    iget-object v2, v3, LC5/a;->o:Ljava/util/List;

    move-object/from16 v1, v32

    move-object/from16 v34, v10

    move-object/from16 v13, v18

    move-object v10, v2

    move-object v2, v7

    move-object/from16 v30, v7

    move-object v7, v3

    move-object/from16 v3, p2

    move-object/from16 v28, v4

    move-object/from16 v4, p3

    move-object/from16 v18, v5

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, LP8/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v7, LC5/a;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC5/b;

    iget-object v3, v2, LC5/b;->n:LC5/b$a;

    sget-object v4, LC5/b$a;->SLString:LC5/b$a;

    if-ne v3, v4, :cond_37

    iget-object v3, v2, LC5/b;->l:Ljava/lang/String;

    move-object/from16 v10, v27

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_41
    .catch Ljava/lang/IllegalAccessException; {:try_start_41 .. :try_end_41} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_41 .. :try_end_41} :catch_32

    if-eqz v3, :cond_38

    :try_start_42
    iget-object v3, v2, LC5/b;->b:LD5/h;

    invoke-interface {v3}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, LC5/b;->b:LD5/h;

    invoke-interface {v2}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, LC5/a;->a:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_41
    .catch Ljava/lang/Error; {:try_start_42 .. :try_end_42} :catch_40

    goto :goto_52

    :catch_40
    move-exception v0

    :goto_4f
    move-object v2, v0

    goto :goto_50

    :catch_41
    move-exception v0

    goto :goto_4f

    :goto_50
    :try_start_43
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_51

    :cond_37
    move-object/from16 v10, v27

    :cond_38
    :goto_51
    move-object/from16 v27, v10

    goto :goto_4e

    :cond_39
    :goto_52
    iget-object v1, v11, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, LP8/f$r;

    invoke-direct {v3, v14, v15, v9, v8}, LP8/f$r;-><init>([ILjava/util/List;LP8/p;Landroid/content/Context;)V

    move-object/from16 v10, v30

    invoke-direct {v2, v7, v10, v3}, LC5/b;-><init>(LC5/a;Ljava/lang/Object;LD5/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_53
    move/from16 v10, p4

    move-object/from16 v38, v14

    move-object v13, v15

    move-object/from16 v31, v18

    move-object/from16 v36, v23

    move-object/from16 v15, v34

    move-object/from16 v27, v37

    move-object/from16 v30, v39

    move-object/from16 v18, v40

    move-object/from16 v44, v41

    move-object/from16 v34, v11

    goto/16 :goto_8f

    :catch_42
    move-exception v0

    :goto_54
    move-object/from16 v23, v13

    goto/16 :goto_41

    :catch_43
    move-exception v0

    goto :goto_54

    :catch_44
    move-exception v0

    :goto_55
    move-object v9, v5

    move-object v8, v6

    goto/16 :goto_46

    :catch_45
    move-exception v0

    goto :goto_55

    :catch_46
    move-exception v0

    :goto_56
    move-object/from16 v8, p2

    move-object/from16 v9, p5

    goto/16 :goto_41

    :catch_47
    move-exception v0

    goto :goto_56

    :goto_57
    iget-object v1, v11, LC5/b;->Q:LC5/a;

    iget-object v13, v1, LC5/a;->o:Ljava/util/List;

    new-instance v7, LC5/b;

    new-instance v6, LP8/f$j;

    move-object v1, v6

    move-object v2, v15

    move v3, v12

    move-object/from16 v4, p5

    move-object/from16 v5, v28

    move-object/from16 v30, v10

    move-object v10, v6

    move-object/from16 v6, p1

    move-object v9, v7

    move-object/from16 v27, v30

    move-object/from16 v7, p0

    move-object/from16 v8, v27

    invoke-direct/range {v1 .. v8}, LP8/f$j;-><init>(Ljava/util/List;ILP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v34

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v9, v10, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Ljava/lang/IllegalAccessException; {:try_start_43 .. :try_end_43} :catch_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_43} :catch_32

    move/from16 v10, p4

    move-object/from16 v34, v11

    move-object/from16 v38, v14

    move-object v13, v15

    move-object/from16 v31, v18

    move-object/from16 v36, v23

    move-object/from16 v27, v37

    move-object/from16 v30, v39

    move-object/from16 v18, v40

    move-object/from16 v44, v41

    move-object v15, v8

    goto/16 :goto_8f

    :goto_58
    :try_start_44
    iget-object v1, v11, LC5/b;->Q:LC5/a;

    iget-object v9, v1, LC5/a;->o:Ljava/util/List;

    new-instance v10, LC5/b;

    new-instance v13, LP8/f$h;

    move-object v1, v13

    move-object v2, v15

    move v3, v12

    move-object/from16 v4, p5

    move-object/from16 v5, v28

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move-object/from16 v38, v14

    move-object v14, v8

    move-object/from16 v8, v27

    invoke-direct/range {v1 .. v8}, LP8/f$h;-><init>(Ljava/util/List;ILP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;
    :try_end_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_44 .. :try_end_44} :catch_4b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_44 .. :try_end_44} :catch_4a

    move/from16 v8, p4

    move-object/from16 v7, v18

    :try_start_45
    invoke-direct {v10, v13, v1, v2, v8}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Ljava/lang/IllegalAccessException; {:try_start_45 .. :try_end_45} :catch_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_45 .. :try_end_45} :catch_48

    move-object/from16 v31, v7

    move v10, v8

    move-object/from16 v34, v11

    move-object v13, v15

    move-object/from16 v36, v23

    move-object/from16 v27, v37

    move-object/from16 v30, v39

    move-object/from16 v18, v40

    move-object/from16 v44, v41

    move-object v15, v14

    goto/16 :goto_8f

    :catch_48
    move-exception v0

    :goto_59
    move-object v1, v0

    move v10, v8

    goto/16 :goto_25

    :catch_49
    move-exception v0

    goto :goto_59

    :catch_4a
    move-exception v0

    :goto_5a
    move/from16 v8, p4

    goto :goto_59

    :catch_4b
    move-exception v0

    goto :goto_5a

    :catch_4c
    move-exception v0

    :goto_5b
    move v8, v13

    goto :goto_59

    :catch_4d
    move-exception v0

    goto :goto_5b

    :goto_5c
    :try_start_46
    iget-object v1, v11, LC5/b;->Q:LC5/a;

    iget-object v9, v1, LC5/a;->o:Ljava/util/List;

    new-instance v10, LC5/b;

    new-instance v13, LP8/f$g;
    :try_end_46
    .catch Ljava/lang/IllegalAccessException; {:try_start_46 .. :try_end_46} :catch_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_46} :catch_50

    move-object v1, v13

    move-object v2, v15

    move v3, v12

    move-object/from16 v4, p5

    move-object/from16 v5, v28

    move-object/from16 v6, p1

    move-object/from16 v42, v7

    move-object/from16 v7, p0

    move-object/from16 v36, v15

    move v15, v8

    move-object/from16 v8, v27

    :try_start_47
    invoke-direct/range {v1 .. v8}, LP8/f$g;-><init>(Ljava/util/List;ILP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v10, v13, v1, v2, v15}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_47
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_47} :catch_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_47} :catch_4e

    :cond_3a
    move-object/from16 v34, v11

    move v10, v15

    move-object/from16 v13, v36

    move-object/from16 v27, v37

    move-object/from16 v30, v39

    move-object/from16 v18, v40

    :goto_5d
    move-object/from16 v44, v41

    move-object/from16 v31, v42

    move-object v15, v14

    move-object/from16 v36, v23

    goto/16 :goto_8f

    :catch_4e
    move-exception v0

    :goto_5e
    move-object v1, v0

    move v10, v15

    goto/16 :goto_25

    :catch_4f
    move-exception v0

    goto :goto_5e

    :catch_50
    move-exception v0

    :goto_5f
    move v15, v8

    goto :goto_5e

    :catch_51
    move-exception v0

    goto :goto_5f

    :catch_52
    move-exception v0

    :goto_60
    move v15, v13

    goto :goto_5e

    :catch_53
    move-exception v0

    goto :goto_60

    :cond_3b
    move/from16 v33, v3

    move-object/from16 v36, v4

    move-object/from16 v37, v5

    move-object/from16 v39, v7

    move-object/from16 v40, v8

    move-object/from16 v41, v11

    move-object v11, v12

    move-object/from16 v32, v15

    move-object/from16 v38, v18

    move-object/from16 v42, v20

    move/from16 v12, v28

    move-object/from16 v28, v10

    move v15, v13

    move-object/from16 v20, v14

    move-object/from16 v13, v27

    move-object v10, v6

    move-object v14, v9

    move-object v9, v2

    if-eqz v9, :cond_3a

    :try_start_48
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    :try_end_48
    .catch Ljava/lang/IllegalAccessException; {:try_start_48 .. :try_end_48} :catch_81
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_48} :catch_80

    if-eq v2, v3, :cond_4f

    :try_start_49
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v8, v39

    if-ne v2, v8, :cond_3c

    move-object/from16 v30, v8

    move-object v10, v11

    move v8, v15

    move-object/from16 v13, v36

    move-object/from16 v27, v37

    :goto_61
    move-object/from16 v18, v40

    move-object/from16 v44, v41

    move-object/from16 v31, v42

    move-object v15, v14

    move-object/from16 v36, v23

    move-object/from16 v23, v9

    goto/16 :goto_8b

    :cond_3c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_49
    .catch Ljava/lang/IllegalAccessException; {:try_start_49 .. :try_end_49} :catch_7b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_49 .. :try_end_49} :catch_7a

    if-eq v2, v3, :cond_4e

    :try_start_4a
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v7, v37

    if-ne v2, v7, :cond_3d

    move-object/from16 v27, v7

    move-object/from16 v30, v8

    move-object v10, v11

    move-object v15, v14

    move-object/from16 v13, v36

    :goto_62
    move-object/from16 v18, v40

    move-object/from16 v44, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v23

    move-object/from16 v23, v9

    goto/16 :goto_87

    :cond_3d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_4a
    .catch Ljava/lang/IllegalAccessException; {:try_start_4a .. :try_end_4a} :catch_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_4a} :catch_74

    move-object/from16 v6, v40

    if-ne v2, v6, :cond_3e

    :try_start_4b
    iget-object v1, v11, LC5/b;->Q:LC5/a;

    iget-object v10, v1, LC5/a;->o:Ljava/util/List;

    new-instance v13, LC5/b;

    new-instance v5, LP8/f$u;

    move-object v1, v5

    move-object/from16 v2, v36

    move v3, v12

    move-object/from16 v4, p5

    move-object/from16 v31, v11

    move-object v11, v5

    move-object/from16 v5, v28

    move-object/from16 v18, v6

    move-object/from16 v6, p1

    move-object/from16 v27, v7

    move-object/from16 v7, p0

    move-object/from16 v30, v8

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, LP8/f$u;-><init>(Ljava/util/List;ILP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v13, v11, v1, v2, v15}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4b .. :try_end_4b} :catch_4f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_4b} :catch_4e

    move v10, v15

    move-object/from16 v34, v31

    move-object/from16 v13, v36

    goto/16 :goto_5d

    :cond_3e
    move-object/from16 v18, v6

    move-object/from16 v27, v7

    move-object/from16 v30, v8

    move-object/from16 v31, v11

    :try_start_4c
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
    :try_end_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c .. :try_end_4c} :catch_75
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4c .. :try_end_4c} :catch_74

    if-eq v2, v3, :cond_4d

    :try_start_4d
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v11, v20

    if-ne v2, v11, :cond_3f

    move-object/from16 v7, p2

    move-object/from16 v15, p5

    move-object v5, v9

    move-object/from16 v20, v11

    :goto_63
    move-object v6, v14

    move-object/from16 v9, v28

    move-object/from16 v10, v31

    move-object/from16 v13, v36

    move-object/from16 v14, v38

    move-object/from16 v44, v41

    move-object/from16 v35, v42

    move-object/from16 v36, v23

    goto/16 :goto_86

    :cond_3f
    sget-object v2, LW7/b;->j:Ld8/j;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_4d .. :try_end_4d} :catch_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_4d} :catch_72

    if-eqz v2, :cond_46

    move-object/from16 v8, v41

    :try_start_4e
    invoke-virtual {v8, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_4e .. :try_end_4e} :catch_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_4e} :catch_64

    if-nez v2, :cond_45

    move-object v6, v14

    move-object/from16 v7, v23

    move-object/from16 v14, p0

    :try_start_4f
    invoke-virtual {v7, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_4f .. :try_end_4f} :catch_63
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_4f} :catch_62

    if-eqz v2, :cond_41

    move-object/from16 v5, p1

    :try_start_50
    move-object v2, v5

    check-cast v2, LJAVARuntime/InspectorMemory;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v28 .. v28}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, LJAVARuntime/InspectorMemory;->load(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_50} :catch_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_50} :catch_58

    :try_start_51
    sget-object v3, LW7/b;->e:LX7/a;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v3
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_57
    .catch Ljava/lang/Error; {:try_start_51 .. :try_end_51} :catch_56

    move-object/from16 v4, v42

    :try_start_52
    invoke-virtual {v3, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_55
    .catch Ljava/lang/Error; {:try_start_52 .. :try_end_52} :catch_54

    goto :goto_67

    :catch_54
    move-exception v0

    :goto_64
    move-object v1, v0

    goto :goto_66

    :catch_55
    move-exception v0

    goto :goto_64

    :catch_56
    move-exception v0

    :goto_65
    move-object/from16 v4, v42

    goto :goto_64

    :catch_57
    move-exception v0

    goto :goto_65

    :goto_66
    :try_start_53
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_67
    if-nez v1, :cond_40

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    goto :goto_69

    :catch_58
    move-exception v0

    :goto_68
    move-object v1, v0

    move-object/from16 v36, v7

    move v10, v15

    goto/16 :goto_2f

    :catch_59
    move-exception v0

    goto :goto_68

    :cond_40
    :goto_69
    new-instance v3, LP8/f$x;

    move-object/from16 v20, v11

    move-object/from16 v11, v28

    invoke-direct {v3, v2, v11, v12, v1}, LP8/f$x;-><init>(LJAVARuntime/InspectorMemory;Ljava/lang/reflect/Field;ILcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iput-object v3, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->b:Lgb/f;

    goto :goto_6a

    :cond_41
    move-object/from16 v5, p1

    move-object/from16 v20, v11

    move-object/from16 v11, v28

    move-object/from16 v4, v42

    const/4 v1, 0x0

    :goto_6a
    if-nez v1, :cond_42

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V
    :try_end_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_53 .. :try_end_53} :catch_59
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_53} :catch_58

    :cond_42
    :try_start_54
    new-instance v3, LC5/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v28, v4

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4, v1}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    const v1, 0x7f0500b2

    iput v1, v3, LC5/a;->p:I

    iget-object v4, v3, LC5/a;->o:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_54
    .catch Ljava/lang/IllegalAccessException; {:try_start_54 .. :try_end_54} :catch_61
    .catch Ljava/lang/IllegalArgumentException; {:try_start_54 .. :try_end_54} :catch_60

    move-object v2, v9

    move-object/from16 v41, v8

    move-object v8, v3

    move-object/from16 v3, p2

    move-object v15, v4

    move-object/from16 v4, p3

    move-object/from16 v35, v11

    move-object v11, v5

    move/from16 v5, p4

    move-object/from16 v43, v6

    move-object/from16 v6, p5

    :try_start_55
    invoke-static/range {v1 .. v6}, LP8/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, v8, LC5/a;->o:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_43
    :goto_6b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_55
    .catch Ljava/lang/IllegalAccessException; {:try_start_55 .. :try_end_55} :catch_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_55 .. :try_end_55} :catch_5e

    if-eqz v2, :cond_44

    :try_start_56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC5/b;

    iget-object v3, v2, LC5/b;->n:LC5/b$a;

    sget-object v4, LC5/b$a;->SLString:LC5/b$a;

    if-ne v3, v4, :cond_43

    iget-object v3, v2, LC5/b;->l:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_56 .. :try_end_56} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_56} :catch_5c

    if-eqz v3, :cond_43

    :try_start_57
    iget-object v3, v2, LC5/b;->b:LD5/h;

    invoke-interface {v3}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v3

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, LC5/b;->b:LD5/h;

    invoke-interface {v2}, LD5/h;->get()Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v2

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, LC5/a;->a:Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_5b
    .catch Ljava/lang/Error; {:try_start_57 .. :try_end_57} :catch_5a

    :cond_44
    move-object/from16 v10, v31

    goto :goto_6f

    :catch_5a
    move-exception v0

    :goto_6c
    move-object v2, v0

    goto :goto_6d

    :catch_5b
    move-exception v0

    goto :goto_6c

    :goto_6d
    :try_start_58
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_58 .. :try_end_58} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_58 .. :try_end_58} :catch_5c

    goto :goto_6b

    :catch_5c
    move-exception v0

    :goto_6e
    move/from16 v10, p4

    move-object v1, v0

    move-object/from16 v36, v7

    goto/16 :goto_2f

    :catch_5d
    move-exception v0

    goto :goto_6e

    :goto_6f
    :try_start_59
    iget-object v1, v10, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, LP8/f$y;
    :try_end_59
    .catch Ljava/lang/IllegalAccessException; {:try_start_59 .. :try_end_59} :catch_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_59} :catch_5e

    move-object/from16 v13, p2

    move-object/from16 v15, p5

    move-object/from16 v6, v36

    move-object/from16 v5, v38

    :try_start_5a
    invoke-direct {v3, v5, v6, v15, v13}, LP8/f$y;-><init>([ILjava/util/List;LP8/p;Landroid/content/Context;)V

    invoke-direct {v2, v8, v9, v3}, LC5/b;-><init>(LC5/a;Ljava/lang/Object;LD5/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5a
    .catch Ljava/lang/IllegalAccessException; {:try_start_5a .. :try_end_5a} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5a .. :try_end_5a} :catch_5c

    move-object/from16 v38, v5

    move-object v13, v6

    move-object/from16 v36, v7

    move-object/from16 v34, v10

    move-object/from16 v31, v28

    move-object/from16 v28, v35

    move-object/from16 v44, v41

    move-object/from16 v15, v43

    :goto_70
    move/from16 v10, p4

    goto/16 :goto_8f

    :catch_5e
    move-exception v0

    :goto_71
    move-object/from16 v13, p2

    move-object/from16 v15, p5

    goto :goto_6e

    :catch_5f
    move-exception v0

    goto :goto_71

    :catch_60
    move-exception v0

    :goto_72
    move-object/from16 v13, p2

    move-object/from16 v15, p5

    move-object v11, v5

    goto :goto_6e

    :catch_61
    move-exception v0

    goto :goto_72

    :catch_62
    move-exception v0

    :goto_73
    move-object/from16 v11, p1

    goto :goto_71

    :catch_63
    move-exception v0

    goto :goto_73

    :cond_45
    move-object/from16 v13, p2

    move-object/from16 v15, p5

    move-object/from16 v41, v8

    :goto_74
    move-object/from16 v20, v11

    move-object/from16 v43, v14

    move-object/from16 v7, v23

    move-object/from16 v35, v28

    move-object/from16 v10, v31

    move-object/from16 v6, v36

    move-object/from16 v5, v38

    move-object/from16 v28, v42

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    goto :goto_76

    :catch_64
    move-exception v0

    :goto_75
    move-object/from16 v14, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move-object/from16 v15, p5

    move-object/from16 v7, v23

    goto :goto_6e

    :catch_65
    move-exception v0

    goto :goto_75

    :cond_46
    move-object/from16 v13, p2

    move-object/from16 v15, p5

    goto :goto_74

    :goto_76
    :try_start_5b
    new-instance v8, LP8/q;

    move-object/from16 v4, p3

    invoke-direct {v8, v4}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v2

    array-length v3, v2

    move/from16 v4, v17

    :goto_77
    if-ge v4, v3, :cond_4c

    move/from16 v23, v3

    aget-object v3, v2, v4

    move-object/from16 v31, v2

    iget-object v2, v3, LP8/h;->a:LP8/i;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v34

    move-object/from16 v38, v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v8}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {v7, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_5b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5b .. :try_end_5b} :catch_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_5b} :catch_70

    if-eqz v2, :cond_48

    :try_start_5c
    move-object v2, v11

    check-cast v2, LJAVARuntime/InspectorMemory;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v35 .. v35}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, LJAVARuntime/InspectorMemory;->load(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_5c} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_5c} :catch_5c

    :try_start_5d
    sget-object v4, LW7/b;->e:LX7/a;

    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v4
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_69
    .catch Ljava/lang/Error; {:try_start_5d .. :try_end_5d} :catch_68

    move-object/from16 v5, v28

    :try_start_5e
    invoke-virtual {v4, v1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_67
    .catch Ljava/lang/Error; {:try_start_5e .. :try_end_5e} :catch_66

    goto :goto_7b

    :catch_66
    move-exception v0

    :goto_78
    move-object v1, v0

    goto :goto_7a

    :catch_67
    move-exception v0

    goto :goto_78

    :catch_68
    move-exception v0

    :goto_79
    move-object/from16 v5, v28

    goto :goto_78

    :catch_69
    move-exception v0

    goto :goto_79

    :goto_7a
    :try_start_5f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_7b
    if-nez v1, :cond_47

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V

    :cond_47
    new-instance v4, LP8/f$z;

    move-object/from16 v28, v9

    move-object/from16 v9, v35

    invoke-direct {v4, v2, v9, v12, v1}, LP8/f$z;-><init>(LJAVARuntime/InspectorMemory;Ljava/lang/reflect/Field;ILcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    iput-object v4, v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;->b:Lgb/f;

    goto :goto_7c

    :cond_48
    move-object/from16 v5, v28

    move-object/from16 v28, v9

    move-object/from16 v9, v35

    const/4 v1, 0x0

    :goto_7c
    if-nez v1, :cond_49

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;-><init>()V
    :try_end_5f
    .catch Ljava/lang/IllegalAccessException; {:try_start_5f .. :try_end_5f} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5f .. :try_end_5f} :catch_5c

    :cond_49
    :try_start_60
    new-instance v4, LC5/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_60 .. :try_end_60} :catch_71
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_60} :catch_70

    move-object/from16 v13, v43

    :try_start_61
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v42, v5

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5, v1}, LC5/a;-><init>(Ljava/lang/String;ZLcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/InspectorEditor;)V

    const v1, 0x7f0500b2

    iput v1, v4, LC5/a;->p:I

    iget-object v1, v3, LP8/h;->a:LP8/i;

    new-instance v3, Ld8/h;

    invoke-direct {v3, v6}, Ld8/h;-><init>(Ljava/util/List;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    new-instance v5, LP8/f$A;

    invoke-direct {v5, v15, v9, v11, v14}, LP8/f$A;-><init>(LP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_61
    .catch Ljava/lang/IllegalAccessException; {:try_start_61 .. :try_end_61} :catch_6f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_61 .. :try_end_61} :catch_6e

    move-object/from16 v2, p2

    move-object v11, v4

    move-object/from16 v34, v13

    move-object/from16 v13, p3

    move v4, v12

    move-object/from16 v31, v5

    move-object/from16 v14, v38

    move-object/from16 v35, v42

    move-object/from16 v5, p1

    move-object v13, v6

    move-object/from16 v6, v23

    move-object/from16 v36, v7

    move-object/from16 v7, v31

    move-object/from16 v44, v41

    :try_start_62
    invoke-interface/range {v1 .. v8}, LP8/i;->getInspectorForList(Landroid/content/Context;Ld8/h;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;

    move-result-object v1
    :try_end_62
    .catch Ljava/lang/IllegalAccessException; {:try_start_62 .. :try_end_62} :catch_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_62 .. :try_end_62} :catch_6c

    if-eqz v1, :cond_4a

    :try_start_63
    iget-object v2, v11, LC5/a;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/IllegalAccessException; {:try_start_63 .. :try_end_63} :catch_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_63 .. :try_end_63} :catch_6a

    goto :goto_7f

    :catch_6a
    move-exception v0

    :goto_7d
    move/from16 v10, p4

    :goto_7e
    move-object v1, v0

    goto/16 :goto_2f

    :catch_6b
    move-exception v0

    goto :goto_7d

    :cond_4a
    :goto_7f
    :try_start_64
    iget-object v1, v10, LC5/b;->Q:LC5/a;

    iget-object v1, v1, LC5/a;->o:Ljava/util/List;

    new-instance v2, LC5/b;

    new-instance v3, LP8/f$B;
    :try_end_64
    .catch Ljava/lang/IllegalAccessException; {:try_start_64 .. :try_end_64} :catch_6d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_64} :catch_6c

    move-object/from16 v7, p2

    move-object/from16 v6, v34

    :try_start_65
    invoke-direct {v3, v14, v13, v15, v7}, LP8/f$B;-><init>([ILjava/util/List;LP8/p;Landroid/content/Context;)V

    move-object/from16 v5, v28

    invoke-direct {v2, v11, v5, v3}, LC5/b;-><init>(LC5/a;Ljava/lang/Object;LD5/i;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v15, v6

    move-object/from16 v28, v9

    move-object/from16 v34, v10

    move-object/from16 v38, v14

    :goto_80
    move-object/from16 v31, v35

    goto/16 :goto_70

    :catch_6c
    move-exception v0

    :goto_81
    move-object/from16 v7, p2

    goto :goto_7d

    :catch_6d
    move-exception v0

    goto :goto_81

    :catch_6e
    move-exception v0

    :goto_82
    move-object/from16 v36, v7

    goto :goto_81

    :catch_6f
    move-exception v0

    goto :goto_82

    :catch_70
    move-exception v0

    :goto_83
    move-object/from16 v36, v7

    move-object v7, v13

    goto :goto_7d

    :catch_71
    move-exception v0

    goto :goto_83

    :cond_4b
    move-object/from16 v36, v7

    move-object v5, v9

    move-object v7, v13

    move-object/from16 v9, v35

    move-object/from16 v14, v38

    move-object/from16 v44, v41

    move-object v13, v6

    move-object/from16 v35, v28

    move-object/from16 v6, v43

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v11, p1

    move-object v6, v13

    move/from16 v3, v23

    move-object/from16 v2, v31

    move-object v13, v7

    move-object/from16 v35, v9

    move-object/from16 v7, v36

    move-object v9, v5

    move-object v5, v14

    move-object/from16 v14, p0

    goto/16 :goto_77

    :cond_4c
    move-object/from16 v36, v7

    move-object v7, v13

    move-object/from16 v9, v35

    move-object/from16 v44, v41

    move-object v13, v6

    move-object/from16 v38, v5

    move-object/from16 v34, v10

    move-object/from16 v31, v28

    move-object/from16 v15, v43

    move/from16 v10, p4

    move-object/from16 v28, v9

    goto/16 :goto_8f

    :catch_72
    move-exception v0

    :goto_84
    move-object/from16 v7, p2

    move-object/from16 v15, p5

    :goto_85
    move-object/from16 v36, v23

    goto :goto_7d

    :catch_73
    move-exception v0

    goto :goto_84

    :cond_4d
    move-object/from16 v7, p2

    move-object/from16 v15, p5

    move-object v5, v9

    goto/16 :goto_63

    :goto_86
    iget-object v1, v10, LC5/b;->Q:LC5/a;

    iget-object v11, v1, LC5/a;->o:Ljava/util/List;

    new-instance v8, LC5/b;

    new-instance v4, LP8/f$w;

    move-object v1, v4

    move-object v2, v13

    move v3, v12

    move-object/from16 v38, v14

    move-object v14, v4

    move-object/from16 v4, p5

    move-object/from16 v23, v5

    move-object v5, v9

    move-object v15, v6

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move-object/from16 v28, v9

    move-object v9, v8

    move-object/from16 v8, v23

    invoke-direct/range {v1 .. v8}, LP8/f$w;-><init>(Ljava/util/List;ILP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v9, v14, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_65
    .catch Ljava/lang/IllegalAccessException; {:try_start_65 .. :try_end_65} :catch_6b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_65} :catch_6a

    move-object/from16 v34, v10

    goto/16 :goto_80

    :catch_74
    move-exception v0

    goto :goto_85

    :catch_75
    move-exception v0

    goto :goto_85

    :cond_4e
    move-object/from16 v30, v8

    move-object v10, v11

    move-object v15, v14

    move-object/from16 v13, v36

    move-object/from16 v27, v37

    goto/16 :goto_62

    :goto_87
    :try_start_66
    iget-object v1, v10, LC5/b;->Q:LC5/a;

    iget-object v9, v1, LC5/a;->o:Ljava/util/List;

    new-instance v11, LC5/b;

    new-instance v14, LP8/f$t;

    move-object v1, v14

    move-object v2, v13

    move v3, v12

    move-object/from16 v4, p5

    move-object/from16 v5, v28

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move-object/from16 v8, v23

    invoke-direct/range {v1 .. v8}, LP8/f$t;-><init>(Ljava/util/List;ILP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLInt:LC5/b$a;
    :try_end_66
    .catch Ljava/lang/IllegalAccessException; {:try_start_66 .. :try_end_66} :catch_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_66} :catch_78

    move/from16 v8, p4

    move-object/from16 v31, v35

    :try_start_67
    invoke-direct {v11, v14, v1, v2, v8}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/IllegalAccessException; {:try_start_67 .. :try_end_67} :catch_77
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_67} :catch_76

    move-object/from16 v34, v10

    move v10, v8

    goto/16 :goto_8f

    :catch_76
    move-exception v0

    :goto_88
    move-object v1, v0

    move v10, v8

    goto/16 :goto_2f

    :catch_77
    move-exception v0

    goto :goto_88

    :catch_78
    move-exception v0

    :goto_89
    move/from16 v8, p4

    goto :goto_88

    :catch_79
    move-exception v0

    goto :goto_89

    :catch_7a
    move-exception v0

    :goto_8a
    move v8, v15

    move-object/from16 v36, v23

    goto :goto_88

    :catch_7b
    move-exception v0

    goto :goto_8a

    :cond_4f
    move-object v10, v11

    move v8, v15

    move-object/from16 v13, v36

    move-object/from16 v27, v37

    move-object/from16 v30, v39

    goto/16 :goto_61

    :goto_8b
    :try_start_68
    iget-object v1, v10, LC5/b;->Q:LC5/a;

    iget-object v9, v1, LC5/a;->o:Ljava/util/List;

    new-instance v11, LC5/b;

    new-instance v14, LP8/f$s;
    :try_end_68
    .catch Ljava/lang/IllegalAccessException; {:try_start_68 .. :try_end_68} :catch_7f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_68 .. :try_end_68} :catch_7e

    move-object v1, v14

    move-object v2, v13

    move v3, v12

    move-object/from16 v4, p5

    move-object/from16 v5, v28

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move-object/from16 v34, v10

    move v10, v8

    move-object/from16 v8, v23

    :try_start_69
    invoke-direct/range {v1 .. v8}, LP8/f$s;-><init>(Ljava/util/List;ILP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v11, v14, v1, v2, v10}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Z)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    :catch_7c
    move-exception v0

    goto/16 :goto_7e

    :catch_7d
    move-exception v0

    goto/16 :goto_7e

    :catch_7e
    move-exception v0

    :goto_8c
    move v10, v8

    goto/16 :goto_7e

    :catch_7f
    move-exception v0

    goto :goto_8c

    :catch_80
    move-exception v0

    :goto_8d
    move v10, v15

    :goto_8e
    move-object/from16 v36, v23

    goto/16 :goto_7e

    :catch_81
    move-exception v0

    goto :goto_8d

    :goto_8f
    add-int/lit8 v1, v12, 0x1

    add-int/lit8 v3, v33, 0x1

    move-object v4, v13

    move-object v9, v15

    move-object/from16 v8, v18

    move-object/from16 v14, v20

    move-object/from16 v5, v27

    move-object/from16 v7, v30

    move-object/from16 v20, v31

    move-object/from16 v15, v32

    move-object/from16 v12, v34

    move-object/from16 v23, v36

    move-object/from16 v6, v38

    move-object/from16 v11, v44

    move v13, v10

    move-object/from16 v10, v28

    goto/16 :goto_29

    :catch_82
    move-exception v0

    :goto_90
    move v10, v13

    goto :goto_8e

    :catch_83
    move-exception v0

    goto :goto_90

    :cond_50
    move-object/from16 v28, v10

    move-object/from16 v34, v12

    move v10, v13

    move-object/from16 v32, v15

    move-object/from16 v36, v23

    move-object v13, v4

    if-nez v32, :cond_52

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_51

    move-object/from16 v9, v34

    iget-object v1, v9, LC5/b;->Q:LC5/a;

    iget-object v11, v1, LC5/a;->o:Ljava/util/List;

    new-instance v12, LC5/b;

    new-instance v14, LP8/f$C;

    move-object v1, v14

    move-object v2, v13

    move-object/from16 v3, p5

    move-object/from16 v4, v28

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    invoke-direct/range {v1 .. v8}, LP8/f$C;-><init>(Ljava/util/List;LP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Landroid/content/Context;)V

    const-string v1, "Add"

    invoke-direct {v12, v14, v1}, LC5/b;-><init>(LD5/a;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/lang/IllegalAccessException; {:try_start_69 .. :try_end_69} :catch_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_69 .. :try_end_69} :catch_7c

    :goto_91
    move-object/from16 v8, v21

    move-object/from16 v11, v28

    goto :goto_92

    :cond_51
    move-object/from16 v9, v34

    goto :goto_91

    :cond_52
    move-object/from16 v9, v34

    :try_start_6a
    iget-object v1, v9, LC5/b;->Q:LC5/a;

    iget-object v11, v1, LC5/a;->o:Ljava/util/List;

    new-instance v12, LC5/b;

    new-instance v14, LP8/f$D;

    move-object v1, v14

    move-object/from16 v2, v32

    move-object v3, v13

    move-object/from16 v4, p5

    move-object/from16 v5, v28

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    invoke-direct/range {v1 .. v8}, LP8/f$D;-><init>(Ljava/lang/Class;Ljava/util/List;LP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v12, v14, v1}, LC5/b;-><init>(LD5/a;Ljava/lang/String;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_6a .. :try_end_6a} :catch_87
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_6a} :catch_86

    goto :goto_91

    :goto_92
    :try_start_6b
    invoke-static {v8, v11, v9}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V

    goto :goto_98

    :catch_84
    move-exception v0

    :goto_93
    move-object v1, v0

    goto/16 :goto_9b

    :catch_85
    move-exception v0

    goto :goto_93

    :catch_86
    move-exception v0

    :goto_94
    move-object/from16 v8, v21

    goto :goto_93

    :catch_87
    move-exception v0

    goto :goto_94

    :catch_88
    move-exception v0

    :goto_95
    move v10, v13

    move-object/from16 v8, v21

    :goto_96
    move-object/from16 v36, v23

    goto :goto_93

    :catch_89
    move-exception v0

    goto :goto_95

    :catch_8a
    move-exception v0

    :goto_97
    move-object/from16 v36, v2

    move-object v8, v12

    move v10, v13

    goto :goto_93

    :catch_8b
    move-exception v0

    goto :goto_97

    :cond_53
    move-object v11, v10

    move-object v8, v12

    move v10, v13

    move-object/from16 v36, v23

    new-instance v1, LC5/b;

    new-instance v2, LC5/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[null]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, LC5/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, LC5/b;-><init>(LC5/a;)V

    iget-object v2, v1, LC5/b;->Q:LC5/a;

    const v3, 0x7f0500b2

    iput v3, v2, LC5/a;->p:I

    invoke-static {v8, v11, v1}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V
    :try_end_6b
    .catch Ljava/lang/IllegalAccessException; {:try_start_6b .. :try_end_6b} :catch_85
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_6b} :catch_84

    :goto_98
    move-object/from16 v13, p3

    :cond_54
    :goto_99
    move-object/from16 v7, v29

    goto/16 :goto_a1

    :catch_8c
    move-exception v0

    :goto_9a
    move-object v8, v12

    move v10, v13

    goto :goto_96

    :catch_8d
    move-exception v0

    goto :goto_9a

    :goto_9b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_98

    :cond_55
    move-object/from16 v44, v11

    move-object v8, v12

    move-object/from16 v36, v23

    move-object v11, v10

    move v10, v13

    sget-object v1, LW7/b;->j:Ld8/j;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_56

    move-object/from16 v2, v44

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_56

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object v4, v8

    move-object v5, v11

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, LP8/f;->s(Ljava/lang/Object;Landroid/content/Context;LP8/p;Ljava/util/List;Ljava/lang/reflect/Field;Z)V

    goto :goto_98

    :cond_56
    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    new-instance v12, LP8/q;

    move-object/from16 v13, p3

    invoke-direct {v12, v13}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v14

    array-length v15, v14

    move/from16 v7, v17

    :goto_9c
    if-ge v7, v15, :cond_58

    aget-object v1, v14, v7

    iget-object v2, v1, LP8/h;->a:LP8/i;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v12}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v2

    if-eqz v2, :cond_57

    :try_start_6c
    iget-object v1, v1, LP8/h;->a:LP8/i;

    invoke-virtual {v11}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, LP8/f$E;

    move-object/from16 v4, p0

    move-object/from16 v3, p1

    move-object/from16 v2, p5

    invoke-direct {v6, v2, v11, v3, v4}, LP8/f$E;-><init>(LP8/p;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6c} :catch_91
    .catch Ljava/lang/Error; {:try_start_6c .. :try_end_6c} :catch_90

    move-object/from16 v2, p2

    move-object v3, v11

    move-object/from16 v4, p1

    move/from16 v18, v7

    move-object v7, v12

    :try_start_6d
    invoke-interface/range {v1 .. v7}, LP8/i;->getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;

    move-result-object v1

    if-eqz v1, :cond_54

    invoke-static {v8, v11, v1}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6d} :catch_8f
    .catch Ljava/lang/Error; {:try_start_6d .. :try_end_6d} :catch_8e

    goto :goto_99

    :catch_8e
    move-exception v0

    :goto_9d
    move-object v1, v0

    goto :goto_9f

    :catch_8f
    move-exception v0

    goto :goto_9d

    :catch_90
    move-exception v0

    :goto_9e
    move/from16 v18, v7

    goto :goto_9d

    :catch_91
    move-exception v0

    goto :goto_9e

    :goto_9f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a0

    :cond_57
    move/from16 v18, v7

    :goto_a0
    add-int/lit8 v7, v18, 0x1

    goto :goto_9c

    :cond_58
    move-object/from16 v7, v29

    invoke-virtual {v9, v7}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_59

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" was not found at ClassInspector, but it has the InternalDisplayableClass annotation, the instance will be used"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object v4, v8

    move-object v5, v11

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, LP8/f;->s(Ljava/lang/Object;Landroid/content/Context;LP8/p;Ljava/util/List;Ljava/lang/reflect/Field;Z)V

    :cond_59
    :goto_a1
    add-int/lit8 v3, v24, 0x1

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move-object/from16 v14, p5

    move-object v12, v13

    move/from16 v4, v25

    move-object/from16 v5, v26

    move-object/from16 v15, v36

    move v13, v10

    move-object/from16 v10, p1

    goto/16 :goto_4

    :cond_5a
    new-instance v1, LC5/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "null element type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, LC5/b;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-static {v8, v2, v1}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V

    :cond_5b
    invoke-static {v8}, LP8/f;->p(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static B(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;ZLP8/p;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "classAddress",
            "instance",
            "context",
            "autoSetValue",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Z",
            "LP8/p;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, LP8/f;->A(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;ZLP8/p;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Class;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static D(Ljava/lang/reflect/Field;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-class v0, Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic E(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-class v2, LJAVARuntime/Order;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, LJAVARuntime/Order;

    invoke-interface {p0}, LJAVARuntime/Order;->idx()[I

    move-result-object p0

    aget p0, p0, v1

    int-to-float p0, p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, LJAVARuntime/Order;

    invoke-interface {p1}, LJAVARuntime/Order;->idx()[I

    move-result-object p1

    aget p1, p1, v1

    int-to-float v0, p1

    :cond_1
    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic F(I)[Ljava/lang/String;
    .locals 0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static G(LJAVARuntime/ShowIf;Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "showIf",
            "instance",
            "classAddress"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, LJAVARuntime/ShowIf;->value()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    if-nez p1, :cond_3

    return v0

    :cond_3
    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_0
    invoke-static {p2, v1}, LP8/f;->v(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    if-nez p2, :cond_5

    return v0

    :cond_5
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_6

    invoke-virtual {p2, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto/16 :goto_4

    :cond_6
    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_10

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-interface {p0}, LJAVARuntime/ShowIf;->enumValue()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    return v0

    :cond_9
    if-nez v1, :cond_a

    return v0

    :cond_a
    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p1

    if-ltz p1, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v2

    if-ge p1, p2, :cond_b

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_b
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    instance-of v3, v1, Ljava/lang/Enum;

    if-eqz v3, :cond_c

    move-object p2, v1

    check-cast p2, Ljava/lang/Enum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    :cond_c
    if-eqz p2, :cond_d

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    :cond_e
    move v0, v2

    :cond_f
    return v0

    :cond_10
    :goto_2
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_11

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_3

    :cond_11
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p1

    :goto_3
    invoke-interface {p0}, LJAVARuntime/ShowIf;->isTrue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p0, :cond_12

    move v0, v2

    :cond_12
    return v0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_13
    return v0
.end method

.method public static H(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->NULL:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, p0, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v0
.end method

.method public static I(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LP8/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "instance",
            "variablesInsideList",
            "gameObject",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "LP8/p;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, LP8/f;->C(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    if-eqz v3, :cond_8

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v5, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->NULL:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Float:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v4, v5, :cond_3

    iget v3, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sget-object v5, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Int:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v4, v5, :cond_4

    iget v3, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v4, v5, :cond_5

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    sget-object v5, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Boolean:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v4, v5, :cond_6

    iget-object v3, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->inspectorClass:Ljava/lang/String;

    if-nez v4, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_7
    if-eqz v4, :cond_8

    invoke-static {v3, v4, p3, p4}, LP8/f;->J(Lcom/itsmagic/engine/Engines/Utils/Variable;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LP8/p;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static J(Lcom/itsmagic/engine/Engines/Utils/Variable;Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LP8/p;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "variable",
            "className",
            "gameObject",
            "listener"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, LP8/q;

    invoke-direct {v1, p2}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object p2

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    iget-object v5, v4, LP8/h;->a:LP8/i;

    invoke-interface {v5, p1, v1}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object p1, v4, LP8/h;->a:LP8/i;

    invoke-interface {p1}, LP8/i;->isRestorable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v4, LP8/h;->a:LP8/i;

    invoke-interface {p1, p0, v1}, LP8/i;->restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ld8/j;->i0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-static {p1}, Ld8/j;->K(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/Variable;->c()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, LP8/f;->K(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Object;LP8/p;)V

    :cond_4
    return-object p2

    :cond_5
    sget-object p2, LW7/b;->j:Ld8/j;

    invoke-static {p1}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_6

    const-class v1, LJAVARuntime/Component;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/Variable;->c()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p2, p1, p3}, LP8/f;->K(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Object;LP8/p;)V

    return-object p1

    :cond_6
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Utils/Variable;->c()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, LP8/f;->K(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Object;LP8/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public static K(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Object;LP8/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "variables",
            "classAddress",
            "instance",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "LP8/p;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, LP8/f;->L(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LP8/p;)V

    return-void
.end method

.method public static L(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LP8/p;)V
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "variables",
            "classAddress",
            "instance",
            "gameObject",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "LP8/p;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, ""

    if-eqz v1, :cond_1e

    if-eqz p1, :cond_1e

    if-eqz v2, :cond_1e

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_f

    invoke-static {v0, v4}, LP8/f;->u([Ljava/lang/reflect/Field;LP8/p;)[Ljava/lang/reflect/Field;

    move-result-object v6

    if-eqz v6, :cond_1e

    array-length v7, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v7, :cond_1e

    aget-object v10, v6, v9

    if-eqz v10, :cond_1c

    invoke-virtual {v10}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v12

    if-ge v0, v12, :cond_1c

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/itsmagic/engine/Engines/Utils/Variable;

    if-eqz v12, :cond_1b

    iget-object v13, v12, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    if-eqz v13, :cond_1b

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const-class v13, LJAVARuntime/Component;

    const/4 v14, 0x0

    if-eqz v0, :cond_11

    :try_start_1
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v15, v5

    :goto_3
    iget-object v12, v12, Lcom/itsmagic/engine/Engines/Utils/Variable;->list_value:Ljava/util/List;

    if-eqz v12, :cond_10

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v14, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_f

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/itsmagic/engine/Engines/Utils/Variable;

    if-eqz v11, :cond_d

    iget-object v0, v11, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v1, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->NULL:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-eq v0, v1, :cond_d

    new-instance v0, LP8/q;

    invoke-direct {v0, v3}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v1

    move-object/from16 v16, v5

    array-length v5, v1

    move-object/from16 v17, v6

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v5, :cond_3

    move/from16 v18, v5

    aget-object v5, v1, v6

    move-object/from16 v19, v1

    iget-object v1, v5, LP8/h;->a:LP8/i;

    invoke-interface {v1, v15, v0}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v5, LP8/h;->a:LP8/i;

    invoke-interface {v1}, LP8/i;->isRestorable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v5, LP8/h;->a:LP8/i;

    invoke-interface {v1, v11, v0}, LP8/i;->restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v14, v8

    :cond_1
    :goto_6
    move/from16 v18, v7

    goto/16 :goto_c

    :cond_2
    add-int/lit8 v6, v6, 0x1

    move/from16 v5, v18

    move-object/from16 v1, v19

    goto :goto_5

    :cond_3
    iget-object v1, v11, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v5, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Float:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v1, v5, :cond_4

    iget v0, v11, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v14, v8

    goto :goto_6

    :cond_4
    sget-object v5, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Int:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v1, v5, :cond_5

    iget v0, v11, Lcom/itsmagic/engine/Engines/Utils/Variable;->int_value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v8

    goto :goto_6

    :cond_5
    sget-object v5, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v1, v5, :cond_7

    iget-object v0, v11, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-nez v0, :cond_6

    move-object/from16 v0, v16

    :cond_6
    aput-object v0, v14, v8

    goto :goto_6

    :cond_7
    sget-object v5, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Boolean:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne v1, v5, :cond_8

    iget-object v0, v11, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    aput-object v0, v14, v8

    goto :goto_6

    :cond_8
    invoke-static {v15}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v13, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_2
    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v5

    array-length v6, v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move/from16 v18, v7

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_a

    move/from16 v19, v6

    :try_start_3
    aget-object v6, v5, v7

    move-object/from16 v20, v5

    iget-object v5, v6, LP8/h;->a:LP8/i;

    invoke-interface {v5, v15, v0}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v6, LP8/h;->a:LP8/i;

    invoke-interface {v5}, LP8/i;->isRestorable()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v6, LP8/h;->a:LP8/i;

    invoke-interface {v5, v11, v0}, LP8/i;->restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v14, v8

    const/4 v0, 0x1

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_b

    :cond_9
    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v19

    move-object/from16 v5, v20

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_b

    invoke-static {v15}, Ld8/j;->i0(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    aput-object v5, v14, v8

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Utils/Variable;->c()Ljava/util/List;

    move-result-object v0

    aget-object v5, v14, v8

    invoke-static {v0, v1, v5, v4}, LP8/f;->K(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Object;LP8/p;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v5, 0x1

    goto :goto_9

    :cond_b
    move v5, v0

    :goto_9
    if-nez v5, :cond_c

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v14, v8

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Utils/Variable;->c()Ljava/util/List;

    move-result-object v0

    aget-object v6, v14, v8

    invoke-static {v0, v1, v6, v4}, LP8/f;->K(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Object;LP8/p;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v5, 0x1

    goto :goto_a

    :catch_3
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_c
    :goto_a
    if-nez v5, :cond_e

    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v14, v8

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Utils/Variable;->c()Ljava/util/List;

    move-result-object v0

    aget-object v5, v14, v8

    invoke-static {v0, v1, v5, v4}, LP8/f;->K(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Object;LP8/p;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_c

    :catch_5
    move-exception v0

    move/from16 v18, v7

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :cond_d
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto/16 :goto_6

    :cond_e
    :goto_c
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_f
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    invoke-static {v10, v2, v14}, LP8/f;->R(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_10
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    :try_start_8
    invoke-virtual {v10, v2, v14}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_6

    goto/16 :goto_15

    :catch_6
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_15

    :cond_11
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_9
    iget-object v0, v12, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v1

    array-length v5, v1

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v5, :cond_13

    aget-object v7, v1, v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-virtual {v10, v2, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v11, 0x1

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_f

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_13
    const/4 v11, 0x0

    :goto_e
    if-nez v11, :cond_1d

    invoke-virtual {v10, v2, v14}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_15

    :cond_14
    invoke-virtual {v10, v2, v14}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_15

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_15

    :cond_15
    invoke-static {v2, v10, v12}, LP8/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Field;Lcom/itsmagic/engine/Engines/Utils/Variable;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_15

    :cond_16
    invoke-static {v10}, LP8/f;->D(Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_17

    :try_start_a
    iget-object v0, v12, Lcom/itsmagic/engine/Engines/Utils/Variable;->list_value:Ljava/util/List;

    invoke-static {v10, v2, v0, v3, v4}, LP8/f;->I(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LP8/p;)V
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_15

    :catch_8
    move-exception v0

    goto :goto_10

    :catch_9
    move-exception v0

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_15

    :cond_17
    sget-object v0, LW7/b;->j:Ld8/j;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    :try_start_b
    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Utils/Variable;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v10, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v1, v5, v4}, LP8/f;->K(Ljava/util/List;Ljava/lang/Class;Ljava/lang/Object;LP8/p;)V
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_15

    :catch_a
    move-exception v0

    goto :goto_11

    :catch_b
    move-exception v0

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_15

    :cond_18
    new-instance v1, LP8/q;

    invoke-direct {v1, v3}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v0

    array-length v5, v0

    const/4 v6, 0x0

    :goto_12
    if-ge v6, v5, :cond_1d

    aget-object v7, v0, v6

    iget-object v8, v7, LP8/h;->a:LP8/i;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11, v1}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v8

    if-eqz v8, :cond_1a

    :try_start_c
    iget-object v0, v7, LP8/h;->a:LP8/i;

    invoke-interface {v0}, LP8/i;->isRestorable()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, v7, LP8/h;->a:LP8/i;

    invoke-interface {v0, v12, v1}, LP8/i;->restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_13

    :catch_c
    move-exception v0

    goto :goto_14

    :catch_d
    move-exception v0

    goto :goto_14

    :cond_19
    move-object v0, v14

    :goto_13
    invoke-virtual {v10, v2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_15

    :goto_14
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed restoring "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v7, LP8/h;->a:LP8/i;

    invoke-interface {v7, v1}, LP8/i;->getSimpleName(LP8/q;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_d
    invoke-virtual {v10, v2, v14}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_1b
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    :cond_1d
    :goto_15
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p0

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    goto/16 :goto_0

    :catch_f
    move-exception v0

    goto :goto_16

    :catch_10
    move-exception v0

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1e
    return-void
.end method

.method public static M(Ljava/util/List;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :catch_0
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static N(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "instance",
            "classAddress"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-class v1, LJAVARuntime/ShowIf;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, [LJAVARuntime/ShowIf;

    const/4 v1, 0x1

    if-eqz p0, :cond_5

    array-length v2, p0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, p0, v3

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4, p1, p2}, LP8/f;->G(LJAVARuntime/ShowIf;Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public static O(Ljava/lang/Class;Ljava/lang/Object;LP8/p;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "classAddress",
            "instance",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "LP8/p;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, LP8/f;->P(Ljava/lang/Class;Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LP8/p;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static P(Ljava/lang/Class;Ljava/lang/Object;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;LP8/p;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "classAddress",
            "instance",
            "gameObject",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "LP8/p;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v4}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-eqz v1, :cond_32

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v6, 0x0

    :goto_2
    invoke-static {v6, v3}, LP8/f;->u([Ljava/lang/reflect/Field;LP8/p;)[Ljava/lang/reflect/Field;

    move-result-object v6

    if-eqz v6, :cond_32

    array-length v7, v6

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v7, :cond_32

    aget-object v10, v6, v9

    invoke-virtual {v10}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :cond_1
    invoke-static {v1, v10}, LP8/j;->j(Ljava/lang/Object;Ljava/lang/reflect/Field;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v11

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v12

    const-class v13, LJAVARuntime/Component;

    const-class v14, Ljava/lang/Boolean;

    const-class v15, Ljava/lang/String;

    const-string v5, ""

    if-eqz v12, :cond_13

    :try_start_1
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_14

    if-nez v11, :cond_3

    :try_start_2
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LP8/f;->H(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v9

    :goto_4
    move-object v7, v1

    goto/16 :goto_36

    :catch_2
    move-exception v0

    :goto_5
    move-object v5, v0

    move-object/from16 v16, v6

    :goto_6
    move/from16 v17, v7

    :goto_7
    move/from16 v18, v9

    goto/16 :goto_23

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_3
    :try_start_3
    invoke-static {v11}, LP8/f;->Q(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_2

    new-instance v12, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v12}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_14

    move-object/from16 v16, v6

    :try_start_4
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_12

    if-ne v8, v6, :cond_6

    const/4 v6, 0x0

    :goto_8
    :try_start_5
    array-length v8, v11

    if-ge v6, v8, :cond_5

    aget-object v8, v11, v6

    if-nez v8, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LP8/f;->H(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catch_4
    move-exception v0

    :goto_9
    move-object v5, v0

    goto :goto_6

    :catch_5
    move-exception v0

    goto :goto_9

    :cond_4
    new-instance v8, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v11, v6

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-direct {v8, v13, v14}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_5
    move/from16 v17, v7

    move/from16 v18, v9

    goto/16 :goto_21

    :cond_6
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_12

    if-ne v6, v8, :cond_8

    const/4 v6, 0x0

    :goto_b
    :try_start_7
    array-length v8, v11

    if-ge v6, v8, :cond_5

    aget-object v8, v11, v6

    if-nez v8, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LP8/f;->H(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_7
    new-instance v8, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v11, v6

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v8, v13, v14}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_4

    :goto_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_8
    :try_start_8
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6
    :try_end_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_12

    if-ne v6, v15, :cond_a

    const/4 v6, 0x0

    :goto_d
    :try_start_9
    array-length v8, v11

    if-ge v6, v8, :cond_5

    aget-object v8, v11, v6

    if-nez v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, LP8/f;->H(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v8

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_9
    new-instance v8, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aget-object v14, v11, v6

    check-cast v14, Ljava/lang/String;

    invoke-direct {v8, v13, v14}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_4

    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_a
    :try_start_a
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v6, v8, :cond_b

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6
    :try_end_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_12

    if-ne v6, v14, :cond_c

    :cond_b
    move/from16 v17, v7

    move/from16 v18, v9

    goto/16 :goto_1e

    :cond_c
    :try_start_b
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Error; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_11

    :catch_6
    move-exception v0

    :goto_f
    move-object v6, v0

    goto :goto_10

    :catch_7
    move-exception v0

    goto :goto_f

    :goto_10
    :try_start_c
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v5

    :goto_11
    const/4 v8, 0x0

    :goto_12
    array-length v14, v11

    if-ge v8, v14, :cond_5

    aget-object v14, v11, v8
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_12

    if-nez v14, :cond_d

    :try_start_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, LP8/f;->H(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_4

    move/from16 v17, v7

    :goto_13
    move/from16 v18, v9

    goto/16 :goto_1b

    :cond_d
    :try_start_e
    sget-object v14, LW7/b;->j:Ld8/j;

    invoke-static {v6}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_12

    if-eqz v14, :cond_e

    :try_start_f
    invoke-virtual {v13, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_d

    if-nez v15, :cond_e

    :try_start_10
    new-instance v15, Lcom/itsmagic/engine/Engines/Utils/Variable;
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_10} :catch_a

    move/from16 v17, v7

    :try_start_11
    aget-object v7, v11, v8

    invoke-static {v14, v7, v3}, LP8/f;->O(Ljava/lang/Class;Ljava/lang/Object;LP8/p;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v15, v6, v7}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_13

    :catch_8
    move-exception v0

    :goto_14
    move-object v5, v0

    goto/16 :goto_7

    :catch_9
    move-exception v0

    :goto_15
    move-object v7, v0

    goto :goto_17

    :catch_a
    move-exception v0

    :goto_16
    move/from16 v17, v7

    goto :goto_14

    :catch_b
    move-exception v0

    move/from16 v17, v7

    goto :goto_15

    :goto_17
    :try_start_12
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_13

    :catch_c
    move-exception v0

    goto :goto_14

    :cond_e
    move/from16 v17, v7

    goto :goto_18

    :catch_d
    move-exception v0

    goto :goto_16

    :goto_18
    :try_start_13
    new-instance v7, LP8/q;

    invoke-direct {v7, v2}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v14

    array-length v15, v14
    :try_end_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_13} :catch_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_10

    move/from16 v18, v9

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v15, :cond_10

    move/from16 v19, v15

    :try_start_14
    aget-object v15, v14, v9

    move-object/from16 v20, v14

    iget-object v14, v15, LP8/h;->a:LP8/i;

    invoke-interface {v14, v6, v7}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v14

    if-eqz v14, :cond_f

    iget-object v9, v15, LP8/h;->a:LP8/i;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aget-object v15, v11, v8

    invoke-interface {v9, v14, v15, v7}, LP8/i;->save(Ljava/lang/String;Ljava/lang/Object;LP8/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :catch_e
    move-exception v0

    :goto_1a
    move-object v5, v0

    goto/16 :goto_23

    :catch_f
    move-exception v0

    goto :goto_1a

    :cond_f
    add-int/lit8 v9, v9, 0x1

    move/from16 v15, v19

    move-object/from16 v14, v20

    goto :goto_19

    :cond_10
    :goto_1b
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v17

    move/from16 v9, v18

    goto/16 :goto_12

    :catch_10
    move-exception v0

    :goto_1c
    move/from16 v18, v9

    goto :goto_1a

    :catch_11
    move-exception v0

    goto :goto_1c

    :catch_12
    move-exception v0

    :goto_1d
    move/from16 v17, v7

    goto :goto_1c

    :catch_13
    move-exception v0

    goto :goto_1d

    :goto_1e
    const/4 v6, 0x0

    :goto_1f
    array-length v7, v11

    if-ge v6, v7, :cond_12

    aget-object v7, v11, v6

    if-nez v7, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, LP8/f;->H(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_11
    new-instance v7, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aget-object v9, v11, v6

    invoke-static {v9}, LP8/f;->k(Ljava/lang/Object;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_20
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_12
    :goto_21
    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v12}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_14} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_e

    goto/16 :goto_4

    :catch_14
    move-exception v0

    :goto_22
    move-object/from16 v16, v6

    goto :goto_1d

    :catch_15
    move-exception v0

    goto :goto_22

    :goto_23
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :cond_13
    move-object/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v9

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_15

    :try_start_15
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_15} :catch_16

    goto :goto_24

    :catch_16
    move-exception v0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v6, 0x0

    :goto_24
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_14
    :try_start_16
    new-instance v6, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_17

    goto/16 :goto_4

    :catch_17
    move-exception v0

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    :cond_15
    if-eqz v11, :cond_16

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_16
    invoke-static {v10}, LP8/f;->D(Ljava/lang/reflect/Field;)Z

    move-result v6

    if-eqz v6, :cond_2e

    :try_start_17
    invoke-virtual {v10, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_2d

    new-instance v7, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-static {v10}, LP8/f;->C(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v9, 0x0

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_17} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_18

    if-eqz v11, :cond_2c

    :try_start_18
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11
    :try_end_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_18} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_1c

    const-class v12, Ljava/lang/Integer;

    move-object/from16 v19, v6

    const-class v6, Ljava/lang/Float;

    if-eqz v8, :cond_22

    if-nez v11, :cond_17

    :try_start_19
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, LP8/f;->H(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_19} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_18

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v19

    goto :goto_25

    :catch_18
    move-exception v0

    :goto_26
    move-object v1, v0

    goto/16 :goto_31

    :catch_19
    move-exception v0

    goto :goto_26

    :cond_17
    :try_start_1a
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v8, v1, :cond_18

    if-ne v8, v6, :cond_19

    :cond_18
    move-object/from16 v20, v4

    move-object/from16 v23, v10

    goto/16 :goto_2c

    :cond_19
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    :try_end_1a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_1a} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_1c

    if-eq v8, v1, :cond_1a

    if-ne v8, v12, :cond_1b

    :cond_1a
    move-object/from16 v20, v4

    move-object/from16 v23, v10

    goto/16 :goto_2b

    :cond_1b
    if-ne v8, v15, :cond_1c

    :try_start_1b
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    check-cast v11, Ljava/lang/String;

    invoke-direct {v1, v6, v11}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_1b} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_18

    move-object/from16 v20, v4

    move-object/from16 v23, v10

    goto/16 :goto_2e

    :cond_1c
    :try_start_1c
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v8, v1, :cond_1d

    if-ne v8, v14, :cond_1e

    :cond_1d
    move-object/from16 v20, v4

    move-object/from16 v23, v10

    goto/16 :goto_2a

    :cond_1e
    new-instance v1, LP8/q;

    invoke-direct {v1, v2}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v6

    array-length v12, v6
    :try_end_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_1c} :catch_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_1c} :catch_1c

    move-object/from16 v20, v4

    const/4 v4, 0x0

    :goto_27
    if-ge v4, v12, :cond_20

    move/from16 v21, v12

    :try_start_1d
    aget-object v12, v6, v4

    move-object/from16 v22, v6

    iget-object v6, v12, LP8/h;->a:LP8/i;

    move-object/from16 v23, v10

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10, v1}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v6

    if-eqz v6, :cond_1f

    iget-object v4, v12, LP8/h;->a:LP8/i;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v11, v1}, LP8/i;->save(Ljava/lang/String;Ljava/lang/Object;LP8/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->inspectorClass:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :catch_1a
    move-exception v0

    :goto_28
    move-object v1, v0

    move-object/from16 v4, v20

    goto/16 :goto_31

    :catch_1b
    move-exception v0

    goto :goto_28

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v21

    move-object/from16 v6, v22

    move-object/from16 v10, v23

    goto :goto_27

    :cond_20
    move-object/from16 v23, v10

    :cond_21
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v11, v3}, LP8/f;->O(Ljava/lang/Class;Ljava/lang/Object;LP8/p;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->inspectorClass:Ljava/lang/String;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :catch_1c
    move-exception v0

    :goto_29
    move-object/from16 v20, v4

    goto/16 :goto_26

    :catch_1d
    move-exception v0

    goto :goto_29

    :goto_2a
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, LP8/f;->k(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :goto_2b
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, LP8/f;->m(Ljava/lang/Object;)I

    move-result v6

    invoke-direct {v1, v4, v6}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :goto_2c
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, LP8/f;->l(Ljava/lang/Object;)F

    move-result v6

    invoke-direct {v1, v4, v6}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :cond_22
    move-object/from16 v20, v4

    move-object/from16 v23, v10

    if-nez v11, :cond_23

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LP8/f;->H(Ljava/lang/String;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :cond_23
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v6, :cond_24

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, LP8/f;->l(Ljava/lang/Object;)F

    move-result v6

    invoke-direct {v1, v4, v6}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :cond_24
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v12, :cond_25

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, LP8/f;->m(Ljava/lang/Object;)I

    move-result v6

    invoke-direct {v1, v4, v6}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :cond_25
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v15, :cond_26

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v11, Ljava/lang/String;

    invoke-direct {v1, v4, v11}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :cond_26
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v14, :cond_27

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, LP8/f;->k(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2e

    :cond_27
    sget-object v1, LW7/b;->j:Ld8/j;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v13, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4
    :try_end_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_1d} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_1a

    if-nez v4, :cond_28

    :try_start_1e
    new-instance v4, Lcom/itsmagic/engine/Engines/Utils/Variable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v11, v3}, LP8/f;->O(Ljava/lang/Class;Ljava/lang/Object;LP8/p;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/itsmagic/engine/Engines/Utils/Variable;->inspectorClass:Ljava/lang/String;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_1e} :catch_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_1e} :catch_1b

    goto :goto_2e

    :catch_1e
    move-exception v0

    move-object v1, v0

    :try_start_1f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2e

    :cond_28
    new-instance v1, LP8/q;

    invoke-direct {v1, v2}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v4

    array-length v6, v4

    const/4 v10, 0x0

    :goto_2d
    if-ge v10, v6, :cond_2b

    aget-object v12, v4, v10

    move-object/from16 v21, v4

    iget-object v4, v12, LP8/h;->a:LP8/i;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    move/from16 v24, v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v1}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, v12, LP8/h;->a:LP8/i;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v11, v1}, LP8/i;->save(Ljava/lang/String;Ljava/lang/Object;LP8/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/itsmagic/engine/Engines/Utils/Variable;->inspectorClass:Ljava/lang/String;

    :cond_29
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_1f} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_1f} :catch_1a

    goto :goto_2e

    :cond_2a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, v21

    move/from16 v6, v24

    goto :goto_2d

    :cond_2b
    :goto_2e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move-object/from16 v6, v19

    move-object/from16 v4, v20

    move-object/from16 v10, v23

    goto/16 :goto_25

    :cond_2c
    move-object/from16 v20, v4

    move-object/from16 v23, v10

    :try_start_20
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v7}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/util/List;)V
    :try_end_20
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_20} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_20} :catch_1f

    move-object/from16 v4, v20

    :try_start_21
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    :catch_1f
    move-exception v0

    :goto_2f
    move-object/from16 v4, v20

    goto/16 :goto_26

    :catch_20
    move-exception v0

    goto :goto_2f

    :cond_2d
    move-object/from16 v23, v10

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->List:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v1, v5, v6}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_21} :catch_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_21} :catch_18

    :goto_30
    move-object/from16 v7, p1

    goto/16 :goto_36

    :goto_31
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_30

    :cond_2e
    move-object/from16 v23, v10

    sget-object v1, LW7/b;->j:Ld8/j;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld8/j;->G0(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v13, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2f

    :try_start_22
    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v23 .. v23}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_22} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_22} :catch_23

    move-object/from16 v7, p1

    move-object/from16 v8, v23

    :try_start_23
    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8, v3}, LP8/f;->O(Ljava/lang/Class;Ljava/lang/Object;LP8/p;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_23} :catch_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_23} :catch_21

    goto :goto_36

    :catch_21
    move-exception v0

    :goto_32
    move-object v1, v0

    goto :goto_34

    :catch_22
    move-exception v0

    goto :goto_32

    :catch_23
    move-exception v0

    :goto_33
    move-object/from16 v7, p1

    goto :goto_32

    :catch_24
    move-exception v0

    goto :goto_33

    :goto_34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    :cond_2f
    move-object/from16 v7, p1

    move-object/from16 v8, v23

    new-instance v1, LP8/q;

    invoke-direct {v1, v2}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->a()[LP8/h;

    move-result-object v5

    array-length v6, v5

    const/4 v9, 0x0

    :goto_35
    if-ge v9, v6, :cond_31

    aget-object v10, v5, v9

    iget-object v11, v10, LP8/h;->a:LP8/i;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v1}, LP8/i;->match(Ljava/lang/String;LP8/q;)Z

    move-result v11

    if-eqz v11, :cond_30

    :try_start_24
    iget-object v5, v10, LP8/h;->a:LP8/i;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v6, v8, v1}, LP8/i;->save(Ljava/lang/String;Ljava/lang/Object;LP8/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_24} :catch_25

    goto :goto_36

    :catch_25
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    :cond_30
    add-int/lit8 v9, v9, 0x1

    goto :goto_35

    :cond_31
    :goto_36
    add-int/lit8 v9, v18, 0x1

    move-object v1, v7

    move-object/from16 v6, v16

    move/from16 v7, v17

    goto/16 :goto_3

    :cond_32
    return-object v4
.end method

.method public static Q(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static R(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "instance",
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p2}, LP8/f;->t(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic a(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I
    .locals 0

    invoke-static {p0, p1}, LP8/f;->E(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(I)[Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LP8/f;->F(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2}, LP8/f;->R(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Object;)F
    .locals 0

    invoke-static {p0}, LP8/f;->l(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static synthetic e(LP8/f$P;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, LP8/f;->o(LP8/f$P;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/Object;)I
    .locals 0

    invoke-static {p0}, LP8/f;->m(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, LP8/f;->n(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, LP8/f;->k(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, LP8/f;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "groupedEntries",
            "field",
            "entry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LP8/f$Q;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "LC5/b;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, LP8/f$Q;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, LP8/f$Q;-><init>(Ljava/lang/reflect/Field;LC5/b;LP8/f$k;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static k(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Ljava/lang/Object;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static m(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static o(LP8/f$P;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LP8/f$P;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, LP8/f$P;->b(LP8/f$P;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, LC5/b;

    if-eqz v2, :cond_2

    check-cast v1, LC5/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    instance-of v2, v1, LP8/f$P;

    if-eqz v2, :cond_1

    check-cast v1, LP8/f$P;

    invoke-static {v1}, LP8/f;->r(LP8/f$P;)LC5/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static p(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupedEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LP8/f$Q;",
            ">;)",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance v0, LP8/f$P;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LP8/f$P;-><init>(Ljava/lang/String;LP8/f$k;)V

    if-nez p0, :cond_0

    new-instance p0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LP8/f$Q;

    if-eqz v1, :cond_1

    invoke-static {v1}, LP8/f$Q;->a(LP8/f$Q;)LC5/b;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, LP8/f$Q;->b(LP8/f$Q;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-static {v3}, LP8/f;->z(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v0

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v4}, LP8/f$P;->a(LP8/f$P;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LP8/f$P;

    if-nez v6, :cond_5

    new-instance v6, LP8/f$P;

    invoke-direct {v6, v5, v2}, LP8/f$P;-><init>(Ljava/lang/String;LP8/f$k;)V

    invoke-static {v4}, LP8/f$P;->a(LP8/f$P;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, LP8/f$P;->b(LP8/f$P;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v4, v6

    goto :goto_1

    :cond_6
    move-object v4, v0

    :cond_7
    invoke-static {v4}, LP8/f$P;->b(LP8/f$P;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1}, LP8/f$Q;->a(LP8/f$Q;)LC5/b;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    invoke-static {v0}, LP8/f;->o(LP8/f$P;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static q([Ljava/lang/reflect/Field;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fields"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, p0, v3

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    const-class v5, LJAVARuntime/ShowIf;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotationsByType(Ljava/lang/Class;)[Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, [LJAVARuntime/ShowIf;

    if-nez v4, :cond_2

    goto :goto_3

    :cond_2
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_5

    aget-object v7, v4, v6

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v7}, LJAVARuntime/ShowIf;->value()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static r(LP8/f$P;)LC5/b;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation

    invoke-static {p0}, LP8/f$P;->c(LP8/f$P;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, LP8/f$H;

    invoke-direct {v1, p0}, LP8/f$H;-><init>(LP8/f$P;)V

    invoke-static {v0, v1}, LF5/c;->e(Ljava/lang/String;LF5/c$o0;)LC5/b;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/Object;Landroid/content/Context;LP8/p;Ljava/util/List;Ljava/lang/reflect/Field;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "instance",
            "context",
            "listener",
            "groupedEntries",
            "field",
            "autoSetValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "LP8/p;",
            "Ljava/util/List<",
            "LP8/f$Q;",
            ">;",
            "Ljava/lang/reflect/Field;",
            "Z)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, LC5/b;

    new-instance v1, LC5/a;

    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LC5/a;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, LC5/b;-><init>(LC5/a;)V

    iget-object v1, v0, LC5/b;->Q:LC5/a;

    const v2, 0x7f0500b2

    iput v2, v1, LC5/a;->p:I

    invoke-virtual {p4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.Class"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, LC5/b;->Q:LC5/a;

    invoke-static {v1, p0, p1, p5, p2}, LP8/f;->B(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;ZLP8/p;)Ljava/util/List;

    move-result-object p0

    iput-object p0, v2, LC5/a;->o:Ljava/util/List;

    iget-object p0, v0, LC5/b;->Q:LC5/a;

    iget-object p1, p0, LC5/a;->a:Ljava/lang/String;

    invoke-static {p1}, LTc/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LC5/a;->a:Ljava/lang/String;

    iget-object p0, v0, LC5/b;->Q:LC5/a;

    iget-object p1, p0, LC5/a;->a:Ljava/lang/String;

    invoke-static {p1}, LTc/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LC5/a;->a:Ljava/lang/String;

    const/4 p0, 0x0

    :goto_0
    iget-object p1, v0, LC5/b;->Q:LC5/a;

    iget-object p1, p1, LC5/a;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p0, p1, :cond_2

    iget-object p1, v0, LC5/b;->Q:LC5/a;

    iget-object p1, p1, LC5/a;->o:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LC5/b;

    iget-object p2, p1, LC5/b;->n:LC5/b$a;

    sget-object p5, LC5/b$a;->SLBoolean:LC5/b$a;

    if-eq p2, p5, :cond_0

    sget-object p5, LC5/b$a;->Boolean:LC5/b$a;

    if-ne p2, p5, :cond_1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    iget-object p2, p1, LC5/b;->l:Ljava/lang/String;

    const-string p5, "enable"

    invoke-virtual {p2, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, v0, LC5/b;->Q:LC5/a;

    new-instance p5, LP8/f$F;

    invoke-direct {p5, p1}, LP8/f$F;-><init>(LC5/b;)V

    iput-object p5, p2, LC5/a;->g:LD5/h;

    iget-object p1, v0, LC5/b;->Q:LC5/a;

    iput-boolean v3, p1, LC5/a;->d:Z

    iget-object p1, p1, LC5/a;->o:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    invoke-static {p3, p4, v0}, LP8/f;->j(Ljava/util/List;Ljava/lang/reflect/Field;LC5/b;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_4
    return-void
.end method

.method public static t(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentType",
            "array"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    array-length v0, p1

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result p0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v1

    if-nez v2, :cond_1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static u([Ljava/lang/reflect/Field;LP8/p;)[Ljava/lang/reflect/Field;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fields",
            "listener"
        }
    .end annotation

    if-eqz p0, :cond_3

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, LJAVARuntime/Hide;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance p0, LP8/e;

    invoke-direct {p0}, LP8/e;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    new-instance p0, LP8/f$I;

    invoke-direct {p0, p1}, LP8/f$I;-><init>(LP8/p;)V

    invoke-interface {v0, p0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/reflect/Field;

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Field;

    aput-object p1, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static v(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cls",
            "fieldName"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0

    :catch_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static w(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "string"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Enum<",
            "*>;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LP8/c;

    invoke-direct {v0}, LP8/c;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, LP8/d;

    invoke-direct {v0}, LP8/d;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static y(Ljava/lang/Class;)[Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enumClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)[TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-string v0, "$VALUES"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    return-object p0
.end method

.method public static z(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-class v1, LJAVARuntime/Group;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, LJAVARuntime/Group;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, LJAVARuntime/Group;->value()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    :cond_3
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, p0, v3

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move-object v0, v1

    :goto_1
    return-object v0
.end method
