.class final Lcom/ardor3d/util/scenegraph/SceneCompiler$1;
.super Lcom/ardor3d/renderer/Camera;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ardor3d/util/scenegraph/SceneCompiler;->compile(Lcom/ardor3d/scenegraph/Spatial;Lcom/ardor3d/renderer/Renderer;Lcom/ardor3d/util/scenegraph/CompileOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/ardor3d/renderer/Camera;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ardor3d/renderer/Camera;-><init>(Lcom/ardor3d/renderer/Camera;)V

    return-void
.end method


# virtual methods
.method public contains(Lcom/ardor3d/bounding/BoundingVolume;)Lcom/ardor3d/renderer/Camera$FrustumIntersect;
    .locals 0

    sget-object p1, Lcom/ardor3d/renderer/Camera$FrustumIntersect;->Inside:Lcom/ardor3d/renderer/Camera$FrustumIntersect;

    return-object p1
.end method
