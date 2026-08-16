.class public Lcom/jme3/bullet/debug/DebugConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private angularVelocityFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

.field private axisArrowLength:F

.field private axisLineWidth:F

.field private boundingBoxFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

.field private camera:Lcom/jme3/renderer/Camera;

.field private filter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

.field private gravityVectorFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

.field private initListener:Lcom/jme3/bullet/debug/DebugInitListener;

.field private isEnabled:Z

.field private jointLineWidth:F

.field private shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field private space:Lcom/jme3/bullet/PhysicsSpace;

.field private sweptSphereFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

.field private transformSpatial:Lcom/jme3/scene/Spatial;

.field private velocityVectorFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

.field private viewPorts:[Lcom/jme3/renderer/ViewPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/DebugConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/DebugConfiguration;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->isEnabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->axisArrowLength:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->axisLineWidth:F

    iput v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->jointLineWidth:F

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    return-void
.end method


# virtual methods
.method public axisArrowLength()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->axisArrowLength:F

    return v0
.end method

.method public axisLineWidth()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->axisLineWidth:F

    return v0
.end method

.method public getAngularVelocityFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->angularVelocityFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-object v0
.end method

.method public getBoundingBoxFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->boundingBoxFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-object v0
.end method

.method public getCamera()Lcom/jme3/renderer/Camera;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->camera:Lcom/jme3/renderer/Camera;

    return-object v0
.end method

.method public getFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->filter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-object v0
.end method

.method public getGravityVectorFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->gravityVectorFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-object v0
.end method

.method public getInitListener()Lcom/jme3/bullet/debug/DebugInitListener;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->initListener:Lcom/jme3/bullet/debug/DebugInitListener;

    return-object v0
.end method

.method public getSpace()Lcom/jme3/bullet/PhysicsSpace;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-object v0
.end method

.method public getSweptSphereFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->sweptSphereFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-object v0
.end method

.method public getTransformSpatial()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->transformSpatial:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public getVelocityVectorFilter()Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->velocityVectorFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 2

    const-string v0, "application"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->camera:Lcom/jme3/renderer/Camera;

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/jme3/app/Application;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->camera:Lcom/jme3/renderer/Camera;

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->viewPorts:[Lcom/jme3/renderer/ViewPort;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/jme3/renderer/ViewPort;

    iput-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->viewPorts:[Lcom/jme3/renderer/ViewPort;

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/jme3/app/Application;->getViewPort()Lcom/jme3/renderer/ViewPort;

    move-result-object p1

    aput-object p1, v0, v1

    :cond_1
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->isEnabled:Z

    return v0
.end method

.method public jointLineWidth()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->jointLineWidth:F

    return v0
.end method

.method public listViewPorts()[Lcom/jme3/renderer/ViewPort;
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->viewPorts:[Lcom/jme3/renderer/ViewPort;

    array-length v1, v0

    new-array v2, v1, [Lcom/jme3/renderer/ViewPort;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public renderAllViewPorts(Lcom/jme3/renderer/RenderManager;Lcom/jme3/scene/Spatial;)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->viewPorts:[Lcom/jme3/renderer/ViewPort;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/renderer/ViewPort;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, p2, v3}, Lcom/jme3/renderer/RenderManager;->renderScene(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/ViewPort;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAngularVelocityFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->angularVelocityFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-void
.end method

.method public setAxisArrowLength(F)V
    .locals 1

    const-string v0, "length"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    iput p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->axisArrowLength:F

    return-void
.end method

.method public setAxisLineWidth(F)V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const-string v2, "width"

    invoke-static {p1, v2, v0, v1}, Lif/E;->h(FLjava/lang/String;FF)Z

    iput p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->axisLineWidth:F

    return-void
.end method

.method public setBoundingBoxFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->boundingBoxFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-void
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->camera:Lcom/jme3/renderer/Camera;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->isEnabled:Z

    return-void
.end method

.method public setFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->filter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-void
.end method

.method public setGravityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->gravityVectorFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-void
.end method

.method public setInitListener(Lcom/jme3/bullet/debug/DebugInitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->initListener:Lcom/jme3/bullet/debug/DebugInitListener;

    return-void
.end method

.method public setJointLineWidth(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->jointLineWidth:F

    return-void
.end method

.method public setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    return-void
.end method

.method public setSpace(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->space:Lcom/jme3/bullet/PhysicsSpace;

    return-void
.end method

.method public setSweptSphereFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->sweptSphereFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-void
.end method

.method public setTransformSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->transformSpatial:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public setVelocityVectorFilter(Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->velocityVectorFilter:Lcom/jme3/bullet/debug/BulletDebugAppState$DebugAppStateFilter;

    return-void
.end method

.method public varargs setViewPorts([Lcom/jme3/renderer/ViewPort;)V
    .locals 3

    const-string v0, "view ports"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    array-length v0, p1

    new-array v1, v0, [Lcom/jme3/renderer/ViewPort;

    iput-object v1, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->viewPorts:[Lcom/jme3/renderer/ViewPort;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public shadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/debug/DebugConfiguration;->shadowMode:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    return-object v0
.end method
