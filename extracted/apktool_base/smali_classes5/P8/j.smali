.class public LP8/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "fieldName"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Failed to determine boolean of a lost class type"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2
.end method

.method public static b(Ljava/lang/Object;Ljava/lang/String;)B
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "fieldName"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Failed to determine byte of a lost class type"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2
.end method

.method public static c(Ljava/lang/Object;Ljava/lang/String;)C
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "fieldName"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Failed to determine char of a lost class type"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/String;)D
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "fieldName"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Failed to determine double of a lost class type"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "fieldName"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Failed to determine float of a lost class type"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static f(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "fieldName"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Failed to determine int of a lost class type"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2
.end method

.method public static g(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "fieldName"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Failed to determine long of a lost class type"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static h(Ljava/lang/Object;Ljava/lang/String;)S
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "fieldName"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Failed to determine short of a lost class type"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v2
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "fieldName"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "Failed to determine String of a lost class type"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static j(Ljava/lang/Object;Ljava/lang/reflect/Field;)Lcom/itsmagic/engine/Engines/Utils/Variable;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "instance",
            "field"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    const-class v4, Ljava/lang/Double;

    const-class v5, Ljava/lang/Long;

    const-class v6, Ljava/lang/Byte;

    const-class v7, Ljava/lang/Short;

    const-class v8, Ljava/lang/Character;

    const-class v9, Ljava/lang/Boolean;

    const-class v10, Ljava/lang/String;

    const-class v11, Ljava/lang/Integer;

    const-class v12, Ljava/lang/Float;

    const-string v13, ""

    const/4 v14, 0x0

    if-eqz v0, :cond_29

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15, v14}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v14

    invoke-direct {v0, v15, v14}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->e(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    return-object v0

    :cond_1
    :goto_1
    if-ne v3, v12, :cond_4

    if-nez v1, :cond_2

    :try_start_1
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v14

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    invoke-direct {v3, v4, v14}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v3

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->e(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    return-object v0

    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_6

    if-nez v1, :cond_5

    :try_start_2
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_4
    move-exception v0

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    return-object v0

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_5
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->f(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_6
    if-ne v3, v11, :cond_9

    if-nez v1, :cond_7

    :try_start_3
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_6
    move-exception v0

    goto :goto_6

    :cond_7
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    :goto_5
    invoke-direct {v3, v4, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_6

    return-object v3

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_7
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->f(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_9
    if-ne v3, v10, :cond_b

    if-nez v1, :cond_a

    :try_start_4
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v13}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_8
    move-exception v0

    goto :goto_7

    :cond_a
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_8

    return-object v0

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_9
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_d

    if-nez v1, :cond_c

    :try_start_5
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0

    :catch_a
    move-exception v0

    goto :goto_8

    :cond_c
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_5} :catch_a

    return-object v0

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_b
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0

    :cond_d
    if-ne v3, v9, :cond_10

    if-nez v1, :cond_e

    :try_start_6
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0

    :catch_c
    move-exception v0

    goto :goto_a

    :cond_e
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    goto :goto_9

    :cond_f
    const/4 v15, 0x0

    :goto_9
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_c

    return-object v3

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_d
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0

    :cond_10
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_12

    if-nez v1, :cond_11

    :try_start_7
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_e
    move-exception v0

    goto :goto_b

    :cond_11
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_e

    return-object v0

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_f
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->c(Ljava/lang/Object;Ljava/lang/String;)C

    move-result v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Char:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v0

    :cond_12
    if-ne v3, v8, :cond_15

    if-nez v1, :cond_13

    :try_start_8
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_10
    move-exception v0

    goto :goto_d

    :cond_13
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v15

    goto :goto_c

    :cond_14
    const/4 v15, 0x0

    :goto_c
    invoke-direct {v3, v4, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_10

    return-object v3

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_11
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->c(Ljava/lang/Object;Ljava/lang/String;)C

    move-result v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Char:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v0

    :cond_15
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_17

    if-nez v1, :cond_16

    :try_start_9
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_12
    move-exception v0

    goto :goto_e

    :cond_16
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_12

    return-object v0

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_13
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->h(Ljava/lang/Object;Ljava/lang/String;)S

    move-result v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Short:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v0

    :cond_17
    if-ne v3, v7, :cond_1a

    if-nez v1, :cond_18

    :try_start_a
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_14
    move-exception v0

    goto :goto_10

    :cond_18
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v15

    goto :goto_f

    :cond_19
    const/4 v15, 0x0

    :goto_f
    invoke-direct {v3, v4, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_14

    return-object v3

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_15
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->h(Ljava/lang/Object;Ljava/lang/String;)S

    move-result v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Short:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v0

    :cond_1a
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_1c

    if-nez v1, :cond_1b

    :try_start_b
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_16
    move-exception v0

    goto :goto_11

    :cond_1b
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getByte(Ljava/lang/Object;)B

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_16

    return-object v0

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_17
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->b(Ljava/lang/Object;Ljava/lang/String;)B

    move-result v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Byte:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v0

    :cond_1c
    if-ne v3, v6, :cond_1f

    if-nez v1, :cond_1d

    :try_start_c
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_18
    move-exception v0

    goto :goto_13

    :cond_1d
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v15

    goto :goto_12

    :cond_1e
    const/4 v15, 0x0

    :goto_12
    invoke-direct {v3, v4, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_18

    return-object v3

    :goto_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_19
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->b(Ljava/lang/Object;Ljava/lang/String;)B

    move-result v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Byte:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v0

    :cond_1f
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_21

    if-nez v1, :cond_20

    :try_start_d
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;J)V

    return-object v0

    :catch_1a
    move-exception v0

    goto :goto_14

    :cond_20
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;J)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_1a

    return-object v0

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_1b
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->g(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;J)V

    return-object v0

    :cond_21
    if-ne v3, v5, :cond_24

    if-nez v1, :cond_22

    :try_start_e
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;J)V

    return-object v0

    :catch_1c
    move-exception v0

    goto :goto_16

    :cond_22
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_15

    :cond_23
    const-wide/16 v14, 0x0

    :goto_15
    invoke-direct {v3, v4, v14, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;J)V
    :try_end_e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_1c

    return-object v3

    :goto_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_1d
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->g(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;J)V

    return-object v0

    :cond_24
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v3, v0, :cond_26

    if-nez v1, :cond_25

    :try_start_f
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V

    return-object v0

    :catch_1e
    move-exception v0

    goto :goto_17

    :cond_25
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v4

    invoke-direct {v0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_1f
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_f} :catch_1e

    return-object v0

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_1f
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->d(Ljava/lang/Object;Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V

    return-object v0

    :cond_26
    if-ne v3, v4, :cond_43

    if-nez v1, :cond_27

    :try_start_10
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V

    return-object v0

    :catch_20
    move-exception v0

    goto :goto_19

    :cond_27
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    goto :goto_18

    :cond_28
    const-wide/16 v14, 0x0

    :goto_18
    invoke-direct {v3, v4, v14, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_10} :catch_20

    return-object v3

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_21
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->d(Ljava/lang/Object;Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V

    return-object v0

    :cond_29
    if-ne v3, v12, :cond_2c

    if-nez v1, :cond_2a

    :try_start_11
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    return-object v0

    :catch_22
    move-exception v0

    goto :goto_1b

    :cond_2a
    const/4 v4, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v14

    goto :goto_1a

    :cond_2b
    move v14, v4

    :goto_1a
    invoke-direct {v3, v5, v14}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_11} :catch_22

    return-object v3

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_23
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->e(Ljava/lang/Object;Ljava/lang/String;)F

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;F)V

    return-object v0

    :cond_2c
    if-ne v3, v11, :cond_2f

    if-nez v1, :cond_2d

    :try_start_12
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_24
    move-exception v0

    goto :goto_1d

    :cond_2d
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_1c

    :cond_2e
    const/4 v15, 0x0

    :goto_1c
    invoke-direct {v3, v4, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_12} :catch_24

    return-object v3

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_25
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->f(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_2f
    if-ne v3, v9, :cond_32

    if-nez v1, :cond_30

    :try_start_13
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0

    :catch_26
    move-exception v0

    goto :goto_1f

    :cond_30
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    goto :goto_1e

    :cond_31
    const/4 v15, 0x0

    :goto_1e
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_27
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_13} :catch_26

    return-object v3

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_27
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0

    :cond_32
    if-ne v3, v8, :cond_35

    if-nez v1, :cond_33

    :try_start_14
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_28
    move-exception v0

    goto :goto_21

    :cond_33
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Character;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v15

    goto :goto_20

    :cond_34
    const/4 v15, 0x0

    :goto_20
    invoke-direct {v3, v4, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_14} :catch_28

    return-object v3

    :goto_21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_29
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->c(Ljava/lang/Object;Ljava/lang/String;)C

    move-result v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Char:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v0

    :cond_35
    if-ne v3, v7, :cond_38

    if-nez v1, :cond_36

    :try_start_15
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_2a
    move-exception v0

    goto :goto_23

    :cond_36
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v15

    goto :goto_22

    :cond_37
    const/4 v15, 0x0

    :goto_22
    invoke-direct {v3, v4, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_15} :catch_2a

    return-object v3

    :goto_23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_2b
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->h(Ljava/lang/Object;Ljava/lang/String;)S

    move-result v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Short:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v0

    :cond_38
    if-ne v3, v6, :cond_3b

    if-nez v1, :cond_39

    :try_start_16
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V

    return-object v0

    :catch_2c
    move-exception v0

    goto :goto_25

    :cond_39
    const/4 v4, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v15

    goto :goto_24

    :cond_3a
    move v15, v4

    :goto_24
    invoke-direct {v3, v5, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_2d
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_16} :catch_2c

    return-object v3

    :goto_25
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_2d
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->b(Ljava/lang/Object;Ljava/lang/String;)B

    move-result v1

    sget-object v2, Lcom/itsmagic/engine/Engines/Utils/Variable$a;->Byte:Lcom/itsmagic/engine/Engines/Utils/Variable$a;

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;ILcom/itsmagic/engine/Engines/Utils/Variable$a;)V

    return-object v0

    :cond_3b
    if-ne v3, v5, :cond_3e

    if-nez v1, :cond_3c

    :try_start_17
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;J)V

    return-object v0

    :catch_2e
    move-exception v0

    goto :goto_27

    :cond_3c
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_26

    :cond_3d
    move-wide v14, v4

    :goto_26
    invoke-direct {v3, v6, v14, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;J)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_2f
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_17} :catch_2e

    return-object v3

    :goto_27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2b

    :catch_2f
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->g(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;J)V

    return-object v0

    :cond_3e
    if-ne v3, v4, :cond_41

    if-nez v1, :cond_3f

    :try_start_18
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-direct {v0, v3, v4, v5}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V

    return-object v0

    :catch_30
    move-exception v0

    goto :goto_29

    :cond_3f
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    new-instance v3, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    goto :goto_28

    :cond_40
    move-wide v14, v4

    :goto_28
    invoke-direct {v3, v6, v14, v15}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V
    :try_end_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_31
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_18} :catch_30

    return-object v3

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2b

    :catch_31
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->d(Ljava/lang/Object;Ljava/lang/String;)D

    move-result-wide v1

    invoke-direct {v0, v3, v1, v2}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;D)V

    return-object v0

    :cond_41
    if-ne v3, v10, :cond_43

    if-nez v1, :cond_42

    :try_start_19
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v13}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_32
    move-exception v0

    goto :goto_2a

    :cond_42
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_19} :catch_32

    return-object v0

    :goto_2a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2b

    :catch_33
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/Variable;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LP8/j;->i(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/itsmagic/engine/Engines/Utils/Variable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_43
    :goto_2b
    const/4 v0, 0x0

    return-object v0
.end method
