.class public Lcom/jme3/scene/shape/FullscreenTriangle;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field private static final POSITIONS:[F

.field private static final TEXCOORDS:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jme3/scene/shape/FullscreenTriangle;->POSITIONS:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jme3/scene/shape/FullscreenTriangle;->TEXCOORDS:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x40000000    # 2.0f
        0x0
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v1, Lcom/jme3/scene/shape/FullscreenTriangle;->POSITIONS:[F

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    sget-object v1, Lcom/jme3/scene/shape/FullscreenTriangle;->TEXCOORDS:[F

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v3, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array v1, v2, [S

    fill-array-data v1, :array_0

    invoke-virtual {p0, v0, v2, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
    .end array-data
.end method
