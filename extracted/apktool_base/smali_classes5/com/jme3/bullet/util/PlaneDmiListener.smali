.class public Lcom/jme3/bullet/util/PlaneDmiListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/bullet/debug/DebugMeshInitListener;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final textureScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/util/PlaneDmiListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/util/PlaneDmiListener;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "side length"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    invoke-static {}, Lcom/jme3/bullet/util/DebugShapeFactory;->meshSideLength()F

    move-result v0

    div-float/2addr v0, p1

    iput v0, p0, Lcom/jme3/bullet/util/PlaneDmiListener;->textureScale:F

    return-void
.end method


# virtual methods
.method public debugMeshInit(Lcom/jme3/scene/Mesh;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    const/4 p1, 0x0

    move v3, p1

    :goto_0
    if-ge v3, v4, :cond_0

    iget v5, p0, Lcom/jme3/bullet/util/PlaneDmiListener;->textureScale:F

    const/16 v6, 0x8

    new-array v6, v6, [F

    aput v5, v6, p1

    aput v5, v6, v0

    aput v5, v6, v4

    const/4 v7, 0x3

    aput v1, v6, v7

    const/4 v7, 0x4

    aput v1, v6, v7

    const/4 v7, 0x5

    aput v1, v6, v7

    const/4 v7, 0x6

    aput v1, v6, v7

    const/4 v7, 0x7

    aput v5, v6, v7

    invoke-virtual {v2, v6}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
