.class LJAVARuntime/Map2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Map2;->inspectorController()LP8/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$thisClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$thisClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Map2$1;->val$thisClass:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInspector(Landroid/content/Context;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 16
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
            "context",
            "field",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation

    move-object/from16 v1, p4

    :try_start_0
    invoke-virtual/range {p2 .. p3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LJAVARuntime/Map2;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_f

    new-instance v7, LC5/a;

    const/4 v2, 0x1

    invoke-direct {v7, v1, v2}, LC5/a;-><init>(Ljava/lang/String;Z)V

    const v1, 0x7f0500b2

    iput v1, v7, LC5/a;->p:I

    invoke-virtual {v0}, LJAVARuntime/Map2;->getKeyClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    if-ne v1, v9, :cond_4

    move v10, v8

    :goto_1
    invoke-static {v0}, LJAVARuntime/Map2;->access$000(LJAVARuntime/Map2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_4

    invoke-static {v0}, LJAVARuntime/Map2;->access$000(LJAVARuntime/Map2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v9, :cond_0

    iget-object v12, v7, LC5/a;->o:Ljava/util/List;

    new-instance v13, LC5/b;

    new-instance v14, LJAVARuntime/Map2$1$1;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v10

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$1;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    sget-object v1, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v13, v14, v11, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    iget-object v12, v7, LC5/a;->o:Ljava/util/List;

    new-instance v13, LC5/b;

    new-instance v14, LJAVARuntime/Map2$1$2;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v10

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$2;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    sget-object v1, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v13, v14, v11, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    iget-object v12, v7, LC5/a;->o:Ljava/util/List;

    new-instance v13, LC5/b;

    new-instance v14, LJAVARuntime/Map2$1$3;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v10

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$3;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    sget-object v1, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v13, v14, v11, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    iget-object v12, v7, LC5/a;->o:Ljava/util/List;

    new-instance v13, LC5/b;

    new-instance v14, LJAVARuntime/Map2$1$4;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v10

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$4;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    sget-object v1, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v13, v14, v11, v1}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v0}, LJAVARuntime/Map2;->getKeyClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v10, ""

    if-ne v1, v2, :cond_9

    move v11, v8

    :goto_3
    invoke-static {v0}, LJAVARuntime/Map2;->access$000(LJAVARuntime/Map2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v11, v1, :cond_9

    invoke-static {v0}, LJAVARuntime/Map2;->access$000(LJAVARuntime/Map2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v9, :cond_5

    iget-object v13, v7, LC5/a;->o:Ljava/util/List;

    new-instance v14, LC5/b;

    new-instance v15, LJAVARuntime/Map2$1$5;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$5;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v14, v15, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_6

    iget-object v13, v7, LC5/a;->o:Ljava/util/List;

    new-instance v14, LC5/b;

    new-instance v15, LJAVARuntime/Map2$1$6;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$6;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v14, v15, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    iget-object v13, v7, LC5/a;->o:Ljava/util/List;

    new-instance v14, LC5/b;

    new-instance v15, LJAVARuntime/Map2$1$7;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$7;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v14, v15, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_8

    iget-object v13, v7, LC5/a;->o:Ljava/util/List;

    new-instance v14, LC5/b;

    new-instance v15, LJAVARuntime/Map2$1$8;

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v11

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$8;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v14, v15, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v0}, LJAVARuntime/Map2;->getKeyClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_e

    :goto_5
    invoke-static {v0}, LJAVARuntime/Map2;->access$000(LJAVARuntime/Map2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_e

    invoke-static {v0}, LJAVARuntime/Map2;->access$000(LJAVARuntime/Map2;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, v9, :cond_a

    iget-object v12, v7, LC5/a;->o:Ljava/util/List;

    new-instance v13, LC5/b;

    new-instance v14, LJAVARuntime/Map2$1$9;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$9;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v13, v14, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_b

    iget-object v12, v7, LC5/a;->o:Ljava/util/List;

    new-instance v13, LC5/b;

    new-instance v14, LJAVARuntime/Map2$1$10;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$10;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v13, v14, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_c

    iget-object v12, v7, LC5/a;->o:Ljava/util/List;

    new-instance v13, LC5/b;

    new-instance v14, LJAVARuntime/Map2$1$11;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$11;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v13, v14, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-virtual {v0}, LJAVARuntime/Map2;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_d

    iget-object v12, v7, LC5/a;->o:Ljava/util/List;

    new-instance v13, LC5/b;

    new-instance v14, LJAVARuntime/Map2$1$12;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object v3, v0

    move v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, LJAVARuntime/Map2$1$12;-><init>(LJAVARuntime/Map2$1;LJAVARuntime/Map2;ILjava/lang/reflect/Field;Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v13, v14, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_5

    :cond_e
    new-instance v0, LC5/b;

    invoke-direct {v0, v7}, LC5/b;-><init>(LC5/a;)V

    return-object v0

    :cond_f
    new-instance v0, LC5/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (null)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, LC5/b;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getInspectorForArray(Landroid/content/Context;[Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "array",
            "position",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getInspectorForList(Landroid/content/Context;Ld8/h;ILjava/lang/Object;Ljava/lang/String;LP8/n;LP8/q;)LC5/b;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "list",
            "position",
            "classInstance",
            "tittle",
            "getSetterListener",
            "userPointer"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSimpleName(LP8/q;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    iget-object p1, p0, LJAVARuntime/Map2$1;->val$thisClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isRestorable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public match(Ljava/lang/String;LP8/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "userPointer"
        }
    .end annotation

    iget-object p2, p0, LJAVARuntime/Map2$1;->val$thisClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ld8/j;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public newInstance(LP8/q;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variable",
            "userPointer"
        }
    .end annotation

    iget-object p2, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    sget-object v0, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    if-ne p2, v0, :cond_0

    iget-object p1, p1, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-static {p1}, LJAVARuntime/Map2;->fromJson(Ljava/lang/String;)LJAVARuntime/Map2;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public save(Ljava/lang/String;Ljava/lang/Object;LP8/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldName",
            "value",
            "userPointer"
        }
    .end annotation

    check-cast p2, LJAVARuntime/Map2;

    if-eqz p2, :cond_0

    new-instance p3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual {p2}, LJAVARuntime/Map2;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    :cond_0
    new-instance p2, Lcom/itsmagic/engine/Engines/Utils/Variable;

    const-string p3, ""

    invoke-direct {p2, p1, p3}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method
