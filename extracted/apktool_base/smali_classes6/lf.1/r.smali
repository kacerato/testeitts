.class public Llf/r;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:I = 0x3

.field public static final c:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/r;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    const/high16 v0, 0x40400000    # 3.0f

    .line 4
    invoke-static {v0}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    div-float/2addr p1, v0

    neg-float v0, p1

    const/16 v1, 0x24

    .line 5
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    const/4 v2, 0x2

    aput p1, v1, v2

    const/4 v2, 0x3

    aput p1, v1, v2

    const/4 v3, 0x4

    aput p1, v1, v3

    const/4 v3, 0x5

    aput v0, v1, v3

    const/4 v3, 0x6

    aput v0, v1, v3

    const/4 v3, 0x7

    aput v0, v1, v3

    const/16 v3, 0x8

    aput v0, v1, v3

    const/16 v3, 0x9

    aput v0, v1, v3

    const/16 v3, 0xa

    aput p1, v1, v3

    const/16 v3, 0xb

    aput p1, v1, v3

    const/16 v3, 0xc

    aput p1, v1, v3

    const/16 v3, 0xd

    aput v0, v1, v3

    const/16 v3, 0xe

    aput p1, v1, v3

    const/16 v3, 0xf

    aput p1, v1, v3

    const/16 v3, 0x10

    aput p1, v1, v3

    const/16 v3, 0x11

    aput v0, v1, v3

    const/16 v3, 0x12

    aput v0, v1, v3

    const/16 v3, 0x13

    aput p1, v1, v3

    const/16 v3, 0x14

    aput p1, v1, v3

    const/16 v3, 0x15

    aput v0, v1, v3

    const/16 v3, 0x16

    aput v0, v1, v3

    const/16 v3, 0x17

    aput v0, v1, v3

    const/16 v3, 0x18

    aput p1, v1, v3

    const/16 v3, 0x19

    aput v0, v1, v3

    const/16 v3, 0x1a

    aput p1, v1, v3

    const/16 v3, 0x1b

    aput v0, v1, v3

    const/16 v3, 0x1c

    aput v0, v1, v3

    const/16 v3, 0x1d

    aput v0, v1, v3

    const/16 v3, 0x1e

    aput p1, v1, v3

    const/16 v3, 0x1f

    aput p1, v1, v3

    const/16 v3, 0x20

    aput v0, v1, v3

    const/16 v3, 0x21

    aput p1, v1, v3

    const/16 v3, 0x22

    aput v0, v1, v3

    const/16 v0, 0x23

    aput p1, v1, v0

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 6
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0, v2, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 7
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p2, :cond_0

    .line 8
    invoke-static {p0}, Lif/p;->j(Lcom/jme3/scene/Mesh;)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 10
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method
