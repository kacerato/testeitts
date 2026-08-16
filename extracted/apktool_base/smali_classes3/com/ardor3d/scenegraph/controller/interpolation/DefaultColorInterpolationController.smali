.class public Lcom/ardor3d/scenegraph/controller/interpolation/DefaultColorInterpolationController;
.super Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController<",
        "Lcom/ardor3d/math/type/ReadOnlyColorRGBA;",
        "Lcom/ardor3d/scenegraph/Mesh;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/InterpolationController;-><init>()V

    return-void
.end method


# virtual methods
.method public interpolate(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;DLcom/ardor3d/scenegraph/Mesh;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/ardor3d/math/ColorRGBA;->fetchTempInstance()Lcom/ardor3d/math/ColorRGBA;

    move-result-object v0

    invoke-virtual {p5}, Lcom/ardor3d/scenegraph/Mesh;->getDefaultColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    move-result-object v0

    double-to-float p3, p3

    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/ardor3d/math/ColorRGBA;->lerpLocal(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;F)Lcom/ardor3d/math/ColorRGBA;

    .line 4
    invoke-virtual {p5, v0}, Lcom/ardor3d/scenegraph/Mesh;->setDefaultColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    .line 5
    invoke-static {v0}, Lcom/ardor3d/math/ColorRGBA;->releaseTempInstance(Lcom/ardor3d/math/ColorRGBA;)V

    return-void
.end method

.method public bridge synthetic interpolate(Ljava/lang/Object;Ljava/lang/Object;DLcom/ardor3d/scenegraph/Spatial;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    check-cast p2, Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    check-cast p5, Lcom/ardor3d/scenegraph/Mesh;

    invoke-virtual/range {p0 .. p5}, Lcom/ardor3d/scenegraph/controller/interpolation/DefaultColorInterpolationController;->interpolate(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;Lcom/ardor3d/math/type/ReadOnlyColorRGBA;DLcom/ardor3d/scenegraph/Mesh;)V

    return-void
.end method
