.class public Lcom/jme3/renderer/opengl/GLFence;
.super Lcom/jme3/util/NativeObject;
.source "SourceFile"


# static fields
.field private static final nextUniqueId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final fenceId:J

.field private nativeSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/jme3/renderer/opengl/GLFence;->nextUniqueId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(JLjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/jme3/renderer/opengl/GLFence;->fenceId:J

    .line 3
    sget-object p1, Lcom/jme3/renderer/opengl/GLFence;->nextUniqueId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Lcom/jme3/util/NativeObject;->id:I

    .line 4
    iput-object p3, p0, Lcom/jme3/renderer/opengl/GLFence;->nativeSync:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->clearUpdateNeeded()V

    return-void
.end method

.method private constructor <init>(Lcom/jme3/renderer/opengl/GLFence;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/jme3/util/NativeObject;-><init>()V

    .line 7
    iget-wide v0, p1, Lcom/jme3/renderer/opengl/GLFence;->fenceId:J

    iput-wide v0, p0, Lcom/jme3/renderer/opengl/GLFence;->fenceId:J

    .line 8
    iget-object v0, p1, Lcom/jme3/renderer/opengl/GLFence;->nativeSync:Ljava/lang/Object;

    iput-object v0, p0, Lcom/jme3/renderer/opengl/GLFence;->nativeSync:Ljava/lang/Object;

    .line 9
    iget p1, p1, Lcom/jme3/util/NativeObject;->id:I

    iput p1, p0, Lcom/jme3/util/NativeObject;->id:I

    return-void
.end method


# virtual methods
.method public createDestructableClone()Lcom/jme3/util/NativeObject;
    .locals 1

    new-instance v0, Lcom/jme3/renderer/opengl/GLFence;

    invoke-direct {v0, p0}, Lcom/jme3/renderer/opengl/GLFence;-><init>(Lcom/jme3/renderer/opengl/GLFence;)V

    return-object v0
.end method

.method public deleteObject(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/jme3/renderer/Renderer;

    invoke-interface {p1, p0}, Lcom/jme3/renderer/Renderer;->deleteFence(Lcom/jme3/renderer/opengl/GLFence;)V

    return-void
.end method

.method public getFenceId()J
    .locals 2

    iget-wide v0, p0, Lcom/jme3/renderer/opengl/GLFence;->fenceId:J

    return-wide v0
.end method

.method public getNativeSync()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/jme3/renderer/opengl/GLFence;->nativeSync:Ljava/lang/Object;

    return-object v0
.end method

.method public getUniqueId()J
    .locals 4

    iget v0, p0, Lcom/jme3/util/NativeObject;->id:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const-wide v2, 0xa00000000L

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public resetObject()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/renderer/opengl/GLFence;->nativeSync:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/jme3/util/NativeObject;->id:I

    invoke-virtual {p0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method
