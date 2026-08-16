.class public Lcom/threed/jpct/Object3D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "FloatMath"
    }
.end annotation


# static fields
.field public static final BILLBOARDING_DISABLED:Z = false

.field public static final BILLBOARDING_ENABLED:Z = true

.field public static final COLLISION_CHECK_NONE:I = 0x0

.field public static final COLLISION_CHECK_OTHERS:I = 0x1

.field public static final COLLISION_CHECK_SELF:I = 0x2

.field public static final COLLISION_DETECTION_NOT_OPTIMIZED:Z = false

.field public static final COLLISION_DETECTION_OPTIMIZED:Z = true

.field public static final COLLISION_NONE:F = 1.0E12f

.field public static final CULLING_DISABLED:Z = false

.field public static final CULLING_ENABLED:Z = true

.field private static final DUMMY_LIGHTS:Lcom/threed/jpct/Lights;

.field public static final ELLIPSOID_ALIGNED:I = 0x0

.field public static final ELLIPSOID_TRANSFORMED:I = 0x1

.field public static final ENVMAP_DISABLED:Z = false

.field public static final ENVMAP_ENABLED:Z = true

.field private static final EPSILON:F = 1.0E-9f

.field private static final INSIDE_POLYGON_CONST:F = 6.2203536f

.field public static final LIGHTING_ALL_ENABLED:I = 0x0

.field public static final LIGHTING_NO_LIGHTS:I = 0x1

.field public static final NO_OBJECT:I = -0x64

.field public static final OBJ_INVISIBLE:Z = false

.field public static final OBJ_VISIBLE:Z = true

.field public static final RAY_MISSES_BOX:F = 1.0E12f

.field public static final SHADING_FAKED_FLAT:I = 0x1

.field public static final SHADING_GOURAUD:I = 0x0

.field public static final SPECULAR_DISABLED:Z = false

.field public static final SPECULAR_ENABLED:Z = true

.field public static final TRANSPARENCY_MODE_ADD:I = 0x1

.field public static final TRANSPARENCY_MODE_DEFAULT:I = 0x0

.field public static final UNKNOWN_OBJECTSIZE:I = -0x1

