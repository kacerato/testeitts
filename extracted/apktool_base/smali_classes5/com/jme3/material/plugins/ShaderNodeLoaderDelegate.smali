.class public Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;
    }
.end annotation


# static fields
.field private static final IM_HAS_NAME_SPACE:[Z

.field private static final OM_HAS_NAME_SPACE:[Z


# instance fields
.field protected assetManager:Lcom/jme3/asset/AssetManager;

.field protected attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;",
            ">;"
        }
    .end annotation
.end field

.field protected conditionParser:Lcom/jme3/material/plugins/ConditionParser;

.field protected fragmentDeclaredUniforms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;",
            ">;"
        }
    .end annotation
.end field

.field protected materialDef:Lcom/jme3/material/MaterialDef;

.field protected nodeDefinitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/shader/ShaderNodeDefinition;",
            ">;"
        }
    .end annotation
.end field

.field protected nodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/shader/ShaderNode;",
            ">;"
        }
    .end annotation
.end field

.field protected nulledConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected shaderLanguage:Ljava/lang/String;

.field protected shaderName:Ljava/lang/String;

.field protected shaderNode:Lcom/jme3/shader/ShaderNode;

.field protected shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

.field protected techniqueDef:Lcom/jme3/material/TechniqueDef;

.field protected varNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected varyings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;",
            ">;"
        }
    .end annotation
.end field

