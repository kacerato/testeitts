.class public Lcom/jme3/shader/Glsl100ShaderGenerator;
.super Lcom/jme3/shader/ShaderGenerator;
.source "SourceFile"


# static fields
.field private static final INDENTCHAR:Ljava/lang/String; = "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"


# instance fields
.field protected inPosTmp:Lcom/jme3/shader/ShaderNodeVariable;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetManager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/shader/ShaderGenerator;-><init>(Lcom/jme3/asset/AssetManager;)V

    return-void
.end method


# virtual methods
.method public appendIndent(Ljava/lang/StringBuilder;)V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/jme3/shader/ShaderGenerator;->indent:I

    const-string v2, "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public appendOutput(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public comment(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    const-string v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public declareAttribute(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "attribute"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;ZLjava/lang/String;)V

    return-void
.end method

.method public declareGlobalPosition(Lcom/jme3/material/ShaderGenerationInfo;Ljava/lang/StringBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shader/Glsl100ShaderGenerator;->inPosTmp:Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/material/ShaderGenerationInfo;->getVertexGlobal()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/material/ShaderGenerationInfo;->getVertexGlobal()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object p1

    const-string v0, "inPosition"

    invoke-virtual {p0, p2, p1, v0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/material/ShaderGenerationInfo;->getVertexGlobal()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object p1

    const-string v0, "vec4(inPosition,1.0)"

    invoke-virtual {p0, p2, p1, v0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;ZLjava/lang/String;)V

    return-void
.end method

.method public declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 5
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getCondition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->startCondition(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    .line 7
    const-string v0, " "

    if-eqz p5, :cond_0

    .line 8
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    .line 12
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string p4, "_"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_1
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getPrefix()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2

    .line 17
    const-string p4, "["

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string p4, "]"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p3, :cond_3

    .line 20
    const-string p4, " = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    :cond_3
    const-string p3, ";\n"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getCondition()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->endCondition(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;ZLjava/lang/String;)V

    return-void
.end method

.method public declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;ZLjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    .line 4
    invoke-virtual/range {v0 .. v5}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public declareVarying(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Z)V
    .locals 1

    const/4 p3, 0x1

    const-string v0, "varying"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;ZLjava/lang/String;)V

    return-void
.end method

.method public endCondition(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->unIndent()V

    invoke-virtual {p0, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    const-string p1, "#endif\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public fixInPositionType(Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "vec3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "vec4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/jme3/shader/ShaderNodeVariable;->setType(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public generateAttributes(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;)V
    .locals 4

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/material/ShaderGenerationInfo;->getAttributes()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "inPosition"

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/jme3/shader/ShaderNodeVariable;->setCondition(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->fixInPositionType(Lcom/jme3/shader/ShaderNodeVariable;)V

    iput-object v1, p0, Lcom/jme3/shader/Glsl100ShaderGenerator;->inPosTmp:Lcom/jme3/shader/ShaderNodeVariable;

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareAttribute(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    new-instance p2, Lcom/jme3/shader/ShaderNodeVariable;

    const-string v0, "vec3"

    invoke-direct {p2, v0, v2}, Lcom/jme3/shader/ShaderNodeVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/jme3/shader/Glsl100ShaderGenerator;->inPosTmp:Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareAttribute(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;)V

    :cond_2
    return-void
.end method

.method public generateDeclarativeSection(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Ljava/lang/String;Lcom/jme3/material/ShaderGenerationInfo;)V
    .locals 1

    const-string p4, "\\n"

    const-string v0, ""

    invoke-virtual {p3, p4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_0

    invoke-virtual {p0, p3, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->updateDefinesName(Ljava/lang/String;Lcom/jme3/shader/ShaderNode;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "\n"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->unIndent()V

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNode;->getCondition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->startCondition(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNode;->getCondition()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->endCondition(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->indent()V

    :cond_0
    return-void
.end method

.method public generateEndOfMainSection(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 4

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p3, v0, :cond_0

    const-string p3, "gl_Position"

    invoke-virtual {p2}, Lcom/jme3/material/ShaderGenerationInfo;->getVertexGlobal()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendOutput(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;)V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/jme3/material/ShaderGenerationInfo;->getFragmentGlobals()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/shader/ShaderNodeVariable;

    const-string p3, "gl_FragColor"

    invoke-virtual {p0, p1, p3, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendOutput(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jme3/shader/ShaderNodeVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gl_FragData["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendOutput(Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;)V

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->unIndent()V

    invoke-virtual {p0, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    const-string p2, "}\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public generateNodeMainSection(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Ljava/lang/String;Lcom/jme3/material/ShaderGenerationInfo;)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    invoke-virtual {v6, v0, v8}, Lcom/jme3/shader/Glsl100ShaderGenerator;->updateDefinesName(Ljava/lang/String;Lcom/jme3/shader/ShaderNode;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Begin"

    invoke-virtual {v6, v7, v8, v1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->comment(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/shader/ShaderNode;->getCondition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1, v7}, Lcom/jme3/shader/Glsl100ShaderGenerator;->startCondition(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/shader/ShaderNode;->getDefinition()Lcom/jme3/shader/ShaderNodeDefinition;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jme3/shader/ShaderNodeDefinition;->getInputs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v0

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "_"

    const-string v2, "sampler"

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v1, v2, v3, v4}, Lcom/jme3/shader/ShaderNodeVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v15}, Lcom/jme3/shader/Glsl100ShaderGenerator;->isVarying(Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/ShaderNodeVariable;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual/range {v0 .. v5}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;ZLjava/lang/String;)V

    :cond_1
    invoke-virtual {v6, v13, v15}, Lcom/jme3/shader/Glsl100ShaderGenerator;->replaceVariableName(Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/shader/ShaderNode;->getInputMapping()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/shader/VariableMapping;

    invoke-virtual {v3}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v4

    invoke-virtual {v3}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v4, :cond_4

    invoke-virtual {v6, v4}, Lcom/jme3/shader/Glsl100ShaderGenerator;->isWorldOrMaterialParam(Lcom/jme3/shader/ShaderNodeVariable;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v4}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/jme3/shader/ShaderNodeVariable;->getPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v13, v5, v3}, Lcom/jme3/shader/Glsl100ShaderGenerator;->replace(Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    xor-int/lit8 v4, v14, 0x1

    invoke-virtual {v6, v3, v7, v4}, Lcom/jme3/shader/Glsl100ShaderGenerator;->map(Lcom/jme3/shader/VariableMapping;Ljava/lang/StringBuilder;Z)V

    :goto_2
    if-nez v14, :cond_3

    invoke-virtual {v6, v13, v5, v12}, Lcom/jme3/shader/Glsl100ShaderGenerator;->replace(Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v13, v3

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "a Sampler must be a uniform"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v11}, Lcom/jme3/shader/ShaderNodeDefinition;->getOutputs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/ShaderNodeVariable;

    new-instance v3, Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v4, v5, v11, v12}, Lcom/jme3/shader/ShaderNodeVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v6, v9, v3}, Lcom/jme3/shader/Glsl100ShaderGenerator;->isVarying(Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/ShaderNodeVariable;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v6, v7, v3}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;)V

    :cond_8
    invoke-virtual {v6, v13, v3}, Lcom/jme3/shader/Glsl100ShaderGenerator;->replaceVariableName(Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;)Ljava/lang/String;

    move-result-object v2

    move-object v13, v2

    goto :goto_3

    :cond_9
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/shader/ShaderNode;->getOutputMapping()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/VariableMapping;

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v7, v2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->map(Lcom/jme3/shader/VariableMapping;Ljava/lang/StringBuilder;Z)V

    goto :goto_4

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/shader/ShaderNode;->getCondition()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v7}, Lcom/jme3/shader/Glsl100ShaderGenerator;->endCondition(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v0, "End"

    invoke-virtual {v6, v7, v8, v0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->comment(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Ljava/lang/String;)V

    return-void
.end method

.method public generateStartOfMainSection(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 2

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "void main() {\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->indent()V

    invoke-virtual {p0, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, p2, p1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareGlobalPosition(Lcom/jme3/material/ShaderGenerationInfo;Ljava/lang/StringBuilder;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p3, v1, :cond_1

    invoke-virtual {p2}, Lcom/jme3/material/ShaderGenerationInfo;->getFragmentGlobals()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jme3/shader/ShaderNodeVariable;

    const-string v1, "vec4(1.0)"

    invoke-virtual {p0, p1, p3, v1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public generateUniforms(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p3, v0, :cond_0

    invoke-virtual {p2}, Lcom/jme3/material/ShaderGenerationInfo;->getVertexUniforms()Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/material/ShaderGenerationInfo;->getFragmentUniforms()Ljava/util/List;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->generateUniforms(Ljava/lang/StringBuilder;Ljava/util/List;)V

    return-void
.end method

.method public generateUniforms(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/ShaderNodeVariable;

    const/4 v1, 0x0

    .line 4
    const-string v2, "uniform"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVariable(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public generateVaryings(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 2

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/material/ShaderGenerationInfo;->getVaryings()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/ShaderNodeVariable;

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-eq p3, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->declareVarying(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNodeVariable;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAppendableNameSpace(Lcom/jme3/shader/ShaderNodeVariable;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Attr_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WorldParam_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MatParam_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method public getLanguageAndVersion(Lcom/jme3/shader/Shader$ShaderType;)Ljava/lang/String;
    .locals 0

    const-string p1, "GLSL100"

    return-object p1
.end method

.method public indent()V
    .locals 2

    iget v0, p0, Lcom/jme3/shader/ShaderGenerator;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/jme3/shader/ShaderGenerator;->indent:I

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/jme3/shader/ShaderGenerator;->indent:I

    return-void
.end method

.method public isVarying(Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/ShaderNodeVariable;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/material/ShaderGenerationInfo;->getVaryings()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v1, p2}, Lcom/jme3/shader/ShaderNodeVariable;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isWorldOrMaterialParam(Lcom/jme3/shader/ShaderNodeVariable;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MatParam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WorldParam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public map(Lcom/jme3/shader/VariableMapping;Ljava/lang/StringBuilder;Z)V
    .locals 6

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getRightExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getCondition()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->startCondition(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->isShaderOutput()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "["

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getLeftSwizzling()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "."

    const-string v5, " = "

    if-lez v3, :cond_2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(0.0);\n"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getLeftSwizzling()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/jme3/shader/Glsl100ShaderGenerator;->getAppendableNameSpace(Lcom/jme3/shader/ShaderNodeVariable;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getPrefix()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getRightSwizzling()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getRightSwizzling()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_0
    const-string p3, ";\n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getCondition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->endCondition(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public replace(Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?<=\\W)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "(?=\\W)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public replaceVariableName(Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->getAppendableNameSpace(Lcom/jme3/shader/ShaderNodeVariable;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->replace(Ljava/lang/String;Lcom/jme3/shader/ShaderNodeVariable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public startCondition(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/jme3/shader/Glsl100ShaderGenerator;->appendIndent(Ljava/lang/StringBuilder;)V

    const-string v0, "#if "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jme3/shader/Glsl100ShaderGenerator;->indent()V

    :cond_0
    return-void
.end method

.method public unIndent()V
    .locals 2

    iget v0, p0, Lcom/jme3/shader/ShaderGenerator;->indent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/jme3/shader/ShaderGenerator;->indent:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/jme3/shader/ShaderGenerator;->indent:I

    return-void
.end method

.method public updateDefinesName(Ljava/lang/String;Lcom/jme3/shader/ShaderNode;)Ljava/lang/String;
    .locals 15

    const-string v0, "\\n"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/jme3/material/plugins/ConditionParser;

    invoke-direct {v2}, Lcom/jme3/material/plugins/ConditionParser;-><init>()V

    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "#if"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/jme3/material/plugins/ConditionParser;->extractDefines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "defined"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "#if "

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "#ifdef"

    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v10, v4

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/shader/ShaderNode;->getInputMapping()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/shader/VariableMapping;

    invoke-virtual {v13}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v14

    invoke-virtual {v14}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v13}, Lcom/jme3/shader/VariableMapping;->getCondition()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    invoke-virtual {v13}, Lcom/jme3/shader/VariableMapping;->getCondition()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v11, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    if-eqz v10, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v1
.end method
