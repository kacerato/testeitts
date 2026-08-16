.class public abstract Lcom/jme3/shader/ShaderGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NAME_SPACE_GLOBAL:Ljava/lang/String; = "Global"

.field public static final NAME_SPACE_MAT_PARAM:Ljava/lang/String; = "MatParam"

.field public static final NAME_SPACE_VERTEX_ATTRIBUTE:Ljava/lang/String; = "Attr"

.field public static final NAME_SPACE_WORLD_PARAM:Ljava/lang/String; = "WorldParam"


# instance fields
.field protected assetManager:Lcom/jme3/asset/AssetManager;

.field extensions:Ljava/util/regex/Pattern;

.field private final imports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected indent:I

.field protected techniqueDef:Lcom/jme3/material/TechniqueDef;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/shader/ShaderGenerator;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    const-string v0, "(#extension.*\\s+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/shader/ShaderGenerator;->extensions:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/shader/ShaderGenerator;->imports:Ljava/util/Map;

    iput-object p1, p0, Lcom/jme3/shader/ShaderGenerator;->assetManager:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method private moveExtensionsUp(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jme3/shader/ShaderGenerator;->extensions:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public appendNodeDeclarationAndMain(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Lcom/jme3/material/ShaderGenerationInfo;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s*void\\s*main\\s*\\(\\s*\\)\\s*\\{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    aget-object p1, v0, v2

    invoke-virtual {p0, p2, p4, p1, p5}, Lcom/jme3/shader/ShaderGenerator;->generateDeclarativeSection(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Ljava/lang/String;Lcom/jme3/material/ShaderGenerationInfo;)V

    aget-object p1, v0, v1

    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/jme3/shader/ShaderGenerator;->generateNodeMainSection(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Ljava/lang/String;Lcom/jme3/material/ShaderGenerationInfo;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Syntax error in "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ". Cannot find \'void main(){\' in \n"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-virtual {p0, p3, p4, p1, p5}, Lcom/jme3/shader/ShaderGenerator;->generateNodeMainSection(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Ljava/lang/String;Lcom/jme3/material/ShaderGenerationInfo;)V

    :goto_0
    return-void
.end method

.method public buildShader(Ljava/util/List;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNode;",
            ">;",
            "Lcom/jme3/material/ShaderGenerationInfo;",
            "Lcom/jme3/shader/Shader$ShaderType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->TessellationControl:Lcom/jme3/shader/Shader$ShaderType;

    if-eq p3, v0, :cond_3

    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->TessellationEvaluation:Lcom/jme3/shader/Shader$ShaderType;

    if-eq p3, v0, :cond_3

    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->Geometry:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/jme3/shader/ShaderGenerator;->imports:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/shader/ShaderGenerator;->indent:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0, p2, p3}, Lcom/jme3/shader/ShaderGenerator;->generateUniforms(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p3, v1, :cond_1

    invoke-virtual {p0, v0, p2}, Lcom/jme3/shader/ShaderGenerator;->generateAttributes(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;)V

    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/jme3/shader/ShaderGenerator;->generateVaryings(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V

    invoke-virtual {p0, v7, p2, p3}, Lcom/jme3/shader/ShaderGenerator;->generateStartOfMainSection(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v7

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/jme3/shader/ShaderGenerator;->generateDeclarationAndMainBody(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V

    invoke-virtual {p0, v7, p2, p3}, Lcom/jme3/shader/ShaderGenerator;->generateEndOfMainSection(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    iget-object p2, p0, Lcom/jme3/shader/ShaderGenerator;->imports:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/jme3/shader/ShaderGenerator;->moveExtensionsUp(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findShaderIndexFromVersion(Lcom/jme3/shader/ShaderNode;Lcom/jme3/shader/Shader$ShaderType;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNode;->getDefinition()Lcom/jme3/shader/ShaderNodeDefinition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeDefinition;->getShadersLanguage()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/jme3/shader/ShaderGenerator;->getLanguageAndVersion(Lcom/jme3/shader/Shader$ShaderType;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v3, :cond_0

    if-gt v4, p2, :cond_0

    move v2, v1

    move v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public abstract generateAttributes(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;)V
.end method

.method public generateDeclarationAndMainBody(Ljava/util/List;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNode;",
            ">;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/StringBuilder;",
            "Lcom/jme3/material/ShaderGenerationInfo;",
            "Lcom/jme3/shader/Shader$ShaderType;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/jme3/shader/ShaderNode;

    invoke-virtual {p4}, Lcom/jme3/material/ShaderGenerationInfo;->getUnusedNodes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/jme3/shader/ShaderNode;->getDefinition()Lcom/jme3/shader/ShaderNodeDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeDefinition;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v0

    if-ne v0, p5, :cond_0

    invoke-virtual {p0, v5, p5}, Lcom/jme3/shader/ShaderGenerator;->findShaderIndexFromVersion(Lcom/jme3/shader/ShaderNode;Lcom/jme3/shader/Shader$ShaderType;)I

    move-result v0

    invoke-virtual {v5}, Lcom/jme3/shader/ShaderNode;->getDefinition()Lcom/jme3/shader/ShaderNodeDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->getShadersPath()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    iget-object v0, p0, Lcom/jme3/shader/ShaderGenerator;->assetManager:Lcom/jme3/asset/AssetManager;

    new-instance v1, Lcom/jme3/shader/plugins/ShaderAssetKey;

    const/4 v2, 0x0

    invoke-direct {v1, v7, v2}, Lcom/jme3/shader/plugins/ShaderAssetKey;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "[main]"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/jme3/shader/ShaderGenerator;->imports:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/jme3/shader/ShaderGenerator;->appendNodeDeclarationAndMain(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Lcom/jme3/material/ShaderGenerationInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public abstract generateDeclarativeSection(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Ljava/lang/String;Lcom/jme3/material/ShaderGenerationInfo;)V
.end method

.method public abstract generateEndOfMainSection(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
.end method

.method public abstract generateNodeMainSection(Ljava/lang/StringBuilder;Lcom/jme3/shader/ShaderNode;Ljava/lang/String;Lcom/jme3/material/ShaderGenerationInfo;)V
.end method

.method public generateShader(Ljava/lang/String;)Lcom/jme3/shader/Shader;
    .locals 12

    iget-object v0, p0, Lcom/jme3/shader/ShaderGenerator;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/shader/ShaderGenerator;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v1}, Lcom/jme3/material/TechniqueDef;->getShaderGenerationInfo()Lcom/jme3/material/ShaderGenerationInfo;

    move-result-object v1

    new-instance v8, Lcom/jme3/shader/Shader;

    invoke-direct {v8}, Lcom/jme3/shader/Shader;-><init>()V

    invoke-static {}, Lcom/jme3/shader/Shader$ShaderType;->values()[Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v9

    array-length v10, v9

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v10, :cond_1

    aget-object v3, v9, v11

    invoke-virtual {v3}, Lcom/jme3/shader/Shader$ShaderType;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3}, Lcom/jme3/shader/ShaderGenerator;->getLanguageAndVersion(Lcom/jme3/shader/Shader$ShaderType;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lcom/jme3/shader/ShaderGenerator;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v4}, Lcom/jme3/material/TechniqueDef;->getShaderNodes()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v3}, Lcom/jme3/shader/ShaderGenerator;->buildShader(Ljava/util/List;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v8

    move-object v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/jme3/shader/Shader;->addSource(Lcom/jme3/shader/Shader$ShaderType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/shader/ShaderGenerator;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    return-object v8

    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The shaderGenerator was not properly initialized, call initialize(TechniqueDef) before any generation"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract generateStartOfMainSection(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
.end method

.method public abstract generateUniforms(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
.end method

.method public abstract generateVaryings(Ljava/lang/StringBuilder;Lcom/jme3/material/ShaderGenerationInfo;Lcom/jme3/shader/Shader$ShaderType;)V
.end method

.method public abstract getLanguageAndVersion(Lcom/jme3/shader/Shader$ShaderType;)Ljava/lang/String;
.end method

.method public initialize(Lcom/jme3/material/TechniqueDef;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/shader/ShaderGenerator;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    return-void
.end method