.field private static transient dirCol:[F = null

.field private static transient dirColParam:[F = null

.field private static transient edge1Col:[F = null

.field private static transient edge2Col:[F = null

.field static globalListenerCount:I = 0x0

.field private static lightsList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end field

.field private static litData:[[F = null

.field private static mat7:Lcom/threed/jpct/Matrix; = null

.field private static mat71:Lcom/threed/jpct/Matrix; = null

.field private static matBill:Lcom/threed/jpct/Matrix; = null

.field private static transient matrixArray:[Lcom/threed/jpct/Matrix; = null

.field private static transient matrixThreadCache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Thread;",
            "[",
            "Lcom/threed/jpct/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private static nextID:I = 0x0

.field private static transient origCol:[F = null

.field private static transient origColParam:[F = null

.field private static transient pvecCol:[F = null

.field private static transient qvecCol:[F = null

.field private static final serialVersionUID:J = 0x3L

.field private static tempCS:Lcom/threed/jpct/SimpleVector;

.field private static tempTC:Lcom/threed/jpct/SimpleVector;

.field private static transient tvecCol:[F


# instance fields
.field private addColorB:I

.field private addColorG:I

.field private addColorInstance:Lcom/threed/jpct/RGBColor;

.field private addColorR:I

.field anim:Lcom/threed/jpct/Animation;

.field batchSize:I

.field centerX:F

.field centerY:F

.field centerZ:F

.field collisionListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/threed/jpct/CollisionListener;",
            ">;"
        }
    .end annotation
.end field

.field transient compiled:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/threed/jpct/CompiledInstance;",
            ">;"
        }
    .end annotation
.end field

.field disableListeners:Z

.field doCulling:Z

.field doSpecularLighting:Z

.field dynamic:Z

.field private ellipsoidMode:I

.field fixedPointMode:Z

.field forcedIndexed:Z

.field private transient fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

.field hasBeenBuild:Z

.field hasBeenStripped:Z

.field hasBoundingBox:Z

.field private highestPos:I

.field indexed:Z

.field private invCache:Lcom/threed/jpct/Matrix;

.field private invCacheDump:Lcom/threed/jpct/Matrix;

.field private isBillBoard:Z

.field isEnvmapped:Z

.field isFlatShaded:Z

.field isLit:Z

.field isPotentialCollider:Z

.field isStatic:Z

.field isTrans:Z

.field isVisible:Z

.field private largestPolygonSize:F

.field private lastAddedID:I

.field private lazyTransforms:Z

.field private lowestPos:I

.field private mat2:Lcom/threed/jpct/Matrix;

.field private mat5:Lcom/threed/jpct/Matrix;

.field private mat6:Lcom/threed/jpct/Matrix;

.field private transient maxLights:I

.field maxStagesUsed:I

.field mayCollide:Z

.field modified:Z

.field multiMode:[[I

.field multiTex:[[I

.field myWorld:Lcom/threed/jpct/World;

.field name:Ljava/lang/String;

.field transient nearestLights:[[F

.field private neverOptimize:Z

.field private transient newT:[F

.field number:I

.field objMesh:Lcom/threed/jpct/Mesh;

.field objVectors:Lcom/threed/jpct/Vectors;

.field object3DRendered:Z

.field private ocTree:Lcom/threed/jpct/OcTree;

.field oneTextureSet:Z

.field private optimizeColDet:Z

.field private originMatrix:Lcom/threed/jpct/Matrix;

.field private pIDCount:I

.field parent:[Lcom/threed/jpct/Object3D;

.field parentCnt:I

.field private transient planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

.field private transient polyManager:Lcom/threed/jpct/PolygonManager;

.field private polygonIDs:[I

.field transient renderHook:Lcom/threed/jpct/IRenderHook;

.field reverseCulling:Z

.field private rotationMatrix:Lcom/threed/jpct/Matrix;

.field private scaleFactor:F

.field private transient sectors:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field transient shader:Lcom/threed/jpct/GLSLShader;

.field shareWith:Lcom/threed/jpct/Object3D;

.field sharing:Z

.field skipPivot:Z

.field sortOffset:F

.field staticUV:Z

.field private transient t0Vel:Lcom/threed/jpct/SimpleVector;

.field texture:[I

.field textureMatrix:Lcom/threed/jpct/Matrix;

.field toStrip:Z

.field transBuffer:Lcom/threed/jpct/Matrix;

.field private transCache:Lcom/threed/jpct/Matrix;

.field private transCacheDump:Lcom/threed/jpct/Matrix;

.field transMode:I

.field transValue:I

.field private translationMatrix:Lcom/threed/jpct/Matrix;

.field private transient trianglePlane:Lcom/threed/jpct/Plane;

.field private userObj:Ljava/lang/Object;

.field usesMultiTexturing:Z

.field transient virtualizer:Lcom/threed/jpct/Virtualizer;

.field wasCollider:Z

.field xRotationCenter:F

.field yRotationCenter:F

.field zRotationCenter:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/threed/jpct/Lights;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/threed/jpct/Lights;-><init>(I)V

    sput-object v0, Lcom/threed/jpct/Object3D;->DUMMY_LIGHTS:Lcom/threed/jpct/Lights;

    sput v1, Lcom/threed/jpct/Object3D;->nextID:I

    sput v1, Lcom/threed/jpct/Object3D;->globalListenerCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/threed/jpct/Object3D;->lightsList:Ljava/util/ArrayList;

    const/4 v0, 0x2

    new-array v2, v0, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/16 v0, 0x8

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/threed/jpct/Object3D;->litData:[[F

    const/4 v0, 0x0

    sput-object v0, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    sput-object v0, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    new-instance v1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    sput-object v1, Lcom/threed/jpct/Object3D;->tempCS:Lcom/threed/jpct/SimpleVector;

    new-instance v1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    sput-object v1, Lcom/threed/jpct/Object3D;->tempTC:Lcom/threed/jpct/SimpleVector;

    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v1, Lcom/threed/jpct/Object3D;->mat7:Lcom/threed/jpct/Matrix;

    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v1, Lcom/threed/jpct/Object3D;->mat71:Lcom/threed/jpct/Matrix;

    sput-object v0, Lcom/threed/jpct/Object3D;->matBill:Lcom/threed/jpct/Matrix;

    sput-object v0, Lcom/threed/jpct/Object3D;->dirColParam:[F

    sput-object v0, Lcom/threed/jpct/Object3D;->origColParam:[F

    sput-object v0, Lcom/threed/jpct/Object3D;->dirCol:[F

    sput-object v0, Lcom/threed/jpct/Object3D;->origCol:[F

    sput-object v0, Lcom/threed/jpct/Object3D;->pvecCol:[F

    sput-object v0, Lcom/threed/jpct/Object3D;->tvecCol:[F

    sput-object v0, Lcom/threed/jpct/Object3D;->qvecCol:[F

    sput-object v0, Lcom/threed/jpct/Object3D;->edge1Col:[F

    sput-object v0, Lcom/threed/jpct/Object3D;->edge2Col:[F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/threed/jpct/Object3D;->transMode:I

    const/4 v1, 0x0

    .line 88
    iput v1, p0, Lcom/threed/jpct/Object3D;->sortOffset:F

    .line 89
    iput v0, p0, Lcom/threed/jpct/Object3D;->number:I

    .line 90
    const-string v1, ""

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    .line 91
    iput v0, p0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 92
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 93
    iput v0, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    .line 95
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    .line 96
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->modified:Z

    const/4 v2, 0x1

    .line 97
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->indexed:Z

    .line 98
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->forcedIndexed:Z

    const/4 v3, -0x1

    .line 99
    iput v3, p0, Lcom/threed/jpct/Object3D;->batchSize:I

    .line 100
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->staticUV:Z

    .line 101
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    .line 102
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->toStrip:Z

    .line 103
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    .line 104
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->sharing:Z

    .line 105
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    .line 106
    new-instance v4, Lcom/threed/jpct/Matrix;

    invoke-direct {v4}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    .line 107
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    .line 108
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    .line 109
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    .line 110
    iput v0, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    .line 111
    iput v3, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    .line 112
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    .line 113
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    .line 114
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    .line 115
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    .line 116
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->mat5:Lcom/threed/jpct/Matrix;

    .line 117
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    .line 118
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    .line 119
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    .line 120
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    .line 121
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 122
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 123
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 124
    iput v3, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    .line 125
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    .line 126
    iput v0, p0, Lcom/threed/jpct/Object3D;->ellipsoidMode:I

    .line 127
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    .line 128
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    .line 129
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    .line 130
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    .line 131
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->fixedPointMode:Z

    .line 132
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    .line 133
    new-instance v2, Lcom/threed/jpct/RGBColor;

    invoke-direct {v2}, Lcom/threed/jpct/RGBColor;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    .line 134
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    const/16 v2, 0x8

    .line 135
    iput v2, p0, Lcom/threed/jpct/Object3D;->maxLights:I

    .line 136
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    .line 137
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 138
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    .line 139
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    .line 140
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    .line 141
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    .line 142
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    .line 143
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->newT:[F

    .line 144
    invoke-direct {p0, p1}, Lcom/threed/jpct/Object3D;->init(I)V

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/threed/jpct/Object3D;-><init>(Lcom/threed/jpct/Object3D;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/threed/jpct/Object3D;Z)V
    .locals 5

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput v0, p0, Lcom/threed/jpct/Object3D;->transMode:I

    const/4 v1, 0x0

    .line 148
    iput v1, p0, Lcom/threed/jpct/Object3D;->sortOffset:F

    .line 149
    iput v0, p0, Lcom/threed/jpct/Object3D;->number:I

    .line 150
    const-string v1, ""

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    .line 151
    iput v0, p0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 152
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 153
    iput v0, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    const/4 v1, 0x0

    .line 154
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    .line 155
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    .line 156
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->modified:Z

    const/4 v2, 0x1

    .line 157
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->indexed:Z

    .line 158
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->forcedIndexed:Z

    const/4 v3, -0x1

    .line 159
    iput v3, p0, Lcom/threed/jpct/Object3D;->batchSize:I

    .line 160
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->staticUV:Z

    .line 161
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    .line 162
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->toStrip:Z

    .line 163
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    .line 164
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->sharing:Z

    .line 165
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    .line 166
    new-instance v4, Lcom/threed/jpct/Matrix;

    invoke-direct {v4}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    .line 167
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    .line 168
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    .line 169
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    .line 170
    iput v0, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    .line 171
    iput v3, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    .line 172
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    .line 173
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    .line 174
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    .line 175
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    .line 176
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->mat5:Lcom/threed/jpct/Matrix;

    .line 177
    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    .line 178
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    .line 179
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    .line 180
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    .line 181
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 182
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 183
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    const/high16 v3, -0x40800000    # -1.0f

    .line 184
    iput v3, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    .line 185
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    .line 186
    iput v0, p0, Lcom/threed/jpct/Object3D;->ellipsoidMode:I

    .line 187
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    .line 188
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    .line 189
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    .line 190
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    .line 191
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->fixedPointMode:Z

    .line 192
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    .line 193
    new-instance v2, Lcom/threed/jpct/RGBColor;

    invoke-direct {v2}, Lcom/threed/jpct/RGBColor;-><init>()V

    iput-object v2, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    .line 194
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    const/16 v2, 0x8

    .line 195
    iput v2, p0, Lcom/threed/jpct/Object3D;->maxLights:I

    .line 196
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    .line 197
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 198
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    .line 199
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    .line 200
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    .line 201
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    .line 202
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    .line 203
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->newT:[F

    if-eqz p1, :cond_0

    .line 204
    iget-object v1, p1, Lcom/threed/jpct/Object3D;->texture:[I

    if-eqz v1, :cond_0

    .line 205
    array-length v0, v1

    :cond_0
    add-int/lit8 v1, v0, 0x8

    .line 206
    invoke-direct {p0, v1}, Lcom/threed/jpct/Object3D;->init(I)V

    if-eqz v0, :cond_1

    .line 207
    invoke-direct {p0, p1, p2}, Lcom/threed/jpct/Object3D;->copy(Lcom/threed/jpct/Object3D;Z)V

    :cond_1
    return-void
.end method

.method public constructor <init>([F[F[II)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/threed/jpct/Object3D;->transMode:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/threed/jpct/Object3D;->sortOffset:F

    .line 4
    iput v0, p0, Lcom/threed/jpct/Object3D;->number:I

    .line 5
    const-string v1, ""

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    .line 6
    iput v0, p0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    .line 7
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 8
    iput v0, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    .line 10
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    .line 11
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->modified:Z

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->indexed:Z

    .line 13
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->forcedIndexed:Z

    const/4 v3, -0x1

    .line 14
    iput v3, p0, Lcom/threed/jpct/Object3D;->batchSize:I

    .line 15
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->staticUV:Z

    .line 16
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    .line 17
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->toStrip:Z

    .line 18
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    .line 19
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->sharing:Z

    .line 20
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    .line 21
    new-instance v4, Lcom/threed/jpct/Matrix;

    invoke-direct {v4}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    .line 22
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    .line 23
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    .line 24
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    .line 25
    iput v0, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    .line 26
    iput v3, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    .line 27
    new-instance v4, Lcom/threed/jpct/Matrix;

    invoke-direct {v4}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    .line 28
    new-instance v4, Lcom/threed/jpct/Matrix;

    invoke-direct {v4}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    .line 29
    new-instance v4, Lcom/threed/jpct/Matrix;

    invoke-direct {v4}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    .line 30
    new-instance v4, Lcom/threed/jpct/Matrix;

    invoke-direct {v4}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    .line 31
    new-instance v4, Lcom/threed/jpct/Matrix;

    invoke-direct {v4}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Object3D;->mat5:Lcom/threed/jpct/Matrix;

    .line 32
    new-instance v4, Lcom/threed/jpct/Matrix;

    invoke-direct {v4}, Lcom/threed/jpct/Matrix;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    .line 33
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    .line 34
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    .line 35
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    .line 36
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 37
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 38
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    const/high16 v4, -0x40800000    # -1.0f

    .line 39
    iput v4, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    .line 40
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    .line 41
    iput v0, p0, Lcom/threed/jpct/Object3D;->ellipsoidMode:I

    .line 42
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    .line 43
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    .line 44
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    .line 45
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    .line 46
    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->fixedPointMode:Z

    .line 47
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    .line 48
    new-instance v4, Lcom/threed/jpct/RGBColor;

    invoke-direct {v4}, Lcom/threed/jpct/RGBColor;-><init>()V

    iput-object v4, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    .line 49
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    const/16 v4, 0x8

    .line 50
    iput v4, p0, Lcom/threed/jpct/Object3D;->maxLights:I

    .line 51
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    .line 52
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    .line 53
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    .line 54
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    .line 55
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    .line 56
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    .line 57
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    .line 58
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->newT:[F

    if-nez p3, :cond_0

    .line 59
    array-length v1, p1

    rem-int/lit8 v1, v1, 0x9

    if-eqz v1, :cond_0

    .line 60
    const-string v1, "Without indices, coordinates\' length have to be a multiple of 9!"

    invoke-static {v1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_0
    const/4 v1, 0x3

    if-nez p3, :cond_2

    .line 61
    array-length p3, p1

    div-int/lit8 v4, p3, 0x3

    new-array v5, v4, [I

    move p3, v0

    :goto_0
    if-lt p3, v4, :cond_1

    move-object p3, v5

    goto :goto_1

    .line 62
    :cond_1
    aput p3, v5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 63
    :cond_2
    :goto_1
    array-length v4, p3

    add-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    .line 64
    array-length v5, p1

    div-int/2addr v5, v1

    if-le v5, v4, :cond_4

    .line 65
    array-length v5, p1

    div-int/2addr v5, v1

    add-int/lit8 v4, v4, 0x64

    if-ge v4, v5, :cond_3

    .line 66
    const-string v4, "Coordinate array is sparsely populated! Consider to pre-process it to save memory!"

    invoke-static {v4, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_3
    move v4, v5

    .line 67
    :cond_4
    invoke-direct {p0, v4}, Lcom/threed/jpct/Object3D;->init(I)V

    .line 68
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput v0, v4, Lcom/threed/jpct/Mesh;->anzCoords:I

    move v4, v0

    .line 69
    :goto_2
    array-length v5, p1

    if-lt v4, v5, :cond_9

    .line 70
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    array-length p1, p1

    div-int/2addr p1, v1

    iput p1, v4, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-ne p4, v3, :cond_5

    move v5, v0

    goto :goto_3

    :cond_5
    move v5, p4

    :goto_3
    move p1, v0

    move v6, p1

    move v7, v6

    .line 71
    :goto_4
    array-length p4, p3

    if-lt v6, p4, :cond_6

    .line 72
    iget-object p1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {p1}, Lcom/threed/jpct/Mesh;->compress()V

    return-void

    :cond_6
    move p4, v0

    :goto_5
    if-lt p4, v1, :cond_7

    .line 73
    iget-object p4, p0, Lcom/threed/jpct/Object3D;->texture:[I

    aput v5, p4, v7

    add-int/lit8 v7, v7, 0x1

    .line 74
    iget-object p4, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, p4, Lcom/threed/jpct/Mesh;->anzTri:I

    add-int/2addr v3, v2

    iput v3, p4, Lcom/threed/jpct/Mesh;->anzTri:I

    add-int/lit8 v6, v6, 0x3

    goto :goto_4

    :cond_7
    if-eqz p2, :cond_8

    add-int v3, v6, p4

    .line 75
    aget v3, p3, v3

    mul-int/lit8 v4, v3, 0x2

    aget v4, p2, v4

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    .line 76
    aget v3, p2, v3

    .line 77
    iget-object v8, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v9, v8, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aput v4, v9, p1

    .line 78
    iget-object v4, v8, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aput v3, v4, p1

    .line 79
    :cond_8
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v4, v3, Lcom/threed/jpct/Mesh;->coords:[I

    add-int v8, v6, p4

    aget v8, p3, v8

    aput v8, v4, p1

    .line 80
    iget-object v4, v3, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v4, v4, v7

    aput p1, v4, p4

    add-int/lit8 p1, p1, 0x1

    .line 81
    iget v4, v3, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/2addr v4, v2

    iput v4, v3, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_5

    .line 82
    :cond_9
    div-int/lit8 v5, v4, 0x3

    .line 83
    iget-object v6, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v7, v6, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v8, p1, v4

    aput v8, v7, v5

    .line 84
    iget-object v7, v6, Lcom/threed/jpct/Mesh;->yOrg:[F

    add-int/lit8 v8, v4, 0x1

    aget v8, p1, v8

    aput v8, v7, v5

    .line 85
    iget-object v6, v6, Lcom/threed/jpct/Mesh;->zOrg:[F

    add-int/lit8 v7, v4, 0x2

    aget v7, p1, v7

    aput v7, v6, v5

    add-int/lit8 v4, v4, 0x3

    goto :goto_2
.end method

.method private addPolygonID(I)V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget v0, Lcom/threed/jpct/Config;->polygonIDLimit:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    iput v1, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    :cond_1
    iget v0, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget v0, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    :goto_0
    iget v0, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    if-lt v1, v0, :cond_3

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    aput p1, v1, v0

    iput p1, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    aget v0, v0, v1

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return-void
.end method

.method private final appendToObject(Lcom/threed/jpct/Object3D;)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v2, Lcom/threed/jpct/Mesh;->anzVectors:I

    iget v4, v2, Lcom/threed/jpct/Mesh;->anzCoords:I

    iget v2, v2, Lcom/threed/jpct/Mesh;->anzTri:I

    iget-object v5, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/threed/jpct/Vectors;->uMul:[[F

    if-eqz v5, :cond_2

    iput-boolean v7, v1, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    iget v5, v1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    iget v8, v0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    iget-object v5, v1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v5}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    sget v5, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v5, v7

    move v8, v6

    :goto_0
    if-lt v8, v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v9, v1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v10, v9, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v10, v10, v8

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v9, v9, v8

    iget-object v11, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v12, v11, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v12, v12, v8

    iget-object v11, v11, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v11, v11, v8

    move v13, v6

    :goto_1
    iget-object v14, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v14, v14, Lcom/threed/jpct/Mesh;->anzVectors:I

    if-lt v13, v14, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    add-int v14, v13, v3

    aget v15, v12, v13

    aput v15, v10, v14

    aget v15, v11, v13

    aput v15, v9, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v5, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    const/4 v8, 0x2

    if-eqz v5, :cond_5

    sget v5, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v5, v7

    move v9, v6

    :goto_3
    if-lt v9, v5, :cond_3

    goto :goto_4

    :cond_3
    iget-object v10, v1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-nez v10, :cond_4

    sget v10, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v10, v7

    iget-object v11, v1, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v11, v11

    new-array v12, v8, [I

    aput v11, v12, v7

    aput v10, v12, v6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    iput-object v11, v1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    sget v11, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v11, v7

    iget-object v12, v1, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v12, v12

    new-array v13, v8, [I

    aput v12, v13, v7

    aput v11, v13, v6

    invoke-static {v10, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[I

    iput-object v10, v1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    :cond_4
    iget-object v10, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v10, v10, v9

    iget-object v11, v1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v11, v11, v9

    iget-object v12, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v12, v12, Lcom/threed/jpct/Mesh;->anzTri:I

    invoke-static {v10, v6, v11, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v10, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v10, v10, v9

    iget-object v11, v1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v11, v11, v9

    iget-object v12, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v12, v12, Lcom/threed/jpct/Mesh;->anzTri:I

    invoke-static {v10, v6, v11, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget-object v5, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    if-eqz v5, :cond_7

    iget-object v9, v1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v10, v9, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->nvOrg:[F

    iget-object v11, v1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v11, v11, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v12, v5, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v5, v5, Lcom/threed/jpct/Vectors;->nvOrg:[F

    iget-object v13, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v14, v13, Lcom/threed/jpct/Mesh;->coords:[I

    iget v13, v13, Lcom/threed/jpct/Mesh;->anzVectors:I

    move v15, v6

    :goto_5
    if-lt v15, v13, :cond_6

    goto :goto_6

    :cond_6
    add-int v16, v15, v3

    aget v17, v12, v15

    aput v17, v10, v16

    aget v17, v5, v15

    aput v17, v9, v16

    aget v17, v14, v15

    add-int v17, v17, v4

    aput v17, v11, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_7
    :goto_6
    iget-object v5, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    if-eqz v5, :cond_c

    iget v9, v5, Lcom/threed/jpct/Mesh;->anzTri:I

    iget-object v10, v1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v10, v10, Lcom/threed/jpct/Mesh;->points:[[I

    iget-object v5, v5, Lcom/threed/jpct/Mesh;->points:[[I

    move v11, v6

    :goto_7
    if-lt v11, v9, :cond_b

    iget-object v3, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v5, v3, Lcom/threed/jpct/Mesh;->anzCoords:I

    iget v7, v3, Lcom/threed/jpct/Mesh;->obbStart:I

    if-eqz v7, :cond_8

    move v12, v7

    goto :goto_8

    :cond_8
    move v12, v5

    :goto_8
    iget-object v5, v1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v5, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v14, v5, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v15, v5, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v7, v5, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v8, v5, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v5, v5, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget-object v9, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v10, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v11, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v6, v3, Lcom/threed/jpct/Mesh;->nxOrg:[F

    move-object/from16 v17, v5

    iget-object v5, v3, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->nzOrg:[F

    move-object/from16 v18, v3

    const/4 v3, 0x0

    :goto_9
    if-lt v3, v12, :cond_a

    iget-object v3, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v3, Lcom/threed/jpct/Mesh;->anzTri:I

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->texture:[I

    if-eqz v4, :cond_9

    iget-object v5, v1, Lcom/threed/jpct/Object3D;->texture:[I

    const/4 v6, 0x0

    invoke-static {v4, v6, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_9
    iget-object v1, v1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v2, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    iget-object v3, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v4, v3, Lcom/threed/jpct/Mesh;->anzTri:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    iget v2, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    add-int/2addr v2, v12

    iput v2, v1, Lcom/threed/jpct/Mesh;->anzCoords:I

    iget v2, v1, Lcom/threed/jpct/Mesh;->anzVectors:I

    iget v3, v3, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/threed/jpct/Mesh;->anzVectors:I

    goto :goto_a

    :cond_a
    add-int v19, v3, v4

    aget v20, v9, v3

    aput v20, v13, v19

    aget v20, v10, v3

    aput v20, v14, v19

    aget v20, v11, v3

    aput v20, v15, v19

    aget v20, v6, v3

    aput v20, v7, v19

    aget v20, v5, v3

    aput v20, v8, v19

    aget v20, v18, v3

    aput v20, v17, v19

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_b
    move-object/from16 v17, v5

    add-int v5, v11, v2

    aget-object v5, v10, v5

    aget-object v6, v17, v11

    const/4 v12, 0x0

    aget v13, v6, v12

    add-int/2addr v13, v3

    aput v13, v5, v12

    aget v13, v6, v7

    add-int/2addr v13, v3

    aput v13, v5, v7

    aget v6, v6, v8

    add-int/2addr v6, v3

    aput v6, v5, v8

    add-int/lit8 v11, v11, 0x1

    move v6, v12

    move-object/from16 v5, v17

    goto/16 :goto_7

    :cond_c
    :goto_a
    return-void
.end method

.method private final checkPointInTriangle(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FFFFFFFFF)Z
    .locals 18

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    sub-float v2, p6, p3

    sub-float v3, p7, p4

    sub-float v4, p8, p5

    sub-float v5, p9, p3

    sub-float v6, p10, p4

    sub-float v7, p11, p5

    iget v8, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v9, v8, v7

    iget v10, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v11, v10, v6

    sub-float/2addr v9, v11

    mul-float v11, v10, v5

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v7, v0

    sub-float/2addr v11, v7

    mul-float/2addr v6, v0

    mul-float/2addr v5, v8

    sub-float/2addr v6, v5

    mul-float v5, v2, v9

    mul-float v7, v3, v11

    add-float/2addr v5, v7

    mul-float v7, v4, v6

    add-float/2addr v5, v7

    const v7, 0x233877aa    # 1.0E-17f

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v5, v7, v5

    iget v12, v1, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v12, v12, p3

    iget v13, v1, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v13, v13, p4

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v1, v1, p5

    mul-float/2addr v9, v12

    mul-float/2addr v11, v13

    add-float/2addr v9, v11

    mul-float/2addr v6, v1

    add-float/2addr v9, v6

    mul-float/2addr v9, v5

    float-to-double v14, v9

    const-wide/16 v16, 0x0

    cmpl-double v6, v14, v16

    if-ltz v6, :cond_0

    cmpg-float v6, v9, v7

    if-gtz v6, :cond_0

    mul-float v6, v13, v4

    mul-float v7, v1, v3

    sub-float/2addr v6, v7

    mul-float/2addr v1, v2

    mul-float/2addr v4, v12

    sub-float/2addr v1, v4

    mul-float/2addr v12, v3

    mul-float/2addr v13, v2

    sub-float/2addr v12, v13

    mul-float/2addr v0, v6

    mul-float/2addr v8, v1

    add-float/2addr v0, v8

    mul-float/2addr v10, v12

    add-float/2addr v0, v10

    mul-float/2addr v0, v5

    float-to-double v1, v0

    cmpl-double v1, v1, v16

    if-ltz v1, :cond_0

    add-float/2addr v9, v0

    float-to-double v0, v9

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private checkWorld()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-nez v0, :cond_0

    const-string v0, "Object has to be assigned to a world for doing collision detection!"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private final collide([F[FFFZ)F
    .locals 33

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/Object3D;->createCollisionArrays()V

    .line 3
    sget v1, Lcom/threed/jpct/Config;->collideOffset:F

    .line 4
    iget-boolean v2, v0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    if-eqz p5, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    add-float v2, v2, p3

    cmpg-float v3, v2, v1

    if-gez v3, :cond_0

    move v1, v2

    .line 5
    :cond_0
    iget-object v2, v0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v2}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v2

    .line 6
    iget-object v2, v2, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v3, 0x0

    aget-object v4, v2, v3

    aget v5, v4, v3

    const/4 v6, 0x1

    .line 7
    aget-object v7, v2, v6

    aget v8, v7, v3

    .line 8
    aget v9, v7, v6

    const/4 v10, 0x2

    .line 9
    aget-object v11, v2, v10

    aget v12, v11, v6

    .line 10
    aget v13, v11, v3

    .line 11
    aget v14, v4, v6

    .line 12
    aget v11, v11, v10

    .line 13
    aget v7, v7, v10

    .line 14
    aget v4, v4, v10

    const/4 v15, 0x3

    .line 15
    aget-object v2, v2, v15

    aget v15, v2, v3

    .line 16
    aget v16, v2, v6

    .line 17
    aget v2, v2, v10

    .line 18
    sget-object v17, Lcom/threed/jpct/Object3D;->dirCol:[F

    aget v18, p2, v3

    mul-float v18, v18, v5

    aget v19, p2, v6

    mul-float v20, v19, v8

    add-float v18, v18, v20

    aget v20, p2, v10

    mul-float v21, v20, v13

    add-float v18, v18, v21

    aput v18, v17, v3

    .line 19
    aget v18, p2, v3

    mul-float v21, v18, v14

    mul-float v19, v19, v9

    add-float v21, v21, v19

    mul-float v19, v20, v12

    add-float v21, v21, v19

    aput v21, v17, v6

    mul-float v18, v18, v4

    .line 20
    aget v19, p2, v6

    mul-float v19, v19, v7

    add-float v18, v18, v19

    mul-float v20, v20, v11

    add-float v18, v18, v20

    aput v18, v17, v10

    .line 21
    aget v17, p1, v3

    mul-float v5, v5, v17

    aget v18, p1, v6

    mul-float v8, v8, v18

    add-float/2addr v5, v8

    aget v8, p1, v10

    mul-float/2addr v13, v8

    add-float/2addr v5, v13

    add-float/2addr v5, v15

    mul-float v14, v14, v17

    mul-float v9, v9, v18

    add-float/2addr v14, v9

    mul-float/2addr v12, v8

    add-float/2addr v14, v12

    add-float v14, v14, v16

    mul-float v17, v17, v4

    mul-float v18, v18, v7

    add-float v17, v17, v18

    mul-float/2addr v8, v11

    add-float v17, v17, v8

    add-float v17, v17, v2

    .line 22
    sget-object v2, Lcom/threed/jpct/Object3D;->origCol:[F

    aput v5, v2, v3

    .line 23
    aput v14, v2, v6

    .line 24
    aput v17, v2, v10

    .line 25
    iget-object v2, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    const v4, 0x5368d4a5    # 1.0E12f

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/threed/jpct/OcTree;->getCollisionUse()Z

    move-result v2

    if-eqz v2, :cond_1

    add-float v2, p4, p3

    .line 26
    iget-object v8, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    sget-object v9, Lcom/threed/jpct/Object3D;->origCol:[F

    aget v11, v9, v3

    aget v12, v9, v6

    aget v9, v9, v10

    invoke-virtual {v8}, Lcom/threed/jpct/OcTree;->getRadiusMultiplier()F

    move-result v13

    mul-float/2addr v2, v13

    invoke-virtual {v8, v11, v12, v9, v2}, Lcom/threed/jpct/OcTree;->getColliderLeafs(FFFF)[Ljava/lang/Object;

    move-result-object v2

    .line 27
    aget-object v8, v2, v3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_2

    return v4

    :cond_1
    move v8, v3

    const/4 v2, 0x0

    .line 28
    :cond_2
    iget-object v9, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v9, v9, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 29
    iget-object v11, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/threed/jpct/OcTree;->getCollisionUse()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 30
    aget-object v2, v2, v6

    check-cast v2, [Lcom/threed/jpct/OcTreeNode;

    move v11, v6

    goto :goto_0

    :cond_3
    move v11, v3

    const/4 v2, 0x0

    .line 31
    :goto_0
    iget-object v12, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v13, v12, Lcom/threed/jpct/Mesh;->coords:[I

    .line 32
    iget-object v15, v12, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 33
    iget-object v7, v12, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 34
    iget-object v12, v12, Lcom/threed/jpct/Mesh;->zOrg:[F

    move/from16 v18, v3

    move/from16 v21, v18

    move/from16 v19, v4

    move/from16 v16, v9

    const/4 v9, 0x0

    const/16 v20, -0x1

    :goto_1
    if-eqz v11, :cond_4

    .line 35
    aget-object v9, v2, v18

    invoke-virtual {v9}, Lcom/threed/jpct/OcTreeNode;->getPolygons()[I

    move-result-object v9

    .line 36
    aget-object v16, v2, v18

    invoke-virtual/range {v16 .. v16}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v16

    add-int/lit8 v18, v18, 0x1

    :cond_4
    move/from16 v6, v16

    move/from16 v22, v18

    .line 37
    iget-object v10, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v10, v10, Lcom/threed/jpct/Mesh;->points:[[I

    mul-float v18, v1, v1

    move v4, v3

    :goto_2
    if-lt v4, v6, :cond_5

    move/from16 v28, v1

    move-object/from16 p2, v2

    move/from16 v24, v3

    move/from16 p5, v5

    move/from16 v25, v6

    move/from16 v1, v20

    const/16 v16, 0x2

    const/16 v29, 0x1

    const v31, 0x5368d4a5    # 1.0E12f

    goto/16 :goto_8

    :cond_5
    if-eqz v11, :cond_6

    .line 38
    aget v23, v9, v4

    goto :goto_3

    :cond_6
    move/from16 v23, v4

    .line 39
    :goto_3
    aget-object v24, v10, v23

    .line 40
    aget v25, v24, v3

    aget v25, v13, v25

    .line 41
    aget v26, v15, v25

    .line 42
    aget v27, v7, v25

    .line 43
    aget v25, v12, v25

    sub-float v28, v26, v5

    sub-float v29, v27, v14

    sub-float v30, v25, v17

    const v31, 0x5368d4a5    # 1.0E12f

    cmpl-float v32, p4, v31

    if-eqz v32, :cond_7

    mul-float v28, v28, v28

    cmpg-float v28, v28, v18

    if-gtz v28, :cond_8

    mul-float v29, v29, v29

    cmpg-float v28, v29, v18

    if-gtz v28, :cond_8

    mul-float v30, v30, v30

    cmpg-float v28, v30, v18

    if-gtz v28, :cond_8

    :cond_7
    const/16 v16, 0x2

    goto :goto_5

    :cond_8
    move/from16 v28, v1

    move-object/from16 p2, v2

    move/from16 v24, v3

    move/from16 p5, v5

    move/from16 v25, v6

    const/16 v16, 0x2

    :goto_4
    const/16 v29, 0x1

    goto/16 :goto_7

    .line 44
    :goto_5
    aget v28, v24, v16

    aget v28, v13, v28

    const/16 v29, 0x1

    .line 45
    aget v24, v24, v29

    aget v24, v13, v24

    .line 46
    sget-object v30, Lcom/threed/jpct/Object3D;->edge1Col:[F

    aget v32, v15, v24

    sub-float v32, v32, v26

    aput v32, v30, v3

    .line 47
    aget v32, v7, v24

    sub-float v32, v32, v27

    aput v32, v30, v29

    .line 48
    aget v24, v12, v24

    sub-float v24, v24, v25

    const/16 v16, 0x2

    aput v24, v30, v16

    .line 49
    sget-object v3, Lcom/threed/jpct/Object3D;->edge2Col:[F

    aget v30, v15, v28

    sub-float v30, v30, v26

    const/16 v24, 0x0

    aput v30, v3, v24

    .line 50
    aget v30, v7, v28

    sub-float v30, v30, v27

    aput v30, v3, v29

    .line 51
    aget v28, v12, v28

    sub-float v28, v28, v25

    aput v28, v3, v16

    move/from16 v28, v1

    .line 52
    sget-object v1, Lcom/threed/jpct/Object3D;->pvecCol:[F

    move-object/from16 p2, v2

    sget-object v2, Lcom/threed/jpct/Object3D;->dirCol:[F

    invoke-static {v1, v2, v3}, Lcom/threed/jpct/MathUtils;->calcCross([F[F[F)V

    .line 53
    sget-object v1, Lcom/threed/jpct/Object3D;->edge1Col:[F

    sget-object v2, Lcom/threed/jpct/Object3D;->pvecCol:[F

    invoke-static {v1, v2}, Lcom/threed/jpct/MathUtils;->calcDot([F[F)F

    move-result v1

    const v2, 0x3089705f    # 1.0E-9f

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_c

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    .line 54
    sget-object v3, Lcom/threed/jpct/Object3D;->tvecCol:[F

    sub-float v26, v5, v26

    const/16 v24, 0x0

    aput v26, v3, v24

    sub-float v26, v14, v27

    const/16 v29, 0x1

    .line 55
    aput v26, v3, v29

    sub-float v25, v17, v25

    const/16 v16, 0x2

    .line 56
    aput v25, v3, v16

    .line 57
    sget-object v2, Lcom/threed/jpct/Object3D;->pvecCol:[F

    invoke-static {v3, v2}, Lcom/threed/jpct/MathUtils;->calcDot([F[F)F

    move-result v2

    mul-float/2addr v2, v1

    move v3, v5

    move/from16 v25, v6

    float-to-double v5, v2

    const-wide/16 v26, 0x0

    cmpl-double v5, v5, v26

    if-ltz v5, :cond_b

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_b

    .line 58
    sget-object v5, Lcom/threed/jpct/Object3D;->qvecCol:[F

    sget-object v6, Lcom/threed/jpct/Object3D;->tvecCol:[F

    move/from16 p5, v3

    sget-object v3, Lcom/threed/jpct/Object3D;->edge1Col:[F

    invoke-static {v5, v6, v3}, Lcom/threed/jpct/MathUtils;->calcCross([F[F[F)V

    .line 59
    sget-object v3, Lcom/threed/jpct/Object3D;->dirCol:[F

    sget-object v5, Lcom/threed/jpct/Object3D;->qvecCol:[F

    invoke-static {v3, v5}, Lcom/threed/jpct/MathUtils;->calcDot([F[F)F

    move-result v3

    mul-float/2addr v3, v1

    float-to-double v5, v3

    cmpl-double v5, v5, v26

    if-ltz v5, :cond_d

    add-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v2, v5

    if-gtz v2, :cond_d

    .line 60
    sget-object v2, Lcom/threed/jpct/Object3D;->edge2Col:[F

    sget-object v3, Lcom/threed/jpct/Object3D;->qvecCol:[F

    invoke-static {v2, v3}, Lcom/threed/jpct/MathUtils;->calcDot([F[F)F

    move-result v2

    mul-float/2addr v2, v1

    cmpg-float v1, v2, p3

    const/4 v3, 0x0

    if-gez v1, :cond_9

    cmpl-float v1, v2, v3

    if-ltz v1, :cond_9

    move/from16 v19, v2

    move/from16 v20, v23

    move/from16 v1, v29

    goto :goto_6

    :cond_9
    cmpg-float v1, v2, v19

    if-gez v1, :cond_a

    cmpl-float v1, v2, v3

    if-ltz v1, :cond_a

    move/from16 v19, v2

    move/from16 v20, v23

    :cond_a
    move/from16 v1, v24

    :goto_6
    move/from16 v21, v1

    goto :goto_7

    :cond_b
    move/from16 p5, v3

    goto :goto_7

    :cond_c
    move/from16 p5, v5

    move/from16 v25, v6

    const/16 v16, 0x2

    const/16 v24, 0x0

    goto/16 :goto_4

    :cond_d
    :goto_7
    if-eqz v21, :cond_11

    move/from16 v1, v20

    :goto_8
    if-eqz v11, :cond_e

    move/from16 v2, v22

    if-lt v2, v8, :cond_f

    :cond_e
    const/4 v3, -0x1

    goto :goto_9

    :cond_f
    move/from16 v5, p5

    move/from16 v20, v1

    move/from16 v18, v2

    move/from16 v10, v16

    move/from16 v3, v24

    move/from16 v16, v25

    move/from16 v1, v28

    move/from16 v4, v31

    move-object/from16 v2, p2

    goto/16 :goto_1

    :goto_9
    if-eq v1, v3, :cond_10

    .line 61
    invoke-direct {v0, v1}, Lcom/threed/jpct/Object3D;->addPolygonID(I)V

    :cond_10
    return v19

    :cond_11
    move/from16 v2, v22

    const/4 v3, -0x1

    add-int/lit8 v4, v4, 0x1

    move/from16 v5, p5

    move/from16 v3, v24

    move/from16 v6, v25

    move/from16 v1, v28

    move-object/from16 v2, p2

    goto/16 :goto_2
.end method

.method private compileInternal()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private copy(Lcom/threed/jpct/Object3D;Z)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v2, p2, Lcom/threed/jpct/Mesh;->nxOrg:[F

    if-nez v2, :cond_0

    const-string p1, "Can\'t use a mesh for a new object that has already been stripped!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    goto :goto_0

    :cond_1
    iget-object p2, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {p2, v0}, Lcom/threed/jpct/Mesh;->cloneMesh(Z)Lcom/threed/jpct/Mesh;

    move-result-object p2

    iput-object p2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    :goto_0
    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->hasVertexAlpha()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {p2}, Lcom/threed/jpct/Vectors;->createAlpha()V

    iget-object p2, p1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object p2, p2, Lcom/threed/jpct/Vectors;->alpha:[F

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v2, v2, Lcom/threed/jpct/Vectors;->alpha:[F

    array-length v3, p2

    invoke-static {p2, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object p2, p1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v2, p2, Lcom/threed/jpct/Vectors;->maxVectors:I

    move v3, v1

    :goto_1
    if-lt v3, v2, :cond_b

    iget-object v2, p1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v2, v2, Lcom/threed/jpct/Vectors;->uMul:[[F

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v2}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    iget-object v2, p2, Lcom/threed/jpct/Vectors;->uMul:[[F

    array-length v2, v2

    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v3, v3, Lcom/threed/jpct/Vectors;->uMul:[[F

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v1

    :goto_2
    if-lt v3, v2, :cond_3

    goto :goto_4

    :cond_3
    move v4, v1

    :goto_3
    iget-object v5, p1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v5, v5, Lcom/threed/jpct/Vectors;->maxVectors:I

    if-lt v4, v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v6, v5, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v6, v6, v3

    iget-object v7, p2, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v7, v7, v3

    aget v7, v7, v4

    aput v7, v6, v4

    iget-object v5, v5, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v5, v5, v3

    iget-object v6, p2, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v6, v6, v3

    aget v6, v6, v4

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    iget p2, p1, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    iput p2, p0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    iget-object p2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v2, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean v2, v2, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    iput-boolean v2, p2, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v2, p2}, Lcom/threed/jpct/Vectors;->setMesh(Lcom/threed/jpct/Mesh;)V

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->isTrans:Z

    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    iget p2, p1, Lcom/threed/jpct/Object3D;->transMode:I

    iput p2, p0, Lcom/threed/jpct/Object3D;->transMode:I

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->isVisible:Z

    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->isVisible:Z

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->isStatic:Z

    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->isStatic:Z

    iget-object p2, p1, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iput-object p2, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget p2, p1, Lcom/threed/jpct/Object3D;->lowestPos:I

    iput p2, p0, Lcom/threed/jpct/Object3D;->lowestPos:I

    iget p2, p1, Lcom/threed/jpct/Object3D;->highestPos:I

    iput p2, p0, Lcom/threed/jpct/Object3D;->highestPos:I

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    iget p2, p1, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    iput p2, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->skipPivot:Z

    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    iget-object p2, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-nez p2, :cond_6

    sget p2, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr p2, v0

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v2, v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput v2, v4, v0

    aput p2, v4, v1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    sget v2, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v2, v0

    iget-object v4, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v4, v4

    new-array v3, v3, [I

    aput v4, v3, v0

    aput v2, v3, v1

    invoke-static {p2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    iput-object p2, p0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    :cond_6
    iget-object p2, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length p2, p2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v0, v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v0, v1

    :goto_5
    if-lt v0, p2, :cond_9

    move v2, p2

    :goto_6
    iget-object p2, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v0, p2

    if-lt v2, v0, :cond_7

    goto :goto_8

    :cond_7
    aget-object p2, p2, v2

    array-length v3, p2

    move p2, v1

    :goto_7
    if-lt p2, v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v0, v0, v2

    const/4 v4, -0x1

    aput v4, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_9
    iget-object v2, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v3, v3, v0

    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v3, v3, v0

    array-length v4, v2

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_a
    :goto_8
    iget-object p2, p1, Lcom/threed/jpct/Object3D;->texture:[I

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p1, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p2, p1, Lcom/threed/jpct/Object3D;->transValue:I

    iput p2, p0, Lcom/threed/jpct/Object3D;->transValue:I

    iget p2, p1, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iput p2, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget p2, p1, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iput p2, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iget p2, p1, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    iput p2, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    iget p2, p1, Lcom/threed/jpct/Object3D;->centerX:F

    iput p2, p0, Lcom/threed/jpct/Object3D;->centerX:F

    iget p2, p1, Lcom/threed/jpct/Object3D;->centerY:F

    iput p2, p0, Lcom/threed/jpct/Object3D;->centerY:F

    iget p2, p1, Lcom/threed/jpct/Object3D;->centerZ:F

    iput p2, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    iget p2, p1, Lcom/threed/jpct/Object3D;->addColorR:I

    iput p2, p0, Lcom/threed/jpct/Object3D;->addColorR:I

    iget p2, p1, Lcom/threed/jpct/Object3D;->addColorG:I

    iput p2, p0, Lcom/threed/jpct/Object3D;->addColorG:I

    iget p2, p1, Lcom/threed/jpct/Object3D;->addColorB:I

    iput p2, p0, Lcom/threed/jpct/Object3D;->addColorB:I

    iget-object p2, p1, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    iput-object p2, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    iget-object p2, p1, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p2}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object p2

    iput-object p2, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    iget-object p2, p1, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p2}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object p2

    iput-object p2, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object p2, p1, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p2}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object p2

    iput-object p2, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget-boolean p2, p1, Lcom/threed/jpct/Object3D;->doCulling:Z

    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->doCulling:Z

    iget-object p2, p1, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    iput-object p2, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    iget-object p2, p1, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    iput-object p2, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    iget-boolean p1, p1, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    return-void

    :cond_b
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v5, v4, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v6, p2, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v6, v6, v3

    aput v6, v5, v3

    iget-object v4, v4, Lcom/threed/jpct/Vectors;->nvOrg:[F

    iget-object v5, p2, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v5, v5, v3

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method private createCollisionArrays()V
    .locals 2

    sget-object v0, Lcom/threed/jpct/Object3D;->dirCol:[F

    if-nez v0, :cond_0

    const/4 v0, 0x3

    new-array v1, v0, [F

    sput-object v1, Lcom/threed/jpct/Object3D;->dirCol:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/threed/jpct/Object3D;->origCol:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/threed/jpct/Object3D;->pvecCol:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/threed/jpct/Object3D;->tvecCol:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/threed/jpct/Object3D;->qvecCol:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/threed/jpct/Object3D;->edge1Col:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/threed/jpct/Object3D;->edge2Col:[F

    new-array v1, v0, [F

    sput-object v1, Lcom/threed/jpct/Object3D;->dirColParam:[F

    new-array v0, v0, [F

    sput-object v0, Lcom/threed/jpct/Object3D;->origColParam:[F

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    if-nez v0, :cond_1

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    new-instance v0, Lcom/threed/jpct/Plane;

    invoke-direct {v0}, Lcom/threed/jpct/Plane;-><init>()V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    const/4 v0, 0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->newT:[F

    :cond_1
    return-void
.end method

.method public static createDummyObj()Lcom/threed/jpct/Object3D;
    .locals 2

    new-instance v0, Lcom/threed/jpct/Object3D;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/threed/jpct/Object3D;-><init>(I)V

    return-object v0
.end method

.method private fillTransformedCenter(Lcom/threed/jpct/SimpleVector;)V
    .locals 7

    iget v1, p0, Lcom/threed/jpct/Object3D;->centerX:F

    iget v2, p0, Lcom/threed/jpct/Object3D;->centerY:F

    iget v3, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    const/4 v5, 0x0

    sget-object v6, Lcom/threed/jpct/Object3D;->mat71:Lcom/threed/jpct/Matrix;

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Object3D;->getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V

    return-void
.end method

.method private final getLowestRoot(FFFF[F)Z
    .locals 5

    mul-float v0, p2, p2

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    mul-float/2addr v1, p3

    sub-float/2addr v0, v1

    const/4 p3, 0x0

    cmpg-float v1, v0, p3

    const/4 v2, 0x0

    if-gez v1, :cond_0

    return v2

    :cond_0
    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    neg-float p2, p2

    sub-float v1, p2, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p1, v3

    div-float/2addr v1, p1

    add-float/2addr p2, v0

    div-float/2addr p2, p1

    cmpl-float p1, v1, p2

    if-lez p1, :cond_1

    move v4, v1

    move v1, p2

    move p2, v4

    :cond_1
    cmpl-float p1, v1, p3

    const/4 v0, 0x1

    if-lez p1, :cond_2

    cmpg-float p1, v1, p4

    if-gez p1, :cond_2

    aput v1, p5, v2

    return v0

    :cond_2
    cmpl-float p1, p2, p3

    if-lez p1, :cond_3

    cmpg-float p1, p2, p4

    if-gez p1, :cond_3

    aput p2, p5, v2

    return v0

    :cond_3
    return v2
.end method

.method public static getNextID()I
    .locals 1

    sget v0, Lcom/threed/jpct/Object3D;->nextID:I

    return v0
.end method

.method private getSquaredDistance(Lcom/threed/jpct/SimpleVector;FFF)F
    .locals 1

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    neg-float v0, v0

    add-float/2addr v0, p2

    iget p2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    neg-float p2, p2

    add-float/2addr p2, p3

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    neg-float p1, p1

    add-float/2addr p1, p4

    mul-float/2addr v0, v0

    mul-float/2addr p2, p2

    add-float/2addr v0, p2

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    return v0
.end method

.method private getTmpMatrix(I)Lcom/threed/jpct/Matrix;
    .locals 6

    sget-object v0, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-nez v0, :cond_0

    new-array v0, v3, [Lcom/threed/jpct/Matrix;

    sput-object v0, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    new-instance v5, Lcom/threed/jpct/Matrix;

    invoke-direct {v5}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v5, v0, v2

    sget-object v0, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    new-instance v5, Lcom/threed/jpct/Matrix;

    invoke-direct {v5}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v5, v0, v1

    sget-object v0, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    new-instance v5, Lcom/threed/jpct/Matrix;

    invoke-direct {v5}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v5, v0, v4

    :cond_0
    sget-object v0, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v5, Lcom/threed/jpct/World;->defaultThread:Ljava/lang/Thread;

    if-eq v0, v5, :cond_2

    sget-object v0, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    if-nez v0, :cond_2

    const-string v0, "Creating new matrix cache!"

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_1

    new-array v0, v3, [Lcom/threed/jpct/Matrix;

    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v3, v0, v2

    new-instance v2, Lcom/threed/jpct/Matrix;

    invoke-direct {v2}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v2, v0, v1

    new-instance v1, Lcom/threed/jpct/Matrix;

    invoke-direct {v1}, Lcom/threed/jpct/Matrix;-><init>()V

    aput-object v1, v0, v4

    sget-object v1, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    const-string v1, "Clearing matrix cache!"

    invoke-static {v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/threed/jpct/Object3D;->matrixThreadCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_1
    aget-object p1, v0, p1

    return-object p1

    :cond_2
    sget-object v0, Lcom/threed/jpct/Object3D;->matrixArray:[Lcom/threed/jpct/Matrix;

    aget-object p1, v0, p1

    return-object p1
.end method

.method private init(I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    mul-int/lit8 v0, p1, 0x3

    add-int/lit8 v0, v0, 0x8

    new-instance v2, Lcom/threed/jpct/Mesh;

    invoke-direct {v2, v0}, Lcom/threed/jpct/Mesh;-><init>(I)V

    iput-object v2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    new-instance v3, Lcom/threed/jpct/Vectors;

    invoke-direct {v3, v0, v2}, Lcom/threed/jpct/Vectors;-><init>(ILcom/threed/jpct/Mesh;)V

    iput-object v3, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->texture:[I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/threed/jpct/Mesh;

    invoke-direct {v0, v1}, Lcom/threed/jpct/Mesh;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    :goto_0
    sget v0, Lcom/threed/jpct/Config;->maxParentObjects:I

    new-array v0, v0, [Lcom/threed/jpct/Object3D;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->object3DRendered:Z

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v2}, Lcom/threed/jpct/Matrix;->setIdentity()V

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v2}, Lcom/threed/jpct/Matrix;->setIdentity()V

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v2}, Lcom/threed/jpct/Matrix;->setIdentity()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iput v2, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iput v2, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    iput v2, p0, Lcom/threed/jpct/Object3D;->centerX:F

    iput v2, p0, Lcom/threed/jpct/Object3D;->centerY:F

    iput v2, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    sget v2, Lcom/threed/jpct/Object3D;->nextID:I

    iput v2, p0, Lcom/threed/jpct/Object3D;->number:I

    add-int/2addr v2, v1

    sput v2, Lcom/threed/jpct/Object3D;->nextID:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "object"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/threed/jpct/Object3D;->number:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput v0, v2, Lcom/threed/jpct/Mesh;->anzTri:I

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->mayCollide:Z

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    iput-boolean v1, p0, Lcom/threed/jpct/Object3D;->isLit:Z

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    iput-object v2, p0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    iput v0, p0, Lcom/threed/jpct/Object3D;->transValue:I

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isStatic:Z

    iput-boolean v1, p0, Lcom/threed/jpct/Object3D;->isVisible:Z

    iput-boolean v1, p0, Lcom/threed/jpct/Object3D;->doCulling:Z

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->doSpecularLighting:Z

    iput v0, p0, Lcom/threed/jpct/Object3D;->addColorR:I

    iput v0, p0, Lcom/threed/jpct/Object3D;->addColorG:I

    iput v0, p0, Lcom/threed/jpct/Object3D;->addColorB:I

    new-instance p1, Lcom/threed/jpct/RGBColor;

    invoke-direct {p1}, Lcom/threed/jpct/RGBColor;-><init>()V

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    return-void
.end method

.method public static mergeAll([Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_1

    div-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v4, Lcom/threed/jpct/Object3D;

    invoke-direct {v4, v1}, Lcom/threed/jpct/Object3D;-><init>(I)V

    const/4 v1, 0x1

    :goto_1
    array-length v2, p0

    if-lt v0, v2, :cond_0

    iget-object p0, v4, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iput-boolean v1, p0, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    return-object v4

    :cond_0
    aget-object v2, p0, v0

    iget-object v3, v2, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean v3, v3, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    and-int/2addr v1, v3

    invoke-direct {v2, v4}, Lcom/threed/jpct/Object3D;->appendToObject(Lcom/threed/jpct/Object3D;)V

    const/4 v2, 0x0

    aput-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget-object v4, p0, v1

    iget-object v4, v4, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v5, v4, Lcom/threed/jpct/Mesh;->anzTri:I

    add-int/2addr v2, v5

    iget v4, v4, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static mergeObjects(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Object3D;)Lcom/threed/jpct/Object3D;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v2, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    iget-object v3, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v4, v3, Lcom/threed/jpct/Mesh;->anzTri:I

    add-int/2addr v2, v4

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzVectors:I

    iget v3, v3, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-instance v2, Lcom/threed/jpct/Object3D;

    invoke-direct {v2, v1}, Lcom/threed/jpct/Object3D;-><init>(I)V

    invoke-direct {p0, v2}, Lcom/threed/jpct/Object3D;->appendToObject(Lcom/threed/jpct/Object3D;)V

    invoke-direct {p1, v2}, Lcom/threed/jpct/Object3D;->appendToObject(Lcom/threed/jpct/Object3D;)V

    iget-object v1, v2, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object p0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean p0, p0, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean p0, p0, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    return-object v2

    :cond_1
    const-string p0, "Can\'t merge null!"

    invoke-static {p0, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private final recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 13

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/threed/jpct/Object3D;->getTmpMatrix(I)Lcom/threed/jpct/Matrix;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-lt v3, v4, :cond_0

    return-object p1

    :cond_0
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    aget-object v4, v4, v3

    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    iget-object v5, v4, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget-object v5, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v6, 0x3

    aget-object v5, v5, v6

    aget v7, v5, v2

    const/4 v8, 0x1

    aget v9, v5, v8

    aget v5, v5, v0

    iget-object v10, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v10, v10, v6

    iget v11, v4, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    neg-float v11, v11

    sub-float/2addr v11, v7

    aput v11, v10, v2

    iget v11, v4, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    neg-float v11, v11

    sub-float/2addr v11, v9

    aput v11, v10, v8

    iget v11, v4, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    neg-float v11, v11

    sub-float/2addr v11, v5

    aput v11, v10, v0

    invoke-virtual {p1, v1}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    iget-object v10, v4, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1, v10}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    iget-object v10, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v10, v10, v6

    iget v11, v4, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget-object v12, v4, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v12, v12, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v6, v12, v6

    aget v12, v6, v2

    add-float/2addr v11, v12

    add-float/2addr v11, v7

    aput v11, v10, v2

    iget v7, v4, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    aget v11, v6, v8

    add-float/2addr v7, v11

    add-float/2addr v7, v9

    aput v7, v10, v8

    iget v7, v4, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    aget v6, v6, v0

    add-float/2addr v7, v6

    add-float/2addr v7, v5

    aput v7, v10, v0

    invoke-virtual {p1, v1}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    iget v5, v4, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-eqz v5, :cond_1

    invoke-direct {v4, p1}, Lcom/threed/jpct/Object3D;->recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private final recurseObjectsBillboarded(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 13

    invoke-virtual {p1}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/threed/jpct/Object3D;->recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object p1

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/threed/jpct/Object3D;->recurseScaling(F)F

    move-result v1

    invoke-virtual {p1}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v2

    invoke-virtual {v2}, Lcom/threed/jpct/Matrix;->invert3x3()Lcom/threed/jpct/Matrix;

    move-result-object v2

    iget-object v3, v2, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v4, 0x3

    aget-object v3, v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v3, v5

    const/4 v7, 0x1

    aput v6, v3, v7

    const/4 v8, 0x2

    aput v6, v3, v8

    const/high16 v9, 0x3f800000    # 1.0f

    aput v9, v3, v4

    new-instance v3, Lcom/threed/jpct/Matrix;

    invoke-direct {v3}, Lcom/threed/jpct/Matrix;-><init>()V

    iget-object v10, v3, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v10, v10, v4

    iget-object v11, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v11, v11, v4

    aget v12, v11, v5

    neg-float v12, v12

    aput v12, v10, v5

    aget v12, v11, v7

    neg-float v12, v12

    aput v12, v10, v7

    aget v11, v11, v8

    neg-float v11, v11

    aput v11, v10, v8

    invoke-virtual {p1, v3}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    invoke-virtual {p1, v2}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    iget-object v2, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v2, v2, v4

    aput v6, v2, v5

    aput v6, v2, v7

    aput v6, v2, v8

    aput v9, v2, v4

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    iget-object v0, v3, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v0, v0, v4

    aget v2, v0, v5

    neg-float v2, v2

    aput v2, v0, v5

    aget v2, v0, v7

    neg-float v2, v2

    aput v2, v0, v7

    aget v2, v0, v8

    neg-float v2, v2

    aput v2, v0, v8

    invoke-virtual {p1, v3}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v0

    mul-float/2addr v1, v0

    div-float/2addr v9, v1

    invoke-virtual {p1, v9}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    return-object p1
.end method

.method private final recurseScaling(F)F
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v2

    mul-float/2addr p1, v2

    iget v2, v1, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-eqz v2, :cond_1

    invoke-direct {v1, p1}, Lcom/threed/jpct/Object3D;->recurseScaling(F)F

    move-result p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static resetNextID()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/threed/jpct/Object3D;->nextID:I

    return-void
.end method

.method public static setNextID(I)V
    .locals 1

    sget v0, Lcom/threed/jpct/Object3D;->nextID:I

    if-lt p0, v0, :cond_0

    sput p0, Lcom/threed/jpct/Object3D;->nextID:I

    goto :goto_0

    :cond_0
    const-string p0, "The next ID can\'t be lower than the current one"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addChild(Lcom/threed/jpct/Object3D;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/threed/jpct/Object3D;->addParent(Lcom/threed/jpct/Object3D;)V

    goto :goto_0

    :cond_0
    const-string p1, "Tried to assign a non-existent Object3D as child!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public declared-synchronized addCollisionListener(Lcom/threed/jpct/CollisionListener;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget p1, Lcom/threed/jpct/Object3D;->globalListenerCount:I

    add-int/2addr p1, v1

    sput p1, Lcom/threed/jpct/Object3D;->globalListenerCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final addCompiled(Lcom/threed/jpct/CompiledInstance;)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addMD2Triangle(IFFIFFIFF)I
    .locals 14

    move-object v0, p0

    move v1, p1

    move/from16 v2, p7

    iget-object v3, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v4, v3, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/lit8 v5, v4, 0x3

    iget v6, v3, Lcom/threed/jpct/Mesh;->maxVectors:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ge v5, v6, :cond_6

    iget v5, v3, Lcom/threed/jpct/Mesh;->anzTri:I

    iget-object v6, v3, Lcom/threed/jpct/Mesh;->coords:[I

    aput v1, v6, v4

    iget-object v9, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v10, v9, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aput p2, v10, v4

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aput p3, v9, v4

    add-int/lit8 v11, v4, 0x1

    iput v11, v3, Lcom/threed/jpct/Mesh;->anzVectors:I

    iget-object v12, v3, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v12, v12, v5

    aput v4, v12, v8

    aput p4, v6, v11

    aput p5, v10, v11

    aput p6, v9, v11

    add-int/lit8 v13, v4, 0x2

    iput v13, v3, Lcom/threed/jpct/Mesh;->anzVectors:I

    aput v11, v12, v7

    aput v2, v6, v13

    aput p8, v10, v13

    aput p9, v9, v13

    add-int/lit8 v4, v4, 0x3

    iput v4, v3, Lcom/threed/jpct/Mesh;->anzVectors:I

    iget v4, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    if-ge v2, v4, :cond_0

    iput v2, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    :cond_0
    iget v4, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    if-ge v11, v4, :cond_1

    iput v11, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    :cond_1
    iget v4, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    if-ge v1, v4, :cond_2

    iput v1, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    :cond_2
    iget v4, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    if-le v2, v4, :cond_3

    iput v2, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    :cond_3
    iget v2, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    if-le v11, v2, :cond_4

    iput v11, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    :cond_4
    iget v2, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    if-le v1, v2, :cond_5

    iput v1, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    :cond_5
    const/4 v1, 0x2

    aput v13, v12, v1

    iget-object v1, v0, Lcom/threed/jpct/Object3D;->texture:[I

    aput v8, v1, v5

    add-int/2addr v5, v7

    iput v5, v3, Lcom/threed/jpct/Mesh;->anzTri:I

    goto :goto_0

    :cond_6
    const-string v1, "Polygon index out of range - object is too large!"

    invoke-static {v1, v8}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    sub-int/2addr v1, v7

    return v1
.end method

.method public addParent(Lcom/threed/jpct/Object3D;)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    const-string p1, "An object can\'t be its own parent!"

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    iget v2, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    sget v3, Lcom/threed/jpct/Config;->maxParentObjects:I

    if-ge v2, v3, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    aput-object p1, v1, v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t assign more than "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/threed/jpct/Config;->maxParentObjects:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " objects as parent objects in the current Configuration!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string p1, "Tried to assign a nonexistent object as parent!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public final addTriangle(FFFFFFFFF)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    .line 2
    invoke-virtual/range {v0 .. v18}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v0

    return v0
.end method

.method public final addTriangle(FFFFFFFFFFFFFFF)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, -0x1

    .line 4
    invoke-virtual/range {v0 .. v18}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v0

    return v0
.end method

.method public final addTriangle(FFFFFFFFFFFFFFFI)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 6
    invoke-virtual/range {v0 .. v18}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v0

    return v0
.end method

.method public final addTriangle(FFFFFFFFFFFFFFFIIZ)I
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    const/16 v19, 0x0

    .line 9
    invoke-virtual/range {v0 .. v19}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[I)I

    move-result v0

    return v0
.end method

.method public final addTriangle(FFFFFFFFFFFFFFFIIZ[I)I
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-object/from16 v19, p19

    const/16 v20, 0x0

    .line 10
    invoke-virtual/range {v0 .. v20}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[ILcom/threed/jpct/TextureInfo;)I

    move-result v0

    return v0
.end method

.method public final addTriangle(FFFFFFFFFFFFFFFIIZ[ILcom/threed/jpct/TextureInfo;)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    move-object/from16 v10, p20

    .line 11
    const-string v11, "Polygon index out of range - object is too large!"

    const/4 v12, 0x2

    const/4 v15, 0x1

    if-eqz v10, :cond_4

    .line 12
    :try_start_0
    iget-object v13, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-nez v13, :cond_2

    iget v13, v10, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    if-le v13, v15, :cond_2

    .line 13
    sget v13, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v13, v15

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v14, v14
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v16, v11

    :try_start_1
    new-array v11, v12, [I

    aput v14, v11, v15
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v14, 0x0

    :try_start_2
    aput v13, v11, v14
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[I

    iput-object v11, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 14
    sget v11, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v11, v15

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v14, v14

    new-array v7, v12, [I

    aput v14, v7, v15
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v14, 0x0

    :try_start_4
    aput v11, v7, v14
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    invoke-static {v13, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    iput-object v7, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    const/4 v7, 0x0

    .line 15
    :goto_0
    iget-object v11, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v11, v11

    if-lt v7, v11, :cond_0

    .line 16
    iget-object v7, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v7}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    .line 17
    iput-boolean v15, v0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    goto :goto_4

    :catch_0
    move-object/from16 v1, v16

    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_16

    :cond_0
    const/4 v11, 0x0

    .line 18
    :goto_2
    sget v13, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v13, v15

    if-lt v11, v13, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 19
    :cond_1
    iget-object v13, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v13, v13, v11

    const/4 v14, -0x1

    aput v14, v13, v7

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :catch_1
    move v2, v14

    :goto_3
    move-object/from16 v1, v16

    goto/16 :goto_16

    :catch_2
    move-object v1, v11

    goto :goto_1

    :cond_2
    move-object/from16 v16, v11

    .line 20
    :goto_4
    iget-object v7, v10, Lcom/threed/jpct/TextureInfo;->u0:[F
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v11, 0x0

    :try_start_6
    aget v7, v7, v11

    .line 21
    iget-object v13, v10, Lcom/threed/jpct/TextureInfo;->v0:[F

    aget v13, v13, v11

    .line 22
    iget-object v14, v10, Lcom/threed/jpct/TextureInfo;->u1:[F

    aget v14, v14, v11

    .line 23
    iget-object v12, v10, Lcom/threed/jpct/TextureInfo;->v1:[F

    aget v12, v12, v11

    .line 24
    iget-object v15, v10, Lcom/threed/jpct/TextureInfo;->u2:[F

    aget v15, v15, v11

    move/from16 p4, v7

    .line 25
    iget-object v7, v10, Lcom/threed/jpct/TextureInfo;->v2:[F

    aget v7, v7, v11

    move/from16 p5, v7

    .line 26
    iget-object v7, v10, Lcom/threed/jpct/TextureInfo;->textures:[I

    aget v7, v7, v11
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3

    .line 27
    :try_start_7
    iget v11, v0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    move/from16 p9, v7

    iget v7, v10, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    if-ge v11, v7, :cond_3

    .line 28
    iput v7, v0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    :cond_3
    move/from16 v7, p4

    move/from16 p4, p5

    move/from16 v11, p9

    move/from16 p5, v15

    goto :goto_5

    :catch_3
    move v2, v11

    goto :goto_3

    :cond_4
    move-object/from16 v16, v11

    move/from16 v7, p4

    move/from16 v13, p5

    move/from16 v14, p9

    move/from16 v12, p10

    move/from16 p5, p14

    move/from16 p4, p15

    move/from16 v11, p16

    .line 29
    :goto_5
    iget-boolean v15, v0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    if-eqz v15, :cond_5

    if-eqz v10, :cond_5

    const/4 v8, -0x1

    const/4 v15, 0x1

    goto :goto_6

    :cond_5
    const/4 v8, -0x1

    const/4 v15, 0x0

    :goto_6
    if-ne v11, v8, :cond_6

    const/4 v11, 0x0

    .line 30
    :cond_6
    iget-object v8, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move/from16 p9, v11

    iget v11, v8, Lcom/threed/jpct/Mesh;->anzVectors:I

    add-int/lit8 v9, v11, 0x3

    move/from16 p10, v12

    iget v12, v8, Lcom/threed/jpct/Mesh;->maxVectors:I

    if-ge v9, v12, :cond_1f

    .line 31
    iget v8, v8, Lcom/threed/jpct/Mesh;->anzTri:I

    .line 32
    iget-boolean v9, v0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    if-nez v9, :cond_7

    .line 33
    iget-object v9, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v9, v1, v2, v3}, Lcom/threed/jpct/Vectors;->checkCoords(FFF)I

    move-result v9
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0

    move v12, v9

    :goto_7
    const/4 v9, -0x1

    goto :goto_8

    :cond_7
    if-eqz p19, :cond_8

    const/4 v9, 0x0

    .line 34
    :try_start_8
    aget v12, p19, v9
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    :catch_4
    move v2, v9

    goto/16 :goto_3

    :cond_8
    const/4 v9, -0x1

    const/4 v12, -0x1

    :goto_8
    if-ne v12, v9, :cond_9

    .line 35
    :try_start_9
    iget-object v9, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v9, v1, v2, v3}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    move-result v12

    .line 36
    :cond_9
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, v1, Lcom/threed/jpct/Mesh;->coords:[I

    aput v12, v1, v11

    if-eqz v15, :cond_b

    const/4 v1, 0x0

    .line 37
    :goto_9
    iget v2, v10, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_a

    goto :goto_a

    .line 38
    :cond_a
    iget-object v2, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v3, v2, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v3, v3, v1

    iget-object v9, v10, Lcom/threed/jpct/TextureInfo;->u0:[F

    add-int/lit8 v17, v1, 0x1

    aget v9, v9, v17

    aput v9, v3, v11

    .line 39
    iget-object v2, v2, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v1, v2, v1

    iget-object v2, v10, Lcom/threed/jpct/TextureInfo;->v0:[F

    aget v2, v2, v17

    aput v2, v1, v11

    move/from16 v1, v17

    goto :goto_9

    .line 40
    :cond_b
    :goto_a
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v2, v1, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aput v7, v2, v11

    .line 41
    iget-object v2, v1, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aput v13, v2, v11

    .line 42
    iget-object v2, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v2, Lcom/threed/jpct/Mesh;->anzVectors:I

    const/4 v7, 0x1

    add-int/2addr v3, v7

    iput v3, v2, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 43
    iget-object v2, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v2, v2, v8
    :try_end_9
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0

    const/4 v7, 0x0

    :try_start_a
    aput v11, v2, v7
    :try_end_a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6

    .line 44
    :try_start_b
    iget-boolean v2, v0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    if-nez v2, :cond_c

    .line 45
    invoke-virtual {v1, v4, v5, v6}, Lcom/threed/jpct/Vectors;->checkCoords(FFF)I

    move-result v1

    :goto_b
    const/4 v2, -0x1

    goto :goto_c

    :cond_c
    if-eqz p19, :cond_d

    const/4 v1, 0x1

    .line 46
    aget v2, p19, v1

    move v1, v2

    goto :goto_b

    :cond_d
    const/4 v1, -0x1

    goto :goto_b

    :goto_c
    if-ne v1, v2, :cond_e

    .line 47
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v1, v4, v5, v6}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    move-result v1

    .line 48
    :cond_e
    iget-object v2, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->coords:[I

    aput v1, v2, v3

    if-eqz v15, :cond_10

    const/4 v2, 0x0

    .line 49
    :goto_d
    iget v4, v10, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v2, v4, :cond_f

    goto :goto_e

    .line 50
    :cond_f
    iget-object v4, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v5, v4, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v5, v5, v2

    iget-object v6, v10, Lcom/threed/jpct/TextureInfo;->u1:[F

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    aput v6, v5, v3

    .line 51
    iget-object v4, v4, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v2, v4, v2

    iget-object v4, v10, Lcom/threed/jpct/TextureInfo;->v1:[F

    aget v4, v4, v7

    aput v4, v2, v3

    move v2, v7

    goto :goto_d

    .line 52
    :cond_10
    :goto_e
    iget-object v2, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v4, v2, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aput v14, v4, v3

    .line 53
    iget-object v4, v2, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aput p10, v4, v3

    .line 54
    iget-object v4, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v5, v4, Lcom/threed/jpct/Mesh;->anzVectors:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v4, Lcom/threed/jpct/Mesh;->anzVectors:I

    .line 55
    iget-object v4, v4, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v4, v4, v8

    aput v3, v4, v6

    .line 56
    iget-boolean v3, v0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    if-nez v3, :cond_11

    move/from16 v3, p11

    move/from16 v4, p12

    move/from16 v6, p13

    .line 57
    invoke-virtual {v2, v3, v4, v6}, Lcom/threed/jpct/Vectors;->checkCoords(FFF)I

    move-result v14

    :goto_f
    const/4 v2, -0x1

    goto :goto_10

    :cond_11
    move/from16 v3, p11

    move/from16 v4, p12

    move/from16 v6, p13

    if-eqz p19, :cond_12

    const/4 v2, 0x2

    .line 58
    aget v14, p19, v2

    goto :goto_f

    :cond_12
    const/4 v2, -0x1

    const/4 v14, -0x1

    :goto_10
    if-ne v14, v2, :cond_13

    .line 59
    iget-object v2, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v2, v3, v4, v6}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    move-result v14

    .line 60
    :cond_13
    iget-object v2, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->coords:[I

    aput v14, v2, v5

    if-eqz v15, :cond_15

    const/4 v2, 0x0

    .line 61
    :goto_11
    iget v3, v10, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_14

    goto :goto_12

    .line 62
    :cond_14
    iget-object v3, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v4, v3, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v4, v4, v2

    iget-object v6, v10, Lcom/threed/jpct/TextureInfo;->u2:[F

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 63
    iget-object v3, v3, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v2, v3, v2

    iget-object v3, v10, Lcom/threed/jpct/TextureInfo;->v2:[F

    aget v3, v3, v7

    aput v3, v2, v5

    move v2, v7

    goto :goto_11

    .line 64
    :cond_15
    :goto_12
    iget-object v2, v0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v3, v2, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aput p5, v3, v5

    .line 65
    iget-object v2, v2, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aput p4, v2, v5

    .line 66
    iget-object v2, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v2, Lcom/threed/jpct/Mesh;->anzVectors:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/threed/jpct/Mesh;->anzVectors:I
    :try_end_b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_0

    if-eqz p19, :cond_16

    const/4 v3, 0x0

    .line 67
    :try_start_c
    aput v12, p19, v3
    :try_end_c
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_5

    .line 68
    :try_start_d
    aput v1, p19, v4

    const/4 v3, 0x2

    .line 69
    aput v14, p19, v3

    goto :goto_13

    :catch_5
    move v2, v3

    goto/16 :goto_3

    :cond_16
    :goto_13
    if-eq v14, v12, :cond_20

    if-eq v14, v1, :cond_20

    if-eq v1, v12, :cond_20

    .line 70
    iget v3, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    if-ge v14, v3, :cond_17

    .line 71
    iput v14, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    .line 72
    :cond_17
    iget v3, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    if-ge v1, v3, :cond_18

    .line 73
    iput v1, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    .line 74
    :cond_18
    iget v3, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    if-ge v12, v3, :cond_19

    .line 75
    iput v12, v0, Lcom/threed/jpct/Object3D;->lowestPos:I

    .line 76
    :cond_19
    iget v3, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    if-le v14, v3, :cond_1a

    .line 77
    iput v14, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    .line 78
    :cond_1a
    iget v3, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    if-le v1, v3, :cond_1b

    .line 79
    iput v1, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    .line 80
    :cond_1b
    iget v1, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    if-le v12, v1, :cond_1c

    .line 81
    iput v12, v0, Lcom/threed/jpct/Object3D;->highestPos:I

    .line 82
    :cond_1c
    iget-object v1, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v1, v1, v8

    const/4 v2, 0x2

    aput v5, v1, v2

    .line 83
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->texture:[I

    aput p9, v1, v8

    if-eqz v15, :cond_1e

    const/4 v14, 0x0

    .line 84
    :goto_14
    iget v1, v10, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-lt v14, v1, :cond_1d

    goto :goto_15

    .line 85
    :cond_1d
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v1, v1, v14

    iget-object v2, v10, Lcom/threed/jpct/TextureInfo;->textures:[I

    add-int/lit8 v3, v14, 0x1

    aget v2, v2, v3

    aput v2, v1, v8

    .line 86
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v1, v1, v14

    iget-object v2, v10, Lcom/threed/jpct/TextureInfo;->mode:[I

    aget v2, v2, v3

    aput v2, v1, v8

    move v14, v3

    goto :goto_14

    .line 87
    :cond_1e
    :goto_15
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v2, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v1, Lcom/threed/jpct/Mesh;->anzTri:I
    :try_end_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_17

    :catch_6
    move v2, v7

    goto/16 :goto_3

    :cond_1f
    move-object/from16 v1, v16

    const/4 v2, 0x0

    .line 88
    :try_start_e
    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_7

    goto :goto_17

    .line 89
    :catch_7
    :goto_16
    invoke-static {v1, v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 90
    :cond_20
    :goto_17
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v1, Lcom/threed/jpct/Mesh;->anzTri:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    return v1
.end method

.method public addTriangle(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FF)I
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v17, p8

    move/from16 v18, p9

    .line 3
    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v9, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v10, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v11, v1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v14, v2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v15, v2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v0, v2, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v16, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v19, -0x1

    invoke-virtual/range {v3 .. v21}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v0

    return v0
.end method

.method public addTriangle(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFI)I
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p10

    .line 5
    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v9, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v10, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v11, v1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v14, v2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v15, v2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v0, v2, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v16, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v3 .. v21}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v0

    return v0
.end method

.method public addTriangle(Lcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFLcom/threed/jpct/SimpleVector;FFII)I
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    move-object/from16 v3, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v12, p5

    move/from16 v13, p6

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p10

    move/from16 v20, p11

    .line 7
    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v9, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v10, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v11, v1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v14, v2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v15, v2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v0, v2, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v16, v0

    const/16 v21, 0x1

    invoke-virtual/range {v3 .. v21}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v0

    return v0
.end method

.method public addTriangle(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)I
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    .line 1
    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v9, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v10, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v11, v1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v14, v2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v15, v2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v0, v2, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v16, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, -0x1

    invoke-virtual/range {v3 .. v21}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ)I

    move-result v0

    return v0
.end method

.method public addTriangle(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/TextureInfo;)I
    .locals 24

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p0

    move-object/from16 v23, p4

    .line 8
    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v9, v1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v10, v1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v11, v1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v14, v2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v15, v2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v0, v2, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v16, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v3 .. v23}, Lcom/threed/jpct/Object3D;->addTriangle(FFFFFFFFFFFFFFFIIZ[ILcom/threed/jpct/TextureInfo;)I

    move-result v0

    return v0
.end method

.method public align(Lcom/threed/jpct/Camera;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v1}, Lcom/threed/jpct/Object3D;->setScale(F)V

    .line 3
    iget-object p1, p1, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1}, Lcom/threed/jpct/Matrix;->invert3x3()Lcom/threed/jpct/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    .line 4
    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->setScale(F)V

    return-void
.end method

.method public align(Lcom/threed/jpct/Object3D;)V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p0, v1}, Lcom/threed/jpct/Object3D;->setScale(F)V

    .line 7
    iget-object p1, p1, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    .line 8
    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->setScale(F)V

    return-void
.end method

.method public animate(F)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/threed/jpct/Object3D;->animate(FI)V

    return-void
.end method

.method public animate(FI)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0, p2, p1}, Lcom/threed/jpct/Animation;->doAnimation(Lcom/threed/jpct/Object3D;IF)V

    :cond_0
    return-void
.end method

.method public build()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->build(Z)V

    return-void
.end method

.method public build(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    .line 3
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean v1, v1, Lcom/threed/jpct/Mesh;->normalsCalculated:Z

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcCenter()V

    .line 5
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    .line 6
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcNormals()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcCenter()V

    .line 8
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v1, Lcom/threed/jpct/Mesh;->obbStart:I

    if-eqz v1, :cond_1

    .line 9
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    if-eqz v1, :cond_2

    iget-boolean v1, v1, Lcom/threed/jpct/GLSLShader;->needsTangents:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-boolean v2, v1, Lcom/threed/jpct/Mesh;->tangentsCalculated:Z

    if-nez v2, :cond_2

    .line 12
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Mesh;->calculateTangentVectors(Lcom/threed/jpct/Vectors;)V

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getMesh()Lcom/threed/jpct/Mesh;

    move-result-object v1

    iget-object v1, v1, Lcom/threed/jpct/Mesh;->myController:Lcom/threed/jpct/IVertexController;

    if-nez v1, :cond_4

    if-nez p1, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->compile()V

    goto :goto_3

    .line 15
    :cond_4
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/threed/jpct/Object3D;->compile(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 16
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Couldn\'t build() object ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")! Check if the object is assigned to a world and if the TextureManager has all required textures loaded."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_3
    return-void
.end method

.method public calcBoundingBox()V
    .locals 9

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->calcBoundingBox()[F

    move-result-object v0

    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v1, 0x1

    aget v4, v0, v1

    const/4 v1, 0x2

    aget v5, v0, v1

    const/4 v1, 0x3

    aget v6, v0, v1

    const/4 v1, 0x4

    aget v7, v0, v1

    const/4 v1, 0x5

    aget v8, v0, v1

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/threed/jpct/Object3D;->setBoundingBox(FFFFFF)V

    return-void
.end method

.method public calcCenter()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->calcCenter()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    if-nez v1, :cond_0

    iget v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iput v1, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget v1, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iput v1, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iget v1, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iput v1, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    :cond_0
    iget v1, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iput v1, p0, Lcom/threed/jpct/Object3D;->centerX:F

    iget v1, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iput v1, p0, Lcom/threed/jpct/Object3D;->centerY:F

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iput v0, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    return-void
.end method

.method public calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)F
    .locals 9

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 2
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 3
    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->createCollisionArrays()V

    .line 4
    sget-object v2, Lcom/threed/jpct/Object3D;->origColParam:[F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    aput v1, v2, v0

    .line 5
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    const/4 v7, 0x1

    aput v1, v2, v7

    .line 6
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v3, 0x2

    aput v1, v2, v3

    .line 7
    sget-object v4, Lcom/threed/jpct/Object3D;->dirColParam:[F

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->x:F

    aput v1, v4, v0

    .line 8
    iget v1, p2, Lcom/threed/jpct/SimpleVector;->y:F

    aput v1, v4, v7

    .line 9
    iget v1, p2, Lcom/threed/jpct/SimpleVector;->z:F

    aput v1, v4, v3

    const v5, 0x5368d4a5    # 1.0E12f

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, v4

    move v4, v8

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/threed/jpct/Object3D;->collide([F[FFFZ)F

    move-result v1

    const v2, 0x5368d4a5    # 1.0E12f

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1

    .line 11
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 12
    iget v2, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v3, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget p2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {v2, v3, p2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p2

    .line 13
    invoke-virtual {p2, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 14
    iget v2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {p2, v2, v3, p1}, Lcom/threed/jpct/SimpleVector;->add(FFF)V

    .line 15
    filled-new-array {p0}, [Lcom/threed/jpct/Object3D;

    move-result-object p1

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 16
    :cond_0
    iput-boolean v7, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    :cond_1
    return v1
.end method

.method public calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;F)F
    .locals 1

    const/4 v0, 0x1

    .line 17
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/threed/jpct/Object3D;->calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FZ)F

    move-result p1

    return p1
.end method

.method public calcMinDistance(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FZ)F
    .locals 9

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    .line 19
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->resetPolygonIDCount()V

    .line 20
    sget v1, Lcom/threed/jpct/Config;->collideOffset:F

    .line 21
    sput p3, Lcom/threed/jpct/Config;->collideOffset:F

    .line 22
    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->createCollisionArrays()V

    .line 23
    sget-object v3, Lcom/threed/jpct/Object3D;->origColParam:[F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->x:F

    aput v2, v3, v0

    .line 24
    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    const/4 v8, 0x1

    aput v2, v3, v8

    .line 25
    iget v2, p1, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v4, 0x2

    aput v2, v3, v4

    .line 26
    sget-object v5, Lcom/threed/jpct/Object3D;->dirColParam:[F

    iget v2, p2, Lcom/threed/jpct/SimpleVector;->x:F

    aput v2, v5, v0

    .line 27
    iget v2, p2, Lcom/threed/jpct/SimpleVector;->y:F

    aput v2, v5, v8

    .line 28
    iget v2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    aput v2, v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v4, v5

    move v5, v6

    move v6, p3

    .line 29
    invoke-direct/range {v2 .. v7}, Lcom/threed/jpct/Object3D;->collide([F[FFFZ)F

    move-result p3

    .line 30
    sput v1, Lcom/threed/jpct/Config;->collideOffset:F

    if-eqz p4, :cond_1

    const p4, 0x5368d4a5    # 1.0E12f

    cmpl-float p4, p3, p4

    if-eqz p4, :cond_1

    .line 31
    iget-object p4, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz p4, :cond_0

    .line 32
    iget p4, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget p2, p2, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {p4, v1, p2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object p2

    .line 33
    invoke-virtual {p2, p3}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    .line 34
    iget p4, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {p2, p4, v1, p1}, Lcom/threed/jpct/SimpleVector;->add(FFF)V

    .line 35
    filled-new-array {p0}, [Lcom/threed/jpct/Object3D;

    move-result-object p1

    invoke-virtual {p0, v0, v0, p1, p2}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 36
    :cond_0
    iput-boolean v8, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    :cond_1
    return p3
.end method

.method public calcNormals()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->calcNormals()V

    return-void
.end method

.method public calcTangentVectors()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Mesh;->calculateTangentVectors(Lcom/threed/jpct/Vectors;)V

    return-void
.end method

.method public calcTextureWrap()V
    .locals 12

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v4, v3, Lcom/threed/jpct/Mesh;->anzVectors:I

    if-lt v2, v4, :cond_d

    move v4, v1

    :goto_1
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v2, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-lt v4, v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v2, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v3, v3, v4

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v2, v2, v4

    const/16 v5, 0x80

    int-to-float v5, v5

    mul-float/2addr v3, v5

    add-float v6, v5, v3

    mul-float/2addr v2, v5

    add-float/2addr v5, v2

    move v3, v5

    move v2, v6

    :cond_1
    :goto_2
    const/16 v7, 0xff

    int-to-float v7, v7

    cmpl-float v8, v2, v7

    const/16 v9, -0xff

    const/4 v10, 0x0

    if-gtz v8, :cond_9

    cmpg-float v11, v2, v10

    if-ltz v11, :cond_9

    cmpl-float v11, v3, v7

    if-gtz v11, :cond_9

    cmpg-float v11, v3, v10

    if-ltz v11, :cond_9

    :cond_2
    :goto_3
    cmpl-float v8, v6, v7

    if-gtz v8, :cond_5

    cmpg-float v11, v6, v10

    if-ltz v11, :cond_5

    cmpl-float v11, v5, v7

    if-gtz v11, :cond_5

    cmpg-float v11, v5, v10

    if-ltz v11, :cond_5

    invoke-static {v4}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    move v6, v1

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v6, v8, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v10, v9, Lcom/threed/jpct/Vectors;->nuOrg:[F

    div-float v11, v2, v7

    aput v11, v10, v8

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->nvOrg:[F

    div-float v10, v3, v7

    aput v10, v9, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    if-lez v8, :cond_6

    int-to-float v6, v9

    goto :goto_6

    :cond_6
    cmpg-float v8, v6, v10

    if-gez v8, :cond_7

    move v6, v7

    :cond_7
    :goto_6
    cmpl-float v8, v5, v7

    if-lez v8, :cond_8

    int-to-float v5, v9

    goto :goto_3

    :cond_8
    cmpg-float v8, v5, v10

    if-gez v8, :cond_2

    move v5, v7

    goto :goto_3

    :cond_9
    if-lez v8, :cond_a

    int-to-float v2, v9

    goto :goto_7

    :cond_a
    cmpg-float v8, v2, v10

    if-gez v8, :cond_b

    move v2, v7

    :cond_b
    :goto_7
    cmpl-float v8, v3, v7

    if-lez v8, :cond_c

    int-to-float v3, v9

    goto :goto_2

    :cond_c
    cmpg-float v8, v3, v10

    if-gez v8, :cond_1

    move v3, v7

    goto/16 :goto_2

    :cond_d
    iget-object v3, v3, Lcom/threed/jpct/Mesh;->coords:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-static {v2}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public calcTextureWrapSpherical()V
    .locals 14

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcCenter()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v4, v3, Lcom/threed/jpct/Mesh;->anzVectors:I

    if-lt v2, v4, :cond_d

    move v4, v1

    :goto_1
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v2, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-lt v4, v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v2, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v3, v3, v4

    iget v5, p0, Lcom/threed/jpct/Object3D;->centerX:F

    sub-float/2addr v3, v5

    iget-object v5, v2, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v5, v5, v4

    iget v6, p0, Lcom/threed/jpct/Object3D;->centerY:F

    sub-float/2addr v5, v6

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v2, v2, v4

    iget v6, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    sub-float/2addr v2, v6

    mul-float v6, v3, v3

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    mul-float/2addr v2, v2

    add-float/2addr v6, v2

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    div-float/2addr v3, v2

    div-float/2addr v5, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v10

    double-to-float v2, v2

    float-to-double v12, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    div-double/2addr v12, v6

    add-double/2addr v12, v8

    mul-double/2addr v12, v10

    double-to-float v3, v12

    const/16 v5, 0x100

    int-to-float v5, v5

    mul-float v6, v2, v5

    mul-float v7, v3, v5

    move v2, v6

    move v3, v7

    :cond_1
    :goto_2
    cmpl-float v8, v2, v5

    const/16 v9, -0x100

    const/4 v10, 0x0

    if-gtz v8, :cond_9

    cmpg-float v11, v2, v10

    if-ltz v11, :cond_9

    cmpl-float v11, v3, v5

    if-gtz v11, :cond_9

    cmpg-float v11, v3, v10

    if-ltz v11, :cond_9

    :cond_2
    :goto_3
    cmpl-float v8, v6, v5

    if-gtz v8, :cond_5

    cmpg-float v11, v6, v10

    if-ltz v11, :cond_5

    cmpl-float v11, v7, v5

    if-gtz v11, :cond_5

    cmpg-float v11, v7, v10

    if-ltz v11, :cond_5

    invoke-static {v4}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    move v7, v1

    :goto_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_3

    goto :goto_5

    :cond_3
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v10, v9, Lcom/threed/jpct/Vectors;->nuOrg:[F

    div-float v11, v2, v5

    aput v11, v10, v8

    iget-object v9, v9, Lcom/threed/jpct/Vectors;->nvOrg:[F

    div-float v10, v3, v5

    aput v10, v9, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_5
    if-lez v8, :cond_6

    int-to-float v6, v9

    goto :goto_6

    :cond_6
    cmpg-float v8, v6, v10

    if-gez v8, :cond_7

    move v6, v5

    :cond_7
    :goto_6
    cmpl-float v8, v7, v5

    if-lez v8, :cond_8

    int-to-float v7, v9

    goto :goto_3

    :cond_8
    cmpg-float v8, v7, v10

    if-gez v8, :cond_2

    move v7, v5

    goto :goto_3

    :cond_9
    if-lez v8, :cond_a

    int-to-float v2, v9

    goto :goto_7

    :cond_a
    cmpg-float v8, v2, v10

    if-gez v8, :cond_b

    move v2, v5

    :cond_b
    :goto_7
    cmpl-float v8, v3, v5

    if-lez v8, :cond_c

    int-to-float v3, v9

    goto :goto_2

    :cond_c
    cmpg-float v8, v3, v10

    if-gez v8, :cond_1

    move v3, v5

    goto :goto_2

    :cond_d
    iget-object v3, v3, Lcom/threed/jpct/Mesh;->coords:[I

    aget v3, v3, v2

    invoke-static {v3}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-static {v2}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method public checkForCollision(Lcom/threed/jpct/SimpleVector;F)I
    .locals 1

    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->checkWorld()V

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v0, p0, p1, p2}, Lcom/threed/jpct/World;->checkObjCollision(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;F)I

    move-result p1

    return p1
.end method

.method public checkForCollisionEllipsoid(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;
    .locals 1

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->checkWorld()V

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/threed/jpct/World;->checkObjCollisionEllipsoid(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;I)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public checkForCollisionSpherical(Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;
    .locals 1

    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->checkWorld()V

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v0, p0, p1, p2}, Lcom/threed/jpct/World;->checkObjCollisionSpherical(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;F)Lcom/threed/jpct/SimpleVector;

    move-result-object p1

    return-object p1
.end method

.method public clearAdditionalColor()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Object3D;->addColorR:I

    iput v0, p0, Lcom/threed/jpct/Object3D;->addColorG:I

    iput v0, p0, Lcom/threed/jpct/Object3D;->addColorB:I

    sget-object v0, Lcom/threed/jpct/RGBColor;->BLACK:Lcom/threed/jpct/RGBColor;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    return-void
.end method

.method public clearAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    return-void
.end method

.method public clearObject()V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    const/4 v1, 0x0

    iput v1, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    iput v1, v0, Lcom/threed/jpct/Mesh;->obbEnd:I

    iput v1, v0, Lcom/threed/jpct/Mesh;->anzTri:I

    iput v1, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    iput v1, v0, Lcom/threed/jpct/Mesh;->anzVectors:I

    return-void
.end method

.method public clearRotation()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->setScale(F)V

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    return-void
.end method

.method public clearShader()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    return-void
.end method

.method public clearTranslation()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    return-void
.end method

.method public cloneObject()Lcom/threed/jpct/Object3D;
    .locals 2

    new-instance v0, Lcom/threed/jpct/Object3D;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/threed/jpct/Object3D;-><init>(Lcom/threed/jpct/Object3D;Z)V

    return-object v0
.end method

.method public final collide([F[FFF)F
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->collide([F[FFFZ)F

    move-result p1

    return p1
.end method

.method public final collideEllipsoid(Lcom/threed/jpct/CollisionInfo;F)V
    .locals 69

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    iget v0, v12, Lcom/threed/jpct/Object3D;->scaleFactor:F

    invoke-virtual {v13, v0}, Lcom/threed/jpct/CollisionInfo;->setScale(F)V

    invoke-direct/range {p0 .. p0}, Lcom/threed/jpct/Object3D;->createCollisionArrays()V

    iget-object v0, v13, Lcom/threed/jpct/CollisionInfo;->addTransMat:Lcom/threed/jpct/Matrix;

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v11, 0x1

    const/16 v16, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->invert()Lcom/threed/jpct/Matrix;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    iget-object v3, v13, Lcom/threed/jpct/CollisionInfo;->addRotMat:Lcom/threed/jpct/Matrix;

    invoke-virtual {v3}, Lcom/threed/jpct/Matrix;->invert3x3()Lcom/threed/jpct/Matrix;

    move-result-object v3

    iget-object v2, v2, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v2, v16

    aget v5, v4, v16

    aget-object v6, v2, v11

    aget v7, v6, v16

    aget v8, v6, v11

    aget-object v9, v2, v15

    aget v17, v9, v11

    aget v18, v9, v16

    aget v19, v4, v11

    aget v9, v9, v15

    aget v6, v6, v15

    aget v4, v4, v15

    aget-object v2, v2, v14

    aget v20, v2, v16

    aget v21, v2, v11

    aget v2, v2, v15

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v29, v11

    move/from16 v24, v17

    move/from16 v25, v18

    move/from16 v26, v19

    move/from16 v27, v20

    move/from16 v28, v21

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    goto :goto_0

    :cond_0
    move/from16 v29, v16

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_0
    iget-object v2, v13, Lcom/threed/jpct/CollisionInfo;->r3Pos:Lcom/threed/jpct/SimpleVector;

    iget-object v4, v13, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    iget v5, v2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v6, v2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    iget v7, v4, Lcom/threed/jpct/SimpleVector;->x:F

    iget v8, v4, Lcom/threed/jpct/SimpleVector;->y:F

    iget v4, v4, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v9

    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v10

    invoke-static {}, Lcom/threed/jpct/SimpleVector;->create()Lcom/threed/jpct/SimpleVector;

    move-result-object v14

    iget-object v1, v12, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/threed/jpct/OcTree;->getCollisionUse()Z

    move-result v1

    if-eqz v1, :cond_1

    move/from16 v32, v11

    goto :goto_1

    :cond_1
    move/from16 v32, v16

    :goto_1
    if-eqz v29, :cond_3

    if-eqz v32, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v46, v2

    move/from16 v47, v5

    move v1, v6

    goto :goto_3

    :cond_3
    :goto_2
    iget-object v1, v12, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    invoke-virtual {v12, v1}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    iget-object v1, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v33, v1, v16

    aget v34, v33, v16

    aget-object v35, v1, v11

    aget v36, v35, v16

    aget v37, v35, v11

    aget-object v38, v1, v15

    aget v39, v38, v11

    aget v40, v38, v16

    aget v41, v33, v11

    aget v38, v38, v15

    aget v35, v35, v15

    aget v33, v33, v15

    const/16 v30, 0x3

    aget-object v1, v1, v30

    aget v42, v1, v16

    aget v43, v1, v11

    aget v1, v1, v15

    mul-float v44, v5, v34

    mul-float v45, v6, v36

    add-float v44, v44, v45

    mul-float v45, v2, v40

    add-float v44, v44, v45

    add-float v44, v44, v42

    mul-float v42, v5, v41

    mul-float v45, v6, v37

    add-float v42, v42, v45

    mul-float v45, v2, v39

    add-float v42, v42, v45

    add-float v42, v42, v43

    mul-float v43, v5, v33

    mul-float v45, v6, v35

    add-float v43, v43, v45

    mul-float v45, v2, v38

    add-float v43, v43, v45

    add-float v43, v43, v1

    mul-float v34, v34, v7

    mul-float v36, v36, v8

    add-float v34, v34, v36

    mul-float v40, v40, v4

    add-float v34, v34, v40

    mul-float v41, v41, v7

    mul-float v37, v37, v8

    add-float v41, v41, v37

    mul-float v39, v39, v4

    add-float v41, v41, v39

    mul-float v7, v7, v33

    mul-float v8, v8, v35

    add-float/2addr v7, v8

    mul-float v4, v4, v38

    add-float/2addr v4, v7

    move/from16 v7, v34

    move/from16 v8, v41

    move/from16 v1, v42

    move/from16 v46, v43

    move/from16 v47, v44

    :goto_3
    if-eqz v29, :cond_4

    iget-object v15, v13, Lcom/threed/jpct/CollisionInfo;->r3Velocity:Lcom/threed/jpct/SimpleVector;

    iget v11, v15, Lcom/threed/jpct/SimpleVector;->x:F

    move-object/from16 v35, v14

    iget v14, v15, Lcom/threed/jpct/SimpleVector;->y:F

    iget v15, v15, Lcom/threed/jpct/SimpleVector;->z:F

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v36, v0, v16

    aget v37, v36, v16

    const/16 v34, 0x1

    aget-object v38, v0, v34

    aget v39, v38, v16

    aget v40, v38, v34

    const/16 v33, 0x2

    aget-object v41, v0, v33

    aget v42, v41, v34

    aget v43, v41, v16

    aget v44, v36, v34

    aget v41, v41, v33

    aget v38, v38, v33

    aget v36, v36, v33

    const/16 v30, 0x3

    aget-object v0, v0, v30

    aget v45, v0, v16

    aget v48, v0, v34

    aget v0, v0, v33

    mul-float v37, v37, v5

    mul-float v39, v39, v6

    add-float v37, v37, v39

    mul-float v43, v43, v2

    add-float v37, v37, v43

    add-float v37, v37, v45

    mul-float v44, v44, v5

    mul-float v40, v40, v6

    add-float v44, v44, v40

    mul-float v42, v42, v2

    add-float v44, v44, v42

    add-float v44, v44, v48

    mul-float v5, v5, v36

    mul-float v6, v6, v38

    add-float/2addr v5, v6

    mul-float v2, v2, v41

    add-float/2addr v5, v2

    add-float/2addr v5, v0

    invoke-static {v11, v14, v15}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/threed/jpct/SimpleVector;->matMul(Lcom/threed/jpct/Matrix;)V

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iget v3, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    goto :goto_4

    :cond_4
    move-object/from16 v35, v14

    move/from16 v44, v1

    move v0, v4

    move v2, v7

    move v3, v8

    move/from16 v5, v46

    move/from16 v37, v47

    :goto_4
    if-eqz v32, :cond_6

    mul-float/2addr v7, v7

    mul-float/2addr v8, v8

    add-float/2addr v7, v8

    mul-float/2addr v4, v4

    add-float/2addr v7, v4

    invoke-static {v7}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    iget-object v6, v12, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    invoke-virtual/range {p1 .. p1}, Lcom/threed/jpct/CollisionInfo;->getMaxRadius()F

    move-result v7

    add-float/2addr v7, v4

    iget-object v4, v12, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    invoke-virtual {v4}, Lcom/threed/jpct/OcTree;->getRadiusMultiplier()F

    move-result v4

    mul-float/2addr v7, v4

    move/from16 v8, v46

    move/from16 v4, v47

    invoke-virtual {v6, v4, v1, v8, v7}, Lcom/threed/jpct/OcTree;->getColliderLeafs(FFFF)[Ljava/lang/Object;

    move-result-object v1

    aget-object v4, v1, v16

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    move v14, v4

    goto :goto_5

    :cond_6
    move/from16 v14, v16

    const/4 v1, 0x0

    :goto_5
    iget-object v4, v12, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v4, v4, Lcom/threed/jpct/Mesh;->anzTri:I

    if-eqz v32, :cond_7

    const/4 v6, 0x1

    aget-object v1, v1, v6

    check-cast v1, [Lcom/threed/jpct/OcTreeNode;

    move-object v15, v1

    goto :goto_6

    :cond_7
    const/4 v15, 0x0

    :goto_6
    iget-object v1, v13, Lcom/threed/jpct/CollisionInfo;->invERadius:Lcom/threed/jpct/SimpleVector;

    iget v6, v1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v6, v6, v37

    iput v6, v10, Lcom/threed/jpct/SimpleVector;->x:F

    iget v6, v1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v6, v6, v44

    iput v6, v10, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, v1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v5, v6

    iput v5, v10, Lcom/threed/jpct/SimpleVector;->z:F

    iget v5, v1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v2, v5

    iput v2, v9, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, v1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v3, v5

    iput v3, v9, Lcom/threed/jpct/SimpleVector;->y:F

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v0, v1

    iput v0, v9, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v9}, Lcom/threed/jpct/SimpleVector;->length()F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v6, v1, v5

    if-eqz v6, :cond_8

    div-float/2addr v2, v1

    div-float/2addr v3, v1

    div-float/2addr v0, v1

    move v7, v0

    move v11, v2

    move v8, v3

    goto :goto_7

    :cond_8
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    :goto_7
    iget-object v0, v12, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v6, v0, Lcom/threed/jpct/Mesh;->points:[[I

    iget-object v5, v0, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v3, v0, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v2, v0, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v1, v0, Lcom/threed/jpct/Mesh;->zOrg:[F

    sget v0, Lcom/threed/jpct/Config;->collideOffset:F

    move/from16 v36, v4

    iget-boolean v4, v12, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    const/high16 v37, -0x40800000    # -1.0f

    const/high16 v38, 0x3f800000    # 1.0f

    if-eqz v4, :cond_9

    iget v4, v12, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    cmpl-float v39, v4, v37

    if-eqz v39, :cond_9

    add-float v4, v4, v38

    cmpg-float v39, v4, v0

    if-gez v39, :cond_9

    move v0, v4

    :cond_9
    mul-float v39, v0, v0

    move/from16 v0, v16

    move/from16 v40, v0

    move/from16 v4, v36

    const/16 v31, 0x0

    move/from16 v36, v40

    :goto_8
    if-eqz v32, :cond_a

    aget-object v4, v15, v0

    invoke-virtual {v4}, Lcom/threed/jpct/OcTreeNode;->getPolygons()[I

    move-result-object v4

    aget-object v31, v15, v0

    invoke-virtual/range {v31 .. v31}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v31

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v68, v4

    move v4, v0

    move/from16 v0, v31

    move-object/from16 v31, v68

    goto :goto_9

    :cond_a
    move/from16 v68, v4

    move v4, v0

    move/from16 v0, v68

    :goto_9
    move-object/from16 v41, v15

    move/from16 v15, v36

    move-object/from16 v36, v9

    move/from16 v9, v40

    move/from16 v40, v7

    move/from16 v7, v16

    :goto_a
    if-lt v7, v0, :cond_e

    if-eqz v32, :cond_c

    if-lt v4, v14, :cond_b

    goto :goto_b

    :cond_b
    move/from16 v7, v40

    move/from16 v40, v9

    move-object/from16 v9, v36

    move/from16 v36, v15

    move-object/from16 v15, v41

    move/from16 v68, v4

    move v4, v0

    move/from16 v0, v68

    goto :goto_8

    :cond_c
    :goto_b
    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Polygons checked: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/ skipped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_d
    return-void

    :cond_e
    const/16 v30, 0x3

    if-eqz v32, :cond_f

    aget v42, v31, v7

    move/from16 v68, v42

    move/from16 v42, v14

    move/from16 v14, v68

    goto :goto_c

    :cond_f
    move/from16 v42, v14

    move v14, v7

    :goto_c
    aget-object v43, v6, v14

    aget v44, v43, v16

    aget v44, v5, v44

    const/16 v34, 0x1

    aget v45, v43, v34

    aget v45, v5, v45

    const/16 v33, 0x2

    aget v43, v43, v33

    aget v43, v5, v43

    move/from16 v46, v0

    iget-object v0, v13, Lcom/threed/jpct/CollisionInfo;->invERadius:Lcom/threed/jpct/SimpleVector;

    if-eqz v29, :cond_10

    aget v47, v3, v44

    aget v48, v2, v44

    aget v44, v1, v44

    mul-float v49, v47, v19

    mul-float v50, v48, v21

    add-float v49, v49, v50

    mul-float v50, v44, v25

    add-float v49, v49, v50

    add-float v49, v49, v27

    mul-float v50, v47, v26

    mul-float v51, v48, v22

    add-float v50, v50, v51

    mul-float v51, v44, v24

    add-float v50, v50, v51

    add-float v50, v50, v28

    mul-float v47, v47, v18

    mul-float v48, v48, v20

    add-float v47, v47, v48

    mul-float v44, v44, v23

    add-float v47, v47, v44

    add-float v47, v47, v17

    move/from16 v48, v4

    iget v4, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v49, v49, v4

    move-object/from16 v51, v5

    iget v5, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v50, v50, v5

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v47, v47, v0

    aget v44, v3, v45

    aget v52, v2, v45

    aget v45, v1, v45

    mul-float v53, v44, v19

    mul-float v54, v52, v21

    add-float v53, v53, v54

    mul-float v54, v45, v25

    add-float v53, v53, v54

    add-float v53, v53, v27

    mul-float v54, v44, v26

    mul-float v55, v52, v22

    add-float v54, v54, v55

    mul-float v55, v45, v24

    add-float v54, v54, v55

    add-float v54, v54, v28

    mul-float v44, v44, v18

    mul-float v52, v52, v20

    add-float v44, v44, v52

    mul-float v45, v45, v23

    add-float v44, v44, v45

    add-float v44, v44, v17

    mul-float v53, v53, v4

    mul-float v54, v54, v5

    mul-float v44, v44, v0

    aget v45, v3, v43

    aget v52, v2, v43

    aget v43, v1, v43

    mul-float v55, v45, v19

    mul-float v56, v52, v21

    add-float v55, v55, v56

    mul-float v56, v43, v25

    add-float v55, v55, v56

    add-float v55, v55, v27

    mul-float v56, v45, v26

    mul-float v57, v52, v22

    add-float v56, v56, v57

    mul-float v57, v43, v24

    add-float v56, v56, v57

    add-float v56, v56, v28

    mul-float v45, v45, v18

    mul-float v52, v52, v20

    add-float v45, v45, v52

    mul-float v43, v43, v23

    add-float v45, v45, v43

    add-float v45, v45, v17

    mul-float v55, v55, v4

    mul-float v56, v56, v5

    mul-float v45, v45, v0

    move/from16 v43, v14

    move/from16 v5, v45

    move/from16 v4, v47

    move/from16 v0, v49

    move/from16 v13, v50

    move/from16 v14, v53

    move-object/from16 v50, v1

    move-object/from16 v49, v2

    move-object/from16 v45, v3

    move-object/from16 v47, v6

    move/from16 v6, v44

    move/from16 v3, v55

    move/from16 v2, v56

    move/from16 v44, v7

    move/from16 v7, v54

    goto :goto_d

    :cond_10
    move/from16 v48, v4

    move-object/from16 v51, v5

    aget v4, v3, v44

    iget v5, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v49, v4, v5

    aget v4, v2, v44

    move-object/from16 v47, v6

    iget v6, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v50, v4, v6

    aget v4, v1, v44

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v4, v0

    aget v44, v3, v45

    mul-float v53, v44, v5

    aget v44, v2, v45

    mul-float v54, v44, v6

    aget v44, v1, v45

    mul-float v44, v44, v0

    aget v45, v3, v43

    mul-float v55, v45, v5

    aget v5, v2, v43

    mul-float v56, v5, v6

    aget v5, v1, v43

    mul-float v45, v5, v0

    move/from16 v43, v14

    move/from16 v6, v44

    move/from16 v5, v45

    move/from16 v0, v49

    move/from16 v13, v50

    move/from16 v14, v53

    move-object/from16 v50, v1

    move-object/from16 v49, v2

    move-object/from16 v45, v3

    move/from16 v44, v7

    move/from16 v7, v54

    move/from16 v3, v55

    move/from16 v2, v56

    :goto_d
    iget-boolean v1, v12, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    if-eqz v1, :cond_11

    invoke-direct {v12, v10, v0, v13, v4}, Lcom/threed/jpct/Object3D;->getSquaredDistance(Lcom/threed/jpct/SimpleVector;FFF)F

    move-result v1

    cmpl-float v1, v1, v39

    if-lez v1, :cond_11

    invoke-direct {v12, v10, v14, v7, v6}, Lcom/threed/jpct/Object3D;->getSquaredDistance(Lcom/threed/jpct/SimpleVector;FFF)F

    move-result v1

    cmpl-float v1, v1, v39

    if-lez v1, :cond_11

    invoke-direct {v12, v10, v3, v2, v5}, Lcom/threed/jpct/Object3D;->getSquaredDistance(Lcom/threed/jpct/SimpleVector;FFF)F

    move-result v1

    cmpl-float v1, v1, v39

    if-lez v1, :cond_11

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p1

    move/from16 v60, v8

    move/from16 v54, v9

    move-object v9, v10

    move v2, v15

    move/from16 v0, v34

    move-object/from16 v15, v35

    move-object/from16 v14, v36

    move/from16 v52, v44

    move/from16 v35, v46

    move/from16 v55, v48

    move-object/from16 v46, v50

    const/16 v36, 0x0

    move/from16 v34, v11

    move/from16 v44, v40

    goto/16 :goto_1e

    :cond_11
    add-int/lit8 v15, v15, 0x1

    iget-object v1, v12, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    move-object/from16 v57, v1

    move/from16 v58, v0

    move/from16 v59, v13

    move/from16 v60, v4

    move/from16 v61, v14

    move/from16 v62, v7

    move/from16 v63, v6

    move/from16 v64, v3

    move/from16 v65, v2

    move/from16 v66, v5

    invoke-virtual/range {v57 .. v66}, Lcom/threed/jpct/Plane;->setTo(FFFFFFFFF)V

    iget-object v1, v12, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    move/from16 v52, v7

    move/from16 v7, v40

    invoke-virtual {v1, v11, v8, v7}, Lcom/threed/jpct/Plane;->isFrontFacingTo(FFF)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, v12, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    invoke-virtual {v1, v10}, Lcom/threed/jpct/Plane;->distanceTo(Lcom/threed/jpct/SimpleVector;)F

    move-result v1

    move/from16 v40, v0

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    iget-object v0, v0, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    move/from16 v53, v2

    iget v2, v0, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v54, v9

    move-object/from16 v9, v36

    move/from16 v36, v3

    iget v3, v9, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v55, v4

    iget v4, v9, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v0, v0, Lcom/threed/jpct/SimpleVector;->z:F

    iget v3, v9, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    const/4 v0, 0x0

    cmpl-float v3, v2, v0

    if-nez v3, :cond_13

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v38

    if-ltz v0, :cond_12

    move/from16 v0, v16

    :goto_e
    move v2, v0

    const/4 v4, 0x0

    goto :goto_13

    :cond_12
    move/from16 v0, v34

    goto :goto_e

    :cond_13
    div-float v0, v37, v2

    mul-float/2addr v1, v0

    add-float v2, v1, v0

    sub-float/2addr v1, v0

    cmpl-float v0, v2, v1

    if-lez v0, :cond_14

    goto :goto_f

    :cond_14
    move/from16 v68, v2

    move v2, v1

    move/from16 v1, v68

    :goto_f
    cmpl-float v0, v1, v38

    if-gtz v0, :cond_16

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_15

    goto :goto_10

    :cond_15
    move/from16 v2, v34

    goto :goto_11

    :cond_16
    :goto_10
    move/from16 v2, v16

    :goto_11
    cmpg-float v3, v1, v37

    if-gez v3, :cond_17

    const/4 v1, 0x0

    goto :goto_12

    :cond_17
    if-lez v0, :cond_18

    move/from16 v1, v38

    :cond_18
    :goto_12
    move v4, v1

    move/from16 v0, v16

    :goto_13
    if-eqz v2, :cond_25

    move-object/from16 v2, v35

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v3}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    if-nez v0, :cond_19

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v9}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v4}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v10}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    iget-object v1, v12, Lcom/threed/jpct/Object3D;->trianglePlane:Lcom/threed/jpct/Plane;

    iget-object v1, v1, Lcom/threed/jpct/Plane;->normal:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->sub(Lcom/threed/jpct/SimpleVector;)V

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    iget-object v1, v12, Lcom/threed/jpct/Object3D;->t0Vel:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->add(Lcom/threed/jpct/SimpleVector;)V

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    iget-object v1, v12, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v0, v10}, Lcom/threed/jpct/SimpleVector;->sub(Lcom/threed/jpct/SimpleVector;)V

    iget-object v1, v12, Lcom/threed/jpct/Object3D;->fromBaseToIntersection:Lcom/threed/jpct/SimpleVector;

    move/from16 v35, v46

    move-object/from16 v0, p0

    move-object/from16 v46, v50

    move/from16 p2, v15

    move-object v15, v2

    move-object v2, v10

    move/from16 v50, v36

    move/from16 v36, v3

    move/from16 v3, v40

    move/from16 v56, v55

    move/from16 v55, v48

    move/from16 v48, v4

    move v4, v13

    move/from16 v57, v5

    move/from16 v5, v56

    move/from16 v58, v6

    move v6, v14

    move/from16 v59, v52

    move/from16 v52, v44

    move/from16 v44, v7

    move/from16 v7, v59

    move/from16 v60, v8

    move/from16 v8, v58

    move/from16 v61, v14

    move-object v14, v9

    move/from16 v9, v50

    move/from16 v62, v13

    move-object v13, v10

    move/from16 v10, v53

    move/from16 v34, v11

    move/from16 v11, v57

    invoke-direct/range {v0 .. v11}, Lcom/threed/jpct/Object3D;->checkPointInTriangle(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;FFFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->planeIntersectionPoint:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v15, v0}, Lcom/threed/jpct/SimpleVector;->set(Lcom/threed/jpct/SimpleVector;)V

    const/4 v11, 0x1

    goto :goto_14

    :cond_19
    move/from16 v57, v5

    move/from16 v58, v6

    move/from16 v60, v8

    move/from16 v34, v11

    move/from16 v62, v13

    move/from16 v61, v14

    move/from16 p2, v15

    move/from16 v35, v46

    move-object/from16 v46, v50

    move/from16 v59, v52

    move/from16 v56, v55

    move-object v15, v2

    move-object v14, v9

    move-object v13, v10

    move/from16 v50, v36

    move/from16 v52, v44

    move/from16 v55, v48

    move/from16 v36, v3

    move/from16 v44, v7

    :cond_1a
    move/from16 v11, v16

    move/from16 v48, v38

    :goto_14
    if-nez v11, :cond_21

    iget v0, v14, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v1, v0, v0

    iget v2, v14, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    iget v3, v14, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v4, v3, v3

    add-float v6, v1, v4

    iget v1, v13, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v7, v40

    sub-float v4, v1, v7

    iget v5, v13, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v8, v5, v62

    iget v9, v13, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v10, v56

    sub-float v40, v9, v10

    mul-float/2addr v0, v4

    mul-float/2addr v2, v8

    add-float/2addr v0, v2

    mul-float v3, v3, v40

    add-float/2addr v0, v3

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v2, v0, v8

    sub-float v0, v7, v1

    sub-float v1, v62, v5

    sub-float v4, v10, v9

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v4, v4

    add-float/2addr v0, v4

    sub-float v3, v0, v38

    iget-object v5, v12, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v4, v48

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->newT:[F

    aget v48, v0, v16

    move/from16 v9, v62

    invoke-virtual {v15, v7, v9, v10}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    const/4 v11, 0x1

    goto :goto_15

    :cond_1b
    move/from16 v9, v62

    :goto_15
    iget v0, v13, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v1, v0, v61

    iget v2, v13, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v5, v59

    sub-float v3, v2, v5

    iget v4, v13, Lcom/threed/jpct/SimpleVector;->z:F

    move/from16 v8, v58

    sub-float v56, v4, v8

    move/from16 v58, v11

    iget v11, v14, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v11, v1

    iget v1, v14, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v3

    add-float/2addr v11, v1

    iget v1, v14, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v1, v1, v56

    add-float/2addr v11, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v3, v11, v1

    sub-float v0, v61, v0

    sub-float v1, v5, v2

    sub-float v2, v8, v4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    sub-float v4, v0, v38

    iget-object v11, v12, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v0, p0

    move v1, v6

    move v2, v3

    move v3, v4

    move/from16 v4, v48

    move/from16 v56, v10

    move v10, v5

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->newT:[F

    aget v48, v0, v16

    move/from16 v11, v61

    invoke-virtual {v15, v11, v10, v8}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    const/16 v58, 0x1

    goto :goto_16

    :cond_1c
    move/from16 v11, v61

    :goto_16
    iget v0, v13, Lcom/threed/jpct/SimpleVector;->x:F

    move/from16 v5, v50

    sub-float v1, v0, v5

    iget v2, v13, Lcom/threed/jpct/SimpleVector;->y:F

    move/from16 v4, v53

    sub-float v3, v2, v4

    move/from16 v50, v8

    iget v8, v13, Lcom/threed/jpct/SimpleVector;->z:F

    move-object/from16 v53, v13

    move/from16 v13, v57

    sub-float v57, v8, v13

    move/from16 v62, v9

    iget v9, v14, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v9, v1

    iget v1, v14, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v1, v3

    add-float/2addr v9, v1

    iget v1, v14, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v1, v1, v57

    add-float/2addr v9, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v3, v9, v1

    sub-float v0, v5, v0

    sub-float v2, v4, v2

    sub-float v1, v13, v8

    mul-float/2addr v0, v0

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    sub-float v8, v0, v38

    iget-object v9, v12, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v0, p0

    move v1, v6

    move v2, v3

    move v3, v8

    move v8, v4

    move/from16 v4, v48

    move/from16 v57, v6

    move v6, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->newT:[F

    aget v48, v0, v16

    invoke-virtual {v15, v6, v8, v13}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    const/16 v58, 0x1

    :cond_1d
    sub-float v9, v11, v7

    sub-float v5, v10, v62

    sub-float v4, v50, v56

    move-object/from16 v3, v53

    iget v0, v3, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v0, v7, v0

    iget v1, v3, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v1, v62, v1

    iget v2, v3, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v2, v56, v2

    mul-float v53, v9, v9

    mul-float v59, v5, v5

    add-float v53, v53, v59

    mul-float v59, v4, v4

    add-float v53, v53, v59

    move-object/from16 v59, v3

    iget v3, v14, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v61, v9, v3

    move/from16 v63, v13

    iget v13, v14, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v64, v5, v13

    add-float v61, v61, v64

    move/from16 v64, v8

    iget v8, v14, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v65, v4, v8

    add-float v61, v61, v65

    mul-float v65, v9, v0

    mul-float v66, v5, v1

    add-float v65, v65, v66

    mul-float v66, v4, v2

    add-float v65, v65, v66

    move/from16 v66, v4

    move/from16 v4, v57

    neg-float v4, v4

    mul-float v57, v53, v4

    mul-float v67, v61, v61

    add-float v57, v57, v67

    mul-float/2addr v3, v0

    mul-float/2addr v13, v1

    add-float/2addr v3, v13

    mul-float/2addr v8, v2

    add-float/2addr v3, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v3, v8

    mul-float v3, v3, v53

    mul-float v13, v61, v8

    mul-float v13, v13, v65

    sub-float/2addr v3, v13

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    sub-float v0, v38, v0

    mul-float v0, v0, v53

    mul-float v1, v65, v65

    add-float v8, v0, v1

    iget-object v13, v12, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v0, p0

    move/from16 v1, v57

    move v2, v3

    move-object/from16 v57, v14

    move-object/from16 v14, v59

    move v3, v8

    move/from16 v59, v4

    move/from16 v8, v66

    move/from16 v4, v48

    move-object/from16 v66, v14

    move v14, v5

    move-object v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->newT:[F

    aget v0, v0, v16

    mul-float v61, v61, v0

    sub-float v61, v61, v65

    div-float v1, v61, v53

    cmpl-float v2, v1, v36

    if-ltz v2, :cond_1e

    cmpg-float v2, v1, v38

    if-gtz v2, :cond_1e

    invoke-virtual {v15, v9, v14, v8}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    invoke-virtual {v15, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    move/from16 v9, v56

    move/from16 v8, v62

    invoke-virtual {v15, v7, v8, v9}, Lcom/threed/jpct/SimpleVector;->add(FFF)V

    move/from16 v48, v0

    const/16 v58, 0x1

    goto :goto_17

    :cond_1e
    move/from16 v9, v56

    move/from16 v8, v62

    :goto_17
    sub-float v13, v6, v11

    sub-float v14, v64, v10

    sub-float v5, v63, v50

    move-object/from16 v4, v66

    iget v0, v4, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v0, v11, v0

    iget v1, v4, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v1, v10, v1

    iget v2, v4, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v2, v50, v2

    mul-float v3, v13, v13

    mul-float v53, v14, v14

    add-float v3, v3, v53

    mul-float v53, v5, v5

    add-float v53, v3, v53

    move-object/from16 v3, v57

    iget v4, v3, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v56, v13, v4

    move/from16 v57, v9

    iget v9, v3, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v61, v14, v9

    add-float v56, v56, v61

    move/from16 v62, v8

    iget v8, v3, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v61, v5, v8

    add-float v56, v56, v61

    mul-float v61, v13, v0

    mul-float v65, v14, v1

    add-float v61, v61, v65

    mul-float v65, v5, v2

    add-float v61, v61, v65

    mul-float v65, v53, v59

    mul-float v67, v56, v56

    add-float v65, v65, v67

    mul-float/2addr v4, v0

    mul-float/2addr v9, v1

    add-float/2addr v4, v9

    mul-float/2addr v8, v2

    add-float/2addr v4, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v4, v8

    mul-float v4, v4, v53

    mul-float v9, v56, v8

    mul-float v9, v9, v61

    sub-float/2addr v4, v9

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float/2addr v2, v2

    add-float/2addr v0, v2

    sub-float v0, v38, v0

    mul-float v0, v0, v53

    mul-float v1, v61, v61

    add-float v8, v0, v1

    iget-object v9, v12, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v0, p0

    move/from16 v1, v65

    move v2, v4

    move-object v4, v3

    move v3, v8

    move-object/from16 v65, v4

    move-object/from16 v8, v66

    move/from16 v4, v48

    move v8, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->newT:[F

    aget v0, v0, v16

    mul-float v56, v56, v0

    sub-float v56, v56, v61

    div-float v1, v56, v53

    cmpl-float v2, v1, v36

    if-ltz v2, :cond_1f

    cmpg-float v2, v1, v38

    if-gtz v2, :cond_1f

    invoke-virtual {v15, v13, v14, v8}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    invoke-virtual {v15, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    move/from16 v1, v50

    invoke-virtual {v15, v11, v10, v1}, Lcom/threed/jpct/SimpleVector;->add(FFF)V

    move/from16 v48, v0

    const/4 v11, 0x1

    goto :goto_18

    :cond_1f
    move/from16 v11, v58

    :goto_18
    sub-float/2addr v7, v6

    sub-float v13, v62, v64

    sub-float v8, v57, v63

    move-object/from16 v9, v66

    iget v0, v9, Lcom/threed/jpct/SimpleVector;->x:F

    sub-float v3, v6, v0

    iget v0, v9, Lcom/threed/jpct/SimpleVector;->y:F

    sub-float v2, v64, v0

    iget v0, v9, Lcom/threed/jpct/SimpleVector;->z:F

    sub-float v5, v63, v0

    mul-float v0, v7, v7

    mul-float v1, v13, v13

    add-float/2addr v0, v1

    mul-float v1, v8, v8

    add-float v10, v0, v1

    move-object/from16 v14, v65

    iget v0, v14, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v1, v7, v0

    iget v4, v14, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v50, v13, v4

    add-float v1, v1, v50

    move/from16 v50, v11

    iget v11, v14, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v53, v8, v11

    add-float v53, v1, v53

    mul-float v1, v7, v3

    mul-float v56, v13, v2

    add-float v1, v1, v56

    mul-float v56, v8, v5

    add-float v56, v1, v56

    mul-float v1, v10, v59

    mul-float v57, v53, v53

    add-float v1, v1, v57

    mul-float/2addr v0, v3

    mul-float/2addr v4, v2

    add-float/2addr v0, v4

    mul-float/2addr v11, v5

    add-float/2addr v0, v11

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v0, v4

    mul-float/2addr v0, v10

    mul-float v4, v4, v53

    mul-float v4, v4, v56

    sub-float v4, v0, v4

    mul-float/2addr v3, v3

    mul-float/2addr v2, v2

    add-float/2addr v3, v2

    mul-float/2addr v5, v5

    add-float/2addr v3, v5

    sub-float v0, v38, v3

    mul-float/2addr v0, v10

    mul-float v2, v56, v56

    add-float v3, v0, v2

    iget-object v5, v12, Lcom/threed/jpct/Object3D;->newT:[F

    move-object/from16 v0, p0

    move v2, v4

    move/from16 v4, v48

    invoke-direct/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->getLowestRoot(FFFF[F)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, v12, Lcom/threed/jpct/Object3D;->newT:[F

    aget v0, v0, v16

    mul-float v53, v53, v0

    sub-float v53, v53, v56

    div-float v1, v53, v10

    cmpl-float v2, v1, v36

    if-ltz v2, :cond_20

    cmpg-float v2, v1, v38

    if-gtz v2, :cond_20

    invoke-virtual {v15, v7, v13, v8}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    invoke-virtual {v15, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    move/from16 v2, v63

    move/from16 v1, v64

    invoke-virtual {v15, v6, v1, v2}, Lcom/threed/jpct/SimpleVector;->add(FFF)V

    const/4 v11, 0x1

    goto :goto_19

    :cond_20
    move/from16 v0, v48

    move/from16 v11, v50

    goto :goto_19

    :cond_21
    move-object v9, v13

    move/from16 v0, v48

    :goto_19
    if-eqz v11, :cond_24

    move/from16 v7, v43

    invoke-direct {v12, v7}, Lcom/threed/jpct/Object3D;->addPolygonID(I)V

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lcom/threed/jpct/CollisionInfo;->foundCollision:Z

    if-eqz v2, :cond_23

    iget v2, v1, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_22

    goto :goto_1b

    :cond_22
    :goto_1a
    const/4 v0, 0x1

    goto :goto_1d

    :cond_23
    :goto_1b
    iput v0, v1, Lcom/threed/jpct/CollisionInfo;->nearestDistance:F

    invoke-virtual {v1, v15}, Lcom/threed/jpct/CollisionInfo;->setIntersectionPoint(Lcom/threed/jpct/SimpleVector;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/threed/jpct/CollisionInfo;->foundCollision:Z

    iput-boolean v0, v1, Lcom/threed/jpct/CollisionInfo;->collision:Z

    iput-object v9, v1, Lcom/threed/jpct/CollisionInfo;->eSpaceBasePoint:Lcom/threed/jpct/SimpleVector;

    iput-object v14, v1, Lcom/threed/jpct/CollisionInfo;->eSpaceVelocity:Lcom/threed/jpct/SimpleVector;

    iput-object v12, v1, Lcom/threed/jpct/CollisionInfo;->collisionObject:Lcom/threed/jpct/Object3D;

    iput-boolean v0, v1, Lcom/threed/jpct/CollisionInfo;->isPartOfCollision:Z

    goto :goto_1d

    :cond_24
    move-object/from16 v1, p1

    goto :goto_1a

    :cond_25
    move-object/from16 v1, p1

    move/from16 v60, v8

    move-object v14, v9

    move-object v9, v10

    move/from16 p2, v15

    move/from16 v0, v34

    move-object/from16 v15, v35

    :goto_1c
    move/from16 v52, v44

    move/from16 v35, v46

    move/from16 v55, v48

    move-object/from16 v46, v50

    const/16 v36, 0x0

    move/from16 v44, v7

    move/from16 v34, v11

    goto :goto_1d

    :cond_26
    move-object/from16 v1, p1

    move/from16 v60, v8

    move/from16 v54, v9

    move-object v9, v10

    move/from16 p2, v15

    move/from16 v0, v34

    move-object/from16 v15, v35

    move-object/from16 v14, v36

    goto :goto_1c

    :goto_1d
    move/from16 v2, p2

    :goto_1e
    add-int/lit8 v7, v52, 0x1

    move-object v13, v1

    move-object v10, v9

    move-object/from16 v36, v14

    move/from16 v11, v34

    move/from16 v0, v35

    move/from16 v14, v42

    move/from16 v40, v44

    move-object/from16 v3, v45

    move-object/from16 v1, v46

    move-object/from16 v6, v47

    move-object/from16 v5, v51

    move/from16 v9, v54

    move/from16 v4, v55

    move/from16 v8, v60

    move-object/from16 v35, v15

    move v15, v2

    move-object/from16 v2, v49

    goto/16 :goto_a
.end method

.method public final collideSpherical([FFF[ZZ)[F
    .locals 54

    move-object/from16 v0, p0

    sget v1, Lcom/threed/jpct/Config;->collideOffset:F

    iget-boolean v2, v0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_0

    add-float v2, v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    cmpg-float v3, v2, v1

    if-gez v3, :cond_0

    move v1, v2

    :cond_0
    iget-object v2, v0, Lcom/threed/jpct/Object3D;->mat5:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v2}, Lcom/threed/jpct/Object3D;->getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v2

    iget-object v3, v0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v3}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v3

    iget-object v3, v3, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v4, 0x0

    aget-object v5, v3, v4

    aget v6, v5, v4

    const/4 v7, 0x1

    aget-object v8, v3, v7

    aget v9, v8, v4

    aget v10, v8, v7

    const/4 v11, 0x2

    aget-object v12, v3, v11

    aget v13, v12, v7

    aget v14, v12, v4

    aget v15, v5, v7

    aget v12, v12, v11

    aget v8, v8, v11

    aget v5, v5, v11

    const/4 v11, 0x3

    aget-object v3, v3, v11

    aget v17, v3, v4

    aget v18, v3, v7

    const/16 v16, 0x2

    aget v3, v3, v16

    aget v19, p1, v4

    mul-float v6, v6, v19

    aget v20, p1, v7

    mul-float v9, v9, v20

    add-float/2addr v6, v9

    aget v9, p1, v16

    mul-float/2addr v14, v9

    add-float/2addr v6, v14

    add-float v6, v6, v17

    mul-float v15, v15, v19

    mul-float v10, v10, v20

    add-float/2addr v15, v10

    mul-float/2addr v13, v9

    add-float/2addr v15, v13

    add-float v15, v15, v18

    mul-float v19, v19, v5

    mul-float v20, v20, v8

    add-float v19, v19, v20

    mul-float/2addr v9, v12

    add-float v19, v19, v9

    add-float v3, v19, v3

    iget-object v5, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/threed/jpct/OcTree;->getCollisionUse()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    invoke-virtual {v5}, Lcom/threed/jpct/OcTree;->getRadiusMultiplier()F

    move-result v9

    mul-float v9, v9, p2

    invoke-virtual {v5, v6, v15, v3, v9}, Lcom/threed/jpct/OcTree;->getColliderLeafs(FFFF)[Ljava/lang/Object;

    move-result-object v5

    aget-object v9, v5, v4

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_2

    return-object p1

    :cond_1
    move v9, v4

    const/4 v5, 0x0

    :cond_2
    iget-object v10, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v10, v10, Lcom/threed/jpct/Mesh;->anzTri:I

    iget-object v12, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/threed/jpct/OcTree;->getCollisionUse()Z

    move-result v12

    if-eqz v12, :cond_3

    aget-object v5, v5, v7

    check-cast v5, [Lcom/threed/jpct/OcTreeNode;

    move v12, v7

    goto :goto_0

    :cond_3
    move v12, v4

    const/4 v5, 0x0

    :goto_0
    iget-object v13, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v14, v13, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v8, v13, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v7, v13, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v13, v13, Lcom/threed/jpct/Mesh;->zOrg:[F

    move/from16 v22, v3

    move/from16 v19, v4

    move/from16 v23, v19

    move/from16 v24, v23

    move/from16 v20, v6

    move/from16 v21, v15

    const/16 v17, 0x0

    :goto_1
    if-eqz v12, :cond_4

    aget-object v10, v5, v19

    invoke-virtual {v10}, Lcom/threed/jpct/OcTreeNode;->getPolygons()[I

    move-result-object v10

    aget-object v17, v5, v19

    invoke-virtual/range {v17 .. v17}, Lcom/threed/jpct/OcTreeNode;->getPolyCount()I

    move-result v17

    add-int/lit8 v19, v19, 0x1

    move/from16 v4, v19

    move/from16 v53, v17

    move-object/from16 v17, v10

    move/from16 v10, v53

    goto :goto_2

    :cond_4
    move/from16 v4, v19

    :goto_2
    iget-object v11, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v11, v11, Lcom/threed/jpct/Mesh;->points:[[I

    mul-float v26, v1, v1

    move-object/from16 v27, v5

    const/4 v5, 0x0

    move/from16 v53, v24

    move/from16 v24, v1

    move/from16 v1, v53

    :goto_3
    if-lt v5, v10, :cond_8

    if-eqz v12, :cond_6

    if-lt v4, v9, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v19, v4

    move-object/from16 v5, v27

    const/4 v4, 0x0

    const/4 v11, 0x3

    move/from16 v53, v24

    move/from16 v24, v1

    move/from16 v1, v53

    goto :goto_1

    :cond_6
    :goto_4
    iget-object v2, v2, Lcom/threed/jpct/Matrix;->mat:[[F

    invoke-static {}, Lcom/threed/jpct/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Polygons checked: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_7
    const/4 v1, 0x0

    aget-object v3, v2, v1

    aget v4, v3, v1

    const/4 v5, 0x1

    aget-object v6, v2, v5

    aget v7, v6, v1

    aget v8, v6, v5

    const/4 v9, 0x2

    aget-object v10, v2, v9

    aget v11, v10, v5

    aget v12, v10, v1

    aget v13, v3, v5

    aget v10, v10, v9

    aget v6, v6, v9

    aget v3, v3, v9

    const/4 v14, 0x3

    aget-object v2, v2, v14

    aget v14, v2, v1

    aget v1, v2, v5

    aget v2, v2, v9

    mul-float v4, v4, v20

    mul-float v7, v7, v21

    add-float/2addr v4, v7

    mul-float v12, v12, v22

    add-float/2addr v4, v12

    add-float/2addr v4, v14

    mul-float v13, v13, v20

    mul-float v8, v8, v21

    add-float/2addr v13, v8

    mul-float v11, v11, v22

    add-float/2addr v13, v11

    add-float/2addr v13, v1

    mul-float v20, v20, v3

    mul-float v21, v21, v6

    add-float v20, v20, v21

    mul-float v22, v22, v10

    add-float v20, v20, v22

    add-float v20, v20, v2

    const/16 v19, 0x0

    aput v4, p1, v19

    const/4 v1, 0x1

    aput v13, p1, v1

    const/4 v1, 0x2

    aput v20, p1, v1

    aget-boolean v1, p4, v19

    or-int v1, v1, v23

    aput-boolean v1, p4, v19

    return-object p1

    :cond_8
    const/16 v19, 0x0

    add-int/lit8 v1, v1, 0x1

    if-eqz v12, :cond_9

    aget v28, v17, v5

    move/from16 v53, v28

    move/from16 v28, v1

    move/from16 v1, v53

    goto :goto_5

    :cond_9
    move/from16 v28, v1

    move v1, v5

    :goto_5
    aget-object v29, v11, v1

    aget v30, v29, v19

    aget v30, v14, v30

    move-object/from16 v31, v2

    iget-object v2, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    move/from16 v32, v4

    iget-object v4, v2, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v4, v4, v30

    move/from16 v33, v9

    iget-object v9, v2, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v9, v9, v30

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v2, v2, v30

    sub-float v30, v4, v6

    sub-float v34, v9, v15

    sub-float v35, v2, v3

    const v36, 0x5368d4a5    # 1.0E12f

    cmpl-float v36, p3, v36

    if-eqz v36, :cond_a

    mul-float v30, v30, v30

    cmpg-float v30, v30, v26

    if-gtz v30, :cond_b

    mul-float v34, v34, v34

    cmpg-float v30, v34, v26

    if-gtz v30, :cond_b

    mul-float v35, v35, v35

    cmpg-float v30, v35, v26

    if-gtz v30, :cond_b

    :cond_a
    const/16 v16, 0x2

    goto :goto_6

    :cond_b
    move/from16 v37, v3

    move/from16 v41, v6

    const/4 v3, 0x3

    const/16 v16, 0x2

    const/16 v18, 0x1

    goto/16 :goto_c

    :goto_6
    aget v30, v29, v16

    aget v30, v14, v30

    const/16 v18, 0x1

    aget v34, v29, v18

    aget v34, v14, v34

    aget v35, v8, v34

    sub-float v35, v35, v4

    aget v36, v7, v34

    sub-float v36, v36, v9

    aget v34, v13, v34

    sub-float v34, v34, v2

    aget v37, v8, v30

    sub-float v37, v37, v4

    aget v38, v7, v30

    sub-float v38, v38, v9

    aget v30, v13, v30

    sub-float v30, v30, v2

    mul-float v39, v36, v30

    mul-float v40, v34, v38

    sub-float v39, v39, v40

    mul-float v34, v34, v37

    mul-float v30, v30, v35

    sub-float v34, v34, v30

    mul-float v35, v35, v38

    mul-float v36, v36, v37

    sub-float v35, v35, v36

    mul-float v30, v39, v39

    mul-float v36, v34, v34

    add-float v30, v30, v36

    mul-float v36, v35, v35

    add-float v30, v30, v36

    invoke-static/range {v30 .. v30}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v30

    div-float v39, v39, v30

    div-float v34, v34, v30

    div-float v35, v35, v30

    mul-float v30, v39, v20

    mul-float v36, v34, v21

    add-float v30, v30, v36

    mul-float v36, v35, v22

    add-float v30, v30, v36

    mul-float v4, v4, v39

    mul-float v9, v9, v34

    add-float/2addr v4, v9

    mul-float v2, v2, v35

    add-float/2addr v4, v2

    sub-float v30, v30, v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gez v2, :cond_15

    mul-float v2, v39, v30

    sub-float v2, v20, v2

    mul-float v4, v34, v30

    sub-float v4, v21, v4

    mul-float v9, v35, v30

    sub-float v9, v22, v9

    const/16 v36, 0x0

    move/from16 v37, v3

    move/from16 v3, v19

    move/from16 v38, v36

    :goto_7
    const v40, 0x40c70d23

    move/from16 v41, v6

    const/4 v6, 0x3

    if-lt v3, v6, :cond_c

    goto :goto_8

    :cond_c
    aget v6, v29, v3

    aget v6, v14, v6

    aget v42, v8, v6

    aget v43, v7, v6

    aget v6, v13, v6

    sub-float v42, v42, v2

    sub-float v43, v43, v4

    sub-float/2addr v6, v9

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v44, v3, 0x3

    aget v44, v29, v44

    aget v44, v14, v44

    aget v45, v8, v44

    aget v46, v7, v44

    aget v44, v13, v44

    sub-float v50, v45, v2

    sub-float v51, v46, v4

    sub-float v52, v44, v9

    move/from16 v44, v42

    move/from16 v45, v43

    move/from16 v46, v6

    move/from16 v47, v50

    move/from16 v48, v51

    move/from16 v49, v52

    invoke-static/range {v44 .. v49}, Lcom/threed/jpct/MathUtils;->calcDot(FFFFFF)F

    move-result v44

    mul-float v42, v42, v42

    mul-float v43, v43, v43

    add-float v42, v42, v43

    mul-float/2addr v6, v6

    add-float v42, v42, v6

    invoke-static/range {v42 .. v42}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    mul-float v50, v50, v50

    mul-float v51, v51, v51

    add-float v50, v50, v51

    mul-float v52, v52, v52

    add-float v50, v50, v52

    invoke-static/range {v50 .. v50}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v42

    mul-float v6, v6, v42

    div-float v6, v44, v6

    move/from16 v42, v2

    move/from16 v43, v3

    float-to-double v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_d

    move/from16 v2, v36

    :cond_d
    add-float v38, v38, v2

    cmpl-float v2, v38, v40

    if-ltz v2, :cond_14

    :goto_8
    cmpl-float v2, v38, v40

    if-ltz v2, :cond_e

    const/4 v3, 0x3

    goto/16 :goto_b

    :cond_e
    move/from16 v2, v19

    const/4 v3, 0x3

    :cond_f
    if-lt v2, v3, :cond_10

    goto/16 :goto_c

    :cond_10
    aget v4, v29, v2

    aget v4, v14, v4

    aget v6, v8, v4

    aget v9, v7, v4

    aget v4, v13, v4

    sub-float v42, v20, v6

    sub-float v43, v21, v9

    sub-float v44, v22, v4

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v25, v2, 0x3

    aget v25, v29, v25

    aget v25, v14, v25

    aget v38, v8, v25

    aget v40, v7, v25

    aget v25, v13, v25

    sub-float v45, v38, v6

    sub-float v46, v40, v9

    sub-float v47, v25, v4

    mul-float v48, v45, v45

    mul-float v49, v46, v46

    add-float v48, v48, v49

    mul-float v49, v47, v47

    add-float v48, v48, v49

    invoke-static/range {v48 .. v48}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v48

    div-float v49, v45, v48

    div-float v50, v46, v48

    div-float v48, v47, v48

    move/from16 v45, v49

    move/from16 v46, v50

    move/from16 v47, v48

    invoke-static/range {v42 .. v47}, Lcom/threed/jpct/MathUtils;->calcDot(FFFFFF)F

    move-result v42

    cmpg-float v43, v42, v36

    if-gtz v43, :cond_11

    goto :goto_9

    :cond_11
    sub-float v43, v6, v38

    mul-float v43, v43, v43

    sub-float v44, v9, v40

    mul-float v44, v44, v44

    add-float v43, v43, v44

    sub-float v44, v4, v25

    mul-float v44, v44, v44

    add-float v43, v43, v44

    invoke-static/range {v43 .. v43}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v43

    cmpl-float v43, v42, v43

    if-ltz v43, :cond_12

    move/from16 v4, v25

    move/from16 v6, v38

    move/from16 v9, v40

    goto :goto_9

    :cond_12
    mul-float v49, v49, v42

    mul-float v50, v50, v42

    mul-float v48, v48, v42

    add-float v6, v6, v49

    add-float v9, v9, v50

    add-float v4, v4, v48

    :goto_9
    sub-float v6, v6, v20

    mul-float/2addr v6, v6

    sub-float v9, v9, v21

    mul-float/2addr v9, v9

    add-float/2addr v6, v9

    sub-float v4, v4, v22

    mul-float/2addr v4, v4

    add-float/2addr v6, v4

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v4

    if-eqz p5, :cond_13

    sget v6, Lcom/threed/jpct/Config;->collideEdgeMul:F

    mul-float v6, v6, p2

    goto :goto_a

    :cond_13
    move/from16 v6, p2

    :goto_a
    cmpg-float v4, v4, v6

    if-gez v4, :cond_f

    :goto_b
    invoke-direct {v0, v1}, Lcom/threed/jpct/Object3D;->addPolygonID(I)V

    sub-float v1, p2, v30

    mul-float v39, v39, v1

    add-float v20, v20, v39

    mul-float v34, v34, v1

    add-float v21, v21, v34

    mul-float v35, v35, v1

    add-float v22, v22, v35

    move/from16 v23, v18

    goto :goto_c

    :cond_14
    move/from16 v6, v41

    move/from16 v2, v42

    move/from16 v3, v43

    goto/16 :goto_7

    :cond_15
    move/from16 v37, v3

    move/from16 v41, v6

    const/4 v3, 0x3

    :goto_c
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v28

    move-object/from16 v2, v31

    move/from16 v4, v32

    move/from16 v9, v33

    move/from16 v3, v37

    move/from16 v6, v41

    goto/16 :goto_3
.end method

.method public compile()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/threed/jpct/Object3D;->compile(ZZ)V

    return-void
.end method

.method public compile(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/threed/jpct/Object3D;->compile(ZZ)V

    return-void
.end method

.method public compile(ZZ)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-nez p1, :cond_1

    .line 5
    sget p1, Lcom/threed/jpct/FrameBuffer;->versionHint:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget p1, p1, Lcom/threed/jpct/Mesh;->anzTri:I

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_2

    :cond_1
    if-nez p2, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/threed/jpct/Object3D;->forcedIndexed:Z

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->indexed:Z

    .line 6
    iput-boolean p2, p0, Lcom/threed/jpct/Object3D;->staticUV:Z

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/threed/jpct/Object3D;->batchSize:I

    .line 8
    invoke-direct {p0}, Lcom/threed/jpct/Object3D;->compileInternal()V

    return-void
.end method

.method public cullingIsInverted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    return v0
.end method

.method public decoupleMesh()V
    .locals 2

    new-instance v0, Lcom/threed/jpct/Mesh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/threed/jpct/Mesh;-><init>(I)V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v1, v0}, Lcom/threed/jpct/Vectors;->setMesh(Lcom/threed/jpct/Mesh;)V

    return-void
.end method

.method public disableCollisionListeners()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    return-void
.end method

.method public disableLazyTransformations()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    return-void
.end method

.method public disableVertexSharing()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->neverOptimize:Z

    return-void
.end method

.method public ellipsoidIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    :cond_0
    iget-object v3, v0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v3}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v3

    iget-object v3, v3, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v5, v3, v4

    aget v6, v5, v4

    const/4 v7, 0x1

    aget-object v8, v3, v7

    aget v9, v8, v4

    aget v10, v8, v7

    const/4 v11, 0x2

    aget-object v12, v3, v11

    aget v13, v12, v7

    aget v14, v12, v4

    aget v15, v5, v7

    aget v12, v12, v11

    aget v8, v8, v11

    aget v5, v5, v11

    const/16 v16, 0x3

    aget-object v3, v3, v16

    aget v16, v3, v4

    aget v17, v3, v7

    aget v3, v3, v11

    iget v11, v1, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float v18, v11, v6

    iget v4, v1, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float v19, v4, v9

    add-float v18, v18, v19

    iget v1, v1, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float v19, v1, v14

    add-float v18, v18, v19

    add-float v18, v18, v16

    mul-float v16, v11, v15

    mul-float v19, v4, v10

    add-float v16, v16, v19

    mul-float v19, v1, v13

    add-float v16, v16, v19

    add-float v16, v16, v17

    mul-float/2addr v11, v5

    mul-float/2addr v4, v8

    add-float/2addr v11, v4

    mul-float/2addr v1, v12

    add-float/2addr v11, v1

    add-float/2addr v11, v3

    iget v1, v2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v3, v2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v2, v2, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v6, v1

    mul-float/2addr v9, v3

    add-float/2addr v6, v9

    mul-float/2addr v14, v2

    add-float/2addr v6, v14

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v15, v1

    mul-float/2addr v10, v3

    add-float/2addr v15, v10

    mul-float/2addr v13, v2

    add-float/2addr v15, v13

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v1, v5

    mul-float/2addr v3, v8

    add-float/2addr v1, v3

    mul-float/2addr v2, v12

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v18, v18, v4

    div-float v16, v16, v6

    div-float/2addr v11, v1

    iget-object v2, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v2, Lcom/threed/jpct/Mesh;->obbStart:I

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v4, v5, v4

    div-float v6, v5, v6

    div-float v1, v5, v1

    iget-object v8, v2, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v9, v2, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v10, v8, v3

    mul-float/2addr v10, v4

    aget v12, v9, v3

    mul-float/2addr v12, v6

    aget v13, v2, v3

    mul-float/2addr v13, v1

    add-int/lit8 v14, v3, 0x1

    add-int/lit8 v3, v3, 0x8

    move v15, v13

    move/from16 v17, v15

    move v7, v14

    move v13, v12

    move v14, v13

    move v12, v10

    :goto_0
    if-lt v7, v3, :cond_3

    add-float v1, v18, v5

    cmpg-float v1, v1, v10

    if-ltz v1, :cond_2

    sub-float v18, v18, v5

    cmpl-float v1, v18, v12

    if-gtz v1, :cond_2

    add-float v1, v16, v5

    cmpg-float v1, v1, v13

    if-ltz v1, :cond_2

    sub-float v16, v16, v5

    cmpl-float v1, v16, v14

    if-gtz v1, :cond_2

    add-float v1, v11, v5

    cmpg-float v1, v1, v15

    if-ltz v1, :cond_2

    sub-float/2addr v11, v5

    cmpl-float v1, v11, v17

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_3
    aget v20, v8, v7

    mul-float v20, v20, v4

    aget v21, v9, v7

    mul-float v21, v21, v6

    aget v22, v2, v7

    mul-float v22, v22, v1

    cmpg-float v23, v20, v10

    if-gez v23, :cond_4

    move/from16 v10, v20

    goto :goto_3

    :cond_4
    cmpl-float v23, v20, v12

    if-lez v23, :cond_5

    move/from16 v12, v20

    :cond_5
    :goto_3
    cmpg-float v20, v21, v13

    if-gez v20, :cond_6

    move/from16 v13, v21

    goto :goto_4

    :cond_6
    cmpl-float v20, v21, v14

    if-lez v20, :cond_7

    move/from16 v14, v21

    :cond_7
    :goto_4
    cmpg-float v20, v22, v15

    if-gez v20, :cond_8

    move/from16 v15, v22

    goto :goto_5

    :cond_8
    cmpl-float v20, v22, v17

    if-lez v20, :cond_9

    move/from16 v17, v22

    :cond_9
    :goto_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public enableCollisionListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    return-void
.end method

.method public enableLazyTransformations()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    return-void
.end method

.method public enlarge(I)V
    .locals 7

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v1, v0

    add-int/2addr v1, p1

    array-length p1, v0

    if-gt v1, p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/threed/jpct/Object3D;

    invoke-direct {p1, v1}, Lcom/threed/jpct/Object3D;-><init>(I)V

    iget-object v0, p1, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v1, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget v5, v4, Lcom/threed/jpct/Vectors;->maxVectors:I

    if-lt v3, v5, :cond_3

    iget-object v3, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iput-object v3, v4, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v3, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    iput-object v3, v4, Lcom/threed/jpct/Vectors;->nvOrg:[F

    iget v0, v0, Lcom/threed/jpct/Vectors;->maxVectors:I

    iput v0, v4, Lcom/threed/jpct/Vectors;->maxVectors:I

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v4, v0}, Lcom/threed/jpct/Vectors;->setMesh(Lcom/threed/jpct/Mesh;)V

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v1, Lcom/threed/jpct/Mesh;->maxVectors:I

    iput v3, v0, Lcom/threed/jpct/Mesh;->maxVectors:I

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v4, v3, Lcom/threed/jpct/Mesh;->points:[[I

    array-length v5, v4

    if-lt v0, v5, :cond_2

    iget-object v0, v1, Lcom/threed/jpct/Mesh;->points:[[I

    iput-object v0, v3, Lcom/threed/jpct/Mesh;->points:[[I

    move v0, v2

    :goto_2
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v4, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    array-length v5, v4

    if-lt v0, v5, :cond_1

    iget-object v0, v1, Lcom/threed/jpct/Mesh;->xOrg:[F

    iput-object v0, v3, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v0, v1, Lcom/threed/jpct/Mesh;->yOrg:[F

    iput-object v0, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v0, v1, Lcom/threed/jpct/Mesh;->zOrg:[F

    iput-object v0, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v0, v1, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iput-object v0, v3, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v0, v1, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iput-object v0, v3, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v0, v1, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iput-object v0, v3, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget-object v0, v1, Lcom/threed/jpct/Mesh;->coords:[I

    iput-object v0, v3, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->texture:[I

    iget-object v1, p1, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lcom/threed/jpct/Object3D;->texture:[I

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->texture:[I

    return-void

    :cond_1
    iget-object v5, v1, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v4, v4, v0

    aput v4, v5, v0

    iget-object v4, v1, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-object v5, v3, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v5, v5, v0

    aput v5, v4, v0

    iget-object v4, v1, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v5, v3, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v5, v5, v0

    aput v5, v4, v0

    iget-object v4, v1, Lcom/threed/jpct/Mesh;->nxOrg:[F

    iget-object v5, v3, Lcom/threed/jpct/Mesh;->nxOrg:[F

    aget v5, v5, v0

    aput v5, v4, v0

    iget-object v4, v1, Lcom/threed/jpct/Mesh;->nyOrg:[F

    iget-object v5, v3, Lcom/threed/jpct/Mesh;->nyOrg:[F

    aget v5, v5, v0

    aput v5, v4, v0

    iget-object v4, v1, Lcom/threed/jpct/Mesh;->nzOrg:[F

    iget-object v5, v3, Lcom/threed/jpct/Mesh;->nzOrg:[F

    aget v5, v5, v0

    aput v5, v4, v0

    iget-object v4, v1, Lcom/threed/jpct/Mesh;->coords:[I

    iget-object v3, v3, Lcom/threed/jpct/Mesh;->coords:[I

    aget v3, v3, v0

    aput v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, v1, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v3, v3, v0

    aget-object v4, v4, v0

    aget v5, v4, v2

    aput v5, v3, v2

    const/4 v5, 0x1

    aget v6, v4, v5

    aput v6, v3, v5

    const/4 v5, 0x2

    aget v4, v4, v5

    aput v4, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    iget-object v5, v0, Lcom/threed/jpct/Vectors;->nuOrg:[F

    iget-object v6, v4, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v6, v6, v3

    aput v6, v5, v3

    iget-object v5, v0, Lcom/threed/jpct/Vectors;->nvOrg:[F

    iget-object v4, v4, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v4, v4, v3

    aput v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method public forceGeometryIndices(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->forcedIndexed:Z

    return-void
.end method

.method public getAdditionalColor()Lcom/threed/jpct/RGBColor;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    return-object v0
.end method

.method public getAnimationSequence()Lcom/threed/jpct/Animation;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    return-object v0
.end method

.method public getCenter()Lcom/threed/jpct/SimpleVector;
    .locals 3

    iget v0, p0, Lcom/threed/jpct/Object3D;->centerX:F

    iget v1, p0, Lcom/threed/jpct/Object3D;->centerY:F

    iget v2, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getCollisionListeners()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/threed/jpct/CollisionListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getCulling()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->doCulling:Z

    return v0
.end method

.method public getEllipsoidMode()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Object3D;->ellipsoidMode:I

    return v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Object3D;->number:I

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public getInverseWorldTransformation()Lcom/threed/jpct/Matrix;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getWorldTransformation()Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->invert()Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v1, :cond_3

    .line 6
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    if-eqz v1, :cond_2

    .line 7
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 9
    invoke-virtual {v1, v0}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    goto :goto_1

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    :cond_3
    :goto_1
    return-object v0
.end method

.method public getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 3

    if-nez p1, :cond_0

    .line 11
    new-instance p1, Lcom/threed/jpct/Matrix;

    invoke-direct {p1}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/threed/jpct/Object3D;->getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 13
    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    if-nez v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1, v1}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    goto :goto_2

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 16
    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v1, :cond_4

    .line 17
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    if-eqz v1, :cond_3

    .line 18
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    const/4 v2, 0x0

    .line 19
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->invCacheDump:Lcom/threed/jpct/Matrix;

    .line 20
    invoke-virtual {v1, v0}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->invCache:Lcom/threed/jpct/Matrix;

    :cond_4
    :goto_1
    if-eq p1, v0, :cond_5

    .line 22
    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    :cond_5
    :goto_2
    return-object p1
.end method

.method public getLazyTransformationState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    return v0
.end method

.method public getLightCount()I
    .locals 4

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    array-length v3, v2

    if-lt v0, v3, :cond_1

    array-length v0, v2

    return v0

    :cond_1
    aget-object v2, v2, v0

    aget v2, v2, v1

    const v3, -0x39e3c400    # -9999.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getLighting()I
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isLit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getMaxLights()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Object3D;->maxLights:I

    return v0
.end method

.method public getMesh()Lcom/threed/jpct/Mesh;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOcTree()Lcom/threed/jpct/OcTree;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    return-object v0
.end method

.method public getOrigin()Lcom/threed/jpct/SimpleVector;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getTranslation()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getOriginMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    return-object v0
.end method

.method public getParents()[Lcom/threed/jpct/Object3D;
    .locals 4

    iget v0, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    new-array v1, v0, [Lcom/threed/jpct/Object3D;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object v1
.end method

.method public getPolygonManager()Lcom/threed/jpct/PolygonManager;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/threed/jpct/PolygonManager;

    invoke-direct {v0, p0}, Lcom/threed/jpct/PolygonManager;-><init>(Lcom/threed/jpct/Object3D;)V

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->polyManager:Lcom/threed/jpct/PolygonManager;

    return-object v0
.end method

.method public final getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V
    .locals 17

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Lcom/threed/jpct/Object3D;->getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v2

    iget-object v2, v2, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v3, 0x0

    aget-object v4, v2, v3

    aget v5, v4, v3

    const/4 v6, 0x1

    aget-object v7, v2, v6

    aget v8, v7, v3

    aget v9, v7, v6

    const/4 v10, 0x2

    aget-object v11, v2, v10

    aget v12, v11, v6

    aget v13, v11, v3

    aget v14, v4, v6

    aget v11, v11, v10

    aget v7, v7, v10

    aget v4, v4, v10

    const/4 v15, 0x3

    aget-object v2, v2, v15

    aget v15, v2, v3

    aget v16, v2, v6

    aget v2, v2, v10

    mul-float v5, v5, p1

    mul-float v8, v8, p2

    add-float/2addr v5, v8

    mul-float v8, p3, v13

    add-float/2addr v5, v8

    add-float/2addr v5, v15

    mul-float v8, p1, v14

    mul-float v9, v9, p2

    add-float/2addr v8, v9

    mul-float v9, p3, v12

    add-float/2addr v8, v9

    add-float v8, v8, v16

    mul-float v4, v4, p1

    mul-float v7, v7, p2

    add-float/2addr v4, v7

    mul-float v7, p3, v11

    add-float/2addr v4, v7

    add-float/2addr v4, v2

    if-eqz v0, :cond_0

    iput v5, v0, Lcom/threed/jpct/SimpleVector;->x:F

    iput v8, v0, Lcom/threed/jpct/SimpleVector;->y:F

    iput v4, v0, Lcom/threed/jpct/SimpleVector;->z:F

    :cond_0
    if-eqz p5, :cond_1

    aput v5, p5, v3

    aput v8, p5, v6

    aput v4, p5, v10

    :cond_1
    return-void
.end method

.method public getRenderHook()Lcom/threed/jpct/IRenderHook;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    return-object v0
.end method

.method public getRotationMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    return-object v0
.end method

.method public getRotationPivot()Lcom/threed/jpct/SimpleVector;
    .locals 3

    iget v0, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget v1, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iget v2, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    invoke-static {v0, v1, v2}, Lcom/threed/jpct/SimpleVector;->create(FFF)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    return v0
.end method

.method public getShader()Lcom/threed/jpct/GLSLShader;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    return-object v0
.end method

.method public getShaderInternal()Lcom/threed/jpct/GLSLShader;
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/threed/jpct/World;->globalShader:Lcom/threed/jpct/GLSLShader;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0
.end method

.method public getTextureMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    return-object v0
.end method

.method public getTransformedCenter()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 1
    new-instance v0, Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0}, Lcom/threed/jpct/SimpleVector;-><init>()V

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->getTransformedCenter(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getTransformedCenter(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 7

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 3
    :cond_0
    iget v1, p0, Lcom/threed/jpct/Object3D;->centerX:F

    iget v2, p0, Lcom/threed/jpct/Object3D;->centerY:F

    iget v3, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    const/4 v5, 0x0

    sget-object v6, Lcom/threed/jpct/Object3D;->mat7:Lcom/threed/jpct/Matrix;

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/threed/jpct/Object3D;->getProjectedPoint(FFFLcom/threed/jpct/SimpleVector;[FLcom/threed/jpct/Matrix;)V

    return-object p1
.end method

.method public getTranslation()Lcom/threed/jpct/SimpleVector;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getTranslation()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    return-object v0
.end method

.method public getTranslation(Lcom/threed/jpct/SimpleVector;)Lcom/threed/jpct/SimpleVector;
    .locals 4

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/threed/jpct/SimpleVector;

    invoke-direct {p1}, Lcom/threed/jpct/SimpleVector;-><init>()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v0, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v2, v0}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    return-object p1
.end method

.method public getTranslationMatrix()Lcom/threed/jpct/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    return-object v0
.end method

.method public getTransparency()I
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget v0, p0, Lcom/threed/jpct/Object3D;->transValue:I

    return v0
.end method

.method public getTransparencyMode()I
    .locals 1

    iget v0, p0, Lcom/threed/jpct/Object3D;->transMode:I

    return v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getVirtualizer()Lcom/threed/jpct/Virtualizer;
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    return-object v0
.end method

.method public getVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isVisible:Z

    return v0
.end method

.method public getWorldTransformation()Lcom/threed/jpct/Matrix;
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v0

    goto/16 :goto_3

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 4
    iget-object v1, v0, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 5
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v3, v3, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v3, v2

    .line 6
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget-object v4, v4, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v2, v4, v2

    .line 7
    iget v4, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    neg-float v4, v4

    const/4 v5, 0x0

    aput v4, v1, v5

    .line 8
    iget v4, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    neg-float v4, v4

    const/4 v6, 0x1

    aput v4, v1, v6

    .line 9
    iget v4, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    neg-float v4, v4

    const/4 v7, 0x2

    aput v4, v1, v7

    .line 10
    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    if-nez v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    goto :goto_1

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-nez v1, :cond_3

    .line 13
    new-instance v0, Lcom/threed/jpct/Matrix;

    invoke-direct {v0}, Lcom/threed/jpct/Matrix;-><init>()V

    return-object v0

    .line 14
    :cond_3
    iget-object v1, v1, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget-object v1, v1, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    .line 15
    invoke-direct {p0, v6}, Lcom/threed/jpct/Object3D;->getTmpMatrix(I)Lcom/threed/jpct/Matrix;

    move-result-object v1

    .line 16
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    invoke-virtual {v4, v1}, Lcom/threed/jpct/Matrix;->invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    .line 17
    iget v4, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    invoke-virtual {v1, v4}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 19
    :goto_1
    iget v1, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    aget v4, v3, v5

    add-float/2addr v1, v4

    aget v4, v2, v5

    add-float/2addr v1, v4

    iget v4, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    aget v5, v3, v6

    add-float/2addr v4, v5

    aget v5, v2, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    .line 20
    aget v3, v3, v7

    add-float/2addr v5, v3

    aget v2, v2, v7

    add-float/2addr v5, v2

    .line 21
    invoke-virtual {v0, v1, v4, v5}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    .line 22
    iget v1, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-eqz v1, :cond_5

    .line 23
    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    if-eqz v1, :cond_4

    .line 24
    invoke-direct {p0, v0}, Lcom/threed/jpct/Object3D;->recurseObjectsBillboarded(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    goto :goto_2

    .line 25
    :cond_4
    invoke-direct {p0, v0}, Lcom/threed/jpct/Object3D;->recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 26
    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v1, :cond_7

    .line 27
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    if-eqz v1, :cond_6

    .line 28
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    const/4 v2, 0x0

    .line 29
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 30
    invoke-virtual {v1, v0}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    goto :goto_3

    .line 31
    :cond_6
    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    :cond_7
    :goto_3
    return-object v0
.end method

.method public getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;
    .locals 12

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lcom/threed/jpct/Matrix;

    invoke-direct {p1}, Lcom/threed/jpct/Matrix;-><init>()V

    .line 33
    :cond_0
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    if-nez v0, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    goto/16 :goto_4

    .line 35
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0}, Lcom/threed/jpct/Object3D;->getTmpMatrix(I)Lcom/threed/jpct/Matrix;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/threed/jpct/Matrix;->setIdentity()V

    .line 38
    iget-object v2, p1, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v3, 0x3

    aget-object v2, v2, v3

    .line 39
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v4, v4, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v4, v4, v3

    .line 40
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget-object v5, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v5, v5, v3

    .line 41
    iget v6, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    neg-float v7, v6

    aput v7, v2, v0

    .line 42
    iget v7, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    neg-float v8, v7

    const/4 v9, 0x1

    aput v8, v2, v9

    .line 43
    iget v8, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    neg-float v10, v8

    const/4 v11, 0x2

    aput v10, v2, v11

    .line 44
    iget-object v2, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v2, v2, v3

    .line 45
    aget v3, v4, v0

    add-float/2addr v6, v3

    aget v3, v5, v0

    add-float/2addr v6, v3

    aput v6, v2, v0

    .line 46
    aget v0, v4, v9

    add-float/2addr v7, v0

    aget v0, v5, v9

    add-float/2addr v7, v0

    aput v7, v2, v9

    .line 47
    aget v0, v4, v11

    add-float/2addr v8, v0

    aget v0, v5, v11

    add-float/2addr v8, v0

    aput v8, v2, v11

    .line 48
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    if-nez v0, :cond_3

    .line 49
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    goto :goto_1

    .line 50
    :cond_3
    invoke-direct {p0, v9}, Lcom/threed/jpct/Object3D;->getTmpMatrix(I)Lcom/threed/jpct/Matrix;

    move-result-object v0

    .line 51
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    invoke-virtual {v2, v0}, Lcom/threed/jpct/Matrix;->invert(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    .line 52
    iget v2, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    invoke-virtual {v0, v2}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    .line 53
    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 54
    :goto_1
    invoke-virtual {p1, v1}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    .line 55
    iget v0, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-eqz v0, :cond_5

    .line 56
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    if-eqz v0, :cond_4

    .line 57
    invoke-direct {p0, p1}, Lcom/threed/jpct/Object3D;->recurseObjectsBillboarded(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    goto :goto_2

    .line 58
    :cond_4
    invoke-direct {p0, p1}, Lcom/threed/jpct/Object3D;->recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, p1

    .line 59
    :goto_2
    iget-boolean v1, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v1, :cond_7

    .line 60
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    if-eqz v1, :cond_6

    .line 61
    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    const/4 v2, 0x0

    .line 62
    iput-object v2, p0, Lcom/threed/jpct/Object3D;->transCacheDump:Lcom/threed/jpct/Matrix;

    .line 63
    invoke-virtual {v1, v0}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    goto :goto_3

    .line 64
    :cond_6
    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->cloneMatrix()Lcom/threed/jpct/Matrix;

    move-result-object v1

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->transCache:Lcom/threed/jpct/Matrix;

    :cond_7
    :goto_3
    if-eq p1, v0, :cond_8

    .line 65
    invoke-virtual {p1, v0}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    :cond_8
    :goto_4
    return-object p1
.end method

.method public getXAxis()Lcom/threed/jpct/SimpleVector;
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getXAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    return-object v0
.end method

.method public getYAxis()Lcom/threed/jpct/SimpleVector;
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getYAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    return-object v0
.end method

.method public getZAxis()Lcom/threed/jpct/SimpleVector;
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->getZAxis()Lcom/threed/jpct/SimpleVector;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/threed/jpct/SimpleVector;->scalarMul(F)V

    return-object v0
.end method

.method public hasChild(Lcom/threed/jpct/Object3D;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/threed/jpct/Object3D;->hasParent(Lcom/threed/jpct/Object3D;)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "Testing a null-Object3D for being a child is rather senseless!"

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    const/4 p1, 0x0

    return p1
.end method

.method public hasParent(Lcom/threed/jpct/Object3D;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-lt v2, v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/threed/jpct/Object3D;->number:I

    iget v4, p1, Lcom/threed/jpct/Object3D;->number:I

    if-ne v3, v4, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "Testing a null-Object3D for being a parent is rather senseless!"

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return v1
.end method

.method public hasVertexAlpha()Z
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v0, v0, Lcom/threed/jpct/Vectors;->alpha:[F

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public invert()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v2, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v3, v2, Lcom/threed/jpct/Mesh;->points:[[I

    aget-object v3, v3, v1

    aget v4, v3, v0

    const/4 v5, 0x2

    aget v3, v3, v5

    iget-object v2, v2, Lcom/threed/jpct/Mesh;->coords:[I

    aget v5, v2, v4

    aget v6, v2, v3

    aput v6, v2, v4

    aput v5, v2, v3

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v5, v2, Lcom/threed/jpct/Vectors;->nuOrg:[F

    aget v6, v5, v4

    aget v7, v5, v3

    aput v7, v5, v4

    aput v6, v5, v3

    iget-object v2, v2, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v5, v2, v4

    aget v6, v2, v3

    aput v6, v2, v4

    aput v5, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public invertCulling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->reverseCulling:Z

    return-void
.end method

.method public isCompiled()Z
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isEnvmapped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    return v0
.end method

.method public notifyCollisionListeners(II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/Object3D;->notifyCollisionListeners(Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public notifyCollisionListeners(Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->disableListeners:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance v0, Lcom/threed/jpct/CollisionEvent;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/threed/jpct/CollisionEvent;-><init>(Lcom/threed/jpct/Object3D;Lcom/threed/jpct/Object3D;II[Lcom/threed/jpct/Object3D;Lcom/threed/jpct/SimpleVector;)V

    .line 4
    iget-object p1, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-lt p2, p1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object p3, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/threed/jpct/CollisionListener;

    .line 6
    invoke-interface {p3}, Lcom/threed/jpct/CollisionListener;->requiresPolygonIDs()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-virtual {v0}, Lcom/threed/jpct/CollisionEvent;->getPolygonIDs()[I

    move-result-object p4

    if-nez p4, :cond_2

    .line 7
    iget-object p4, p0, Lcom/threed/jpct/Object3D;->polygonIDs:[I

    iget p5, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    invoke-virtual {v0, p4, p5}, Lcom/threed/jpct/CollisionEvent;->setPolygonIDs([II)V

    .line 8
    :cond_2
    invoke-interface {p3, v0}, Lcom/threed/jpct/CollisionListener;->collision(Lcom/threed/jpct/CollisionEvent;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public final rayIntersectsAABB(FFFFFFZ)F
    .locals 24

    move-object/from16 v0, p0

    .line 5
    iget-boolean v1, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    const v2, 0x5368d4a5    # 1.0E12f

    if-nez v1, :cond_0

    return v2

    .line 6
    :cond_0
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    .line 7
    iget-object v1, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v3, 0x0

    aget-object v4, v1, v3

    aget v5, v4, v3

    const/4 v6, 0x1

    .line 8
    aget-object v7, v1, v6

    aget v8, v7, v3

    .line 9
    aget v9, v7, v6

    const/4 v10, 0x2

    .line 10
    aget-object v11, v1, v10

    aget v12, v11, v6

    .line 11
    aget v13, v11, v3

    .line 12
    aget v14, v4, v6

    .line 13
    aget v11, v11, v10

    .line 14
    aget v7, v7, v10

    .line 15
    aget v4, v4, v10

    const/4 v15, 0x3

    .line 16
    aget-object v1, v1, v15

    aget v3, v1, v3

    .line 17
    aget v15, v1, v6

    .line 18
    aget v1, v1, v10

    mul-float v10, p4, v5

    mul-float v16, p5, v8

    add-float v10, v10, v16

    mul-float v16, p6, v13

    add-float v10, v10, v16

    mul-float v16, p4, v14

    mul-float v17, p5, v9

    add-float v16, v16, v17

    mul-float v17, p6, v12

    add-float v16, v16, v17

    mul-float v17, p4, v4

    mul-float v18, p5, v7

    add-float v17, v17, v18

    mul-float v18, p6, v11

    add-float v17, v17, v18

    mul-float v5, v5, p1

    mul-float v8, v8, p2

    add-float/2addr v5, v8

    mul-float v8, p3, v13

    add-float/2addr v5, v8

    add-float/2addr v5, v3

    mul-float v3, p1, v14

    mul-float v8, p2, v9

    add-float/2addr v3, v8

    mul-float v8, p3, v12

    add-float/2addr v3, v8

    add-float/2addr v3, v15

    mul-float v4, v4, p1

    mul-float v7, v7, p2

    add-float/2addr v4, v7

    mul-float v7, p3, v11

    add-float/2addr v4, v7

    add-float/2addr v4, v1

    if-nez p7, :cond_1

    mul-float v1, v10, v10

    mul-float v7, v16, v16

    add-float/2addr v1, v7

    mul-float v7, v17, v17

    add-float/2addr v1, v7

    .line 19
    invoke-static {v1}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    div-float/2addr v10, v1

    div-float v16, v16, v1

    div-float v17, v17, v1

    .line 20
    :cond_1
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v7, v1, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 21
    iget-object v8, v1, Lcom/threed/jpct/Mesh;->xOrg:[F

    .line 22
    iget-object v9, v1, Lcom/threed/jpct/Mesh;->yOrg:[F

    .line 23
    iget-object v1, v1, Lcom/threed/jpct/Mesh;->zOrg:[F

    .line 24
    aget v11, v8, v7

    .line 25
    aget v12, v9, v7

    .line 26
    aget v13, v1, v7

    move v14, v12

    move v15, v13

    move/from16 v18, v15

    move v12, v11

    move v13, v14

    :goto_0
    const/16 v2, 0x8

    if-lt v6, v2, :cond_d

    .line 27
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3089705f    # 1.0E-9f

    cmpl-float v1, v1, v2

    const v6, 0x51ba43b7    # 1.0E11f

    const v7, -0x2e45bc49    # -1.0E11f

    if-lez v1, :cond_2

    sub-float/2addr v11, v5

    div-float/2addr v11, v10

    sub-float/2addr v12, v5

    div-float/2addr v12, v10

    cmpl-float v1, v11, v12

    if-lez v1, :cond_3

    move/from16 v23, v12

    move v12, v11

    move/from16 v11, v23

    goto :goto_1

    :cond_2
    move v12, v6

    move v11, v7

    .line 28
    :cond_3
    :goto_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    sub-float/2addr v13, v3

    div-float v13, v13, v16

    sub-float/2addr v14, v3

    div-float v14, v14, v16

    cmpl-float v1, v13, v14

    if-lez v1, :cond_5

    move/from16 v23, v14

    move v14, v13

    move/from16 v13, v23

    goto :goto_2

    :cond_4
    move v14, v6

    move v13, v7

    .line 29
    :cond_5
    :goto_2
    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    sub-float/2addr v15, v4

    div-float v6, v15, v17

    sub-float v18, v18, v4

    div-float v1, v18, v17

    cmpl-float v2, v6, v1

    if-lez v2, :cond_6

    move v7, v1

    goto :goto_3

    :cond_6
    move v7, v6

    move v6, v1

    :cond_7
    :goto_3
    cmpg-float v1, v11, v13

    if-gez v1, :cond_8

    move v11, v13

    :cond_8
    cmpg-float v1, v11, v7

    if-gez v1, :cond_9

    goto :goto_4

    :cond_9
    move v7, v11

    :goto_4
    cmpl-float v1, v12, v14

    if-lez v1, :cond_a

    move v12, v14

    :cond_a
    cmpl-float v1, v12, v6

    if-lez v1, :cond_b

    goto :goto_5

    :cond_b
    move v6, v12

    :goto_5
    cmpg-float v1, v7, v6

    if-gtz v1, :cond_c

    const/4 v1, 0x0

    cmpl-float v1, v6, v1

    if-lez v1, :cond_c

    return v7

    :cond_c
    const v2, 0x5368d4a5    # 1.0E12f

    return v2

    :cond_d
    const v2, 0x5368d4a5    # 1.0E12f

    add-int v19, v6, v7

    .line 30
    aget v20, v8, v19

    .line 31
    aget v21, v1, v19

    .line 32
    aget v19, v9, v19

    cmpg-float v22, v20, v11

    if-gez v22, :cond_e

    move/from16 v11, v20

    goto :goto_6

    :cond_e
    cmpl-float v22, v20, v12

    if-lez v22, :cond_f

    move/from16 v12, v20

    :cond_f
    :goto_6
    cmpg-float v20, v19, v13

    if-gez v20, :cond_10

    move/from16 v13, v19

    goto :goto_7

    :cond_10
    cmpl-float v20, v19, v14

    if-lez v20, :cond_11

    move/from16 v14, v19

    :cond_11
    :goto_7
    cmpg-float v19, v21, v15

    if-gez v19, :cond_12

    move/from16 v15, v21

    goto :goto_8

    :cond_12
    cmpl-float v19, v21, v18

    if-lez v19, :cond_13

    move/from16 v18, v21

    :cond_13
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method

.method public rayIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)F
    .locals 8

    .line 2
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, p2, Lcom/threed/jpct/SimpleVector;->z:F

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(FFFFFFZ)F

    move-result p1

    return p1
.end method

.method public rayIntersectsAABB(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;Z)F
    .locals 8

    .line 1
    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget v3, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iget v4, p2, Lcom/threed/jpct/SimpleVector;->x:F

    iget v5, p2, Lcom/threed/jpct/SimpleVector;->y:F

    iget v6, p2, Lcom/threed/jpct/SimpleVector;->z:F

    move-object v0, p0

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(FFFFFFZ)F

    move-result p1

    return p1
.end method

.method public rayIntersectsAABB([F[F)F
    .locals 9

    const/4 v0, 0x0

    .line 3
    aget v2, p1, v0

    const/4 v1, 0x1

    aget v3, p1, v1

    const/4 v4, 0x2

    aget p1, p1, v4

    aget v5, p2, v0

    aget v6, p2, v1

    aget v7, p2, v4

    const/4 v8, 0x0

    move-object v1, p0

    move v4, p1

    invoke-virtual/range {v1 .. v8}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(FFFFFFZ)F

    move-result p1

    return p1
.end method

.method public rayIntersectsAABB([F[FZ)F
    .locals 9

    const/4 v0, 0x0

    .line 4
    aget v2, p1, v0

    const/4 v1, 0x1

    aget v3, p1, v1

    const/4 v4, 0x2

    aget p1, p1, v4

    aget v5, p2, v0

    aget v6, p2, v1

    aget v7, p2, v4

    move-object v1, p0

    move v4, p1

    move v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/threed/jpct/Object3D;->rayIntersectsAABB(FFFFFFZ)F

    move-result p1

    return p1
.end method

.method public reallyStrip()V
    .locals 10

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->toStrip:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threed/jpct/Object3D;->hasBeenStripped:Z

    iget-boolean v2, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/threed/jpct/Object3D;->staticUV:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v2}, Lcom/threed/jpct/Vectors;->strip()V

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v3, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    invoke-virtual {v2, v3, p0}, Lcom/threed/jpct/Mesh;->strongStrip(Lcom/threed/jpct/World;Lcom/threed/jpct/Object3D;)V

    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/threed/jpct/Config;->aggressiveStripping:Z

    if-eqz v2, :cond_a

    iput-boolean v1, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v2, :cond_1

    array-length v2, v2

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    add-int/2addr v2, v1

    new-array v3, v2, [I

    move v4, v0

    :goto_1
    const/16 v5, -0x6f

    if-lt v4, v2, :cond_9

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/threed/jpct/CompiledInstance;

    iget v2, v2, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    iget-object v4, p0, Lcom/threed/jpct/Object3D;->texture:[I

    aget v4, v4, v2

    aget v7, v3, v0

    if-eq v4, v7, :cond_6

    if-eq v7, v5, :cond_6

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    :goto_3
    iget-boolean v2, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    const-string v4, "Object \'"

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' uses multiple texture sets!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' uses one texture set!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;)V

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/threed/jpct/Object3D;->texture:[I

    aget v4, v3, v0

    aput v4, v2, v0

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v2, :cond_a

    array-length v2, v2

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v1

    aput v2, v4, v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    move v1, v0

    :goto_4
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v4, v2

    if-lt v1, v4, :cond_5

    goto :goto_6

    :cond_5
    aget-object v2, v2, v1

    add-int/lit8 v1, v1, 0x1

    aget v4, v3, v1

    aput v4, v2, v0

    goto :goto_4

    :cond_6
    aput v4, v3, v0

    iget-object v4, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-eqz v4, :cond_2

    move v4, v0

    :goto_5
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    array-length v8, v7

    if-lt v4, v8, :cond_7

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v8, v4, 0x1

    aget v9, v3, v8

    aget-object v4, v7, v4

    aget v4, v4, v2

    if-eq v9, v4, :cond_8

    if-eq v9, v5, :cond_8

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->oneTextureSet:Z

    goto/16 :goto_2

    :cond_8
    aput v4, v3, v8

    move v4, v8

    goto :goto_5

    :cond_9
    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_6
    return-void
.end method

.method public removeChild(Lcom/threed/jpct/Object3D;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/threed/jpct/Object3D;->removeParent(Lcom/threed/jpct/Object3D;)V

    goto :goto_0

    :cond_0
    const-string p1, "Tried to remove a non-existent Object3D from the child collection!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public declared-synchronized removeCollisionListener(Lcom/threed/jpct/CollisionListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget p1, Lcom/threed/jpct/Object3D;->globalListenerCount:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/threed/jpct/Object3D;->globalListenerCount:I

    iget-object p1, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->collisionListener:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeParent(Lcom/threed/jpct/Object3D;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-lt v1, v3, :cond_0

    if-nez v2, :cond_5

    const-string p1, "Tried to remove an object from the parent collection that isn\'t part of it!"

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_3

    :cond_0
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/threed/jpct/Object3D;->number:I

    iget v5, p1, Lcom/threed/jpct/Object3D;->number:I

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, -0x1

    const/4 v2, 0x1

    if-eq v1, v3, :cond_2

    move v3, v1

    :goto_1
    iget v4, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    sub-int/2addr v4, v2

    if-lt v3, v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/threed/jpct/Object3D;->parent:[Lcom/threed/jpct/Object3D;

    add-int/lit8 v5, v3, 0x1

    aget-object v6, v4, v5

    aput-object v6, v4, v3

    move v3, v5

    goto :goto_1

    :cond_2
    :goto_2
    iget v3, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/threed/jpct/Object3D;->parentCnt:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string p1, "Tried to remove a non-existent object from the parent collection!"

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_5
    :goto_3
    return-void
.end method

.method public final render()V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/threed/jpct/Object3D;->isLit:Z

    if-nez v1, :cond_0

    sget-object v1, Lcom/threed/jpct/Object3D;->DUMMY_LIGHTS:Lcom/threed/jpct/Lights;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget-object v1, v1, Lcom/threed/jpct/World;->lights:Lcom/threed/jpct/Lights;

    :goto_0
    iget v2, v1, Lcom/threed/jpct/Lights;->lightCnt:I

    iget-object v3, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget-object v3, v3, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    const/4 v5, 0x7

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v4, :cond_1

    new-array v4, v7, [I

    aput v5, v4, v8

    aput v6, v4, v9

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    :cond_1
    iget-object v4, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    aget-object v10, v4, v9

    const v11, -0x39e3c400    # -9999.0f

    aput v11, v10, v9

    aget-object v10, v4, v8

    aput v11, v10, v9

    aget-object v10, v4, v7

    aput v11, v10, v9

    const/4 v10, 0x3

    aget-object v12, v4, v10

    aput v11, v12, v9

    const/4 v12, 0x4

    aget-object v13, v4, v12

    aput v11, v13, v9

    const/4 v13, 0x5

    aget-object v14, v4, v13

    aput v11, v14, v9

    const/4 v14, 0x6

    aget-object v15, v4, v14

    aput v11, v15, v9

    aget-object v4, v4, v5

    aput v11, v4, v9

    iget-boolean v4, v0, Lcom/threed/jpct/Object3D;->isLit:Z

    if-eqz v4, :cond_e

    if-lez v2, :cond_e

    sget-object v4, Lcom/threed/jpct/Object3D;->lightsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-object v5, Lcom/threed/jpct/Object3D;->litData:[[F

    array-length v5, v5

    if-ge v5, v2, :cond_2

    new-array v5, v7, [I

    aput v7, v5, v8

    aput v2, v5, v9

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[F

    sput-object v5, Lcom/threed/jpct/Object3D;->litData:[[F

    :cond_2
    const/4 v5, 0x0

    move v11, v9

    :goto_1
    const/high16 v15, -0x40800000    # -1.0f

    const/16 v16, 0x0

    if-lt v11, v2, :cond_6

    iget v2, v0, Lcom/threed/jpct/Object3D;->maxLights:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v2, v5, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    :cond_3
    move v5, v9

    :goto_2
    if-lt v5, v2, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    aget v6, v6, v8

    float-to-int v6, v6

    invoke-virtual {v1, v6}, Lcom/threed/jpct/Lights;->getAttenuation(I)F

    move-result v11

    cmpl-float v17, v11, v15

    if-eqz v17, :cond_5

    cmpg-float v17, v11, v16

    if-gez v17, :cond_5

    sget-boolean v17, Lcom/threed/jpct/Config;->fadeoutLight:Z

    if-eqz v17, :cond_5

    sget v11, Lcom/threed/jpct/Config;->linearDiv:F

    :cond_5
    iget-object v15, v0, Lcom/threed/jpct/Object3D;->nearestLights:[[F

    aget-object v15, v15, v5

    aput v11, v15, v9

    iget-object v11, v1, Lcom/threed/jpct/Lights;->xTr:[F

    aget v11, v11, v6

    aput v11, v15, v8

    iget-object v11, v1, Lcom/threed/jpct/Lights;->yTr:[F

    aget v11, v11, v6

    neg-float v11, v11

    aput v11, v15, v7

    iget-object v11, v1, Lcom/threed/jpct/Lights;->zTr:[F

    aget v11, v11, v6

    neg-float v11, v11

    aput v11, v15, v10

    iget-object v11, v1, Lcom/threed/jpct/Lights;->rOrg:[F

    aget v11, v11, v6

    const/high16 v18, 0x437f0000    # 255.0f

    div-float v11, v11, v18

    aput v11, v15, v12

    iget-object v11, v1, Lcom/threed/jpct/Lights;->gOrg:[F

    aget v11, v11, v6

    div-float v11, v11, v18

    aput v11, v15, v13

    iget-object v11, v1, Lcom/threed/jpct/Lights;->bOrg:[F

    aget v6, v11, v6

    div-float v6, v6, v18

    aput v6, v15, v14

    add-int/lit8 v5, v5, 0x1

    const/high16 v15, -0x40800000    # -1.0f

    goto :goto_2

    :cond_6
    iget-object v15, v1, Lcom/threed/jpct/Lights;->isVisible:[Z

    aget-boolean v15, v15, v11

    if-eqz v15, :cond_d

    if-nez v5, :cond_7

    sget-object v5, Lcom/threed/jpct/Object3D;->tempTC:Lcom/threed/jpct/SimpleVector;

    invoke-direct {v0, v5}, Lcom/threed/jpct/Object3D;->fillTransformedCenter(Lcom/threed/jpct/SimpleVector;)V

    sget-object v5, Lcom/threed/jpct/Object3D;->tempTC:Lcom/threed/jpct/SimpleVector;

    :cond_7
    iget-object v15, v1, Lcom/threed/jpct/Lights;->distanceOverride:[F

    aget v15, v15, v11

    const/high16 v17, -0x40800000    # -1.0f

    cmpl-float v17, v15, v17

    if-nez v17, :cond_8

    sget-object v15, Lcom/threed/jpct/Object3D;->tempCS:Lcom/threed/jpct/SimpleVector;

    iget-object v7, v1, Lcom/threed/jpct/Lights;->xOrg:[F

    aget v7, v7, v11

    iget-object v10, v1, Lcom/threed/jpct/Lights;->yOrg:[F

    aget v10, v10, v11

    iget-object v12, v1, Lcom/threed/jpct/Lights;->zOrg:[F

    aget v12, v12, v11

    invoke-virtual {v15, v7, v10, v12}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    sget-object v7, Lcom/threed/jpct/Object3D;->tempCS:Lcom/threed/jpct/SimpleVector;

    invoke-virtual {v5, v7}, Lcom/threed/jpct/SimpleVector;->lengthBetween(Lcom/threed/jpct/SimpleVector;)F

    move-result v15

    :cond_8
    iget-object v7, v1, Lcom/threed/jpct/Lights;->discardDistance:[F

    aget v7, v7, v11

    cmpg-float v10, v15, v7

    if-lez v10, :cond_9

    cmpg-float v7, v7, v16

    if-gez v7, :cond_d

    sget v7, Lcom/threed/jpct/Config;->lightDiscardDistance:F

    cmpg-float v10, v7, v16

    if-ltz v10, :cond_9

    cmpl-float v7, v7, v15

    if-lez v7, :cond_d

    :cond_9
    if-le v2, v6, :cond_c

    move v7, v9

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v7, v10, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [F

    aget v10, v10, v9

    cmpg-float v10, v15, v10

    if-gez v10, :cond_b

    sget-object v10, Lcom/threed/jpct/Object3D;->litData:[[F

    aget-object v10, v10, v11

    aput v15, v10, v9

    int-to-float v12, v11

    aput v12, v10, v8

    invoke-virtual {v4, v7, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    sget-object v7, Lcom/threed/jpct/Object3D;->litData:[[F

    aget-object v7, v7, v11

    aput v15, v7, v9

    int-to-float v10, v11

    aput v10, v7, v8

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x2

    const/4 v10, 0x3

    const/4 v12, 0x4

    goto/16 :goto_1

    :cond_e
    :goto_6
    iget-boolean v1, v0, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-eqz v1, :cond_f

    iget-boolean v1, v0, Lcom/threed/jpct/Object3D;->modified:Z

    if-eqz v1, :cond_f

    invoke-virtual {v3, v0}, Lcom/threed/jpct/VisList;->addToFill(Lcom/threed/jpct/Object3D;)V

    iget-object v1, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v1, :cond_f

    iput-boolean v8, v1, Lcom/threed/jpct/Object3D;->modified:Z

    :cond_f
    iget-boolean v1, v0, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v1, :cond_10

    iget-boolean v2, v1, Lcom/threed/jpct/Object3D;->modified:Z

    if-eqz v2, :cond_10

    invoke-virtual {v3, v1}, Lcom/threed/jpct/VisList;->addToFill(Lcom/threed/jpct/Object3D;)V

    :cond_10
    return-void
.end method

.method public resetCollisionStatus()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    return-void
.end method

.method public resetPolygonIDCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/threed/jpct/Object3D;->pIDCount:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/threed/jpct/Object3D;->lastAddedID:I

    return-void
.end method

.method public final reverseTransform(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/SimpleVector;Z)Lcom/threed/jpct/SimpleVector;
    .locals 15

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p1}, Lcom/threed/jpct/Object3D;->getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    iget-object v1, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    const/4 v2, 0x0

    aget-object v3, v1, v2

    aget v4, v3, v2

    const/4 v5, 0x1

    aget-object v6, v1, v5

    aget v7, v6, v2

    aget v8, v6, v5

    const/4 v9, 0x2

    aget-object v10, v1, v9

    aget v11, v10, v5

    aget v12, v10, v2

    aget v13, v3, v5

    aget v10, v10, v9

    aget v6, v6, v9

    aget v3, v3, v9

    const/4 v14, 0x3

    aget-object v1, v1, v14

    aget v2, v1, v2

    aget v5, v1, v5

    aget v1, v1, v9

    iget v9, v0, Lcom/threed/jpct/SimpleVector;->x:F

    mul-float/2addr v4, v9

    iget v14, v0, Lcom/threed/jpct/SimpleVector;->y:F

    mul-float/2addr v7, v14

    add-float/2addr v4, v7

    iget v7, v0, Lcom/threed/jpct/SimpleVector;->z:F

    mul-float/2addr v12, v7

    add-float/2addr v4, v12

    mul-float/2addr v13, v9

    mul-float/2addr v8, v14

    add-float/2addr v13, v8

    mul-float/2addr v11, v7

    add-float/2addr v13, v11

    mul-float/2addr v9, v3

    mul-float/2addr v14, v6

    add-float/2addr v9, v14

    mul-float/2addr v7, v10

    add-float/2addr v9, v7

    if-eqz p3, :cond_0

    add-float/2addr v4, v2

    add-float/2addr v13, v5

    add-float/2addr v9, v1

    :cond_0
    invoke-virtual {v0, v4, v13, v9}, Lcom/threed/jpct/SimpleVector;->set(FFF)V

    return-object v0
.end method

.method public rotateAxis(Lcom/threed/jpct/SimpleVector;F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2}, Lcom/threed/jpct/Matrix;->rotateAxis(Lcom/threed/jpct/SimpleVector;F)V

    return-void
.end method

.method public rotateMesh()V
    .locals 12

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    iget v2, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget v3, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iget v4, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    iget v5, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    invoke-virtual/range {v0 .. v5}, Lcom/threed/jpct/Mesh;->rotateMesh(Lcom/threed/jpct/Matrix;FFFF)V

    iget-object v6, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    iget v8, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget v9, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iget v10, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    iget v11, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    invoke-virtual/range {v6 .. v11}, Lcom/threed/jpct/Animation;->rotateMesh(Lcom/threed/jpct/Matrix;FFFF)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    return-void
.end method

.method public rotateX(F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateX(F)V

    return-void
.end method

.method public rotateY(F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateY(F)V

    return-void
.end method

.method public rotateZ(F)V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->rotateZ(F)V

    return-void
.end method

.method public scale(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    goto :goto_0

    :cond_0
    const-string p1, "Scale has to be greater than zero!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setAdditionalColor(Lcom/threed/jpct/RGBColor;)V
    .locals 3

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getRed()I

    move-result v0

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getGreen()I

    move-result v1

    invoke-virtual {p1}, Lcom/threed/jpct/RGBColor;->getBlue()I

    move-result v2

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->addColorInstance:Lcom/threed/jpct/RGBColor;

    if-ltz v0, :cond_0

    const/16 p1, 0x100

    if-ge v0, p1, :cond_0

    if-ltz v1, :cond_0

    if-ge v1, p1, :cond_0

    if-ltz v2, :cond_0

    if-ge v2, p1, :cond_0

    iput v0, p0, Lcom/threed/jpct/Object3D;->addColorR:I

    iput v1, p0, Lcom/threed/jpct/Object3D;->addColorG:I

    iput v2, p0, Lcom/threed/jpct/Object3D;->addColorB:I

    goto :goto_0

    :cond_0
    const-string p1, "Color values need to be in the range of [0..255]!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setAnimationSequence(Lcom/threed/jpct/Animation;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->hasBeenBuild:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-nez v0, :cond_1

    const-string v0, "You are adding an Animation to an Object3D that has already been build in static mode. Consider to use { calcNormals(); calcBoundingBox(); } instead of build() and call build() only after the animation has been set."

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :cond_1
    iget v0, p1, Lcom/threed/jpct/Animation;->aktFrames:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v2, v2, Lcom/threed/jpct/Mesh;->anzCoords:I

    if-ne v0, v2, :cond_2

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    invoke-virtual {p1, p0}, Lcom/threed/jpct/Animation;->validate(Lcom/threed/jpct/Object3D;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "The sizes of the Animation\'s Meshes ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/threed/jpct/Animation;->keyFrames:[Lcom/threed/jpct/Mesh;

    aget-object p1, p1, v1

    iget p1, p1, Lcom/threed/jpct/Mesh;->anzCoords:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and the object\'s Mesh ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget p1, p1, Lcom/threed/jpct/Mesh;->anzCoords:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") don\'t match!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string p1, "This Animation is empty!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setBillboarding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    return-void
.end method

.method public setBoundingBox(FFFFFF)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v1, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    if-eqz v1, :cond_0

    iput v1, v0, Lcom/threed/jpct/Mesh;->anzCoords:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    iput v1, v0, Lcom/threed/jpct/Mesh;->obbEnd:I

    :cond_0
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1, p3, p5}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    move-result v1

    iput v1, v0, Lcom/threed/jpct/Mesh;->obbStart:I

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0, p1, p3, p6}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0, p2, p3, p5}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0, p2, p3, p6}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    iget-object p3, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {p3, p2, p4, p5}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    iget-object p3, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {p3, p2, p4, p6}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    iget-object p2, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {p2, p1, p4, p5}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    iget-object p2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object p3, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {p3, p1, p4, p6}, Lcom/threed/jpct/Vectors;->addVertex(FFF)I

    move-result p1

    iput p1, p2, Lcom/threed/jpct/Mesh;->obbEnd:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    :cond_1
    return-void
.end method

.method public setCenter(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/Object3D;->centerX:F

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput v0, p0, Lcom/threed/jpct/Object3D;->centerY:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iput p1, p0, Lcom/threed/jpct/Object3D;->centerZ:F

    return-void
.end method

.method public setCollisionMode(I)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->mayCollide:Z

    goto :goto_1

    :cond_0
    and-int/lit8 v1, p1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isPotentialCollider:Z

    :goto_0
    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    iput-boolean v2, p0, Lcom/threed/jpct/Object3D;->mayCollide:Z

    goto :goto_1

    :cond_2
    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->mayCollide:Z

    :goto_1
    return-void
.end method

.method public setCollisionOptimization(Z)V
    .locals 2

    iget v0, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    invoke-virtual {v0}, Lcom/threed/jpct/Mesh;->getLargestCoveredDistance()F

    move-result v0

    iput v0, p0, Lcom/threed/jpct/Object3D;->largestPolygonSize:F

    :cond_0
    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->optimizeColDet:Z

    return-void
.end method

.method public setCulling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->doCulling:Z

    return-void
.end method

.method public setEllipsoidMode(I)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/Object3D;->ellipsoidMode:I

    return-void
.end method

.method public setEnvmapped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->isEnvmapped:Z

    return-void
.end method

.method public setFixedPointMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->fixedPointMode:Z

    return-void
.end method

.method public setLighting(I)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isLit:Z

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->isLit:Z

    :cond_1
    return-void
.end method

.method public setMaxLights(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v0, 0x8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/threed/jpct/Object3D;->maxLights:I

    return-void
.end method

.method public setMesh(Lcom/threed/jpct/Mesh;)V
    .locals 1

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Vectors;->setMesh(Lcom/threed/jpct/Mesh;)V

    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/threed/jpct/World;->getInternalObjectByName(Ljava/lang/String;)Lcom/threed/jpct/Object3D;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Object with name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' already exists!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->name:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setOcTree(Lcom/threed/jpct/OcTree;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    return-void
.end method

.method public setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V
    .locals 2

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->getScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/threed/jpct/Object3D;->setScale(F)V

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v1, p1, p2}, Lcom/threed/jpct/Matrix;->setOrientation(Lcom/threed/jpct/SimpleVector;Lcom/threed/jpct/SimpleVector;)V

    invoke-virtual {p0, v0}, Lcom/threed/jpct/Object3D;->setScale(F)V

    return-void
.end method

.method public setOrigin(Lcom/threed/jpct/SimpleVector;)V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0}, Lcom/threed/jpct/Matrix;->setIdentity()V

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget v1, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iget v2, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    return-void
.end method

.method public setRenderHook(Lcom/threed/jpct/IRenderHook;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->renderHook:Lcom/threed/jpct/IRenderHook;

    return-void
.end method

.method public setRotationMatrix(Lcom/threed/jpct/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    return-void
.end method

.method public setRotationPivot(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->x:F

    iput v0, p0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    iget v0, p1, Lcom/threed/jpct/SimpleVector;->y:F

    iput v0, p0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    iget p1, p1, Lcom/threed/jpct/SimpleVector;->z:F

    iput p1, p0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    return-void
.end method

.method public setScale(F)V
    .locals 3

    iget v0, p0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    div-float/2addr p1, v0

    const v0, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/threed/jpct/Object3D;->scale(F)V

    goto :goto_0

    :cond_1
    const-string p1, "Invalid scale!"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public setShader(Lcom/threed/jpct/GLSLShader;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    return-void
.end method

.method public setShadingMode(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->isFlatShaded:Z

    :cond_0
    return-void
.end method

.method public setSortOffset(F)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/Object3D;->sortOffset:F

    return-void
.end method

.method public setSpecularLighting(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->doSpecularLighting:Z

    return-void
.end method

.method public setTexture(Lcom/threed/jpct/TextureInfo;)V
    .locals 11

    .line 6
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->texture:[I

    if-eqz v0, :cond_c

    .line 7
    iget v1, p1, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v4, :cond_3

    .line 8
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    if-nez v1, :cond_2

    .line 9
    sget v1, Lcom/threed/jpct/Config;->maxTextureLayers:I

    sub-int/2addr v1, v4

    .line 10
    array-length v0, v0

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v0, v6, v4

    aput v1, v6, v3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    iput-object v6, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    .line 11
    iget-object v6, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v6, v6

    new-array v5, v5, [I

    aput v6, v5, v4

    aput v1, v5, v3

    invoke-static {v0, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    .line 12
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v0, v0

    move v5, v3

    :goto_0
    if-lt v5, v0, :cond_0

    goto :goto_2

    :cond_0
    move v6, v3

    :goto_1
    if-lt v6, v1, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v7, v7, v6

    aput v2, v7, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 14
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    invoke-virtual {v0}, Lcom/threed/jpct/Vectors;->createMultiCoords()V

    .line 15
    iput-boolean v4, p0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    goto :goto_3

    .line 16
    :cond_3
    iput-boolean v3, p0, Lcom/threed/jpct/Object3D;->usesMultiTexturing:Z

    .line 17
    :goto_3
    iget-object v0, p1, Lcom/threed/jpct/TextureInfo;->textures:[I

    aget v0, v0, v3

    if-eq v0, v2, :cond_5

    .line 18
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v1, v1

    move v2, v3

    :goto_4
    if-lt v2, v1, :cond_4

    goto :goto_5

    .line 19
    :cond_4
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->texture:[I

    aput v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 20
    :cond_5
    const-string v0, "Tried to set an undefined texture!"

    invoke-static {v0, v3}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    .line 21
    :goto_5
    iget v0, p1, Lcom/threed/jpct/TextureInfo;->stageCnt:I

    if-lt v4, v0, :cond_6

    .line 22
    iput v0, p0, Lcom/threed/jpct/Object3D;->maxStagesUsed:I

    goto :goto_b

    .line 23
    :cond_6
    iget-object v0, p1, Lcom/threed/jpct/TextureInfo;->textures:[I

    aget v0, v0, v4

    .line 24
    iget-object v1, p1, Lcom/threed/jpct/TextureInfo;->mode:[I

    aget v1, v1, v4

    add-int/lit8 v2, v4, -0x1

    .line 25
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    aget-object v6, v5, v2

    .line 26
    iget-object v7, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    aget-object v8, v7, v2

    .line 27
    array-length v5, v5

    array-length v7, v7

    if-eq v5, v7, :cond_9

    .line 28
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v5, v5

    move v7, v3

    .line 29
    :goto_6
    iget-object v9, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v9, v9, Lcom/threed/jpct/Mesh;->anzTri:I

    if-lt v7, v9, :cond_8

    move v1, v3

    :goto_7
    if-lt v1, v5, :cond_7

    goto :goto_9

    .line 30
    :cond_7
    aput v0, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 31
    :cond_8
    aput v1, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 32
    :cond_9
    iget-object v5, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v5, v5, Lcom/threed/jpct/Mesh;->anzTri:I

    move v7, v3

    :goto_8
    if-lt v7, v5, :cond_b

    .line 33
    :goto_9
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v1, v0, Lcom/threed/jpct/Vectors;->uMul:[[F

    aget-object v9, v1, v2

    .line 34
    iget-object v0, v0, Lcom/threed/jpct/Vectors;->vMul:[[F

    aget-object v10, v0, v2

    move v0, v3

    .line 35
    :goto_a
    iget-object v1, p0, Lcom/threed/jpct/Object3D;->objVectors:Lcom/threed/jpct/Vectors;

    iget-object v2, v1, Lcom/threed/jpct/Vectors;->nuOrg:[F

    array-length v5, v2

    if-lt v0, v5, :cond_a

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 36
    :cond_a
    aget v2, v2, v0

    aput v2, v9, v0

    .line 37
    iget-object v1, v1, Lcom/threed/jpct/Vectors;->nvOrg:[F

    aget v1, v1, v0

    aput v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 38
    :cond_b
    aput v1, v6, v7

    .line 39
    aput v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    :goto_b
    return-void
.end method

.method public setTexture(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/threed/jpct/TextureManager;->getInstance()Lcom/threed/jpct/TextureManager;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/threed/jpct/TextureManager;->getTextureID(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v0, v0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/threed/jpct/Object3D;->texture:[I

    aput p1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    const-string p1, "Tried to set an undefined texture!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public setTextureMatrix(Lcom/threed/jpct/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->textureMatrix:Lcom/threed/jpct/Matrix;

    return-void
.end method

.method public setTranslationMatrix(Lcom/threed/jpct/Matrix;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    return-void
.end method

.method public setTransparency(I)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/Object3D;->transValue:I

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->isTrans:Z

    :goto_0
    return-void
.end method

.method public setTransparencyMode(I)V
    .locals 0

    iput p1, p0, Lcom/threed/jpct/Object3D;->transMode:I

    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->userObj:Ljava/lang/Object;

    return-void
.end method

.method public setVirtualizer(Lcom/threed/jpct/Virtualizer;)V
    .locals 0

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->virtualizer:Lcom/threed/jpct/Virtualizer;

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/threed/jpct/Object3D;->isVisible:Z

    return-void
.end method

.method public shareCompiledData(Lcom/threed/jpct/Object3D;)V
    .locals 3

    iget-object v0, p1, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "Can\'t enable share data with an object that shares data itself! Use the source object instead!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->sharing:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "This object already shares data with \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/threed/jpct/Object3D;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_1
    iget-object v0, p1, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    if-eq v0, v2, :cond_3

    const-string p1, "Can\'t share data from different meshes!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void

    :cond_3
    iput-object p1, p0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    return-void

    :cond_4
    :goto_0
    const-string p1, "No data sharing with octrees supported!"

    invoke-static {p1, v1}, Lcom/threed/jpct/Logger;->log(Ljava/lang/String;I)V

    return-void
.end method

.method public shareTextureData(Lcom/threed/jpct/Object3D;)V
    .locals 1

    iget-object v0, p1, Lcom/threed/jpct/Object3D;->texture:[I

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->texture:[I

    iget-object v0, p1, Lcom/threed/jpct/Object3D;->multiTex:[[I

    iput-object v0, p0, Lcom/threed/jpct/Object3D;->multiTex:[[I

    iget-object p1, p1, Lcom/threed/jpct/Object3D;->multiMode:[[I

    iput-object p1, p0, Lcom/threed/jpct/Object3D;->multiMode:[[I

    return-void
.end method

.method public sphereIntersectsAABB(Lcom/threed/jpct/SimpleVector;F)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/threed/jpct/SimpleVector;->toArray()[F

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/threed/jpct/Object3D;->sphereIntersectsAABB([FF)Z

    move-result p1

    return p1
.end method

.method public final sphereIntersectsAABB([FF)Z
    .locals 18

    move-object/from16 v0, p0

    .line 2
    iget-boolean v1, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->mat6:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v1}, Lcom/threed/jpct/Object3D;->getInverseWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v1

    .line 4
    iget-object v1, v1, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v3, v1, v2

    aget v4, v3, v2

    const/4 v5, 0x1

    .line 5
    aget-object v6, v1, v5

    aget v7, v6, v2

    .line 6
    aget v8, v6, v5

    const/4 v9, 0x2

    .line 7
    aget-object v10, v1, v9

    aget v11, v10, v5

    .line 8
    aget v12, v10, v2

    .line 9
    aget v13, v3, v5

    .line 10
    aget v10, v10, v9

    .line 11
    aget v6, v6, v9

    .line 12
    aget v3, v3, v9

    const/4 v14, 0x3

    .line 13
    aget-object v1, v1, v14

    aget v14, v1, v2

    .line 14
    aget v15, v1, v5

    .line 15
    aget v1, v1, v9

    .line 16
    aget v16, p1, v2

    mul-float v4, v4, v16

    aget v17, p1, v5

    mul-float v7, v7, v17

    add-float/2addr v4, v7

    aget v7, p1, v9

    mul-float/2addr v12, v7

    add-float/2addr v4, v12

    add-float/2addr v4, v14

    mul-float v13, v13, v16

    mul-float v8, v8, v17

    add-float/2addr v13, v8

    mul-float/2addr v11, v7

    add-float/2addr v13, v11

    add-float/2addr v13, v15

    mul-float v16, v16, v3

    mul-float v17, v17, v6

    add-float v16, v16, v17

    mul-float/2addr v7, v10

    add-float v16, v16, v7

    add-float v16, v16, v1

    .line 17
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v3, v1, Lcom/threed/jpct/Mesh;->obbStart:I

    .line 18
    iget-object v6, v1, Lcom/threed/jpct/Mesh;->xOrg:[F

    aget v6, v6, v3

    .line 19
    iget-object v7, v1, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v7, v7, v3

    .line 20
    iget-object v1, v1, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v1, v1, v3

    move v11, v5

    move v8, v6

    move v9, v7

    move v10, v9

    move v7, v8

    move v6, v1

    :goto_0
    const/16 v12, 0x8

    if-lt v11, v12, :cond_3

    add-float v3, v4, p2

    cmpg-float v3, v3, v7

    if-ltz v3, :cond_2

    sub-float v4, v4, p2

    cmpl-float v3, v4, v8

    if-gtz v3, :cond_2

    add-float v3, v13, p2

    cmpg-float v3, v3, v9

    if-ltz v3, :cond_2

    sub-float v13, v13, p2

    cmpl-float v3, v13, v10

    if-gtz v3, :cond_2

    add-float v3, v16, p2

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_2

    sub-float v16, v16, p2

    cmpl-float v1, v16, v6

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    :cond_2
    :goto_1
    return v2

    .line 21
    :cond_3
    iget-object v12, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v14, v12, Lcom/threed/jpct/Mesh;->xOrg:[F

    add-int v15, v11, v3

    aget v14, v14, v15

    .line 22
    iget-object v2, v12, Lcom/threed/jpct/Mesh;->zOrg:[F

    aget v2, v2, v15

    .line 23
    iget-object v12, v12, Lcom/threed/jpct/Mesh;->yOrg:[F

    aget v12, v12, v15

    cmpg-float v15, v14, v7

    if-gez v15, :cond_4

    move v7, v14

    goto :goto_2

    :cond_4
    cmpl-float v15, v14, v8

    if-lez v15, :cond_5

    move v8, v14

    :cond_5
    :goto_2
    cmpg-float v14, v12, v9

    if-gez v14, :cond_6

    move v9, v12

    goto :goto_3

    :cond_6
    cmpl-float v14, v12, v10

    if-lez v14, :cond_7

    move v10, v12

    :cond_7
    :goto_3
    cmpg-float v12, v2, v1

    if-gez v12, :cond_8

    move v1, v2

    goto :goto_4

    :cond_8
    cmpl-float v12, v2, v6

    if-lez v12, :cond_9

    move v6, v2

    :cond_9
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public strip()V
    .locals 1

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->reallyStrip()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->toStrip:Z

    return-void
.end method

.method public touch()V
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->dynamic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->modified:Z

    :cond_0
    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->enableLazyTransformations()V

    :cond_1
    return-void
.end method

.method public final transformVertices(Lcom/threed/jpct/FrameBuffer;)Z
    .locals 36

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget-object v1, v1, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v2, v1, Lcom/threed/jpct/Camera;->divx:F

    iget v3, v1, Lcom/threed/jpct/Camera;->divy:F

    sget v4, Lcom/threed/jpct/Config;->nearPlane:F

    iget-object v5, v0, Lcom/threed/jpct/Object3D;->mat5:Lcom/threed/jpct/Matrix;

    iget-object v6, v5, Lcom/threed/jpct/Matrix;->mat:[[F

    iget-object v1, v1, Lcom/threed/jpct/Camera;->backMatrix:Lcom/threed/jpct/Matrix;

    iput-object v1, v0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    iget-object v1, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v7, v1, Lcom/threed/jpct/Mesh;->zOrg:[F

    iget-object v8, v1, Lcom/threed/jpct/Mesh;->xOrg:[F

    iget-object v1, v1, Lcom/threed/jpct/Mesh;->yOrg:[F

    iget-boolean v9, v0, Lcom/threed/jpct/Object3D;->lazyTransforms:Z

    const/4 v10, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v9, :cond_0

    iget-boolean v9, v0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    if-nez v9, :cond_0

    invoke-virtual {v0, v5}, Lcom/threed/jpct/Object3D;->getWorldTransformation(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    goto :goto_1

    :cond_0
    sget-object v9, Lcom/threed/jpct/Object3D;->matBill:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5}, Lcom/threed/jpct/Matrix;->setIdentity()V

    aget-object v14, v6, v10

    iget-object v15, v0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v15, v15, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v15, v15, v10

    iget-object v11, v0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    iget-object v11, v11, Lcom/threed/jpct/Matrix;->mat:[[F

    aget-object v11, v11, v10

    iget v10, v0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    neg-float v10, v10

    aput v10, v14, v13

    iget v10, v0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    neg-float v10, v10

    aput v10, v14, v12

    iget v10, v0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    neg-float v10, v10

    const/16 v17, 0x2

    aput v10, v14, v17

    iget-boolean v10, v0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    if-nez v10, :cond_1

    iget-object v9, v0, Lcom/threed/jpct/Object3D;->rotationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5, v9}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    goto :goto_0

    :cond_1
    if-nez v9, :cond_2

    new-instance v9, Lcom/threed/jpct/Matrix;

    invoke-direct {v9}, Lcom/threed/jpct/Matrix;-><init>()V

    sput-object v9, Lcom/threed/jpct/Object3D;->matBill:Lcom/threed/jpct/Matrix;

    :cond_2
    iget-object v10, v0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    invoke-virtual {v10, v9}, Lcom/threed/jpct/Matrix;->invert3x3(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    iget v10, v0, Lcom/threed/jpct/Object3D;->scaleFactor:F

    invoke-virtual {v9, v10}, Lcom/threed/jpct/Matrix;->scalarMul(F)V

    invoke-virtual {v5, v9}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    :goto_0
    iget v9, v0, Lcom/threed/jpct/Object3D;->xRotationCenter:F

    aget v10, v15, v13

    add-float/2addr v9, v10

    aget v10, v11, v13

    add-float/2addr v9, v10

    iget v10, v0, Lcom/threed/jpct/Object3D;->yRotationCenter:F

    aget v14, v15, v12

    add-float/2addr v10, v14

    aget v14, v11, v12

    add-float/2addr v10, v14

    iget v14, v0, Lcom/threed/jpct/Object3D;->zRotationCenter:F

    const/16 v17, 0x2

    aget v15, v15, v17

    add-float/2addr v14, v15

    aget v11, v11, v17

    add-float/2addr v14, v11

    invoke-virtual {v5, v9, v10, v14}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    iget v9, v0, Lcom/threed/jpct/Object3D;->parentCnt:I

    if-eqz v9, :cond_4

    iget-boolean v9, v0, Lcom/threed/jpct/Object3D;->isBillBoard:Z

    if-eqz v9, :cond_3

    invoke-direct {v0, v5}, Lcom/threed/jpct/Object3D;->recurseObjectsBillboarded(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v5

    goto :goto_1

    :cond_3
    invoke-direct {v0, v5}, Lcom/threed/jpct/Object3D;->recurseObjects(Lcom/threed/jpct/Matrix;)Lcom/threed/jpct/Matrix;

    move-result-object v5

    :cond_4
    :goto_1
    iget-object v9, v0, Lcom/threed/jpct/Object3D;->transBuffer:Lcom/threed/jpct/Matrix;

    invoke-virtual {v9, v5}, Lcom/threed/jpct/Matrix;->setTo(Lcom/threed/jpct/Matrix;)V

    iget-object v9, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget-object v9, v9, Lcom/threed/jpct/World;->camera:Lcom/threed/jpct/Camera;

    iget v10, v9, Lcom/threed/jpct/Camera;->backBx:F

    neg-float v10, v10

    iget v11, v9, Lcom/threed/jpct/Camera;->backBy:F

    neg-float v11, v11

    iget v9, v9, Lcom/threed/jpct/Camera;->backBz:F

    neg-float v9, v9

    invoke-virtual {v5, v10, v11, v9}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    iget-object v9, v0, Lcom/threed/jpct/Object3D;->mat2:Lcom/threed/jpct/Matrix;

    invoke-virtual {v5, v9}, Lcom/threed/jpct/Matrix;->matMul(Lcom/threed/jpct/Matrix;)V

    aget-object v9, v6, v13

    aget v10, v9, v13

    aget v11, v9, v12

    const/4 v14, 0x2

    aget v9, v9, v14

    aget-object v15, v6, v12

    aget v17, v15, v13

    aget v18, v15, v12

    aget v15, v15, v14

    aget-object v19, v6, v14

    aget v20, v19, v12

    aget v21, v19, v14

    aget v19, v19, v13

    const/16 v16, 0x3

    aget-object v6, v6, v16

    aget v16, v6, v13

    aget v22, v6, v12

    aget v6, v6, v14

    iget-object v14, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    if-eqz v14, :cond_5

    invoke-virtual {v14}, Lcom/threed/jpct/OcTree;->getRenderingUse()Z

    move-result v14

    if-eqz v14, :cond_5

    move v14, v12

    goto :goto_2

    :cond_5
    move v14, v13

    :goto_2
    if-eqz v14, :cond_6

    iget-object v13, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    invoke-virtual {v13, v5, v2, v3}, Lcom/threed/jpct/OcTree;->getVisibleLeafs(Lcom/threed/jpct/Matrix;FF)I

    move-result v5

    if-nez v5, :cond_7

    return v12

    :cond_6
    const/4 v5, 0x0

    :cond_7
    iget-boolean v13, v0, Lcom/threed/jpct/Object3D;->hasBoundingBox:Z

    if-eqz v13, :cond_12

    iget-object v13, v0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget v12, v13, Lcom/threed/jpct/Mesh;->obbStart:I

    iget v13, v13, Lcom/threed/jpct/Mesh;->obbEnd:I

    add-int/lit8 v23, v13, 0x1

    move/from16 v24, v13

    sub-int v13, v23, v12

    if-gt v12, v13, :cond_8

    add-int/lit8 v13, v12, -0x1

    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    move/from16 v13, v24

    :goto_3
    move/from16 v29, v5

    move v5, v12

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_4
    if-le v5, v13, :cond_9

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    move/from16 v5, v27

    move/from16 v7, v28

    :goto_5
    const/4 v8, 0x1

    goto/16 :goto_c

    :cond_9
    aget v30, v7, v5

    aget v31, v8, v5

    aget v32, v1, v5

    mul-float v33, v31, v10

    mul-float v34, v32, v17

    add-float v33, v33, v34

    mul-float v34, v30, v19

    add-float v33, v33, v34

    add-float v33, v33, v16

    mul-float v34, v31, v11

    mul-float v35, v32, v18

    add-float v34, v34, v35

    mul-float v35, v30, v20

    add-float v34, v34, v35

    add-float v34, v34, v22

    mul-float v31, v31, v9

    mul-float v32, v32, v15

    add-float v31, v31, v32

    mul-float v30, v30, v21

    add-float v31, v31, v30

    add-float v31, v31, v6

    cmpg-float v30, v31, v4

    if-gez v30, :cond_a

    add-int/lit8 v23, v23, 0x1

    :goto_6
    move-object/from16 v32, v1

    move/from16 v30, v24

    move/from16 v24, v23

    const/16 v23, 0x1

    goto :goto_7

    :cond_a
    sget v30, Lcom/threed/jpct/Config;->farPlane:F

    cmpl-float v30, v31, v30

    if-lez v30, :cond_b

    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    :cond_b
    move-object/from16 v32, v1

    move/from16 v30, v24

    move/from16 v24, v23

    const/16 v23, 0x0

    :goto_7
    mul-float v1, v31, v2

    move/from16 v35, v2

    neg-float v2, v1

    cmpg-float v2, v33, v2

    if-gez v2, :cond_c

    add-int/lit8 v25, v25, 0x1

    :goto_8
    const/16 v23, 0x1

    goto :goto_9

    :cond_c
    cmpl-float v1, v33, v1

    if-lez v1, :cond_d

    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    :cond_d
    :goto_9
    mul-float v1, v31, v3

    neg-float v2, v1

    cmpg-float v2, v34, v2

    if-gez v2, :cond_e

    add-int/lit8 v27, v27, 0x1

    :goto_a
    const/16 v23, 0x1

    goto :goto_b

    :cond_e
    cmpl-float v1, v34, v1

    if-lez v1, :cond_f

    add-int/lit8 v28, v28, 0x1

    goto :goto_a

    :cond_f
    :goto_b
    if-nez v23, :cond_11

    move/from16 v1, v24

    move/from16 v3, v25

    move/from16 v4, v26

    move/from16 v5, v27

    move/from16 v7, v28

    move/from16 v2, v30

    goto/16 :goto_5

    :goto_c
    add-int/2addr v13, v8

    sub-int/2addr v13, v12

    if-eq v7, v13, :cond_10

    if-eq v4, v13, :cond_10

    if-eq v5, v13, :cond_10

    if-eq v3, v13, :cond_10

    if-eq v1, v13, :cond_10

    if-ne v2, v13, :cond_13

    :cond_10
    const/4 v8, 0x1

    goto :goto_d

    :cond_11
    add-int/lit8 v5, v5, 0x1

    move/from16 v23, v24

    move/from16 v24, v30

    move-object/from16 v1, v32

    move/from16 v2, v35

    goto/16 :goto_4

    :cond_12
    move/from16 v29, v5

    :cond_13
    const/4 v8, 0x0

    :goto_d
    if-nez v8, :cond_20

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/threed/jpct/Object3D;->object3DRendered:Z

    if-eqz v14, :cond_16

    iget-object v2, v0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    if-nez v2, :cond_14

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v2, v0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    :cond_14
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, v0, Lcom/threed/jpct/Object3D;->ocTree:Lcom/threed/jpct/OcTree;

    invoke-virtual {v1}, Lcom/threed/jpct/OcTree;->getLeafList()[Lcom/threed/jpct/OcTreeNode;

    move-result-object v1

    move/from16 v5, v29

    const/4 v2, 0x0

    :goto_e
    if-lt v2, v5, :cond_15

    goto :goto_f

    :cond_15
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/threed/jpct/OcTreeNode;->getID()I

    move-result v3

    invoke-static {v3}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_16
    :goto_f
    iget-object v1, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-lt v2, v1, :cond_17

    const/4 v3, 0x0

    return v3

    :cond_17
    iget-object v3, v0, Lcom/threed/jpct/Object3D;->shareWith:Lcom/threed/jpct/Object3D;

    if-eqz v3, :cond_18

    iget-object v3, v3, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threed/jpct/CompiledInstance;

    goto :goto_11

    :cond_18
    iget-object v3, v0, Lcom/threed/jpct/Object3D;->compiled:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/threed/jpct/CompiledInstance;

    :goto_11
    if-eqz v14, :cond_19

    invoke-virtual {v3}, Lcom/threed/jpct/CompiledInstance;->getTreeID()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_19

    iget-object v4, v0, Lcom/threed/jpct/Object3D;->sectors:Ljava/util/HashSet;

    invoke-virtual {v3}, Lcom/threed/jpct/CompiledInstance;->getTreeID()I

    move-result v5

    invoke-static {v5}, Lcom/threed/jpct/IntegerC;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    goto :goto_12

    :cond_19
    const/4 v8, 0x1

    :goto_12
    if-eqz v8, :cond_1f

    iget-boolean v4, v0, Lcom/threed/jpct/Object3D;->isTrans:Z

    if-nez v4, :cond_1a

    sget-boolean v4, Lcom/threed/jpct/Config;->stateOrientedSorting:Z

    if-nez v4, :cond_1b

    :cond_1a
    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_14

    :cond_1b
    iget-object v4, v0, Lcom/threed/jpct/Object3D;->texture:[I

    array-length v5, v4

    const/4 v7, 0x1

    if-le v5, v7, :cond_1c

    iget v5, v3, Lcom/threed/jpct/CompiledInstance;->polyIndex:I

    aget v4, v4, v5

    const/4 v5, 0x0

    goto :goto_13

    :cond_1c
    const/4 v5, 0x0

    aget v4, v4, v5

    :goto_13
    add-int/lit16 v4, v4, 0x2710

    int-to-float v4, v4

    iget-object v8, v0, Lcom/threed/jpct/Object3D;->shader:Lcom/threed/jpct/GLSLShader;

    if-eqz v8, :cond_1d

    iget v8, v8, Lcom/threed/jpct/GLSLShader;->id:I

    mul-int/lit16 v8, v8, 0x3e8

    int-to-float v8, v8

    add-float/2addr v4, v8

    :cond_1d
    const v8, 0x4971b300    # 990000.0f

    cmpl-float v8, v4, v8

    if-lez v8, :cond_1e

    const v8, 0x49742400    # 1000000.0f

    sub-float/2addr v4, v8

    :cond_1e
    iget-object v8, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget-object v8, v8, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {v8, v0, v4, v2, v3}, Lcom/threed/jpct/VisList;->addToList(Lcom/threed/jpct/Object3D;FILcom/threed/jpct/CompiledInstance;)V

    goto :goto_15

    :goto_14
    iget v4, v0, Lcom/threed/jpct/Object3D;->centerX:F

    mul-float/2addr v4, v9

    iget v8, v0, Lcom/threed/jpct/Object3D;->centerY:F

    mul-float/2addr v8, v15

    add-float/2addr v4, v8

    iget v8, v0, Lcom/threed/jpct/Object3D;->centerZ:F

    mul-float v8, v8, v21

    add-float/2addr v4, v8

    add-float/2addr v4, v6

    iget-object v8, v0, Lcom/threed/jpct/Object3D;->myWorld:Lcom/threed/jpct/World;

    iget-object v8, v8, Lcom/threed/jpct/World;->visList:Lcom/threed/jpct/VisList;

    invoke-virtual {v8, v0, v4, v2, v3}, Lcom/threed/jpct/VisList;->addToList(Lcom/threed/jpct/Object3D;FILcom/threed/jpct/CompiledInstance;)V

    goto :goto_15

    :cond_1f
    const/4 v5, 0x0

    const/4 v7, 0x1

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_10

    :cond_20
    return v8
.end method

.method public translate(FFF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1, p2, p3}, Lcom/threed/jpct/Matrix;->translate(FFF)V

    return-void
.end method

.method public translate(Lcom/threed/jpct/SimpleVector;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, p1}, Lcom/threed/jpct/Matrix;->translate(Lcom/threed/jpct/SimpleVector;)V

    return-void
.end method

.method public translateMesh()V
    .locals 3

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->objMesh:Lcom/threed/jpct/Mesh;

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/Mesh;->translateMesh(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;)V

    iget-object v0, p0, Lcom/threed/jpct/Object3D;->anim:Lcom/threed/jpct/Animation;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/threed/jpct/Object3D;->translationMatrix:Lcom/threed/jpct/Matrix;

    iget-object v2, p0, Lcom/threed/jpct/Object3D;->originMatrix:Lcom/threed/jpct/Matrix;

    invoke-virtual {v0, v1, v2}, Lcom/threed/jpct/Animation;->translateMesh(Lcom/threed/jpct/Matrix;Lcom/threed/jpct/Matrix;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/threed/jpct/Object3D;->skipPivot:Z

    invoke-virtual {p0}, Lcom/threed/jpct/Object3D;->calcBoundingBox()V

    return-void
.end method

.method public wasTargetOfLastCollision()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->wasCollider:Z

    return v0
.end method

.method public wasVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/threed/jpct/Object3D;->object3DRendered:Z

    return v0
.end method
