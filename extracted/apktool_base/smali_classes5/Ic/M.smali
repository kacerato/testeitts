.class public LIc/M;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIc/M$b;
    }
.end annotation


# static fields
.field public static final Q:I = 0x5

.field public static final R:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "LIc/M$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lcom/jme3/math/Matrix4f;

.field public final B:Lcom/jme3/math/Matrix4f;

.field public final C:Lcom/jme3/math/Quaternion;

.field public final D:Lcom/jme3/math/Quaternion;

.field public final E:Lcom/jme3/math/Eigen3f;

.field public final F:Lcom/jme3/math/Plane;

.field public final G:[F

.field public final H:[F

.field public final I:[F

.field public final J:[F

.field public final K:[F

.field public final L:[Lcom/jme3/scene/Spatial;

.field public final M:[F

.field public final N:Lcom/jme3/collision/CollisionResults;

.field public final O:[F

.field public final P:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList<",
            "Lcom/jme3/collision/bih/BIHNode$BIHStackData;",
            ">;"
        }
    .end annotation
.end field

.field public a:Z

.field public final b:Ljava/nio/IntBuffer;

.field public final c:Ljava/nio/IntBuffer;

.field public final d:Ljava/nio/FloatBuffer;

.field public final e:Lcom/jme3/bounding/BoundingBox;

.field public final f:[F

.field public final g:[F

.field public final h:[F

.field public final i:Lcom/jme3/math/Triangle;

.field public final j:Lcom/jme3/math/ColorRGBA;

.field public final k:Lcom/jme3/math/Vector3f;

.field public final l:Lcom/jme3/math/Vector3f;

.field public final m:Lcom/jme3/math/Vector3f;

.field public final n:Lcom/jme3/math/Vector3f;

.field public final o:Lcom/jme3/math/Vector3f;

.field public final p:Lcom/jme3/math/Vector3f;

.field public final q:Lcom/jme3/math/Vector3f;

.field public final r:Lcom/jme3/math/Vector3f;

.field public final s:Lcom/jme3/math/Vector3f;

.field public final t:Lcom/jme3/math/Vector3f;

.field public final u:Lcom/jme3/math/Vector4f;

.field public final v:Lcom/jme3/math/Vector4f;

.field public final w:[Lcom/jme3/math/Vector3f;

.field public final x:Lcom/jme3/math/Vector2f;

.field public final y:Lcom/jme3/math/Vector2f;

.field public final z:Lcom/jme3/math/Matrix3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LIc/M$a;

    invoke-direct {v0}, LIc/M$a;-><init>()V

    sput-object v0, LIc/M;->R:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LIc/M;->a:Z

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, LIc/M;->b:Ljava/nio/IntBuffer;

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, LIc/M;->c:Ljava/nio/IntBuffer;

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, LIc/M;->d:Ljava/nio/FloatBuffer;

    new-instance v1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v1}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    iput-object v1, p0, LIc/M;->e:Lcom/jme3/bounding/BoundingBox;

    const/16 v1, 0x600

    new-array v2, v1, [F

    iput-object v2, p0, LIc/M;->f:[F

    new-array v1, v1, [F

    iput-object v1, p0, LIc/M;->g:[F

    const/16 v1, 0x800

    new-array v1, v1, [F

    iput-object v1, p0, LIc/M;->h:[F

    new-instance v1, Lcom/jme3/math/Triangle;

    invoke-direct {v1}, Lcom/jme3/math/Triangle;-><init>()V

    iput-object v1, p0, LIc/M;->i:Lcom/jme3/math/Triangle;

    new-instance v1, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v1}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v1, p0, LIc/M;->j:Lcom/jme3/math/ColorRGBA;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, LIc/M;->k:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, LIc/M;->l:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, LIc/M;->m:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, LIc/M;->n:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, LIc/M;->o:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, LIc/M;->p:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, LIc/M;->q:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, LIc/M;->r:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, LIc/M;->s:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, LIc/M;->t:Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector4f;

    invoke-direct {v1}, Lcom/jme3/math/Vector4f;-><init>()V

    iput-object v1, p0, LIc/M;->u:Lcom/jme3/math/Vector4f;

    new-instance v1, Lcom/jme3/math/Vector4f;

    invoke-direct {v1}, Lcom/jme3/math/Vector4f;-><init>()V

    iput-object v1, p0, LIc/M;->v:Lcom/jme3/math/Vector4f;

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    filled-new-array {v1, v2, v3}, [Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, p0, LIc/M;->w:[Lcom/jme3/math/Vector3f;

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v1, p0, LIc/M;->x:Lcom/jme3/math/Vector2f;

    new-instance v1, Lcom/jme3/math/Vector2f;

    invoke-direct {v1}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v1, p0, LIc/M;->y:Lcom/jme3/math/Vector2f;

    new-instance v1, Lcom/jme3/math/Matrix3f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v1, p0, LIc/M;->z:Lcom/jme3/math/Matrix3f;

    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v1, p0, LIc/M;->A:Lcom/jme3/math/Matrix4f;

    new-instance v1, Lcom/jme3/math/Matrix4f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v1, p0, LIc/M;->B:Lcom/jme3/math/Matrix4f;

    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v1, p0, LIc/M;->C:Lcom/jme3/math/Quaternion;

    new-instance v1, Lcom/jme3/math/Quaternion;

    invoke-direct {v1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v1, p0, LIc/M;->D:Lcom/jme3/math/Quaternion;

    new-instance v1, Lcom/jme3/math/Eigen3f;

    invoke-direct {v1}, Lcom/jme3/math/Eigen3f;-><init>()V

    iput-object v1, p0, LIc/M;->E:Lcom/jme3/math/Eigen3f;

    new-instance v1, Lcom/jme3/math/Plane;

    invoke-direct {v1}, Lcom/jme3/math/Plane;-><init>()V

    iput-object v1, p0, LIc/M;->F:Lcom/jme3/math/Plane;

    const/4 v1, 0x3

    new-array v2, v1, [F

    iput-object v2, p0, LIc/M;->G:[F

    new-array v2, v1, [F

    iput-object v2, p0, LIc/M;->H:[F

    new-array v2, v1, [F

    iput-object v2, p0, LIc/M;->I:[F

    new-array v2, v1, [F

    iput-object v2, p0, LIc/M;->J:[F

    new-array v1, v1, [F

    iput-object v1, p0, LIc/M;->K:[F

    const/16 v1, 0x20

    new-array v1, v1, [Lcom/jme3/scene/Spatial;

    iput-object v1, p0, LIc/M;->L:[Lcom/jme3/scene/Spatial;

    new-array v0, v0, [F

    iput-object v0, p0, LIc/M;->M:[F

    new-instance v0, Lcom/jme3/collision/CollisionResults;

    invoke-direct {v0}, Lcom/jme3/collision/CollisionResults;-><init>()V

    iput-object v0, p0, LIc/M;->N:Lcom/jme3/collision/CollisionResults;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, LIc/M;->O:[F

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, LIc/M;->P:Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    return-void
.end method

.method public static a()LIc/M;
    .locals 4

    sget-object v0, LIc/M;->R:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIc/M$b;

    iget-object v1, v0, LIc/M$b;->b:[LIc/M;

    iget v2, v0, LIc/M$b;->a:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    new-instance v1, LIc/M;

    invoke-direct {v1}, LIc/M;-><init>()V

    iget-object v2, v0, LIc/M$b;->b:[LIc/M;

    iget v3, v0, LIc/M$b;->a:I

    aput-object v1, v2, v3

    :cond_0
    iget v2, v0, LIc/M$b;->a:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, LIc/M$b;->a:I

    iput-boolean v3, v1, LIc/M;->a:Z

    return-object v1
.end method


# virtual methods
.method public b()V
    .locals 2

    iget-boolean v0, p0, LIc/M;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, LIc/M;->a:Z

    sget-object v0, LIc/M;->R:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LIc/M$b;

    iget v1, v0, LIc/M$b;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, LIc/M$b;->a:I

    iget-object v0, v0, LIc/M$b;->b:[LIc/M;

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
