.class public Lb9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb9/b$f;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lb9/b$f;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0, p1}, Lb9/b;->e(Ljava/util/List;Lb9/b$f;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Landroid/content/Context;Lorg/luaj/vm2/Globals;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicVars",
            "luaValue",
            "context",
            "globals",
            "gameObject"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LAc/b;",
            ">;",
            "Lorg/luaj/vm2/LuaValue;",
            "Landroid/content/Context;",
            "Lorg/luaj/vm2/Globals;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    if-eqz v0, :cond_6

    move-object/from16 v5, p0

    invoke-static {v5, v0, v1}, Lb9/b;->d(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Globals;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lb9/b$f;

    invoke-virtual {v7}, Lb9/b$f;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lb9/b$f;->c()Lorg/luaj/vm2/LuaValue;

    move-result-object v9

    invoke-static {v9}, Lb9/b;->c(Lorg/luaj/vm2/LuaValue;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v11, "boolean"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v11, "string"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v11, "number"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_0

    new-instance v11, LP8/q;

    move-object/from16 v12, p4

    invoke-direct {v11, v12}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->b()[LP8/l;

    move-result-object v13

    array-length v14, v13

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_5

    aget-object v0, v13, v15

    iget-object v2, v0, LP8/l;->a:LP8/m;

    invoke-interface {v2}, LP8/m;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    iget-object v2, v0, LP8/l;->a:LP8/m;

    new-instance v3, Lb9/b$d;

    invoke-direct {v3, v9, v0, v7}, Lb9/b$d;-><init>(Lorg/luaj/vm2/LuaValue;LP8/l;Lb9/b$f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 p0, v5

    move-object/from16 v5, p2

    :try_start_1
    invoke-interface {v2, v5, v3, v8, v11}, LP8/m;->getInspector(Landroid/content/Context;LP8/k;Ljava/lang/String;LP8/q;)LC5/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_8

    :catch_2
    move-exception v0

    :goto_4
    move-object/from16 p0, v5

    move-object/from16 v5, p2

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    const/4 v2, 0x1

    goto :goto_7

    :cond_4
    move-object/from16 p0, v5

    move-object/from16 v5, p2

    goto :goto_6

    :goto_7
    add-int/2addr v15, v2

    move-object/from16 v5, p0

    goto :goto_2

    :cond_5
    move-object/from16 p0, v5

    move-object/from16 v5, p2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported lua inspector type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_0
    move-object/from16 v12, p4

    move-object/from16 p0, v5

    move-object/from16 v5, p2

    new-instance v0, LC5/b;

    new-instance v2, Lb9/b$c;

    invoke-direct {v2, v1, v8, v7}, Lb9/b$c;-><init>(Lorg/luaj/vm2/Globals;Ljava/lang/String;Lb9/b$f;)V

    sget-object v3, LC5/b$a;->SLBoolean:LC5/b$a;

    invoke-direct {v0, v2, v8, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_1
    move-object/from16 v12, p4

    move-object/from16 p0, v5

    move-object/from16 v5, p2

    new-instance v0, LC5/b;

    new-instance v2, Lb9/b$b;

    invoke-direct {v2, v1, v8, v7}, Lb9/b$b;-><init>(Lorg/luaj/vm2/Globals;Ljava/lang/String;Lb9/b$f;)V

    sget-object v3, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {v0, v2, v8, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_2
    move-object/from16 v12, p4

    move-object/from16 p0, v5

    move-object/from16 v5, p2

    new-instance v0, LC5/b;

    new-instance v2, Lb9/b$a;

    invoke-direct {v2, v1, v8, v7}, Lb9/b$a;-><init>(Lorg/luaj/vm2/Globals;Ljava/lang/String;Lb9/b$f;)V

    sget-object v3, LC5/b$a;->SLFloat:LC5/b$a;

    invoke-direct {v0, v2, v8, v3}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :goto_8
    add-int/2addr v6, v2

    move-object/from16 v5, p0

    goto/16 :goto_0

    :cond_6
    return-object v4

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_2
        -0x352a9fef -> :sswitch_1
        0x3db6c28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lorg/luaj/vm2/LuaValue;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->typename()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userdata"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static d(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Globals;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicVars",
            "object",
            "globals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LAc/b;",
            ">;",
            "Lorg/luaj/vm2/LuaValue;",
            "Lorg/luaj/vm2/Globals;",
            ")",
            "Ljava/util/List<",
            "Lb9/b$f;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {p1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    const-string v0, "_G"

    invoke-virtual {p2, v0}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    sget-object v1, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Lorg/luaj/vm2/LuaValue;->next(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/Varargs;->arg1()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p2, Lb9/a;

    invoke-direct {p2, p0}, Lb9/a;-><init>(Ljava/util/List;)V

    invoke-static {p2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1

    :cond_1
    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LAc/b;

    invoke-virtual {v4, v2}, LAc/b;->X(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v2, Lb9/b$f;

    invoke-virtual {v1}, Lorg/luaj/vm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lb9/b$f;-><init>(Ljava/lang/String;Lorg/luaj/vm2/Globals;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static synthetic e(Ljava/util/List;Lb9/b$f;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LAc/b;

    invoke-static {p1}, Lb9/b$f;->a(Lb9/b$f;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LAc/b;->X(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/util/List;Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lorg/luaj/vm2/Globals;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicVars",
            "variables",
            "luaValue",
            "gameObject",
            "globals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LAc/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;",
            "Lorg/luaj/vm2/LuaValue;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lorg/luaj/vm2/Globals;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p2, p4}, Lb9/b;->d(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Globals;)Ljava/util/List;

    move-result-object p0

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb9/b$f;

    invoke-virtual {v1}, Lb9/b$f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lb9/b$f;->c()Lorg/luaj/vm2/LuaValue;

    move-result-object v1

    invoke-static {v1}, Lb9/b;->c(Lorg/luaj/vm2/LuaValue;)Ljava/lang/String;

    move v1, p2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v1, LP8/q;

    invoke-direct {v1, p3}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->b()[LP8/l;

    move-result-object v4

    array-length v5, v4

    move v6, p2

    :goto_2
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    iget-object v8, v7, LP8/l;->a:LP8/m;

    invoke-interface {v8}, LP8/m;->getFullName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->genericStorePackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :try_start_0
    iget-object v7, v7, LP8/l;->a:LP8/m;

    invoke-interface {v7, v3, v1}, LP8/m;->restore(Lcom/itsmagic/engine/Engines/Utils/Variable;LP8/q;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/luaj/vm2/lib/jse/CoerceJavaToLua;->coerce(Ljava/lang/Object;)Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    invoke-virtual {p4, v2, v7}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v7

    goto :goto_3

    :catch_1
    move-exception v7

    :goto_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    sget-object v1, Lb9/b$e;->a:[I

    iget-object v4, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v1, v1, v4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    goto :goto_5

    :cond_2
    iget-object v1, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_4

    :cond_3
    sget-object v1, Lorg/luaj/vm2/LuaValue;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    :goto_4
    invoke-virtual {p4, v2, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    goto :goto_5

    :cond_4
    iget-object v1, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    invoke-virtual {p4, v2, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    iget v1, v3, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    float-to-double v3, v1

    invoke-virtual {p4, v2, v3, v4}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;D)V

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public static g(Ljava/util/List;Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Globals;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicVars",
            "variables",
            "luaValue",
            "globals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LAc/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;",
            "Lorg/luaj/vm2/LuaValue;",
            "Lorg/luaj/vm2/Globals;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lb9/b;->f(Ljava/util/List;Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lorg/luaj/vm2/Globals;)V

    return-void
.end method

.method public static h(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lorg/luaj/vm2/Globals;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicVars",
            "luaValue",
            "gameObject",
            "globals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LAc/b;",
            ">;",
            "Lorg/luaj/vm2/LuaValue;",
            "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;",
            "Lorg/luaj/vm2/Globals;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    invoke-static {v0, v3, v4}, Lb9/b;->d(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Globals;)Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_8

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb9/b$f;

    invoke-virtual {v0}, Lb9/b$f;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lb9/b$f;->c()Lorg/luaj/vm2/LuaValue;

    move-result-object v7

    invoke-static {v7}, Lb9/b;->c(Lorg/luaj/vm2/LuaValue;)Ljava/lang/String;

    move-result-object v8

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>()V

    iput-object v6, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "boolean"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    goto :goto_1

    :cond_0
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_1
    const-string v10, "string"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    move v9, v1

    goto :goto_1

    :sswitch_2
    const-string v10, "number"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    packed-switch v9, :pswitch_data_0

    new-instance v9, LP8/q;

    move-object/from16 v10, p2

    invoke-direct {v9, v10}, LP8/q;-><init>(Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;)V

    invoke-static {}, LP8/g;->b()[LP8/l;

    move-result-object v11

    array-length v12, v11

    move-object v13, v0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v12, :cond_5

    aget-object v0, v11, v14

    iget-object v15, v0, LP8/l;->a:LP8/m;

    invoke-interface {v15}, LP8/m;->getFullName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    :try_start_0
    iget-object v15, v0, LP8/l;->a:LP8/m;

    invoke-interface {v15}, LP8/m;->getCls()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v7, v15}, Lorg/luaj/vm2/lib/jse/CoerceLuaToJava;->coerce(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v15

    iget-object v4, v0, LP8/l;->a:LP8/m;

    invoke-interface {v4, v6, v15, v9}, LP8/m;->save(Ljava/lang/String;Ljava/lang/Object;LP8/q;)Lcom/itsmagic/engine/Engines/Utils/Variable;

    move-result-object v13

    if-eqz v13, :cond_3

    iget-object v0, v0, LP8/l;->a:LP8/m;

    invoke-interface {v0}, LP8/m;->getFullName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/itsmagic/engine/Engines/Utils/Variable;->genericStorePackage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_3
    :goto_3
    move v4, v1

    move-object v0, v13

    goto :goto_5

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    add-int/2addr v14, v1

    goto :goto_2

    :cond_5
    move-object v0, v13

    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported lua inspector type:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_6

    :pswitch_0
    move-object/from16 v10, p2

    sget-object v4, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Boolean:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v4, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaValue;->toboolean()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->booolean_value:Ljava/lang/Boolean;

    goto :goto_6

    :pswitch_1
    move-object/from16 v10, p2

    sget-object v4, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->String:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v4, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaValue;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->str_value:Ljava/lang/String;

    goto :goto_6

    :pswitch_2
    move-object/from16 v10, p2

    sget-object v4, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Float:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    iput-object v4, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->type:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-virtual {v7}, Lorg/luaj/vm2/LuaValue;->tofloat()F

    move-result v4

    iput v4, v0, Lcom/itsmagic/engine/Engines/Utils/Variable;->float_value:F

    :cond_6
    :goto_6
    if-eqz v0, :cond_7

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/2addr v5, v1

    goto/16 :goto_0

    :cond_8
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3da724b7 -> :sswitch_2
        -0x352a9fef -> :sswitch_1
        0x3db6c28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Globals;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicVars",
            "LuaValue",
            "globals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LAc/b;",
            ">;",
            "Lorg/luaj/vm2/LuaValue;",
            "Lorg/luaj/vm2/Globals;",
            ")",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Utils/Variable;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lb9/b;->h(Ljava/util/List;Lorg/luaj/vm2/LuaValue;Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;Lorg/luaj/vm2/Globals;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
