.class public abstract Lcom/jme3/bullet/collision/shapes/ConvexShape;
.super Lcom/jme3/bullet/collision/shapes/CollisionShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final loggerX:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/ConvexShape;->loggerX:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    return-void
.end method


# virtual methods
.method public isConcave()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConvex()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public scaledVolume()F
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jme3/bullet/util/DebugShapeFactory;->volumeConvex(Lcom/jme3/bullet/collision/shapes/ConvexShape;I)F

    move-result v0

    return v0
.end method

.method public toHullShape()Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/jme3/bullet/util/DebugShapeFactory;->debugVertices(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v1, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {v1, v0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Ljava/nio/FloatBuffer;)V

    return-object v1
.end method

.method public toSplittableShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;->toHullShape()Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    move-result-object v0

    :goto_0
    return-object v0
.end method
