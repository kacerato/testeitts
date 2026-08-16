.class public Lcom/jme3/util/TempVars;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/util/TempVars$TempVarsStack;
    }
.end annotation


# static fields
.field private static final STACK_SIZE:I = 0x5

.field private static final varsLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/jme3/util/TempVars$TempVarsStack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bbox:Lcom/jme3/bounding/BoundingBox;

.field public final bihStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/collision/bih/BIHNode$BIHStackData;",
            ">;"
        }
    .end annotation
.end field

.field public final bihSwapTmp:[F

.field public final collisionResults:Lcom/jme3/collision/CollisionResults;

.field public final color:Lcom/jme3/math/ColorRGBA;

.field public final eigen:Lcom/jme3/math/Eigen3f;

.field public final fADdU:[F

.field public final fAWdU:[F

.field public final fAWxDdU:[F

.field public final fDdU:[F

.field public final fWdU:[F

.field public final floatBuffer16:Ljava/nio/FloatBuffer;

.field public final intBuffer1:Ljava/nio/IntBuffer;

.field public final intBuffer16:Ljava/nio/IntBuffer;

.field private isUsed:Z

.field public final matrixWrite:[F

.field public final plane:Lcom/jme3/math/Plane;

.field public final quat1:Lcom/jme3/math/Quaternion;

.field public final quat2:Lcom/jme3/math/Quaternion;

.field public final skinNormals:[F

.field public final skinPositions:[F

.field public final skinTangents:[F

.field public final spatialStack:[Lcom/jme3/scene/Spatial;

.field public final tempMat3:Lcom/jme3/math/Matrix3f;

.field public final tempMat4:Lcom/jme3/math/Matrix4f;

.field public final tempMat42:Lcom/jme3/math/Matrix4f;

.field public final tri:[Lcom/jme3/math/Vector3f;

.field public final triangle:Lcom/jme3/math/Triangle;

.field public final vect1:Lcom/jme3/math/Vector3f;

.field public final vect10:Lcom/jme3/math/Vector3f;

.field public final vect2:Lcom/jme3/math/Vector3f;

.field public final vect2d:Lcom/jme3/math/Vector2f;

.field public final vect2d2:Lcom/jme3/math/Vector2f;

.field public final vect3:Lcom/jme3/math/Vector3f;

.field public final vect4:Lcom/jme3/math/Vector3f;

.field public final vect4f1:Lcom/jme3/math/Vector4f;

.field public final vect4f2:Lcom/jme3/math/Vector4f;

.field public final vect5:Lcom/jme3/math/Vector3f;

.field public final vect6:Lcom/jme3/math/Vector3f;

.field public final vect7:Lcom/jme3/math/Vector3f;

.field public final vect8:Lcom/jme3/math/Vector3f;

.field public final vect9:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/jme3/util/TempVars$1;

    invoke-direct {v0}, Lcom/jme3/util/TempVars$1;-><init>()V

    sput-object v0, Lcom/jme3/util/TempVars;->varsLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/util/TempVars;->isUsed:Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/util/TempVars;->intBuffer1:Ljava/nio/IntBuffer;

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/util/TempVars;->intBuffer16:Ljava/nio/IntBuffer;

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/util/TempVars;->floatBuffer16:Ljava/nio/FloatBuffer;

    new-instance v1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v1}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->bbox:Lcom/jme3/bounding/BoundingBox;

    const/16 v1, 0x600

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/jme3/util/TempVars;->skinPositions:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/jme3/util/TempVars;->skinNormals:[F

    const/16 v1, 0x800

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/jme3/util/TempVars;->skinTangents:[F

    new-instance v1, Lcom/jme3/math/Triangle;

    invoke-direct {v1}, Lcom/jme3/math/Triangle;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->triangle:Lcom/jme3/math/Triangle;

    new-instance v1, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v1}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->color:Lcom/jme3/math/ColorRGBA;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect6:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect7:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect8:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect9:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect10:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector4f;

    invoke-direct {v1}, Lcom/jme3/math/Vector4f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect4f1:Lcom/jme3/math/Vector4f;

    new-instance v1, Lcom/jme3/math/Vector4f;

    invoke-direct {v1}, Lcom/jme3/math/Vector4f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect4f2:Lcom/jme3/math/Vector4f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    filled-new-array {v1, v2, v3}, [Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/util/TempVars;->tri:[Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect2d:Lcom/jme3/math/Vector2f;

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->vect2d2:Lcom/jme3/math/Vector2f;

    new-instance v1, Lcom/jme3/math/Matrix3f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->tempMat42:Lcom/jme3/math/Matrix4f;

    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->quat1:Lcom/jme3/math/Quaternion;

    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->quat2:Lcom/jme3/math/Quaternion;

    new-instance v1, Lcom/jme3/math/Eigen3f;

    invoke-direct {v1}, Lcom/jme3/math/Eigen3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->eigen:Lcom/jme3/math/Eigen3f;

    new-instance v1, Lcom/jme3/math/Plane;

    invoke-direct {v1}, Lcom/jme3/math/Plane;-><init>()V

    iput-object v1, p0, Lcom/jme3/util/TempVars;->plane:Lcom/jme3/math/Plane;

    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/jme3/util/TempVars;->fWdU:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/jme3/util/TempVars;->fAWdU:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/jme3/util/TempVars;->fDdU:[F

    new-array v2, v1, [F

    iput-object v2, p0, Lcom/jme3/util/TempVars;->fADdU:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/jme3/util/TempVars;->fAWxDdU:[F

    const/16 v1, 0x20

    new-array v1, v1, [Lcom/jme3/scene/Spatial;

    iput-object v1, p0, Lcom/jme3/util/TempVars;->spatialStack:[Lcom/jme3/scene/Spatial;

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->matrixWrite:[F

    new-instance v0, Lcom/jme3/collision/CollisionResults;

    invoke-direct {v0}, Lcom/jme3/collision/CollisionResults;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->collisionResults:Lcom/jme3/collision/CollisionResults;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/util/TempVars;->bihSwapTmp:[F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/TempVars;->bihStack:Ljava/util/ArrayList;

    return-void
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/util/TempVars;->collisionResults:Lcom/jme3/collision/CollisionResults;

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResults;->clear()V

    iget-object v0, p0, Lcom/jme3/util/TempVars;->bihStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/util/TempVars;->spatialStack:[Lcom/jme3/scene/Spatial;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static get()Lcom/jme3/util/TempVars;
    .locals 4

    sget-object v0, Lcom/jme3/util/TempVars;->varsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/TempVars$TempVarsStack;

    iget-object v1, v0, Lcom/jme3/util/TempVars$TempVarsStack;->tempVars:[Lcom/jme3/util/TempVars;

    iget v2, v0, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    new-instance v1, Lcom/jme3/util/TempVars;

    invoke-direct {v1}, Lcom/jme3/util/TempVars;-><init>()V

    iget-object v2, v0, Lcom/jme3/util/TempVars$TempVarsStack;->tempVars:[Lcom/jme3/util/TempVars;

    iget v3, v0, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    aput-object v1, v2, v3

    :cond_0
    iget v2, v0, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    iput-boolean v3, v1, Lcom/jme3/util/TempVars;->isUsed:Z

    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public release()V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/util/TempVars;->isUsed:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/jme3/util/TempVars;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/util/TempVars;->isUsed:Z

    sget-object v0, Lcom/jme3/util/TempVars;->varsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/TempVars$TempVarsStack;

    iget v1, v0, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/jme3/util/TempVars$TempVarsStack;->index:I

    iget-object v0, v0, Lcom/jme3/util/TempVars$TempVarsStack;->tempVars:[Lcom/jme3/util/TempVars;

    aget-object v0, v0, v1

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An instance of TempVars has not been released in a called method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This instance of TempVars was already released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
