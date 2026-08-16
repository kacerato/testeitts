.class public Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation


# instance fields
.field private bindShapeMatrix:[F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasIndices:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasJoints:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasNormals:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasTangents:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasUVs:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasVertices:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public hasWeights:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public jointsCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public maxExtent:F
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public normalsCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public tangentsCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public trianglesCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private useHalfFloatUV:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public useUshortRenderableData:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public uvsCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public verticesCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public weightsCount:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->useHalfFloatUV:Z

    return-void
.end method

.method public static synthetic a(Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->useHalfFloatUV:Z

    return p0
.end method

.method public static synthetic b(Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vertex/Data/MeshSerializer$Data;->useHalfFloatUV:Z

    return p1
.end method
