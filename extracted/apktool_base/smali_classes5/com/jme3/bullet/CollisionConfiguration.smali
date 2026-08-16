.class public Lcom/jme3/bullet/CollisionConfiguration;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/CollisionConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/CollisionConfiguration;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x1000

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/jme3/bullet/CollisionConfiguration;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    .line 3
    const-string v0, "max manifolds"

    invoke-static {p1, v0}, Lif/E;->F(ILjava/lang/String;)Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    const-string v2, "penetration depth solver"

    invoke-static {p2, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 5
    invoke-static {p1, p2}, Lcom/jme3/bullet/CollisionConfiguration;->createNative(II)J

    move-result-wide p1

    .line 6
    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    return-void
.end method

.method private static native createNative(II)J
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/CollisionConfiguration;->finalizeNative(J)V

    return-void
.end method

.method private static native maxManifolds(J)I
.end method

.method private static native penetrationDepthSolver(J)I
.end method


# virtual methods
.method public maxManifolds()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/CollisionConfiguration;->maxManifolds(J)I

    move-result v0

    return v0
.end method

.method public penetrationDepthSolver()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/CollisionConfiguration;->penetrationDepthSolver(J)I

    move-result v0

    return v0
.end method
