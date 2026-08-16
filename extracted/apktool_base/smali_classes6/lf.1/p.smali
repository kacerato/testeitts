.class public Llf/p;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/p;->b:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, v0, v1, v0, v1}, Llf/p;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    .line 4
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/16 v1, 0xc

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v4, 0x3

    aput p1, v1, v4

    const/4 p1, 0x4

    aput p4, v1, p1

    const/4 v5, 0x5

    aput v2, v1, v5

    const/4 v5, 0x6

    aput p2, v1, v5

    const/4 v5, 0x7

    aput p4, v1, v5

    const/16 p4, 0x8

    aput v2, v1, p4

    const/16 p4, 0x9

    aput p2, v1, p4

    const/16 p2, 0xa

    aput p3, v1, p2

    const/16 p2, 0xb

    aput v2, v1, p2

    invoke-virtual {p0, v0, v4, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[F)V

    .line 5
    sget-object p2, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    new-array p1, p1, [S

    fill-array-data p1, :array_0

    invoke-virtual {p0, p2, v3, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;I[S)V

    .line 6
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 7
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
    .end array-data
.end method
