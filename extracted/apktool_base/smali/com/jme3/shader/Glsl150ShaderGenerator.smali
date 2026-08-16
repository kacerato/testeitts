.class public Lcom/jme3/shader/Glsl150ShaderGenerator;
.super Lcom/jme3/shader/Glsl100ShaderGenerator;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;-><init>(Lcom/jme3/asset/AssetManager;)V

    return-void
.end method

.method private generateCompatibilityDefines(Ljava/lang/StringBuilder;Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p2, v0, :cond_0

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#ifdef GL_ES\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "precision highp float;\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "precision highp int;\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#if __VERSION__ >= 130\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "precision highp sampler2DArray;\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#endif\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "precision highp sampler2DShadow;\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "precision highp samplerCube;\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "precision highp sampler3D;\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "precision highp sampler2D;\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "#if __VERSION__ >= 310\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "precision highp sampler2DMS;\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#define texture1D texture\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#define texture2D texture\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#define texture3D texture\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#define textureCube texture\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#define texture2DLod textureLod\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "#define textureCubeLod textureLod\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public declareAttribute(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "in"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;ZLjava/lang/String;)V

    return-void
.end method

.method public declareVarying(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Z)V
    .locals 1

    if-eqz p3, :cond_0

    const-string p3, "in"

    goto :goto_0

    :cond_0
    const-string p3, "out"

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;ZLjava/lang/String;)V

    return-void
.end method

.method public generateEndOfMainSection(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 1

    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p3, v0, :cond_0

    const-string p3, "gl_Position"

    invoke-virtual {p2}, Lcom/jme3/material/ShaderGenerationInfo;->getVertexGlobal()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendOutput(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->unIndent()V

    invoke-virtual {p0, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    const-string p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public generateStartOfMainSection(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 9

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p3, v1, :cond_0

    invoke-virtual {p2}, Lcom/jme3/material/ShaderGenerationInfo;->getFragmentGlobals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/jme3/shader/ShaderNodeVariable;

    const/4 v7, 0x1

    const-string v8, "out"

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    const-string v0, "void main(){\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->indent()V

    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p3, v0, :cond_1

    invoke-virtual {p0, p2, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareGlobalPosition(Lcom/jme3/material/ShaderGenerationInfo;Ljava/lang/StringBuilder;)V

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/jme3/material/ShaderGenerationInfo;->getFragmentGlobals()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jme3/shader/ShaderNodeVariable;

    const-string v0, "vec4(1.0)"

    invoke-virtual {p0, p1, p3, v0}, Lcom/jme3/shader/Glsl150ShaderGenerator;->initVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public generateUniforms(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/jme3/shader/Glsl150ShaderGenerator;->generateCompatibilityDefines(Ljava/lang/StringBuilder;Lcom/jme3/shader/Shader$ShaderType;)V

    invoke-super {p0, p1, p2, p3}, Lcom/jme3/shader/Glsl100ShaderGenerator;->generateUniforms(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V

    return-void
.end method

.method public getLanguageAndVersion(Lcom/jme3/shader/Shader$ShaderType;)Ljava/lang/String;
    .locals 0

    const-string p1, "GLSL150"

    return-object p1
.end method

.method public initVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
