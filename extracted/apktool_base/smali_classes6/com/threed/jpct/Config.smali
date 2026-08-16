.class public final Lcom/threed/jpct/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final ADD_Z_SORT:F = 1000000.0f

.field static final BLACK_MASK:I = 0xf0f0f0

.field static final COLLIDE_CAMERA_RANGE:F = 3.0f

.field private static final INT_VERSION:Ljava/lang/String; = "1.26"

.field public static aaMode:I = 0x0

.field public static aggressiveStripping:Z = true

.field public static autoMaintainAspectRatio:Z = true

.field public static cacheCompressedTextures:Z = false

.field public static collideEdgeMul:F = 1.0f

.field public static collideEllipsoidThreshold:F = 0.1f

.field public static collideOffset:F = 40.0f

.field public static collideSectorOffset:F = 3.0f

.field public static defaultCameraFOV:F = 1.25f

.field public static disableNativeBufferCopies:Z = false

.field static fadeoutLight:Z = false

.field public static farPlane:F = 1000.0f

.field public static flashSortThreshold:I = 0x96

.field public static glBatchSize:I = 0x1f40

.field public static glDebugLevel:I = 0x0

.field public static glDither:Z = false

.field public static glForceEnvMapToSecondStage:Z = false

.field public static glForceHighPrecision:Z = false

.field static glIgnoreAlphaBlendingFBO:Z = false

.field public static glIgnoreNearPlane:Z = true

.field public static glRevertADDtoMODULATE:Z = false

.field static glStageCount:I = 0x1

.field public static glTransparencyMul:F = 0.06f

.field public static glTransparencyOffset:F = 0.1f

.field public static glTriangleStrips:Z = true

.field public static glTrilinear:Z = false

.field public static glUseIgnorantBlits:Z = false

.field public static internalMipmapCreation:Z = false

.field static lightDiscardDistance:F = -1.0f

.field static linearDiv:F = 50.0f

.field static loadMaxTrianglesASC:I = 0x101d0

.field static loadMaxVerticesASC:I = 0x101d0

.field public static maxAnimationSubSequences:I = 0x14

.field public static maxLights:I = 0x8

.field public static maxParentObjects:I = 0x1

.field public static maxPolysVisible:I = 0x200

.field public static maxTextureLayers:I = 0x2

.field public static maxTextures:I = 0x40

.field public static nearPlane:F = 1.0f

.field public static oldStyle3DSLoader:Z = false

.field public static polygonIDLimit:I = 0x32

.field public static renderTargetsAsSubImages:Z = true

.field public static specPow:F = 6.0f

.field public static specTerm:F = 10.0f

.field public static stateOrientedSorting:Z = true

.field public static unloadImmediately:Z = false

.field static useFBO:Z = true

.field public static useNormalsFromOBJ:Z = false

.field public static useRotationPivotFrom3DS:Z = false

.field public static useVBO:Z = true

.field public static vectorCacheSize:I = 0x64

.field public static vertexBufferSize:I = 0xf0

.field public static viewportOffsetX:F

.field public static viewportOffsetY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getParameterNames()[Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/threed/jpct/Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VERSION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getParameterValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/threed/jpct/Config;

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.26"

    return-object v0
.end method

.method public static setParameterValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-class v0, Lcom/threed/jpct/Config;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown parameter: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Wrong parameter value type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " found, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " expected!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
