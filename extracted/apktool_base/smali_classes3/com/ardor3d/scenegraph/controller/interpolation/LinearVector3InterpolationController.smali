.class public Lcom/ardor3d/scenegraph/controller/interpolation/LinearVector3InterpolationController;
.super Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;
.source "SourceFile"


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

    invoke-direct {p0}, Lcom/ardor3d/scenegraph/controller/interpolation/Vector3InterpolationController;-><init>()V

    return-void
.end method


# virtual methods
.method public interpolateVectors(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;DLcom/ardor3d/math/Vector3;)Lcom/ardor3d/math/Vector3;
    .locals 0

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/ardor3d/math/Vector3;->lerpLocal(Lcom/ardor3d/math/type/ReadOnlyVector3;Lcom/ardor3d/math/type/ReadOnlyVector3;D)Lcom/ardor3d/math/Vector3;

    move-result-object p1

    return-object p1
.end method
