.class public Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Z
    .locals 4
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

    if-eqz p0, :cond_d

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->BRANCH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p0, v2, :cond_c

    if-ne p1, v2, :cond_2

    goto :goto_3

    :cond_2
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p0, v2, :cond_b

    if-ne p1, v2, :cond_3

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p0, v2, :cond_a

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p0, v3, :cond_4

    goto :goto_1

    :cond_4
    if-eq p1, v2, :cond_a

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p0, v2, :cond_7

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p0, v3, :cond_7

    if-eq p1, v2, :cond_7

    if-ne p1, v3, :cond_6

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_0
    if-ne p0, v2, :cond_8

    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p1, v3, :cond_9

    :cond_8
    sget-object v3, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p0, v3, :cond_a

    if-ne p1, v2, :cond_a

    :cond_9
    move v0, v1

    :cond_a
    :goto_1
    return v0

    :cond_b
    :goto_2
    return v1

    :cond_c
    :goto_3
    if-ne p0, p1, :cond_d

    move v0, v1

    :cond_d
    :goto_4
    return v0
.end method

.method public static b(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
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
    if-eqz p1, :cond_14

    if-nez p2, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p2

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p2

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p1, v0, :cond_2

    invoke-static {p0, p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->c(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eq p1, p2, :cond_14

    if-ne p2, v0, :cond_3

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->BRANCH:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p1, v0, :cond_14

    if-ne p2, v0, :cond_4

    goto/16 :goto_0

    :cond_4
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p1, v0, :cond_14

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p1, v1, :cond_5

    goto/16 :goto_0

    :cond_5
    if-eq p2, v0, :cond_14

    if-ne p2, v1, :cond_6

    goto/16 :goto_0

    :cond_6
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    const-string v1, ")"

    if-ne p1, v0, :cond_7

    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p2, v2, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mat4("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v2, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p1, v2, :cond_8

    if-ne p2, v0, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mat3("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    if-eq p1, v0, :cond_14

    if-eq p1, v2, :cond_14

    if-eq p2, v0, :cond_14

    if-ne p2, v2, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)I

    move-result p1

    invoke-static {p2}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)I

    move-result p2

    if-ne p2, p1, :cond_a

    return-object p0

    :cond_a
    const/4 v0, 0x1

    if-ne p2, v0, :cond_b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".x"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string v2, "float3("

    const-string v3, "float4("

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ne p1, v0, :cond_f

    const-string p1, ", "

    if-ne p2, v6, :cond_c

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

    :cond_c
    if-ne p2, v5, :cond_d

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

    :cond_d
    if-ne p2, v4, :cond_e

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

    :cond_e
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

    :cond_f
    if-le p1, p2, :cond_11

    if-ne p2, v6, :cond_10

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xy"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    if-ne p2, v5, :cond_11

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".xyz"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    if-ge p1, p2, :cond_14

    const-string v0, ", 1.0)"

    if-ne p1, v6, :cond_12

    if-ne p2, v5, :cond_12

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    if-ne p1, v6, :cond_13

    if-ne p2, v4, :cond_13

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", 1.0, 1.0)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    if-ne p1, v5, :cond_14

    if-ne p2, v4, :cond_14

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_14
    :goto_0
    return-object p0
.end method

.method public static c(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expr",
            "to"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, ")"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "float4("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "float3("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "float2("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->COLOR:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    :cond_0
    return-object p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    :cond_0
    return-object p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;
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

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->e(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p1

    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->DYNAMIC:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->TEXTURE:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p0, v0, :cond_b

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->CUBEMAP:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p0, v1, :cond_2

    goto :goto_2

    :cond_2
    if-eq p1, v0, :cond_a

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p0, v0, :cond_9

    if-ne p1, v0, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->MAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-eq p0, v0, :cond_9

    if-ne p1, v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)I

    move-result p0

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_8

    const/4 p1, 0x3

    if-eq p0, p1, :cond_7

    const/4 p1, 0x4

    if-eq p0, p1, :cond_6

    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    return-object p0

    :cond_6
    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT4:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    return-object p0

    :cond_7
    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT3:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    return-object p0

    :cond_8
    sget-object p0, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->FLOAT2:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    return-object p0

    :cond_9
    :goto_0
    return-object v0

    :cond_a
    :goto_1
    return-object p1

    :cond_b
    :goto_2
    return-object p0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)I
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
    invoke-static {p0}, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y;->d(Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;)Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    move-result-object p0

    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;->NUMBER01:Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/C;

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    sget-object v1, Lcom/itsmagic/engine/Engines/Graphics/ShaderGraph/y$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x2

    if-eq p0, v0, :cond_4

    const/4 v2, 0x3

    if-eq p0, v1, :cond_3

    if-eq p0, v2, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x4

    return p0

    :cond_3
    return v2

    :cond_4
    return v1
.end method
