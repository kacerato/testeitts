.class public final Lcom/jme3/material/Technique;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final def:Lcom/jme3/material/TechniqueDef;

.field private final dynamicDefines:Lcom/jme3/shader/DefineList;

.field private final owner:Lcom/jme3/material/Material;

.field private final paramDefines:Lcom/jme3/shader/DefineList;


# direct methods
.method public constructor <init>(Lcom/jme3/material/Material;Lcom/jme3/material/TechniqueDef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/material/Technique;->owner:Lcom/jme3/material/Material;

    iput-object p2, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {p2}, Lcom/jme3/material/TechniqueDef;->createDefineList()Lcom/jme3/shader/DefineList;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/material/Technique;->paramDefines:Lcom/jme3/shader/DefineList;

    invoke-virtual {p2}, Lcom/jme3/material/TechniqueDef;->createDefineList()Lcom/jme3/shader/DefineList;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/material/Technique;->dynamicDefines:Lcom/jme3/shader/DefineList;

    return-void
.end method

.method private applyOverrides(Lcom/jme3/shader/DefineList;Lcom/jme3/util/SafeArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/shader/DefineList;",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/jme3/material/MatParamOverride;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/jme3/material/MatParamOverride;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    iget-object v4, v2, Lcom/jme3/material/MatParam;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/jme3/material/TechniqueDef;->getShaderParamDefineId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/jme3/material/TechniqueDef;->getDefineIdType(I)Lcom/jme3/shader/VarType;

    move-result-object v4

    iget-object v5, v2, Lcom/jme3/material/MatParam;->type:Lcom/jme3/shader/VarType;

    if-ne v4, v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Lcom/jme3/material/MatParam;->type:Lcom/jme3/shader/VarType;

    iget-object v2, v2, Lcom/jme3/material/MatParam;->value:Ljava/lang/Object;

    invoke-virtual {p1, v3, v4, v2}, Lcom/jme3/shader/DefineList;->set(ILcom/jme3/shader/VarType;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getAllDefines()Lcom/jme3/shader/DefineList;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDef()Lcom/jme3/material/TechniqueDef;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    return-object v0
.end method

.method public getDynamicDefines()Lcom/jme3/shader/DefineList;
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/Technique;->dynamicDefines:Lcom/jme3/shader/DefineList;

    return-object v0
.end method

.method public getSortId()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getSortId()I

    move-result v0

    const/16 v1, 0x187

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x17

    iget-object v0, p0, Lcom/jme3/material/Technique;->paramDefines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v0}, Lcom/jme3/shader/DefineList;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public makeCurrent(Lcom/jme3/renderer/RenderManager;Lcom/jme3/util/SafeArrayList;Lcom/jme3/util/SafeArrayList;Lcom/jme3/light/LightList;Ljava/util/EnumSet;)Lcom/jme3/shader/Shader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/renderer/RenderManager;",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/material/MatParamOverride;",
            ">;",
            "Lcom/jme3/light/LightList;",
            "Ljava/util/EnumSet<",
            "Lcom/jme3/renderer/Caps;",
            ">;)",
            "Lcom/jme3/shader/Shader;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getLogic()Lcom/jme3/material/logic/TechniqueDefLogic;

    move-result-object v1

    iget-object v0, p0, Lcom/jme3/material/Technique;->owner:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getMaterialDef()Lcom/jme3/material/MaterialDef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/material/MaterialDef;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v2

    iget-object v0, p0, Lcom/jme3/material/Technique;->dynamicDefines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v0}, Lcom/jme3/shader/DefineList;->clear()V

    iget-object v0, p0, Lcom/jme3/material/Technique;->dynamicDefines:Lcom/jme3/shader/DefineList;

    iget-object v3, p0, Lcom/jme3/material/Technique;->paramDefines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v0, v3}, Lcom/jme3/shader/DefineList;->setAll(Lcom/jme3/shader/DefineList;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/jme3/material/Technique;->dynamicDefines:Lcom/jme3/shader/DefineList;

    invoke-direct {p0, v0, p2}, Lcom/jme3/material/Technique;->applyOverrides(Lcom/jme3/shader/DefineList;Lcom/jme3/util/SafeArrayList;)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/jme3/material/Technique;->dynamicDefines:Lcom/jme3/shader/DefineList;

    invoke-direct {p0, p2, p3}, Lcom/jme3/material/Technique;->applyOverrides(Lcom/jme3/shader/DefineList;Lcom/jme3/util/SafeArrayList;)V

    :cond_1
    iget-object v6, p0, Lcom/jme3/material/Technique;->dynamicDefines:Lcom/jme3/shader/DefineList;

    move-object v3, p1

    move-object v4, p5

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/jme3/material/logic/TechniqueDefLogic;->makeCurrent(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Ljava/util/EnumSet;Lcom/jme3/light/LightList;Lcom/jme3/shader/DefineList;)Lcom/jme3/shader/Shader;

    move-result-object p1

    return-object p1
.end method

.method public final notifyParamChanged(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0, p1}, Lcom/jme3/material/TechniqueDef;->getShaderParamDefineId(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/jme3/material/Technique;->paramDefines:Lcom/jme3/shader/DefineList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/shader/DefineList;->set(ILcom/jme3/shader/VarType;Ljava/lang/Object;)V

    return-void
.end method

.method public final notifyTechniqueSwitched()V
    .locals 5

    iget-object v0, p0, Lcom/jme3/material/Technique;->owner:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getParamsMap()Lcom/jme3/util/ListMap;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/material/Technique;->paramDefines:Lcom/jme3/shader/DefineList;

    invoke-virtual {v1}, Lcom/jme3/shader/DefineList;->clear()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/jme3/util/ListMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/jme3/util/ListMap;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/material/MatParam;

    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->getVarType()Lcom/jme3/shader/VarType;

    move-result-object v4

    invoke-virtual {v2}, Lcom/jme3/material/MatParam;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v4, v2}, Lcom/jme3/material/Technique;->notifyParamChanged(Ljava/lang/String;Lcom/jme3/shader/VarType;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/material/Material$BindUnits;)V
    .locals 7

    iget-object v0, p0, Lcom/jme3/material/Technique;->def:Lcom/jme3/material/TechniqueDef;

    invoke-virtual {v0}, Lcom/jme3/material/TechniqueDef;->getLogic()Lcom/jme3/material/logic/TechniqueDefLogic;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/jme3/material/logic/TechniqueDefLogic;->render(Lcom/jme3/renderer/RenderManager;Lcom/jme3/shader/Shader;Lcom/jme3/scene/Geometry;Lcom/jme3/light/LightList;Lcom/jme3/material/Material$BindUnits;)V

    return-void
.end method
