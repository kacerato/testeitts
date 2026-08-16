.class public Lcom/jme3/shader/ShaderUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToGLSL130(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#version 130\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "in"

    const-string v2, "varying"

    if-eqz p1, :cond_0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p1, "attribute"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "out"

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCardinality(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/jme3/shader/ShaderUtils;->isSwizzlable(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, ".*vec"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public static isSwizzlable(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "vec4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_1

    const-string v0, "vec3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_1

    const-string v0, "vec2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v1, :cond_1

    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public static multiplicityMatch(Lcom/jme3/shader/VariableMapping;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p0, :cond_2

    return v1

    :cond_0
    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static typesMatch(Lcom/jme3/shader/VariableMapping;)Z
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/shader/VariableMapping;->getLeftSwizzling()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/jme3/shader/VariableMapping;->getRightSwizzling()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_0

    return v4

    :cond_0
    invoke-static {v0}, Lcom/jme3/shader/ShaderUtils;->isSwizzlable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/jme3/shader/ShaderUtils;->isSwizzlable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0, v2}, Lcom/jme3/shader/ShaderUtils;->getCardinality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v1, p0}, Lcom/jme3/shader/ShaderUtils;->getCardinality(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-ne v0, p0, :cond_1

    return v4

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
