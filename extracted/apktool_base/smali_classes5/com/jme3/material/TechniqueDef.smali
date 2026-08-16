.class public Lcom/jme3/material/TechniqueDef;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/export/Savable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/material/TechniqueDef$LightMode;,
        Lcom/jme3/material/TechniqueDef$ShadowMode;,
        Lcom/jme3/material/TechniqueDef$LightSpace;
    }
.end annotation


# static fields
.field public static final DEFAULT_TECHNIQUE_NAME:Ljava/lang/String; = "Default"

.field public static final SAVABLE_VERSION:I = 0x1


# instance fields
.field private defineNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defineTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/shader/VarType;",
            ">;"
        }
    .end annotation
.end field

.field private final definesToShaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/jme3/shader/DefineList;",
            "Lcom/jme3/shader/Shader;",
            ">;"
        }
    .end annotation
.end field

.field private forcedRenderState:Lcom/jme3/material/RenderState;

.field private lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

.field private lightSpace:Lcom/jme3/material/TechniqueDef$LightSpace;

.field private logic:Lcom/jme3/material/logic/TechniqueDefLogic;

.field private name:Ljava/lang/String;

.field private noRender:Z

.field private paramToDefineId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private renderState:Lcom/jme3/material/RenderState;

.field private final requiredCaps:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation
.end field

.field private shaderGenerationInfo:Lcom/jme3/material/ShaderGenerationInfo;

.field private shaderLanguages:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/jme3/shader/Shader$ShaderType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shaderNames:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/jme3/shader/Shader$ShaderType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shaderNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNode;",
            ">;"
        }
    .end annotation
.end field

.field private shaderPrologue:Ljava/lang/String;

.field private shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

.field private sortId:I

.field private usesNodes:Z

.field private weight:F

.field private worldBinds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/shader/UniformBinding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-class v0, Lcom/jme3/renderer/Caps;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/jme3/material/TechniqueDef;->usesNodes:Z

    .line 7
    iput-boolean v0, p0, Lcom/jme3/material/TechniqueDef;->noRender:Z

    .line 8
    sget-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->Disable:Lcom/jme3/material/TechniqueDef$LightMode;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    .line 9
    sget-object v0, Lcom/jme3/material/TechniqueDef$ShadowMode;->Disable:Lcom/jme3/material/TechniqueDef$ShadowMode;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/jme3/material/TechniqueDef;->weight:F

    .line 11
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/jme3/shader/Shader$ShaderType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    .line 12
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineTypes:Ljava/util/ArrayList;

    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->paramToDefineId:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->definesToShaderMap:Ljava/util/HashMap;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->worldBinds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/material/TechniqueDef;-><init>()V

    .line 2
    iput p2, p0, Lcom/jme3/material/TechniqueDef;->sortId:I

    .line 3
    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->name:Ljava/lang/String;

    return-void
.end method

