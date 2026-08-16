.class public Lcom/threed/jpct/GLSLShader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threed/jpct/GLSLShader$Uniform;,
        Lcom/threed/jpct/GLSLShader$UniformMap;
    }
.end annotation


# static fields
.field private static NEXT:I

.field private static REPLACEMENTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static locator:Lcom/threed/jpct/ShaderLocator;


# instance fields
.field additionalColorHandle:I

.field alphaHandle:I

.field ambientColorHandle:I

.field attenuationHandle:I

.field blendingModeHandle:I

.field colorHandle:I

.field diffuseColorsHandle:I

.field directMode:Z

.field fogColorHandle:I

.field fogEndHandle:I

.field fogStartHandle:I

.field private frgSource:Ljava/lang/String;

.field id:I

.field init:Z

.field private keyTemp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastContext:I

.field lightCountHandle:I

.field lightPositionsHandle:I

.field mvMatrixHandle:I

.field mvpMatrixHandle:I

.field needsTangents:Z

.field private newUniforms:Z

.field normalHandle:I

.field pMatrixHandle:I

.field private program:I

.field shininessHandle:I

.field specularColorsHandle:I

.field tangentHandle:I

.field texMatrixHandle:I

.field textureCountHandle:I

.field textureHandle:[I

.field textureUnitHandle:[I

.field private tmp:Lcom/threed/jpct/Matrix;

.field private tmpFloats:[F

.field private tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

.field private toRemove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

.field useColorsHandle:I

.field vertexHandle:I

.field private vtxSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/GLSLShader;->NEXT:I

    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .line 46
    const-string v0, "/"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    .line 47
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    .line 48
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    .line 49
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    .line 50
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v2, 0x4

    .line 51
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    .line 52
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/threed/jpct/GLSLShader;->textureUnitHandle:[I

    .line 53
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    .line 54
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->pMatrixHandle:I

    .line 55
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->mvMatrixHandle:I

    .line 56
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->texMatrixHandle:I

    .line 57
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->textureCountHandle:I

    .line 58
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->blendingModeHandle:I

    .line 59
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    .line 60
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->additionalColorHandle:I

    .line 61
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->ambientColorHandle:I

    .line 62
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->lightPositionsHandle:I

    .line 63
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->diffuseColorsHandle:I

    .line 64
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->specularColorsHandle:I

    .line 65
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->attenuationHandle:I

    .line 66
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->shininessHandle:I

    .line 67
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->lightCountHandle:I

    .line 68
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    .line 69
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->fogEndHandle:I

    .line 70
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->fogColorHandle:I

    .line 71
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->alphaHandle:I

    const/4 v2, 0x0

    .line 72
    iput-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->needsTangents:Z

    .line 73
    iput-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    .line 74
    sget v3, Lcom/threed/jpct/GLSLShader;->NEXT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/threed/jpct/GLSLShader;->NEXT:I

    iput v3, p0, Lcom/threed/jpct/GLSLShader;->id:I

    .line 75
    iput-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    .line 76
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->lastContext:I

    .line 77
    iput v2, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const/4 v1, 0x0

    .line 78
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    .line 80
    iput-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 81
    new-instance v3, Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-direct {v3, v1}, Lcom/threed/jpct/GLSLShader$UniformMap;-><init>(Lcom/threed/jpct/GLSLShader$UniformMap;)V

    iput-object v3, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    .line 82
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    .line 83
    iput-object v1, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    .line 84
    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmp:Lcom/threed/jpct/Matrix;

    const/16 v1, 0x10

    .line 85
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmpFloats:[F

    .line 86
    new-instance v1, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-direct {v1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>()V

    iput-object v1, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 87
    sget-object v1, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Lcom/threed/jpct/ShaderLocator;

    invoke-direct {v1}, Lcom/threed/jpct/ShaderLocator;-><init>()V

    sput-object v1, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader;->check20()V

    const/4 v1, 0x1

    .line 90
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading default shaders "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz p1, :cond_1

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :cond_1
    move-object v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " shaders in replacement map!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/threed/jpct/GL20CompLayer;->getFragmentShaderName()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2e

    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    :cond_2
    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 96
    sget-object v7, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 97
    const-string v3, "Using replacement fragment shader instead of default one!"

    invoke-static {v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 98
    sget-object v3, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_1

    .line 99
    :cond_3
    sget-object v6, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    invoke-virtual {v6, v3}, Lcom/threed/jpct/ShaderLocator;->getShaderCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    :goto_1
    invoke-static {}, Lcom/threed/jpct/GL20CompLayer;->getVertexShaderName()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_4

    .line 101
    invoke-virtual {v6, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 102
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 103
    :cond_4
    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 104
    sget-object v0, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 105
    const-string v0, "Using replacement vertex shader instead of default one!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    .line 107
    :cond_5
    sget-object p1, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    invoke-virtual {p1, v6}, Lcom/threed/jpct/ShaderLocator;->getShaderCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    :goto_2
    invoke-direct {p0, p1, v3}, Lcom/threed/jpct/GLSLShader;->loadProgram(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 109
    :goto_3
    const-string v0, "Unable to load shader!"

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 110
    invoke-static {p1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/Throwable;I)V

    .line 111
    :goto_4
    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader;->init()V

    .line 112
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    .line 3
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    .line 4
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    .line 5
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    const/4 v1, 0x4

    .line 6
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    .line 7
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/threed/jpct/GLSLShader;->textureUnitHandle:[I

    .line 8
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    .line 9
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->pMatrixHandle:I

    .line 10
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->mvMatrixHandle:I

    .line 11
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->texMatrixHandle:I

    .line 12
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->textureCountHandle:I

    .line 13
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->blendingModeHandle:I

    .line 14
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    .line 15
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->additionalColorHandle:I

    .line 16
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->ambientColorHandle:I

    .line 17
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->lightPositionsHandle:I

    .line 18
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->diffuseColorsHandle:I

    .line 19
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->specularColorsHandle:I

    .line 20
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->attenuationHandle:I

    .line 21
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->shininessHandle:I

    .line 22
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->lightCountHandle:I

    .line 23
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    .line 24
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->fogEndHandle:I

    .line 25
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->fogColorHandle:I

    .line 26
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->alphaHandle:I

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->needsTangents:Z

    .line 28
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    .line 29
    sget v2, Lcom/threed/jpct/GLSLShader;->NEXT:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/threed/jpct/GLSLShader;->NEXT:I

    iput v2, p0, Lcom/threed/jpct/GLSLShader;->id:I

    .line 30
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    .line 31
    iput v0, p0, Lcom/threed/jpct/GLSLShader;->lastContext:I

    .line 32
    iput v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const/4 v2, 0x0

    .line 33
    iput-object v2, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 36
    new-instance v3, Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-direct {v3, v2}, Lcom/threed/jpct/GLSLShader$UniformMap;-><init>(Lcom/threed/jpct/GLSLShader$UniformMap;)V

    iput-object v3, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    .line 37
    iput-object v2, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    .line 38
    iput-object v2, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    .line 39
    new-instance v2, Lcom/threed/jpct/Matrix;

    invoke-direct {v2}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmp:Lcom/threed/jpct/Matrix;

    const/16 v2, 0x10

    .line 40
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpFloats:[F

    .line 41
    new-instance v2, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-direct {v2}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    .line 42
    iput-object p2, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    .line 44
    const-string p2, "attribute vec4 tangent"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/threed/jpct/GLSLShader;->needsTangents:Z

    .line 45
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    return-void
.end method

.method public static addReplacement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/threed/jpct/GLSLShader;->REPLACEMENTS:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private check20()V
    .locals 2

    sget v0, Lcom/threed/jpct/FrameBuffer;->versionHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "Shaders are not supported when using OpenGL ES 1.x!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private checkError(Ljava/lang/String;)V
    .locals 3

    :goto_0
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ": glError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private createProgram(II)I
    .locals 3

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader - vertex shader"

    invoke-direct {p0, p1}, Lcom/threed/jpct/GLSLShader;->checkError(Ljava/lang/String;)V

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    const-string p1, "glAttachShader -  fragment shader"

    invoke-direct {p0, p1}, Lcom/threed/jpct/GLSLShader;->checkError(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    const/4 p1, 0x1

    new-array p2, p1, [I

    const v1, 0x8b82

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    aget p2, p2, v2

    if-eq p2, p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not link shader program: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v0, v2

    :cond_0
    return v0
.end method

.method private getLocation(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method private init()V
    .locals 6

    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v1, "modelViewProjectionMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v1, "projectionMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/GLSLShader;->pMatrixHandle:I

    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v1, "color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/GLSLShader;->colorHandle:I

    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v1, "tangent"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/GLSLShader;->tangentHandle:I

    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v1, "normal"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->textureHandle:[I

    array-length v3, v2

    if-lt v1, v3, :cond_3

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "modelViewMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->mvMatrixHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "textureMatrix"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->texMatrixHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "alpha"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->alphaHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "useColors"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "additionalColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->additionalColorHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "ambientColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->ambientColorHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "lightCount"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->lightCountHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "lightPositions"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->lightPositionsHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "diffuseColors"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->diffuseColorsHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "specularColors"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->specularColorsHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "attenuation"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->attenuationHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "fogColor"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->fogColorHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "fogStart"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "fogEnd"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->fogEndHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "textureCount"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->textureCountHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "blendingMode"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->blendingModeHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    const-string v2, "shininess"

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threed/jpct/GLSLShader;->shininessHandle:I

    iget v1, p0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const-string v1, "Missing attribute \'position\' in vertex shader"

    invoke-static {v1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handles of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/threed/jpct/GLSLShader;->program:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/threed/jpct/GLSLShader;->vertexHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/threed/jpct/GLSLShader;->normalHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/threed/jpct/GLSLShader;->activate()V

    :goto_1
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->textureUnitHandle:[I

    array-length v2, v1

    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    aget v1, v1, v0

    if-eq v1, v3, :cond_2

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/threed/jpct/GLSLShader;->program:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "texture"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->textureUnitHandle:[I

    iget v3, p0, Lcom/threed/jpct/GLSLShader;->program:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "textureUnit"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private loadProgram(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/threed/jpct/Config;->glForceHighPrecision:Z

    if-eqz v0, :cond_1

    const-string v0, "precision mediump"

    const-string v1, "precision highp"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "precision lowp"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "Shader forced to use high precision!"

    invoke-static {p2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    :cond_0
    move-object p2, v0

    :cond_1
    iput-object p2, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    iput-object p1, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    const-string v0, "Compiling shader program!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/threed/jpct/GLSLShader;->loadShader(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "load shader"

    if-nez p1, :cond_2

    invoke-direct {p0, v1}, Lcom/threed/jpct/GLSLShader;->checkError(Ljava/lang/String;)V

    const-string v2, "Failed to load and compile vertex shaders!"

    invoke-static {v2, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_2
    const v2, 0x8b30

    invoke-direct {p0, v2, p2}, Lcom/threed/jpct/GLSLShader;->loadShader(ILjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    invoke-direct {p0, v1}, Lcom/threed/jpct/GLSLShader;->checkError(Ljava/lang/String;)V

    const-string v1, "Failed to load and compile fragment shaders!"

    invoke-static {v1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/GLSLShader;->createProgram(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/GLSLShader;->program:I

    return-void
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const v1, 0x8b81

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p2, p2, v2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Could not compile shader "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    :cond_0
    return v0
.end method

.method private set(Ljava/lang/String;FZ)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 15
    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 17
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 18
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v0, v2}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 19
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    :cond_0
    if-nez v0, :cond_1

    .line 20
    new-instance v0, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-direct {v0, v1, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    .line 21
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 22
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v1, p1, v0}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 23
    :cond_1
    invoke-virtual {v0, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue(F)V

    .line 24
    invoke-virtual {v0, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 25
    iget-boolean p1, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz p1, :cond_2

    .line 26
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    :cond_2
    return-void
.end method

.method private set(Ljava/lang/String;IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 4
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 5
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v0, v2}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 6
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    :cond_0
    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-direct {v0, v1, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 9
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v1, p1, v0}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 10
    :cond_1
    invoke-virtual {v0, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue(I)V

    .line 11
    invoke-virtual {v0, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 12
    iget-boolean p1, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz p1, :cond_2

    .line 13
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    :cond_2
    return-void
.end method

.method private set(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;Z)V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 42
    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 44
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 45
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v0, v2}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 46
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    :cond_0
    if-nez v0, :cond_1

    .line 47
    new-instance v0, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-direct {v0, v1, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 48
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 49
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v1, p1, v0}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 50
    :cond_1
    invoke-virtual {v0, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue(Lcom/threed/jpct/SimpleVector;)V

    .line 51
    invoke-virtual {v0, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 52
    iget-boolean p1, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz p1, :cond_2

    .line 53
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    :cond_2
    return-void
.end method

.method private set(Ljava/lang/String;Ljava/nio/FloatBuffer;Z)V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 68
    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 70
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 71
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v0, v2}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 72
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    :cond_0
    if-nez v0, :cond_1

    .line 73
    new-instance v0, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-direct {v0, v1, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 75
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v1, p1, v0}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 76
    :cond_1
    invoke-virtual {v0, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue(Ljava/nio/FloatBuffer;)V

    .line 77
    invoke-virtual {v0, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 78
    iget-boolean p1, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz p1, :cond_2

    .line 79
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    :cond_2
    return-void
.end method

.method private set(Ljava/lang/String;[FZ)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[FZZ)V

    return-void
.end method

.method private set(Ljava/lang/String;[FZZ)V
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    if-nez v0, :cond_1

    .line 29
    iget-boolean v3, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v3, :cond_1

    .line 30
    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 31
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    if-eqz p4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    invoke-virtual {v0, v4}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 32
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v0, v3}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 33
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    :cond_1
    if-nez v0, :cond_3

    .line 34
    new-instance v0, Lcom/threed/jpct/GLSLShader$Uniform;

    if-eqz p4, :cond_2

    move v1, v2

    :cond_2
    invoke-direct {v0, v1, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    const/4 p4, 0x1

    .line 35
    iput-boolean p4, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 36
    iget-object p4, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {p4, p1, v0}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 37
    :cond_3
    invoke-virtual {v0, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue([F)V

    .line 38
    invoke-virtual {v0, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 39
    iget-boolean p1, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz p1, :cond_4

    .line 40
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    :cond_4
    return-void
.end method

.method private set(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;Z)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_0

    .line 55
    iget-boolean v2, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLSLShader;->getHandle(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 57
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/GLSLShader$Uniform;->setType(I)V

    .line 58
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-virtual {v0, v2}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    .line 59
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpUniform:Lcom/threed/jpct/GLSLShader$Uniform;

    :cond_0
    if-nez v0, :cond_1

    .line 60
    new-instance v0, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-direct {v0, v1, p1}, Lcom/threed/jpct/GLSLShader$Uniform;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x1

    .line 61
    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    .line 62
    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v1, p1, v0}, Lcom/threed/jpct/GLSLShader$UniformMap;->put(Ljava/lang/String;Lcom/threed/jpct/GLSLShader$Uniform;)V

    .line 63
    :cond_1
    invoke-virtual {v0, p2}, Lcom/threed/jpct/GLSLShader$Uniform;->setValue([Lcom/threed/jpct/SimpleVector;)V

    .line 64
    invoke-virtual {v0, p3}, Lcom/threed/jpct/GLSLShader$Uniform;->setStaticUniform(Z)V

    .line 65
    iget-boolean p1, p0, Lcom/threed/jpct/GLSLShader;->directMode:Z

    if-eqz p1, :cond_2

    .line 66
    invoke-direct {p0, v0}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    :cond_2
    return-void
.end method

.method public static setShaderLocator(Lcom/threed/jpct/ShaderLocator;)V
    .locals 0

    sput-object p0, Lcom/threed/jpct/GLSLShader;->locator:Lcom/threed/jpct/ShaderLocator;

    return-void
.end method

.method private setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V
    .locals 7

    .line 10
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getHandle()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getType()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getFloatArrayValue()[F

    move-result-object p1

    .line 13
    array-length v1, p1

    invoke-static {v0, v1, p1, v4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    goto :goto_0

    .line 14
    :pswitch_1
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getVectorArrayValue()[F

    move-result-object p1

    .line 15
    array-length v1, p1

    div-int/2addr v1, v2

    invoke-static {v0, v1, p1, v4}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    goto :goto_0

    .line 16
    :pswitch_2
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getVectorValue()Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    .line 17
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v0, v1, v2, p1}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    goto :goto_0

    .line 18
    :pswitch_3
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getMatrixValue()Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 20
    invoke-static {v0, v3, v4, p1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    goto :goto_0

    .line 21
    :pswitch_4
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getFloatArrayValue()[F

    move-result-object p1

    .line 22
    array-length v1, p1

    if-eq v1, v3, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v6, 0x4

    if-eq v1, v6, :cond_1

    goto :goto_0

    .line 23
    :cond_1
    aget v1, p1, v4

    aget v3, p1, v3

    aget v4, p1, v5

    aget p1, p1, v2

    invoke-static {v0, v1, v3, v4, p1}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    goto :goto_0

    .line 24
    :cond_2
    aget v1, p1, v4

    aget v2, p1, v3

    aget p1, p1, v5

    invoke-static {v0, v1, v2, p1}, Landroid/opengl/GLES20;->glUniform3f(IFFF)V

    goto :goto_0

    .line 25
    :cond_3
    aget v1, p1, v4

    aget p1, p1, v3

    invoke-static {v0, v1, p1}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    goto :goto_0

    .line 26
    :cond_4
    aget p1, p1, v4

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0

    .line 27
    :pswitch_5
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getFloatValue()F

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto :goto_0

    .line 28
    :pswitch_6
    invoke-virtual {p1}, Lcom/threed/jpct/GLSLShader$Uniform;->getIntValue()I

    move-result p1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toFloatBuffer(Lcom/threed/jpct/Matrix;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;
    .locals 1

    if-nez p2, :cond_0

    const/16 p2, 0x40

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmp:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    iget-object p1, p0, Lcom/threed/jpct/GLSLShader;->tmp:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1}, Lcom/threed/jpct/Matrix;->transformToGL()V

    iget-object p1, p0, Lcom/threed/jpct/GLSLShader;->tmp:Lcom/threed/jpct/Matrix;

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->tmpFloats:[F

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->fillDump([F)[F

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    return-object p2
.end method


# virtual methods
.method public activate()V
    .locals 1

    .line 3
    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method

.method public activate(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/threed/jpct/GLSLShader;->checkContext(I)V

    .line 2
    invoke-virtual {p0}, Lcom/threed/jpct/GLSLShader;->activate()V

    return-void
.end method

.method public checkContext(I)V
    .locals 2

    iget v0, p0, Lcom/threed/jpct/GLSLShader;->lastContext:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/threed/jpct/GLSLShader;->recompile()V

    :cond_0
    iput p1, p0, Lcom/threed/jpct/GLSLShader;->lastContext:I

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/threed/jpct/GLSLShader;->dispose()V

    return-void
.end method

.method public getHandle(Ljava/lang/String;)I
    .locals 1

    const-string v0, "modelViewMatrix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->mvMatrixHandle:I

    return p1

    :cond_0
    const-string v0, "modelViewProjectionMatrix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->mvpMatrixHandle:I

    return p1

    :cond_1
    const-string v0, "projectionMatrix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->pMatrixHandle:I

    return p1

    :cond_2
    const-string v0, "textureMatrix"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->texMatrixHandle:I

    return p1

    :cond_3
    const-string v0, "alpha"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->alphaHandle:I

    return p1

    :cond_4
    const-string v0, "useColors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->useColorsHandle:I

    return p1

    :cond_5
    const-string v0, "additionalColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->additionalColorHandle:I

    return p1

    :cond_6
    const-string v0, "ambientColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->ambientColorHandle:I

    return p1

    :cond_7
    const-string v0, "lightCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->lightCountHandle:I

    return p1

    :cond_8
    const-string v0, "lightPositions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->lightPositionsHandle:I

    return p1

    :cond_9
    const-string v0, "diffuseColors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->diffuseColorsHandle:I

    return p1

    :cond_a
    const-string v0, "specularColors"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->specularColorsHandle:I

    return p1

    :cond_b
    const-string v0, "attenuation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->attenuationHandle:I

    return p1

    :cond_c
    const-string v0, "fogColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->fogColorHandle:I

    return p1

    :cond_d
    const-string v0, "fogStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->fogStartHandle:I

    return p1

    :cond_e
    const-string v0, "fogEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->fogEndHandle:I

    return p1

    :cond_f
    const-string v0, "textureCount"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->textureCountHandle:I

    return p1

    :cond_10
    const-string v0, "blendingMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->blendingModeHandle:I

    return p1

    :cond_11
    const-string v0, "shininess"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget p1, p0, Lcom/threed/jpct/GLSLShader;->shininessHandle:I

    return p1

    :cond_12
    const/4 p1, -0x1

    return p1
.end method

.method public getProgram()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    return v0
.end method

.method public preInit()V
    .locals 2

    iget-boolean v0, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader;->check20()V

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/threed/jpct/GLSLShader;->loadProgram(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader;->init()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/GLSLShader;->init:Z

    :cond_0
    return-void
.end method

.method public recompile()V
    .locals 2

    const-string v0, "Recompiling shader because of context change!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->vtxSource:Ljava/lang/String;

    iget-object v1, p0, Lcom/threed/jpct/GLSLShader;->frgSource:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/threed/jpct/GLSLShader;->loadProgram(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/threed/jpct/GLSLShader;->init()V

    return-void
.end method

.method public setFloatArrayUniform(Ljava/lang/String;[F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[FZZ)V

    return-void
.end method

.method public setStaticFloatArrayUniform(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[FZZ)V

    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;F)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;FZ)V

    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;Lcom/threed/jpct/Matrix;)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p2, v0}, Lcom/threed/jpct/GLSLShader;->toFloatBuffer(Lcom/threed/jpct/Matrix;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;Ljava/nio/FloatBuffer;Z)V

    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    const/4 v0, 0x1

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;Z)V

    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[FZ)V

    return-void
.end method

.method public setStaticUniform(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;F)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;FZ)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;Lcom/threed/jpct/Matrix;)V
    .locals 4

    .line 6
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/threed/jpct/GLSLShader$Uniform;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/threed/jpct/GLSLShader$Uniform;->getMatrixValue()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/threed/jpct/GLSLShader;->toFloatBuffer(Lcom/threed/jpct/Matrix;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;Ljava/nio/FloatBuffer;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, p2, v0}, Lcom/threed/jpct/GLSLShader;->toFloatBuffer(Lcom/threed/jpct/Matrix;Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;Ljava/nio/FloatBuffer;Z)V

    :goto_0
    return-void
.end method

.method public setUniform(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;Lcom/threed/jpct/SimpleVector;Z)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;[F)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[FZ)V

    return-void
.end method

.method public setUniform(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/threed/jpct/GLSLShader;->set(Ljava/lang/String;[Lcom/threed/jpct/SimpleVector;Z)V

    return-void
.end method

.method public update()V
    .locals 6

    iget v0, p0, Lcom/threed/jpct/GLSLShader;->program:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v2}, Lcom/threed/jpct/GLSLShader$UniformMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    iput-boolean v1, p0, Lcom/threed/jpct/GLSLShader;->newUniforms:Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->keyTemp:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v3, v2}, Lcom/threed/jpct/GLSLShader$UniformMap;->get(Ljava/lang/String;)Lcom/threed/jpct/GLSLShader$Uniform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/threed/jpct/GLSLShader$Uniform;->hasHandle()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v2}, Lcom/threed/jpct/GLSLShader;->getLocation(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/threed/jpct/GLSLShader$Uniform;->setHandle(I)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    invoke-virtual {v0}, Lcom/threed/jpct/GLSLShader$UniformMap;->values()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    move v3, v1

    :goto_2
    if-lt v3, v2, :cond_7

    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    if-eqz v0, :cond_6

    :goto_3
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/threed/jpct/GLSLShader;->uniforms:Lcom/threed/jpct/GLSLShader$UniformMap;

    iget-object v2, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/threed/jpct/GLSLShader$UniformMap;->remove(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void

    :cond_7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/threed/jpct/GLSLShader$Uniform;

    invoke-direct {p0, v4}, Lcom/threed/jpct/GLSLShader;->setUniform(Lcom/threed/jpct/GLSLShader$Uniform;)V

    invoke-virtual {v4}, Lcom/threed/jpct/GLSLShader$Uniform;->isStaticUniform()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    if-nez v5, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    :cond_8
    iget-object v5, p0, Lcom/threed/jpct/GLSLShader;->toRemove:Ljava/util/List;

    invoke-virtual {v4}, Lcom/threed/jpct/GLSLShader$Uniform;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