.field protected vertexDeclaredUniforms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->IM_HAS_NAME_SPACE:[Z

    new-array v0, v0, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->OM_HAS_NAME_SPACE:[Z

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->attributes:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->vertexDeclaredUniforms:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->fragmentDeclaredUniforms:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->varyings:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->varNames:Ljava/util/Set;

    new-instance v0, Lcom/jme3/material/plugins/ConditionParser;

    invoke-direct {v0}, Lcom/jme3/material/plugins/ConditionParser;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->conditionParser:Lcom/jme3/material/plugins/ConditionParser;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nulledConditions:Ljava/util/List;

    return-void
.end method

.method private getNodeDefinitions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/shader/ShaderNodeDefinition;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nodeDefinitions:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nodeDefinitions:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nodeDefinitions:Ljava/util/Map;

    return-object v0
.end method

.method private updateMaterialTextureType(Lcom/jme3/util/blockparser/Statement;Lcom/jme3/shader/VariableMapping;Lcom/jme3/shader/ShaderNodeVariable;Lcom/jme3/material/MatParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/material/plugins/MatParseException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->fixSamplerType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jme3/shader/ShaderNodeVariable;->setType(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p2, Lcom/jme3/material/plugins/MatParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " can only be matched to one of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object p4

    invoke-virtual {p4}, Lcom/jme3/shader/VarType;->getGlslType()Ljava/lang/String;

    move-result-object p4

    const-string v1, "\\|"

    const-string v2, ","

    invoke-virtual {p4, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " found "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw p2
.end method


# virtual methods
.method public addDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0, p1}, Lcom/jme3/material/TechniqueDef;->getShaderParamDefine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/jme3/material/TechniqueDef;->addShaderParamDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public checkMappingFormat([Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/material/plugins/MatParseException;
        }
    .end annotation

    array-length p1, p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/jme3/material/plugins/MatParseException;

    const-string v0, "Not a valid expression should be \'<varName>[.<swizzling>] = <nameSpace>.<varName>[.<swizzling>][:Condition]\'"

    invoke-direct {p1, v0, p2}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw p1
.end method

.method public checkTypes(Lcom/jme3/shader/VariableMapping;Lcom/jme3/util/blockparser/Statement;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/material/plugins/MatParseException;
        }
    .end annotation

    invoke-static {p1}, Lcom/jme3/shader/ShaderUtils;->typesMatch(Lcom/jme3/shader/VariableMapping;)Z

    move-result v0

    const-string v1, " to "

    const-string v2, "Type mismatch, cannot convert "

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getLeftSwizzling()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v3, "."

    const-string v4, ""

    if-nez v0, :cond_0

    move-object v0, v4

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getLeftSwizzling()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getRightSwizzling()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getRightSwizzling()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    new-instance v3, Lcom/jme3/material/plugins/MatParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, p2}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v3

    :cond_2
    invoke-static {p1}, Lcom/jme3/shader/ShaderUtils;->multiplicityMatch(Lcom/jme3/shader/VariableMapping;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/jme3/material/plugins/MatParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, p2}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v3
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nodeDefinitions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nodes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->vertexDeclaredUniforms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->fragmentDeclaredUniforms:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->varyings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->materialDef:Lcom/jme3/material/MaterialDef;

    const-string v1, ""

    iput-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderLanguage:Ljava/lang/String;

    iput-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderName:Ljava/lang/String;

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->varNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->assetManager:Lcom/jme3/asset/AssetManager;

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nulledConditions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public extractCondition(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/material/plugins/MatParseException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->conditionParser:Lcom/jme3/material/plugins/ConditionParser;

    invoke-virtual {v0, p1}, Lcom/jme3/material/plugins/ConditionParser;->extractDefines(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->findMatParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->addDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid condition, condition must match a Material Parameter named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_1
    return-void
.end method

.method public findDefinition(Lcom/jme3/util/blockparser/Statement;)Lcom/jme3/shader/ShaderNodeDefinition;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    invoke-direct {p0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->getNodeDefinitions()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/shader/ShaderNodeDefinition;

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->assetManager:Lcom/jme3/asset/AssetManager;

    new-instance v6, Lcom/jme3/asset/ShaderNodeDefinitionKey;

    invoke-direct {v6, v0}, Lcom/jme3/asset/ShaderNodeDefinitionKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/jme3/asset/AssetManager;->loadAsset(Lcom/jme3/asset/AssetKey;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-virtual {v6}, Lcom/jme3/shader/ShaderNodeDefinition;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v6

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/jme3/shader/ShaderNodeDefinition;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eqz v4, :cond_4

    return-object v4

    :cond_4
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a declared as Shader Node Definition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :catch_0
    move-exception v1

    new-instance v2, Lcom/jme3/material/plugins/MatParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, p1, v1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;Ljava/lang/Throwable;)V

    throw v2

    :cond_5
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    const-string v1, "Can\'t find shader node definition for: "

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0
.end method

.method public findMatParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;
    .locals 3

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->materialDef:Lcom/jme3/material/MaterialDef;

    invoke-virtual {v0}, Lcom/jme3/material/MaterialDef;->getMaterialParams()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/MatParam;

    invoke-virtual {v1}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public findNodeOutput(Ljava/util/List;Ljava/lang/String;)Lcom/jme3/shader/ShaderNodeVariable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/jme3/shader/ShaderNodeVariable;"
        }
    .end annotation

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

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public findWorldParam(Ljava/lang/String;)Lcom/jme3/shader/UniformBinding;
    .locals 3

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getWorldBindings()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/UniformBinding;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public fixSamplerType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "\\|"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public mergeConditions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p2
.end method

.method public parseMapping(Lcom/jme3/util/blockparser/Statement;[Z)Lcom/jme3/shader/VariableMapping;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/material/plugins/MatParseException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lcom/jme3/shader/VariableMapping;

    invoke-direct {v2}, Lcom/jme3/shader/VariableMapping;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v3, v4

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->checkMappingFormat([Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    const/4 v6, 0x2

    new-array v7, v6, [Lcom/jme3/shader/ShaderNodeVariable;

    new-array v8, v6, [Ljava/lang/String;

    const/4 v9, 0x0

    move v10, v4

    :goto_0
    array-length v11, v5

    const-string v12, ""

    const/4 v13, 0x1

    if-ge v10, v11, :cond_5

    aget-object v11, v5, v10

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v14, "%%"

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v6

    invoke-virtual {v11, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_0
    const-string v14, "\\."

    invoke-virtual {v11, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-boolean v14, p2, v10

    if-eqz v14, :cond_2

    array-length v14, v11

    const/4 v15, 0x3

    if-gt v14, v15, :cond_1

    new-instance v14, Lcom/jme3/shader/ShaderNodeVariable;

    aget-object v16, v11, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v12, v4, v13}, Lcom/jme3/shader/ShaderNodeVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v14, v7, v10

    :cond_1
    array-length v4, v11

    if-ne v4, v15, :cond_4

    aget-object v4, v11, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v10

    goto :goto_1

    :cond_2
    array-length v4, v11

    if-gt v4, v6, :cond_3

    new-instance v4, Lcom/jme3/shader/ShaderNodeVariable;

    const/4 v14, 0x0

    aget-object v15, v11, v14

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v12, v14}, Lcom/jme3/shader/ShaderNodeVariable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v7, v10

    :cond_3
    array-length v4, v11

    if-ne v4, v6, :cond_4

    aget-object v4, v11, v13

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v10

    :cond_4
    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    aget-object v5, v7, v4

    invoke-virtual {v2, v5}, Lcom/jme3/shader/VariableMapping;->setLeftVariable(Lcom/jme3/shader/ShaderNodeVariable;)V

    aget-object v4, v8, v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v4, v12

    :goto_2
    invoke-virtual {v2, v4}, Lcom/jme3/shader/VariableMapping;->setLeftSwizzling(Ljava/lang/String;)V

    if-eqz v9, :cond_7

    invoke-virtual {v2, v9}, Lcom/jme3/shader/VariableMapping;->setRightExpression(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    aget-object v4, v7, v13

    invoke-virtual {v2, v4}, Lcom/jme3/shader/VariableMapping;->setRightVariable(Lcom/jme3/shader/ShaderNodeVariable;)V

    aget-object v4, v8, v13

    if-eqz v4, :cond_8

    move-object v12, v4

    :cond_8
    invoke-virtual {v2, v12}, Lcom/jme3/shader/VariableMapping;->setRightSwizzling(Ljava/lang/String;)V

    :goto_3
    array-length v4, v3

    if-le v4, v13, :cond_9

    aget-object v3, v3, v13

    invoke-virtual {v0, v3, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->extractCondition(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    iget-object v1, v0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->conditionParser:Lcom/jme3/material/plugins/ConditionParser;

    invoke-virtual {v1}, Lcom/jme3/material/plugins/ConditionParser;->getFormattedExpression()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jme3/shader/VariableMapping;->setCondition(Ljava/lang/String;)V

    :cond_9
    return-object v2
.end method

.method public readFragmentShaderNodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readNodes(Ljava/util/List;)V

    return-void
.end method

.method public readInputMapping(Lcom/jme3/util/blockparser/Statement;)Lcom/jme3/shader/VariableMapping;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/material/plugins/MatParseException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->IM_HAS_NAME_SPACE:[Z

    invoke-virtual {p0, p1, v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->parseMapping(Lcom/jme3/util/blockparser/Statement;[Z)Lcom/jme3/shader/VariableMapping;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNode;->getDefinition()Lcom/jme3/shader/ShaderNodeDefinition;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v3

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getRightExpression()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->getInputs()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->updateVariableFromList(Lcom/jme3/shader/ShaderNodeVariable;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sampler"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "MatParam"

    if-eqz v5, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    const-string v1, "Samplers can only be assigned to MatParams"

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    const-string v1, "The mapping doesn\'t have a right variable or a right expression."

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Global"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v1, "vec4"

    invoke-virtual {v3, v1}, Lcom/jme3/shader/ShaderNodeVariable;->setType(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeGlobal(Lcom/jme3/shader/ShaderNodeVariable;Lcom/jme3/util/blockparser/Statement;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Attr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v1

    sget-object v2, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    if-eq v1, v2, :cond_6

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->updateVarFromAttributes(Lcom/jme3/shader/ShaderNodeVariable;Lcom/jme3/shader/VariableMapping;)V

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeAttribute(Lcom/jme3/shader/ShaderNodeVariable;)V

    goto/16 :goto_2

    :cond_6
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot have an attribute as input in a fragment shader"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_7
    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->findMatParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v1

    sget-object v3, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->vertexDeclaredUniforms:Ljava/util/Map;

    invoke-virtual {p0, v4, v0, v1, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->updateRightFromUniforms(Lcom/jme3/material/MatParam;Lcom/jme3/shader/VariableMapping;Ljava/util/Map;Lcom/jme3/util/blockparser/Statement;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0, p1, v0, v2, v4}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->updateMaterialTextureType(Lcom/jme3/util/blockparser/Statement;Lcom/jme3/shader/VariableMapping;Lcom/jme3/shader/ShaderNodeVariable;Lcom/jme3/material/MatParam;)V

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeVertexUniform(Lcom/jme3/shader/ShaderNodeVariable;)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->fragmentDeclaredUniforms:Ljava/util/Map;

    invoke-virtual {p0, v4, v0, v1, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->updateRightFromUniforms(Lcom/jme3/material/MatParam;Lcom/jme3/shader/VariableMapping;Ljava/util/Map;Lcom/jme3/util/blockparser/Statement;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-direct {p0, p1, v0, v2, v4}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->updateMaterialTextureType(Lcom/jme3/util/blockparser/Statement;Lcom/jme3/shader/VariableMapping;Lcom/jme3/shader/ShaderNodeVariable;Lcom/jme3/material/MatParam;)V

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeFragmentUniform(Lcom/jme3/shader/ShaderNodeVariable;)V

    goto/16 :goto_2

    :cond_9
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find a Material Parameter named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_a
    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WorldParam"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->findWorldParam(Ljava/lang/String;)Lcom/jme3/shader/UniformBinding;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v1

    sget-object v3, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-ne v1, v3, :cond_b

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->vertexDeclaredUniforms:Ljava/util/Map;

    invoke-virtual {p0, v2, v0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->updateRightFromUniforms(Lcom/jme3/shader/UniformBinding;Lcom/jme3/shader/VariableMapping;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeVertexUniform(Lcom/jme3/shader/ShaderNodeVariable;)V

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->fragmentDeclaredUniforms:Ljava/util/Map;

    invoke-virtual {p0, v2, v0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->updateRightFromUniforms(Lcom/jme3/shader/UniformBinding;Lcom/jme3/shader/VariableMapping;Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeFragmentUniform(Lcom/jme3/shader/ShaderNodeVariable;)V

    goto :goto_2

    :cond_c
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find a World Parameter named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_d
    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nodes:Ljava/util/Map;

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/ShaderNode;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNode;->getDefinition()Lcom/jme3/shader/ShaderNodeDefinition;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeDefinition;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->findNodeOutput(Ljava/util/List;Ljava/lang/String;)Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/shader/ShaderNodeVariable;->setNameSpace(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/jme3/shader/ShaderNodeVariable;->setType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/jme3/shader/ShaderNodeVariable;->setMultiplicity(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/jme3/shader/VariableMapping;->setRightVariable(Lcom/jme3/shader/ShaderNodeVariable;)V

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeVaryings(Lcom/jme3/shader/ShaderNode;Lcom/jme3/shader/ShaderNodeVariable;)V

    :cond_e
    :goto_2
    invoke-virtual {p0, v0, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->checkTypes(Lcom/jme3/shader/VariableMapping;Lcom/jme3/util/blockparser/Statement;)V

    return-object v0

    :cond_f
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find output variable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " form ShaderNode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_10
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undeclared node"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". Make sure this node is declared before the current node"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_11
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not an input variable of "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jme3/material/plugins/MatParseException;

    const-string v2, "Unexpected mapping format"

    invoke-direct {v1, v2, p1, v0}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readNodes(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getShaderNodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jme3/material/TechniqueDef;->setShaderNodes(Ljava/util/List;)V

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    new-instance v1, Lcom/jme3/material/ShaderGenerationInfo;

    invoke-direct {v1}, Lcom/jme3/material/ShaderGenerationInfo;-><init>()V

    invoke-virtual {v0, v1}, Lcom/jme3/material/TechniqueDef;->setShaderGenerationInfo(Lcom/jme3/material/ShaderGenerationInfo;)V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ \\{]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShaderNode "

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nodes:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nodes:Ljava/util/Map;

    :cond_1
    iget-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nodes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/jme3/shader/ShaderNode;

    invoke-direct {v2}, Lcom/jme3/shader/ShaderNode;-><init>()V

    iput-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v2, v1}, Lcom/jme3/shader/ShaderNode;->setName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v2}, Lcom/jme3/material/TechniqueDef;->getShaderGenerationInfo()Lcom/jme3/material/ShaderGenerationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/material/ShaderGenerationInfo;->getUnusedNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readShaderNode(Ljava/util/List;)V

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->nodes:Ljava/util/Map;

    iget-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getShaderNodes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/jme3/material/plugins/MatParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already defined"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/jme3/material/plugins/MatParseException;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "ShaderNode"

    invoke-direct {p1, v2, v1, v0}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw p1

    :cond_4
    return-void
.end method

.method public readNodesDefinitions(Ljava/util/List;Lcom/jme3/asset/ShaderNodeDefinitionKey;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;",
            "Lcom/jme3/asset/ShaderNodeDefinitionKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeDefinition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/blockparser/Statement;

    .line 2
    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[ \\{]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShaderNodeDefinition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-direct {p0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->getNodeDefinitions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    new-instance v2, Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-direct {v2}, Lcom/jme3/shader/ShaderNodeDefinition;-><init>()V

    iput-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    .line 7
    invoke-direct {p0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->getNodeDefinitions()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-virtual {v2, v1}, Lcom/jme3/shader/ShaderNodeDefinition;->setName(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-virtual {p2}, Lcom/jme3/asset/AssetKey;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/shader/ShaderNodeDefinition;->setPath(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readShaderNodeDefinition(Ljava/util/List;Lcom/jme3/asset/ShaderNodeDefinitionKey;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance p1, Lcom/jme3/material/plugins/MatParseException;

    const/4 p2, 0x0

    aget-object p2, v1, p2

    invoke-direct {p1, v3, p2, v0}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->getNodeDefinitions()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public readNodesDefinitions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    new-instance v0, Lcom/jme3/asset/ShaderNodeDefinitionKey;

    invoke-direct {v0}, Lcom/jme3/asset/ShaderNodeDefinitionKey;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readNodesDefinitions(Ljava/util/List;Lcom/jme3/asset/ShaderNodeDefinitionKey;)Ljava/util/List;

    return-void
.end method

.method public readOutputMapping(Lcom/jme3/util/blockparser/Statement;)Lcom/jme3/shader/VariableMapping;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/material/plugins/MatParseException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->OM_HAS_NAME_SPACE:[Z

    invoke-virtual {p0, p1, v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->parseMapping(Lcom/jme3/util/blockparser/Statement;[Z)Lcom/jme3/shader/VariableMapping;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNode;->getDefinition()Lcom/jme3/shader/ShaderNodeDefinition;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v2

    invoke-virtual {v0}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sampler"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Global"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "vec4"

    invoke-virtual {v2, v4}, Lcom/jme3/shader/ShaderNodeVariable;->setType(Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeGlobal(Lcom/jme3/shader/ShaderNodeVariable;Lcom/jme3/util/blockparser/Statement;)V

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->getOutputs()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->updateVariableFromList(Lcom/jme3/shader/ShaderNodeVariable;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->checkTypes(Lcom/jme3/shader/VariableMapping;Lcom/jme3/util/blockparser/Statement;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not an output variable of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Only Global nameSpace is allowed for outputMapping, got"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    const-string v1, "Samplers can only be inputs"

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/jme3/material/plugins/MatParseException;

    const-string v2, "Unexpected mapping format"

    invoke-direct {v1, v2, p1, v0}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readShaderNode(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getShaderGenerationInfo()Lcom/jme3/material/ShaderGenerationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/ShaderGenerationInfo;->getUnusedNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[ \\{]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "Definition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->findDefinition(Lcom/jme3/util/blockparser/Statement;)Lcom/jme3/shader/ShaderNodeDefinition;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v2, v1}, Lcom/jme3/shader/ShaderNode;->setDefinition(Lcom/jme3/shader/ShaderNodeDefinition;)V

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->isNoOutput()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v4, "Condition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->extractCondition(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    iget-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->conditionParser:Lcom/jme3/material/plugins/ConditionParser;

    invoke-virtual {v2}, Lcom/jme3/material/plugins/ConditionParser;->getFormattedExpression()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/shader/ShaderNode;->setCondition(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "InputMappings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {p0, v2}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readInputMapping(Lcom/jme3/util/blockparser/Statement;)Lcom/jme3/shader/VariableMapping;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeVariable;->getNameSpace()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNode;->getInputMapping()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const-string v4, "OutputMappings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/blockparser/Statement;

    invoke-virtual {p0, v2}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readOutputMapping(Lcom/jme3/util/blockparser/Statement;)Lcom/jme3/shader/VariableMapping;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNode;->getOutputMapping()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    new-instance p1, Lcom/jme3/material/plugins/MatParseException;

    const/4 v0, 0x0

    aget-object v0, v3, v0

    const-string v2, "ShaderNodeDefinition"

    invoke-direct {p1, v2, v0, v1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw p1

    :cond_6
    return-void
.end method

.method public readShaderNodeDefinition(Ljava/util/List;Lcom/jme3/asset/ShaderNodeDefinitionKey;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;",
            "Lcom/jme3/asset/ShaderNodeDefinitionKey;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/jme3/asset/ShaderNodeDefinitionKey;->isLoadDocumentation()Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/util/blockparser/Statement;

    :try_start_0
    invoke-virtual {v2}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[ \\{]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Type"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v3, 0x3a

    invoke-virtual {v4, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-static {v3}, Lcom/jme3/shader/Shader$ShaderType;->valueOf(Ljava/lang/String;)Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/jme3/shader/ShaderNodeDefinition;->setType(Lcom/jme3/shader/Shader$ShaderType;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_2
    const-string v5, "Shader "

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v2}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readShaderStatement(Lcom/jme3/util/blockparser/Statement;)V

    iget-object v3, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeDefinition;->getShadersLanguage()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderLanguage:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-virtual {v3}, Lcom/jme3/shader/ShaderNodeDefinition;->getShadersPath()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string v5, "Documentation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p2, :cond_1

    const-string v3, ""

    invoke-virtual {v2}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/util/blockparser/Statement;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-virtual {v4, v3}, Lcom/jme3/shader/ShaderNodeDefinition;->setDocumentation(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const-string v5, "Input"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v3, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->varNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    invoke-virtual {v2}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/util/blockparser/Statement;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-virtual {v5}, Lcom/jme3/shader/ShaderNodeDefinition;->getInputs()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readVariable(Lcom/jme3/util/blockparser/Statement;)Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    :try_start_2
    new-instance p2, Lcom/jme3/material/plugins/MatParseException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, v4, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    const-string v5, "Output"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v3, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->varNames:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    invoke-virtual {v2}, Lcom/jme3/util/blockparser/Statement;->getContents()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/util/blockparser/Statement;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v4}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "None"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-virtual {v5, v1}, Lcom/jme3/shader/ShaderNodeDefinition;->setNoOutput(Z)V

    goto :goto_4

    :catch_2
    move-exception p1

    goto :goto_5

    :cond_7
    iget-object v5, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNodeDefinition:Lcom/jme3/shader/ShaderNodeDefinition;

    invoke-virtual {v5}, Lcom/jme3/shader/ShaderNodeDefinition;->getOutputs()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v4}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readVariable(Lcom/jme3/util/blockparser/Statement;)Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :goto_5
    :try_start_4
    new-instance p2, Lcom/jme3/material/plugins/MatParseException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, v4, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;Ljava/lang/Throwable;)V

    throw p2

    :cond_8
    new-instance p1, Lcom/jme3/material/plugins/MatParseException;

    const-string p2, "one of Type, Shader, Documentation, Input, Output"

    aget-object v0, v3, v0

    invoke-direct {p1, p2, v0, v2}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_6
    new-instance p2, Lcom/jme3/material/plugins/MatParseException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, v2, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;Ljava/lang/Throwable;)V

    throw p2

    :cond_9
    return-void
.end method

.method public readShaderStatement(Lcom/jme3/util/blockparser/Statement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const-string v2, "Shader statement syntax incorrect"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v4, "\\p{javaWhitespace}+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    if-ne v4, v3, :cond_0

    const/4 p1, 0x1

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderName:Ljava/lang/String;

    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderLanguage:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    invoke-direct {v0, v2, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    invoke-direct {v0, v2, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0
.end method

.method public readVariable(Lcom/jme3/util/blockparser/Statement;)Lcom/jme3/shader/ShaderNodeVariable;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/jme3/util/blockparser/Statement;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s*\\["

    const-string v2, "["

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v3, 0x3

    const-string v4, ""

    if-gt v1, v3, :cond_3

    array-length v1, v0

    const/4 v3, 0x0

    const/4 v5, 0x2

    if-le v1, v5, :cond_0

    aget-object v1, v0, v5

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const/4 v5, 0x1

    aget-object v6, v0, v5

    const/4 v7, 0x0

    aget-object v8, v0, v7

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v0, v0, v5

    const-string v2, "\\["

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v7

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aget-object v0, v0, v5

    const-string v2, "\\]"

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :cond_1
    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->varNames:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->varNames:Ljava/util/Set;

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance p1, Lcom/jme3/shader/ShaderNodeVariable;

    invoke-direct {p1, v8, v4, v6, v3}, Lcom/jme3/shader/ShaderNodeVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/jme3/shader/ShaderNodeVariable;->setDefaultValue(Ljava/lang/String;)V

    return-object p1

    :cond_2
    new-instance v0, Lcom/jme3/material/plugins/MatParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duplicate variable name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v0

    :cond_3
    new-instance v1, Lcom/jme3/material/plugins/MatParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "More than 3 arguments"

    invoke-direct {v1, v2, v0, p1}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw v1
.end method

.method public readVertexShaderNodes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/util/blockparser/Statement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->readNodes(Ljava/util/List;)V

    return-void
.end method

.method public setAssetManager(Lcom/jme3/asset/AssetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->assetManager:Lcom/jme3/asset/AssetManager;

    return-void
.end method

.method public setMaterialDef(Lcom/jme3/material/MaterialDef;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->materialDef:Lcom/jme3/material/MaterialDef;

    return-void
.end method

.method public setTechniqueDef(Lcom/jme3/material/TechniqueDef;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    return-void
.end method

.method public storeAttribute(Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getShaderGenerationInfo()Lcom/jme3/material/ShaderGenerationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/ShaderGenerationInfo;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeVariable(Lcom/jme3/shader/ShaderNodeVariable;Ljava/util/List;)V

    return-void
.end method

.method public storeFragmentUniform(Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getShaderGenerationInfo()Lcom/jme3/material/ShaderGenerationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/ShaderGenerationInfo;->getFragmentUniforms()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeVariable(Lcom/jme3/shader/ShaderNodeVariable;Ljava/util/List;)V

    return-void
.end method

.method public storeGlobal(Lcom/jme3/shader/ShaderNodeVariable;Lcom/jme3/util/blockparser/Statement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/material/plugins/MatParseException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jme3/shader/ShaderNodeVariable;->setShaderOutput(Z)V

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getShaderGenerationInfo()Lcom/jme3/material/ShaderGenerationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNode;->getDefinition()Lcom/jme3/shader/ShaderNodeDefinition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v2

    sget-object v3, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/jme3/material/ShaderGenerationInfo;->getVertexGlobal()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jme3/material/plugins/MatParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A global output is already defined for the vertex shader: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". vertex shader can only have one global output"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/jme3/material/ShaderGenerationInfo;->setVertexGlobal(Lcom/jme3/shader/ShaderNodeVariable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object p2

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Lcom/jme3/material/ShaderGenerationInfo;->getFragmentGlobals()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeVariable(Lcom/jme3/shader/ShaderNodeVariable;Ljava/util/List;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public storeVariable(Lcom/jme3/shader/ShaderNodeVariable;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public storeVaryings(Lcom/jme3/shader/ShaderNode;Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/jme3/shader/ShaderNodeVariable;->setShaderOutput(Z)V

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNode;->getDefinition()Lcom/jme3/shader/ShaderNodeDefinition;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNode;->getDefinition()Lcom/jme3/shader/ShaderNodeDefinition;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeDefinition;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v1

    sget-object v3, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    if-ne v1, v3, :cond_3

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNodeDefinition;->getType()Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v1

    sget-object v2, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->varyings:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v2}, Lcom/jme3/material/TechniqueDef;->getShaderGenerationInfo()Lcom/jme3/material/ShaderGenerationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/material/ShaderGenerationInfo;->getVaryings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;

    invoke-direct {v2, p0, p2}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;-><init>(Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;Lcom/jme3/shader/ShaderNodeVariable;)V

    iget-object v3, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->varyings:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v2, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->addNode(Lcom/jme3/shader/ShaderNode;)V

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNode;->getInputMapping()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/VariableMapping;

    invoke-virtual {v1}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lcom/jme3/shader/ShaderNodeVariable;->setShaderOutput(Z)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public storeVertexUniform(Lcom/jme3/shader/ShaderNodeVariable;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->techniqueDef:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getShaderGenerationInfo()Lcom/jme3/material/ShaderGenerationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/ShaderGenerationInfo;->getVertexUniforms()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->storeVariable(Lcom/jme3/shader/ShaderNodeVariable;Ljava/util/List;)V

    return-void
.end method

.method public updateRightFromUniforms(Lcom/jme3/material/MatParam;Lcom/jme3/shader/VariableMapping;Ljava/util/Map;Lcom/jme3/util/blockparser/Statement;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/material/MatParam;",
            "Lcom/jme3/shader/VariableMapping;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;",
            ">;",
            "Lcom/jme3/util/blockparser/Statement;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/material/plugins/MatParseException;
        }
    .end annotation

    .line 13
    invoke-virtual {p2}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v0

    .line 14
    invoke-virtual {p2}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;

    if-nez v2, :cond_3

    .line 16
    invoke-virtual {p1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/shader/VarType;->getGlslType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/shader/ShaderNodeVariable;->setType(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/shader/ShaderNodeVariable;->setName(Ljava/lang/String;)V

    .line 18
    const-string v2, "m_"

    invoke-virtual {v1, v2}, Lcom/jme3/shader/ShaderNodeVariable;->setPrefix(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 20
    invoke-virtual {p1}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Array"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object p1

    .line 22
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    invoke-virtual {p0, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->findMatParam(Ljava/lang/String;)Lcom/jme3/material/MatParam;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 24
    sget-object p4, Lcom/jme3/shader/VarType;->Int:Lcom/jme3/shader/VarType;

    invoke-virtual {p0, p1, p4}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->addDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)V

    .line 25
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/jme3/shader/ShaderNodeVariable;->setMultiplicity(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getCondition()Ljava/lang/String;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defined("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "||"

    invoke-virtual {p0, p4, v2, v3}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->mergeConditions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Lcom/jme3/shader/ShaderNodeVariable;->setCondition(Ljava/lang/String;)V

    .line 28
    :goto_0
    invoke-virtual {v1, p1}, Lcom/jme3/shader/ShaderNodeVariable;->setMultiplicity(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getCondition()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jme3/shader/ShaderNodeVariable;->setCondition(Ljava/lang/String;)V

    goto :goto_1

    .line 30
    :cond_0
    new-instance p2, Lcom/jme3/material/plugins/MatParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong multiplicity for variable"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " should be an int or a declared material parameter."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p4}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw p2

    .line 31
    :cond_1
    new-instance p2, Lcom/jme3/material/plugins/MatParseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not of Array type"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p4}, Lcom/jme3/material/plugins/MatParseException;-><init>(Ljava/lang/String;Lcom/jme3/util/blockparser/Statement;)V

    throw p2

    .line 32
    :cond_2
    :goto_1
    new-instance p1, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;

    invoke-direct {p1, p0, v1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;-><init>(Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;Lcom/jme3/shader/ShaderNodeVariable;)V

    .line 33
    invoke-virtual {v1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p3, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {p1, p3}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->addNode(Lcom/jme3/shader/ShaderNode;)V

    .line 35
    invoke-virtual {p2, v1}, Lcom/jme3/shader/VariableMapping;->setRightVariable(Lcom/jme3/shader/ShaderNodeVariable;)V

    const/4 p1, 0x1

    return p1

    .line 36
    :cond_3
    iget-object p1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v2, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->addNode(Lcom/jme3/shader/ShaderNode;)V

    .line 37
    iget-object p1, v2, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->var:Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {p2, p1}, Lcom/jme3/shader/VariableMapping;->setRightVariable(Lcom/jme3/shader/ShaderNodeVariable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public updateRightFromUniforms(Lcom/jme3/shader/UniformBinding;Lcom/jme3/shader/VariableMapping;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/shader/UniformBinding;",
            "Lcom/jme3/shader/VariableMapping;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/jme3/shader/UniformBinding;->getGlslType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/shader/ShaderNodeVariable;->setType(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/jme3/shader/ShaderNodeVariable;->setName(Ljava/lang/String;)V

    .line 6
    const-string p1, "g_"

    invoke-virtual {v0, p1}, Lcom/jme3/shader/ShaderNodeVariable;->setPrefix(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;

    invoke-direct {p1, p0, v0}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;-><init>(Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;Lcom/jme3/shader/ShaderNodeVariable;)V

    .line 8
    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p3, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {p1, p3}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->addNode(Lcom/jme3/shader/ShaderNode;)V

    .line 10
    invoke-virtual {p2, v0}, Lcom/jme3/shader/VariableMapping;->setRightVariable(Lcom/jme3/shader/ShaderNodeVariable;)V

    const/4 p1, 0x1

    return p1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v2, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->addNode(Lcom/jme3/shader/ShaderNode;)V

    .line 12
    iget-object p1, v2, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->var:Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {p2, p1}, Lcom/jme3/shader/VariableMapping;->setRightVariable(Lcom/jme3/shader/ShaderNodeVariable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public updateRightTypeFromLeftType(Lcom/jme3/shader/VariableMapping;)V
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getLeftVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getRightSwizzling()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/jme3/shader/ShaderUtils;->getCardinality(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const-string v0, "float"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vec"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/shader/VariableMapping;->getRightVariable()Lcom/jme3/shader/ShaderNodeVariable;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jme3/shader/ShaderNodeVariable;->setType(Ljava/lang/String;)V

    return-void
.end method

.method public updateVarFromAttributes(Lcom/jme3/shader/ShaderNodeVariable;Lcom/jme3/shader/VariableMapping;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->attributes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;

    invoke-direct {v0, p0, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;-><init>(Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;Lcom/jme3/shader/ShaderNodeVariable;)V

    iget-object v1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->attributes:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->updateRightTypeFromLeftType(Lcom/jme3/shader/VariableMapping;)V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->var:Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {p2, p1}, Lcom/jme3/shader/VariableMapping;->setRightVariable(Lcom/jme3/shader/ShaderNodeVariable;)V

    :goto_0
    iget-object p1, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {v0, p1}, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate$DeclaredVariable;->addNode(Lcom/jme3/shader/ShaderNode;)V

    return-void
.end method

.method public updateVariableFromList(Lcom/jme3/shader/ShaderNodeVariable;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNodeVariable;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/ShaderNodeVariable;

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/shader/ShaderNodeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/shader/ShaderNodeVariable;->setType(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/jme3/shader/ShaderNodeVariable;->getMultiplicity()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/shader/ShaderNodeVariable;->setMultiplicity(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/jme3/material/plugins/ShaderNodeLoaderDelegate;->shaderNode:Lcom/jme3/shader/ShaderNode;

    invoke-virtual {p2}, Lcom/jme3/shader/ShaderNode;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/shader/ShaderNodeVariable;->setNameSpace(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