.method private loadShader(Lcom/jme3/asset/AssetManager;Ljava/util/EnumSet;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetManager;",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;",
            "Lcom/jme3/shader/DefineList;",
            ")",
            "Lcom/jme3/shader/Shader;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->shaderPrologue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jme3/material/TechniqueDef;->defineTypes:Ljava/util/ArrayList;

    invoke-virtual {p3, v0, v1, v2}, Lcom/jme3/shader/DefineList;->generateSource(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/jme3/material/TechniqueDef;->isUsingShaderNodes()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Lcom/jme3/asset/AssetManager;->getShaderGenerator(Ljava/util/EnumSet;)Lcom/jme3/shader/ShaderGenerator;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/jme3/shader/ShaderGenerator;->initialize(Lcom/jme3/material/TechniqueDef;)V

    invoke-virtual {p1, p3}, Lcom/jme3/shader/ShaderGenerator;->generateShader(Ljava/lang/String;)Lcom/jme3/shader/Shader;

    move-result-object p1

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "ShaderGenerator was not initialized, make sure assetManager.getGenerator(caps) has been called"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Lcom/jme3/shader/Shader;

    invoke-direct {p2}, Lcom/jme3/shader/Shader;-><init>()V

    invoke-static {}, Lcom/jme3/shader/Shader$ShaderType;->values()[Lcom/jme3/shader/Shader$ShaderType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, v0, v2

    iget-object v3, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    iget-object v3, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    invoke-virtual {v3, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    if-eqz v8, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1, v5}, Lcom/jme3/asset/AssetManager;->loadAsset(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    move-object v3, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Lcom/jme3/shader/Shader;->addSource(Lcom/jme3/shader/Shader$ShaderType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move-object p1, p2

    :goto_2
    invoke-virtual {p0}, Lcom/jme3/material/TechniqueDef;->getWorldBindings()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jme3/shader/UniformBinding;

    invoke-virtual {p1, p3}, Lcom/jme3/shader/Shader;->addUniformBinding(Lcom/jme3/shader/UniformBinding;)V

    goto :goto_3

    :cond_5
    return-object p1
.end method


# virtual methods
.method public addShaderParamDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->paramToDefineId:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/jme3/material/TechniqueDef;->defineTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addShaderUnmappedDefine(Ljava/lang/String;Lcom/jme3/shader/VarType;)I
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/jme3/material/TechniqueDef;->defineTypes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public addWorldParam(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->worldBinds:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/jme3/shader/UniformBinding;->valueOf(Ljava/lang/String;)Lcom/jme3/shader/UniformBinding;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public clone()Lcom/jme3/material/TechniqueDef;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jme3/material/TechniqueDef;

    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->name:Ljava/lang/String;

    iget v2, p0, Lcom/jme3/material/TechniqueDef;->sortId:I

    invoke-direct {v0, v1, v2}, Lcom/jme3/material/TechniqueDef;-><init>(Ljava/lang/String;I)V

    .line 3
    iget-boolean v1, p0, Lcom/jme3/material/TechniqueDef;->noRender:Z

    iput-boolean v1, v0, Lcom/jme3/material/TechniqueDef;->noRender:Z

    .line 4
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    iput-object v1, v0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    .line 5
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

    iput-object v1, v0, Lcom/jme3/material/TechniqueDef;->shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

    .line 6
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->lightSpace:Lcom/jme3/material/TechniqueDef$LightSpace;

    iput-object v1, v0, Lcom/jme3/material/TechniqueDef;->lightSpace:Lcom/jme3/material/TechniqueDef$LightSpace;

    .line 7
    iget-boolean v1, p0, Lcom/jme3/material/TechniqueDef;->usesNodes:Z

    iput-boolean v1, v0, Lcom/jme3/material/TechniqueDef;->usesNodes:Z

    .line 8
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->shaderPrologue:Ljava/lang/String;

    iput-object v1, v0, Lcom/jme3/material/TechniqueDef;->shaderPrologue:Ljava/lang/String;

    .line 9
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    iget-object v2, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    invoke-virtual {v0, v1, v2}, Lcom/jme3/material/TechniqueDef;->setShaderFile(Ljava/util/EnumMap;Ljava/util/EnumMap;)V

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    .line 11
    iget-object v2, p0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jme3/material/TechniqueDef;->defineTypes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/jme3/material/TechniqueDef;->defineTypes:Ljava/util/ArrayList;

    .line 13
    iget-object v2, p0, Lcom/jme3/material/TechniqueDef;->defineTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/jme3/material/TechniqueDef;->paramToDefineId:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, v0, Lcom/jme3/material/TechniqueDef;->paramToDefineId:Ljava/util/HashMap;

    .line 15
    iget-object v2, p0, Lcom/jme3/material/TechniqueDef;->paramToDefineId:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 16
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->shaderNodes:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/jme3/material/TechniqueDef;->shaderNodes:Ljava/util/List;

    .line 18
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->shaderNodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/shader/ShaderNode;

    .line 19
    iget-object v3, v0, Lcom/jme3/material/TechniqueDef;->shaderNodes:Ljava/util/List;

    invoke-virtual {v2}, Lcom/jme3/shader/ShaderNode;->clone()Lcom/jme3/shader/ShaderNode;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->shaderGenerationInfo:Lcom/jme3/material/ShaderGenerationInfo;

    invoke-virtual {v1}, Lcom/jme3/material/ShaderGenerationInfo;->clone()Lcom/jme3/material/ShaderGenerationInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/material/TechniqueDef;->shaderGenerationInfo:Lcom/jme3/material/ShaderGenerationInfo;

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->renderState:Lcom/jme3/material/RenderState;

    if-eqz v1, :cond_2

    .line 22
    invoke-virtual {v1}, Lcom/jme3/material/RenderState;->clone()Lcom/jme3/material/RenderState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/material/TechniqueDef;->setRenderState(Lcom/jme3/material/RenderState;)V

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->forcedRenderState:Lcom/jme3/material/RenderState;

    if-eqz v1, :cond_3

    .line 24
    invoke-virtual {v1}, Lcom/jme3/material/RenderState;->clone()Lcom/jme3/material/RenderState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/material/TechniqueDef;->setForcedRenderState(Lcom/jme3/material/RenderState;)V

    .line 25
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->logic:Lcom/jme3/material/logic/TechniqueDefLogic;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/jme3/material/TechniqueDef;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/material/logic/TechniqueDefLogic;

    iput-object v1, v0, Lcom/jme3/material/TechniqueDef;->logic:Lcom/jme3/material/logic/TechniqueDefLogic;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    .line 26
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/jme3/material/TechniqueDef;->worldBinds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/jme3/material/TechniqueDef;->worldBinds:Ljava/util/ArrayList;

    .line 28
    iget-object v2, p0, Lcom/jme3/material/TechniqueDef;->worldBinds:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/material/TechniqueDef;->clone()Lcom/jme3/material/TechniqueDef;

    move-result-object v0

    return-object v0
.end method

.method public createDefineList()Lcom/jme3/shader/DefineList;
    .locals 2

    new-instance v0, Lcom/jme3/shader/DefineList;

    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/jme3/shader/DefineList;-><init>(I)V

    return-object v0
.end method

.method public getDefineIdType(I)Lcom/jme3/shader/VarType;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/shader/VarType;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getDefineNames()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDefineTypes()[Lcom/jme3/shader/VarType;
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineTypes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/jme3/shader/VarType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/shader/VarType;

    return-object v0
.end method

.method public getForcedRenderState()Lcom/jme3/material/RenderState;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->forcedRenderState:Lcom/jme3/material/RenderState;

    return-object v0
.end method

.method public getFragmentShaderLanguage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFragmentShaderName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLightMode()Lcom/jme3/material/TechniqueDef$LightMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    return-object v0
.end method

.method public getLightSpace()Lcom/jme3/material/TechniqueDef$LightSpace;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->lightSpace:Lcom/jme3/material/TechniqueDef$LightSpace;

    return-object v0
.end method

.method public getLogic()Lcom/jme3/material/logic/TechniqueDefLogic;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->logic:Lcom/jme3/material/logic/TechniqueDefLogic;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRenderState()Lcom/jme3/material/RenderState;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->renderState:Lcom/jme3/material/RenderState;

    return-object v0
.end method

.method public getRequiredCaps()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    return-object v0
.end method

.method public getShader(Lcom/jme3/asset/AssetManager;Ljava/util/EnumSet;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetManager;",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;",
            "Lcom/jme3/shader/DefineList;",
            ")",
            "Lcom/jme3/shader/Shader;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->definesToShaderMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shader/Shader;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/material/TechniqueDef;->loadShader(Lcom/jme3/asset/AssetManager;Ljava/util/EnumSet;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;

    move-result-object v0

    iget-object p1, p0, Lcom/jme3/material/TechniqueDef;->definesToShaderMap:Ljava/util/HashMap;

    invoke-virtual {p3}, Lcom/jme3/shader/DefineList;->deepClone()Lcom/jme3/shader/DefineList;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getShaderGenerationInfo()Lcom/jme3/material/ShaderGenerationInfo;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderGenerationInfo:Lcom/jme3/material/ShaderGenerationInfo;

    return-object v0
.end method

.method public getShaderNodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNode;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNodes:Ljava/util/List;

    return-object v0
.end method

.method public getShaderParamDefine(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->paramToDefineId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->defineNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getShaderParamDefineId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->paramToDefineId:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getShaderProgramLanguage(Lcom/jme3/shader/Shader$ShaderType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getShaderProgramLanguages()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/jme3/shader/Shader$ShaderType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getShaderProgramName(Lcom/jme3/shader/Shader$ShaderType;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getShaderProgramNames()Ljava/util/EnumMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap<",
            "Lcom/jme3/shader/Shader$ShaderType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    return-object v0
.end method

.method public getShaderPrologue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderPrologue:Ljava/lang/String;

    return-object v0
.end method

.method public getShadowMode()Lcom/jme3/material/TechniqueDef$ShadowMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

    return-object v0
.end method

.method public getSortId()I
    .locals 1

    iget v0, p0, Lcom/jme3/material/TechniqueDef;->sortId:I

    return v0
.end method

.method public getVertexShaderLanguage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVertexShaderName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getWeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/material/TechniqueDef;->weight:F

    return v0
.end method

.method public getWorldBindings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/shader/UniformBinding;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->worldBinds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isNoRender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/TechniqueDef;->noRender:Z

    return v0
.end method

.method public isUsingShaderNodes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/material/TechniqueDef;->usesNodes:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v2, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    const-string v3, "vertName"

    invoke-interface {p1, v3, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v3, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    const-string v4, "fragName"

    invoke-interface {p1, v4, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v4, Lcom/jme3/shader/Shader$ShaderType;->Geometry:Lcom/jme3/shader/Shader$ShaderType;

    const-string v5, "geomName"

    invoke-interface {p1, v5, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v5, Lcom/jme3/shader/Shader$ShaderType;->TessellationControl:Lcom/jme3/shader/Shader$ShaderType;

    const-string v6, "tsctrlName"

    invoke-interface {p1, v6, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v6, Lcom/jme3/shader/Shader$ShaderType;->TessellationEvaluation:Lcom/jme3/shader/Shader$ShaderType;

    const-string v7, "tsevalName"

    invoke-interface {p1, v7, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "shaderPrologue"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderPrologue:Ljava/lang/String;

    const-class v0, Lcom/jme3/material/TechniqueDef$LightMode;

    sget-object v7, Lcom/jme3/material/TechniqueDef$LightMode;->Disable:Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v8, "lightMode"

    invoke-interface {p1, v8, v0, v7}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/TechniqueDef$LightMode;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    const-class v0, Lcom/jme3/material/TechniqueDef$ShadowMode;

    sget-object v7, Lcom/jme3/material/TechniqueDef$ShadowMode;->Disable:Lcom/jme3/material/TechniqueDef$ShadowMode;

    const-string v8, "shadowMode"

    invoke-interface {p1, v8, v0, v7}, Lcom/jme3/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/TechniqueDef$ShadowMode;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

    const-string v0, "renderState"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/material/RenderState;

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->renderState:Lcom/jme3/material/RenderState;

    const-string v0, "noRender"

    const/4 v7, 0x0

    invoke-interface {p1, v0, v7}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/TechniqueDef;->noRender:Z

    const-class v0, Lcom/jme3/material/TechniqueDef;

    invoke-interface {p1, v0}, Lcom/jme3/export/InputCapsule;->getSavableVersion(Ljava/lang/Class;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    const-string v4, "shaderLang"

    invoke-interface {p1, v4, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    const-string v8, "vertLanguage"

    invoke-interface {p1, v8, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v2, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    const-string v2, "fragLanguage"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    const-string v2, "geomLanguage"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    const-string v2, "tsctrlLanguage"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    const-string v2, "tsevalLanguage"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v0, "usesNodes"

    invoke-interface {p1, v0, v7}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/material/TechniqueDef;->usesNodes:Z

    const-string v0, "shaderNodes"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNodes:Ljava/util/List;

    const-string v0, "shaderGenerationInfo"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/ShaderGenerationInfo;

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->shaderGenerationInfo:Lcom/jme3/material/ShaderGenerationInfo;

    return-void
.end method

.method public setForcedRenderState(Lcom/jme3/material/RenderState;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->forcedRenderState:Lcom/jme3/material/RenderState;

    return-void
.end method

.method public setLightMode(Lcom/jme3/material/TechniqueDef$LightMode;)V
    .locals 1

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->lightSpace:Lcom/jme3/material/TechniqueDef$LightSpace;

    if-nez v0, :cond_1

    sget-object v0, Lcom/jme3/material/TechniqueDef$LightMode;->MultiPass:Lcom/jme3/material/TechniqueDef$LightMode;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/jme3/material/TechniqueDef$LightSpace;->Legacy:Lcom/jme3/material/TechniqueDef$LightSpace;

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->lightSpace:Lcom/jme3/material/TechniqueDef$LightSpace;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/jme3/material/TechniqueDef$LightSpace;->World:Lcom/jme3/material/TechniqueDef$LightSpace;

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->lightSpace:Lcom/jme3/material/TechniqueDef$LightSpace;

    :cond_1
    :goto_0
    return-void
.end method

.method public setLightSpace(Lcom/jme3/material/TechniqueDef$LightSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->lightSpace:Lcom/jme3/material/TechniqueDef$LightSpace;

    return-void
.end method

.method public setLogic(Lcom/jme3/material/logic/TechniqueDefLogic;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->logic:Lcom/jme3/material/logic/TechniqueDefLogic;

    return-void
.end method

.method public setNoRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/material/TechniqueDef;->noRender:Z

    return-void
.end method

.method public setRenderState(Lcom/jme3/material/RenderState;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->renderState:Lcom/jme3/material/RenderState;

    return-void
.end method

.method public setShaderFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v1, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    invoke-virtual {v0, v1, p1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    sget-object v0, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {p1, v0, p4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    invoke-virtual {p1, v0, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 6
    invoke-static {p3}, Lcom/jme3/renderer/Caps;->valueOf(Ljava/lang/String;)Lcom/jme3/renderer/Caps;

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {p4}, Lcom/jme3/renderer/Caps;->valueOf(Ljava/lang/String;)Lcom/jme3/renderer/Caps;

    move-result-object p2

    .line 9
    iget-object p3, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    invoke-virtual {p3, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/jme3/material/TechniqueDef;->weight:F

    return-void
.end method

.method public setShaderFile(Ljava/util/EnumMap;Ljava/util/EnumMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap<",
            "Lcom/jme3/shader/Shader$ShaderType;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/EnumMap<",
            "Lcom/jme3/shader/Shader$ShaderType;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/jme3/material/TechniqueDef;->weight:F

    .line 13
    invoke-virtual {p1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/shader/Shader$ShaderType;

    .line 14
    invoke-virtual {p2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 16
    iget-object v4, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    invoke-virtual {v4, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v4, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    invoke-virtual {v4, v1, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-static {v2}, Lcom/jme3/renderer/Caps;->valueOf(Ljava/lang/String;)Lcom/jme3/renderer/Caps;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 20
    iget v3, p0, Lcom/jme3/material/TechniqueDef;->weight:F

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/jme3/material/TechniqueDef;->weight:F

    .line 21
    sget-object v2, Lcom/jme3/shader/Shader$ShaderType;->Geometry:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 22
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->GeometryShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_1
    sget-object v2, Lcom/jme3/shader/Shader$ShaderType;->TessellationControl:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    sget-object v2, Lcom/jme3/renderer/Caps;->TesselationShader:Lcom/jme3/renderer/Caps;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setShaderGenerationInfo(Lcom/jme3/material/ShaderGenerationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->shaderGenerationInfo:Lcom/jme3/material/ShaderGenerationInfo;

    return-void
.end method

.method public setShaderNodes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/shader/ShaderNode;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->shaderNodes:Ljava/util/List;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/material/TechniqueDef;->usesNodes:Z

    return-void
.end method

.method public setShaderPrologue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->shaderPrologue:Ljava/lang/String;

    return-void
.end method

.method public setShadowMode(Lcom/jme3/material/TechniqueDef$ShadowMode;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/material/TechniqueDef;->shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TechniqueDef[name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requiredCaps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->requiredCaps:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", noRender="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/TechniqueDef;->noRender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lightMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", usesNodes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jme3/material/TechniqueDef;->usesNodes:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", renderState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->renderState:Lcom/jme3/material/RenderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", forcedRenderState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/material/TechniqueDef;->forcedRenderState:Lcom/jme3/material/RenderState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->name:Ljava/lang/String;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v1, Lcom/jme3/shader/Shader$ShaderType;->Vertex:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "vertName"

    invoke-interface {p1, v0, v3, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v3, Lcom/jme3/shader/Shader$ShaderType;->Fragment:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "fragName"

    invoke-interface {p1, v0, v4, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v4, Lcom/jme3/shader/Shader$ShaderType;->Geometry:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v5, "geomName"

    invoke-interface {p1, v0, v5, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v5, Lcom/jme3/shader/Shader$ShaderType;->TessellationControl:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "tsctrlName"

    invoke-interface {p1, v0, v6, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNames:Ljava/util/EnumMap;

    sget-object v6, Lcom/jme3/shader/Shader$ShaderType;->TessellationEvaluation:Lcom/jme3/shader/Shader$ShaderType;

    invoke-virtual {v0, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "tsevalName"

    invoke-interface {p1, v0, v7, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "vertLanguage"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    invoke-virtual {v0, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "fragLanguage"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    invoke-virtual {v0, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "geomLanguage"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    invoke-virtual {v0, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "tsctrlLanguage"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderLanguages:Ljava/util/EnumMap;

    invoke-virtual {v0, v6}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "tsevalLanguage"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderPrologue:Ljava/lang/String;

    const-string v1, "shaderPrologue"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->lightMode:Lcom/jme3/material/TechniqueDef$LightMode;

    const-string v1, "lightMode"

    sget-object v3, Lcom/jme3/material/TechniqueDef$LightMode;->Disable:Lcom/jme3/material/TechniqueDef$LightMode;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shadowMode:Lcom/jme3/material/TechniqueDef$ShadowMode;

    const-string v1, "shadowMode"

    sget-object v3, Lcom/jme3/material/TechniqueDef$ShadowMode;->Disable:Lcom/jme3/material/TechniqueDef$ShadowMode;

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->renderState:Lcom/jme3/material/RenderState;

    const-string v1, "renderState"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/material/TechniqueDef;->noRender:Z

    const-string v1, "noRender"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-boolean v0, p0, Lcom/jme3/material/TechniqueDef;->usesNodes:Z

    const-string v1, "usesNodes"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderNodes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    const-string v1, "shaderNodes"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/jme3/material/TechniqueDef;->shaderGenerationInfo:Lcom/jme3/material/ShaderGenerationInfo;

    const-string v1, "shaderGenerationInfo"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
