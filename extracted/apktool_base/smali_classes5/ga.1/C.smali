.class public Lga/C;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lga/H;Lga/H;)Z
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "from",
            "to"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    if-nez p1, :cond_0

    goto/16 :goto_c

    :cond_0
    invoke-static {p0}, Lga/C;->h(Lga/H;)Lga/H;

    move-result-object p0

    invoke-static {p1}, Lga/C;->h(Lga/H;)Lga/H;

    move-result-object p1

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    sget-object v2, Lga/H;->GAME_OBJECT:Lga/H;

    if-ne p1, v2, :cond_2

    invoke-static {p0}, Lga/d;->n(Lga/H;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lga/d;->n(Lga/H;)Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-static {p1}, Lga/d;->n(Lga/H;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_a

    :cond_3
    invoke-static {p0}, Lga/C;->e(Lga/H;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-static {p1}, Lga/C;->e(Lga/H;)Z

    move-result v3

    if-nez v3, :cond_24

    if-eq p0, v2, :cond_24

    if-eq p1, v2, :cond_24

    sget-object v2, Lga/H;->MATERIAL:Lga/H;

    if-eq p0, v2, :cond_24

    if-eq p1, v2, :cond_24

    sget-object v2, Lga/H;->OBJECT_FILE:Lga/H;

    if-eq p0, v2, :cond_24

    if-eq p1, v2, :cond_24

    sget-object v3, Lga/H;->ANIMATION_FILE:Lga/H;

    if-eq p0, v3, :cond_24

    if-eq p1, v3, :cond_24

    sget-object v4, Lga/H;->ANIMATION_MASK_FILE:Lga/H;

    if-eq p0, v4, :cond_24

    if-eq p1, v4, :cond_24

    sget-object v5, Lga/H;->WORLD_FILE:Lga/H;

    if-eq p0, v5, :cond_24

    if-eq p1, v5, :cond_24

    sget-object v6, Lga/H;->SOUND_FILE:Lga/H;

    if-eq p0, v6, :cond_24

    if-eq p1, v6, :cond_24

    sget-object v7, Lga/H;->ANIMATION:Lga/H;

    if-eq p0, v7, :cond_24

    if-eq p1, v7, :cond_24

    sget-object v8, Lga/H;->ANIMATION_MASK:Lga/H;

    if-eq p0, v8, :cond_24

    if-eq p1, v8, :cond_24

    sget-object v9, Lga/H;->COLLISION:Lga/H;

    if-eq p0, v9, :cond_24

    if-eq p1, v9, :cond_24

    sget-object v10, Lga/H;->CONTACT:Lga/H;

    if-eq p0, v10, :cond_24

    if-eq p1, v10, :cond_24

    sget-object v11, Lga/H;->LIST:Lga/H;

    if-eq p0, v11, :cond_24

    if-ne p1, v11, :cond_4

    goto/16 :goto_8

    :cond_4
    sget-object v12, Lga/H;->BRANCH:Lga/H;

    if-eq p0, v12, :cond_22

    if-ne p1, v12, :cond_5

    goto/16 :goto_7

    :cond_5
    invoke-static {p0}, Lga/C;->c(Lga/H;)Z

    move-result v12

    if-nez v12, :cond_1f

    invoke-static {p1}, Lga/C;->c(Lga/H;)Z

    move-result v12

    if-eqz v12, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-static {p0}, Lga/C;->d(Lga/H;)Z

    move-result v12

    if-nez v12, :cond_1c

    invoke-static {p1}, Lga/C;->d(Lga/H;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto/16 :goto_5

    :cond_7
    invoke-static {p0}, Lga/C;->f(Lga/H;)Z

    move-result v12

    if-nez v12, :cond_13

    invoke-static {p1}, Lga/C;->f(Lga/H;)Z

    move-result v12

    if-eqz v12, :cond_8

    goto/16 :goto_3

    :cond_8
    sget-object v12, Lga/H;->DYNAMIC:Lga/H;

    if-eq p0, v12, :cond_12

    if-ne p1, v12, :cond_9

    goto/16 :goto_2

    :cond_9
    sget-object v12, Lga/H;->COLOR_GRADIENT:Lga/H;

    if-eq p0, v12, :cond_11

    if-ne p1, v12, :cond_a

    goto :goto_1

    :cond_a
    sget-object v12, Lga/H;->TEXTURE:Lga/H;

    if-eq p0, v12, :cond_11

    sget-object v13, Lga/H;->CUBEMAP:Lga/H;

    if-eq p0, v13, :cond_11

    if-eq p0, v2, :cond_11

    if-eq p0, v3, :cond_11

    if-eq p0, v4, :cond_11

    if-eq p0, v5, :cond_11

    if-eq p0, v6, :cond_11

    if-eq p0, v7, :cond_11

    if-eq p0, v8, :cond_11

    if-eq p0, v9, :cond_11

    if-eq p0, v10, :cond_11

    if-ne p0, v11, :cond_b

    goto :goto_1

    :cond_b
    if-eq p1, v12, :cond_11

    if-eq p1, v13, :cond_11

    if-eq p1, v2, :cond_11

    if-eq p1, v3, :cond_11

    if-eq p1, v4, :cond_11

    if-eq p1, v5, :cond_11

    if-eq p1, v6, :cond_11

    if-eq p1, v7, :cond_11

    if-eq p1, v8, :cond_11

    if-eq p1, v9, :cond_11

    if-eq p1, v10, :cond_11

    if-ne p1, v11, :cond_c

    goto :goto_1

    :cond_c
    sget-object v2, Lga/H;->MAT3:Lga/H;

    if-eq p0, v2, :cond_e

    sget-object v3, Lga/H;->MAT4:Lga/H;

    if-eq p0, v3, :cond_e

    if-eq p1, v2, :cond_e

    if-ne p1, v3, :cond_d

    goto :goto_0

    :cond_d
    return v1

    :cond_e
    :goto_0
    if-ne p0, v2, :cond_f

    sget-object v3, Lga/H;->MAT4:Lga/H;

    if-eq p1, v3, :cond_10

    :cond_f
    sget-object v3, Lga/H;->MAT4:Lga/H;

    if-ne p0, v3, :cond_11

    if-ne p1, v2, :cond_11

    :cond_10
    move v0, v1

    :cond_11
    :goto_1
    return v0

    :cond_12
    :goto_2
    return v1

    :cond_13
    :goto_3
    sget-object v2, Lga/H;->DYNAMIC:Lga/H;

    if-eq p0, v2, :cond_1b

    if-ne p1, v2, :cond_14

    goto :goto_4

    :cond_14
    invoke-static {p0}, Lga/C;->f(Lga/H;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {p1}, Lga/C;->f(Lga/H;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    :cond_15
    sget-object v2, Lga/H;->NUMBER:Lga/H;

    if-eq p0, v2, :cond_1b

    sget-object v3, Lga/H;->NUMBER01:Lga/H;

    if-eq p0, v3, :cond_1b

    if-eq p1, v2, :cond_1b

    if-ne p1, v3, :cond_16

    goto :goto_4

    :cond_16
    invoke-static {p0}, Lga/C;->g(Lga/H;)Z

    move-result v2

    if-eqz v2, :cond_17

    return v1

    :cond_17
    invoke-static {p1}, Lga/C;->g(Lga/H;)Z

    move-result v2

    if-eqz v2, :cond_18

    return v1

    :cond_18
    sget-object v2, Lga/H;->COLOR:Lga/H;

    if-eq p0, v2, :cond_1b

    if-ne p1, v2, :cond_19

    goto :goto_4

    :cond_19
    invoke-static {p0}, Lga/C;->e(Lga/H;)Z

    move-result p0

    if-nez p0, :cond_1b

    invoke-static {p1}, Lga/C;->e(Lga/H;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_4

    :cond_1a
    return v0

    :cond_1b
    :goto_4
    return v1

    :cond_1c
    :goto_5
    if-eq p0, p1, :cond_1d

    sget-object v2, Lga/H;->DYNAMIC:Lga/H;

    if-eq p0, v2, :cond_1d

    if-ne p1, v2, :cond_1e

    :cond_1d
    move v0, v1

    :cond_1e
    return v0

    :cond_1f
    :goto_6
    if-eq p0, p1, :cond_20

    sget-object v2, Lga/H;->DYNAMIC:Lga/H;

    if-eq p0, v2, :cond_20

    if-ne p1, v2, :cond_21

    :cond_20
    move v0, v1

    :cond_21
    return v0

    :cond_22
    :goto_7
    if-ne p0, p1, :cond_23

    move v0, v1

    :cond_23
    return v0

    :cond_24
    :goto_8
    if-ne p0, p1, :cond_25

    return v1

    :cond_25
    sget-object v2, Lga/H;->FILE:Lga/H;

    if-ne p0, v2, :cond_26

    sget-object v3, Lga/H;->PROJECT_FILE:Lga/H;

    if-eq p1, v3, :cond_29

    :cond_26
    sget-object v3, Lga/H;->PROJECT_FILE:Lga/H;

    if-ne p0, v3, :cond_27

    if-eq p1, v2, :cond_29

    :cond_27
    if-ne p0, v2, :cond_28

    sget-object v2, Lga/H;->INPUT_STREAM:Lga/H;

    if-eq p1, v2, :cond_29

    :cond_28
    if-ne p0, v3, :cond_2a

    sget-object v2, Lga/H;->INPUT_STREAM:Lga/H;

    if-ne p1, v2, :cond_2a

    :cond_29
    return v1

    :cond_2a
    sget-object v2, Lga/H;->DYNAMIC:Lga/H;

    if-eq p0, v2, :cond_2d

    if-ne p1, v2, :cond_2b

    goto :goto_9

    :cond_2b
    if-ne p0, p1, :cond_2c

    move v0, v1

    :cond_2c
    return v0

    :cond_2d
    :goto_9
    return v1

    :cond_2e
    :goto_a
    sget-object v0, Lga/H;->DYNAMIC:Lga/H;

    if-eq p0, v0, :cond_30

    if-ne p1, v0, :cond_2f

    goto :goto_b

    :cond_2f
    invoke-static {p0, p1}, Lga/d;->a(Lga/H;Lga/H;)Z

    move-result p0

    return p0

    :cond_30
    :goto_b
    return v1

    :cond_31
    :goto_c
    return v0
.end method

.method public static b(Ljava/lang/String;Lga/H;Lga/H;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "expr",
            "from",
            "to"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "0.0"

    return-object p0

    :cond_0
    if-eqz p1, :cond_1b

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {p1}, Lga/C;->h(Lga/H;)Lga/H;

    move-result-object p1

    invoke-static {p2}, Lga/C;->h(Lga/H;)Lga/H;

    move-result-object p2

    if-eq p1, p2, :cond_1b

    sget-object v0, Lga/H;->DYNAMIC:Lga/H;

    if-ne p2, v0, :cond_2

    goto/16 :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    return-object p0

    :cond_3
    sget-object v0, Lga/H;->GAME_OBJECT:Lga/H;

    if-ne p2, v0, :cond_4

    invoke-static {p1}, Lga/d;->n(Lga/H;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object p0

    :cond_4
    invoke-static {p1}, Lga/d;->n(Lga/H;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-static {p2}, Lga/d;->n(Lga/H;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_0

    :cond_5
    if-eq p1, v0, :cond_1b

    if-eq p2, v0, :cond_1b

    sget-object v0, Lga/H;->MATERIAL:Lga/H;

    if-eq p1, v0, :cond_1b

    if-eq p2, v0, :cond_1b

    sget-object v0, Lga/H;->FILE:Lga/H;

    if-eq p1, v0, :cond_1b

    if-eq p2, v0, :cond_1b

    sget-object v0, Lga/H;->PROJECT_FILE:Lga/H;

    if-eq p1, v0, :cond_1b

    if-eq p2, v0, :cond_1b

    sget-object v0, Lga/H;->INPUT_STREAM:Lga/H;

    if-eq p1, v0, :cond_1b

    if-eq p2, v0, :cond_1b

    sget-object v0, Lga/H;->OBJECT_FILE:Lga/H;

    if-eq p1, v0, :cond_1b

    if-eq p2, v0, :cond_1b

    sget-object v0, Lga/H;->WORLD_FILE:Lga/H;

    if-eq p1, v0, :cond_1b

    if-eq p2, v0, :cond_1b

    sget-object v0, Lga/H;->SOUND_FILE:Lga/H;

    if-eq p1, v0, :cond_1b

    if-eq p2, v0, :cond_1b

    sget-object v0, Lga/H;->COLLISION:Lga/H;

    if-eq p1, v0, :cond_1b

    if-eq p2, v0, :cond_1b

    sget-object v1, Lga/H;->CONTACT:Lga/H;

    if-eq p1, v1, :cond_1b

    if-eq p2, v1, :cond_1b

    sget-object v2, Lga/H;->LIST:Lga/H;

    if-eq p1, v2, :cond_1b

    if-ne p2, v2, :cond_6

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lga/H;->BRANCH:Lga/H;

    if-eq p1, v3, :cond_1b

    if-ne p2, v3, :cond_7

    goto/16 :goto_0

    :cond_7
    sget-object v3, Lga/H;->BOOLEAN:Lga/H;

    if-eq p1, v3, :cond_1b

    if-ne p2, v3, :cond_8

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Lga/C;->d(Lga/H;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {p2}, Lga/C;->d(Lga/H;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_0

    :cond_9
    sget-object v3, Lga/H;->COLOR_GRADIENT:Lga/H;

    if-eq p1, v3, :cond_1b

    if-ne p2, v3, :cond_a

    goto/16 :goto_0

    :cond_a
    invoke-static {p1}, Lga/C;->f(Lga/H;)Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-static {p2}, Lga/C;->f(Lga/H;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto/16 :goto_0

    :cond_b
    sget-object v3, Lga/H;->TEXTURE:Lga/H;

    if-eq p1, v3, :cond_1b

    sget-object v4, Lga/H;->CUBEMAP:Lga/H;

    if-eq p1, v4, :cond_1b

    invoke-static {p1}, Lga/C;->e(Lga/H;)Z

    move-result v5

    if-nez v5, :cond_1b

    if-eq p1, v0, :cond_1b

    if-eq p1, v1, :cond_1b

    if-ne p1, v2, :cond_c

    goto/16 :goto_0

    :cond_c
    if-eq p2, v3, :cond_1b

    if-eq p2, v4, :cond_1b

    invoke-static {p2}, Lga/C;->e(Lga/H;)Z

    move-result v3

    if-nez v3, :cond_1b

    if-eq p2, v0, :cond_1b

    if-eq p2, v1, :cond_1b

    if-ne p2, v2, :cond_d

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lga/H;->MAT3:Lga/H;

    const-string v1, ")"

    if-ne p1, v0, :cond_e

    sget-object v2, Lga/H;->MAT4:Lga/H;

    if-ne p2, v2, :cond_e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mat4("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    sget-object v2, Lga/H;->MAT4:Lga/H;

    if-ne p1, v2, :cond_f

    if-ne p2, v0, :cond_f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mat3("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    if-eq p1, v0, :cond_1b

    if-eq p1, v2, :cond_1b

    if-eq p2, v0, :cond_1b

    if-ne p2, v2, :cond_10

    goto/16 :goto_0

    :cond_10
    invoke-static {p1}, Lga/C;->j(Lga/H;)I

    move-result p1

    invoke-static {p2}, Lga/C;->j(Lga/H;)I

    move-result p2

    if-ne p2, p1, :cond_11

    return-object p0

    :cond_11
    const/4 v0, 0x1

    if-ne p2, v0, :cond_12

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".x"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const-string v2, "float3("

    const-string v3, "float4("

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne p1, v0, :cond_16

    const-string p1, ", "

    if-ne p2, v6, :cond_13

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "float2("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    if-ne p2, v5, :cond_14

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    if-ne p2, v4, :cond_15

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "float"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    if-le p1, p2, :cond_18

    if-ne p2, v6, :cond_17

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xy"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    if-ne p2, v5, :cond_18

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xyz"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    if-ge p1, p2, :cond_1b

    const-string v0, ", 1.0)"

    if-ne p1, v6, :cond_19

    if-ne p2, v5, :cond_19

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    if-ne p1, v6, :cond_1a

    if-ne p2, v4, :cond_1a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", 1.0, 1.0)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    if-ne p1, v5, :cond_1b

    if-ne p2, v4, :cond_1b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1b
    :goto_0
    return-object p0
.end method

.method public static c(Lga/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    sget-object v0, Lga/H;->BOOLEAN:Lga/H;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lga/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    sget-object v0, Lga/H;->BLENDING_MODE:Lga/H;

    if-eq p0, v0, :cond_1

    sget-object v0, Lga/H;->UV_SOURCE:Lga/H;

    if-eq p0, v0, :cond_1

    sget-object v0, Lga/H;->INPUT_DIALOG_TYPE:Lga/H;

    if-eq p0, v0, :cond_1

    sget-object v0, Lga/H;->POPUP_DIALOG_TYPE:Lga/H;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static e(Lga/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    sget-object v0, Lga/H;->FILE:Lga/H;

    if-eq p0, v0, :cond_1

    sget-object v0, Lga/H;->PROJECT_FILE:Lga/H;

    if-eq p0, v0, :cond_1

    sget-object v0, Lga/H;->INPUT_STREAM:Lga/H;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static f(Lga/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    sget-object v0, Lga/H;->TEXT:Lga/H;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Lga/H;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    sget-object v0, Lga/H;->FLOAT2:Lga/H;

    if-eq p0, v0, :cond_1

    sget-object v0, Lga/H;->FLOAT3:Lga/H;

    if-eq p0, v0, :cond_1

    sget-object v0, Lga/H;->DIRECTION:Lga/H;

    if-eq p0, v0, :cond_1

    sget-object v0, Lga/H;->FLOAT4:Lga/H;

    if-eq p0, v0, :cond_1

    sget-object v0, Lga/H;->QUATERNION:Lga/H;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static h(Lga/H;)Lga/H;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    sget-object v0, Lga/H;->NUMBER01:Lga/H;

    if-eq p0, v0, :cond_1

    sget-object v0, Lga/H;->BIG_NUMBER:Lga/H;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lga/H;->NUMBER:Lga/H;

    return-object p0
.end method

.method public static i(Lga/H;Lga/H;)Lga/H;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    invoke-static {p0}, Lga/C;->h(Lga/H;)Lga/H;

    move-result-object p0

    invoke-static {p1}, Lga/C;->h(Lga/H;)Lga/H;

    move-result-object p1

    sget-object v0, Lga/H;->DYNAMIC:Lga/H;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    invoke-static {p0}, Lga/d;->n(Lga/H;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lga/d;->n(Lga/H;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {p0, p1}, Lga/d;->t(Lga/H;Lga/H;)Lga/H;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    sget-object v0, Lga/H;->GAME_OBJECT:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_4

    goto/16 :goto_5

    :cond_4
    sget-object v0, Lga/H;->MATERIAL:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_5

    goto/16 :goto_5

    :cond_5
    sget-object v0, Lga/H;->FILE:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_6

    goto/16 :goto_5

    :cond_6
    sget-object v0, Lga/H;->PROJECT_FILE:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_7

    goto/16 :goto_5

    :cond_7
    sget-object v0, Lga/H;->INPUT_STREAM:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_8

    goto/16 :goto_5

    :cond_8
    sget-object v0, Lga/H;->OBJECT_FILE:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_9

    goto/16 :goto_5

    :cond_9
    sget-object v0, Lga/H;->ANIMATION_FILE:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_a

    goto/16 :goto_5

    :cond_a
    sget-object v0, Lga/H;->ANIMATION_MASK_FILE:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_b

    goto/16 :goto_5

    :cond_b
    sget-object v0, Lga/H;->WORLD_FILE:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_c

    goto/16 :goto_5

    :cond_c
    sget-object v0, Lga/H;->SOUND_FILE:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_d

    goto/16 :goto_5

    :cond_d
    sget-object v0, Lga/H;->ANIMATION:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_e

    goto/16 :goto_5

    :cond_e
    sget-object v0, Lga/H;->ANIMATION_MASK:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_f

    goto/16 :goto_5

    :cond_f
    sget-object v0, Lga/H;->COLLISION:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_10

    goto/16 :goto_5

    :cond_10
    sget-object v0, Lga/H;->CONTACT:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_11

    goto/16 :goto_5

    :cond_11
    sget-object v0, Lga/H;->LIST:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_12

    goto/16 :goto_5

    :cond_12
    sget-object v0, Lga/H;->BOOLEAN:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_13

    goto/16 :goto_5

    :cond_13
    sget-object v0, Lga/H;->BLENDING_MODE:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_14

    goto/16 :goto_5

    :cond_14
    sget-object v0, Lga/H;->UV_SOURCE:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_15

    goto/16 :goto_5

    :cond_15
    sget-object v0, Lga/H;->INPUT_DIALOG_TYPE:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_16

    goto/16 :goto_5

    :cond_16
    sget-object v0, Lga/H;->POPUP_DIALOG_TYPE:Lga/H;

    if-eq p0, v0, :cond_28

    if-ne p1, v0, :cond_17

    goto/16 :goto_5

    :cond_17
    invoke-static {p0}, Lga/C;->f(Lga/H;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p1}, Lga/C;->f(Lga/H;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_4

    :cond_18
    sget-object v0, Lga/H;->COLOR:Lga/H;

    if-eq p0, v0, :cond_26

    if-ne p1, v0, :cond_19

    goto :goto_3

    :cond_19
    sget-object v0, Lga/H;->COLOR_GRADIENT:Lga/H;

    if-eq p0, v0, :cond_26

    if-ne p1, v0, :cond_1a

    goto :goto_3

    :cond_1a
    sget-object v0, Lga/H;->TEXTURE:Lga/H;

    if-eq p0, v0, :cond_25

    sget-object v1, Lga/H;->CUBEMAP:Lga/H;

    if-ne p0, v1, :cond_1b

    goto :goto_2

    :cond_1b
    if-eq p1, v0, :cond_24

    if-ne p1, v1, :cond_1c

    goto :goto_1

    :cond_1c
    sget-object v0, Lga/H;->MAT4:Lga/H;

    if-eq p0, v0, :cond_23

    if-ne p1, v0, :cond_1d

    goto :goto_0

    :cond_1d
    sget-object v0, Lga/H;->MAT3:Lga/H;

    if-eq p0, v0, :cond_23

    if-ne p1, v0, :cond_1e

    goto :goto_0

    :cond_1e
    sget-object v0, Lga/H;->QUATERNION:Lga/H;

    if-eq p0, v0, :cond_23

    if-ne p1, v0, :cond_1f

    goto :goto_0

    :cond_1f
    invoke-static {p0}, Lga/C;->j(Lga/H;)I

    move-result p0

    invoke-static {p1}, Lga/C;->j(Lga/H;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_22

    const/4 p1, 0x3

    if-eq p0, p1, :cond_21

    const/4 p1, 0x4

    if-eq p0, p1, :cond_20

    sget-object p0, Lga/H;->NUMBER:Lga/H;

    return-object p0

    :cond_20
    sget-object p0, Lga/H;->FLOAT4:Lga/H;

    return-object p0

    :cond_21
    sget-object p0, Lga/H;->FLOAT3:Lga/H;

    return-object p0

    :cond_22
    sget-object p0, Lga/H;->FLOAT2:Lga/H;

    return-object p0

    :cond_23
    :goto_0
    return-object v0

    :cond_24
    :goto_1
    return-object p1

    :cond_25
    :goto_2
    return-object p0

    :cond_26
    :goto_3
    return-object v0

    :cond_27
    :goto_4
    sget-object p0, Lga/H;->TEXT:Lga/H;

    return-object p0

    :cond_28
    :goto_5
    return-object v0
.end method

.method public static j(Lga/H;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lga/H;->NUMBER01:Lga/H;

    if-eq p0, v1, :cond_2

    sget-object v1, Lga/H;->BIG_NUMBER:Lga/H;

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lga/C$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x3

    const/4 v2, 0x4

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    return v2

    :pswitch_1
    return v1

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :cond_2
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
