.class public Lcom/jme3/util/TangentBinormalGenerator$TriangleData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/TangentBinormalGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriangleData"
.end annotation


# instance fields
.field public final binormal:Lcom/jme3/math/Vector3f;

.field public index:[I

.field public final normal:Lcom/jme3/math/Vector3f;

.field public final tangent:Lcom/jme3/math/Vector3f;

.field public triangleOffset:I


# direct methods
.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->index:[I

    iput-object p1, p0, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->tangent:Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->binormal:Lcom/jme3/math/Vector3f;

    iput-object p3, p0, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->normal:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public setIndex([I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/util/TangentBinormalGenerator$TriangleData;->index:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
