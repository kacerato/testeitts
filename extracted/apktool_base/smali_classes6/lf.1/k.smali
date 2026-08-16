.class public Llf/k;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:I = 0x3

.field public static final c:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/k;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 5

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    neg-float v0, p1

    const/16 v1, 0x48

    .line 4
    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v4, 0x4

    aput v2, v1, v4

    const/4 v4, 0x5

    aput p1, v1, v4

    const/4 v4, 0x6

    aput v2, v1, v4

    const/4 v4, 0x7

    aput p1, v1, v4

    const/16 v4, 0x8

    aput v2, v1, v4

    const/16 v4, 0x9

    aput p1, v1, v4

    const/16 v4, 0xa

    aput v2, v1, v4

    const/16 v4, 0xb

    aput v2, v1, v4

    const/16 v4, 0xc

    aput v2, v1, v4

    const/16 v4, 0xd

    aput p1, v1, v4

    const/16 v4, 0xe

    aput v2, v1, v4

    const/16 v4, 0xf

    aput v2, v1, v4

    const/16 v4, 0x10

    aput v2, v1, v4

    const/16 v4, 0x11

    aput p1, v1, v4

    const/16 v4, 0x12

    aput v2, v1, v4

    const/16 v4, 0x13

    aput v2, v1, v4

    const/16 v4, 0x14

    aput v0, v1, v4

    const/16 v4, 0x15

    aput v2, v1, v4

    const/16 v4, 0x16

    aput p1, v1, v4

    const/16 v4, 0x17

    aput v2, v1, v4

    const/16 v4, 0x18

    aput p1, v1, v4

    const/16 v4, 0x19

    aput v2, v1, v4

    const/16 v4, 0x1a

    aput v2, v1, v4

    const/16 v4, 0x1b

    aput v0, v1, v4

    const/16 v4, 0x1c

    aput v2, v1, v4

    const/16 v4, 0x1d

    aput v2, v1, v4

    const/16 v4, 0x1e

    aput v2, v1, v4

    const/16 v4, 0x1f

    aput p1, v1, v4

    const/16 v4, 0x20

    aput v2, v1, v4

    const/16 v4, 0x21

    aput v2, v1, v4

    const/16 v4, 0x22

    aput v2, v1, v4

    const/16 v4, 0x23

    aput v0, v1, v4

    const/16 v4, 0x24

    aput v2, v1, v4

    const/16 v4, 0x25

    aput v0, v1, v4

    const/16 v4, 0x26

    aput v2, v1, v4

    const/16 v4, 0x27

    aput v2, v1, v4

    const/16 v4, 0x28

    aput v2, v1, v4

    const/16 v4, 0x29

    aput v0, v1, v4

    const/16 v4, 0x2a

    aput p1, v1, v4

    const/16 v4, 0x2b

    aput v2, v1, v4

    const/16 v4, 0x2c

    aput v2, v1, v4

    const/16 v4, 0x2d

    aput v2, v1, v4

    const/16 v4, 0x2e

    aput v0, v1, v4

    const/16 v4, 0x2f

    aput v2, v1, v4

    const/16 v4, 0x30

    aput p1, v1, v4

    const/16 v4, 0x31

    aput v2, v1, v4

    const/16 v4, 0x32

    aput v2, v1, v4

    const/16 v4, 0x33

    aput v2, v1, v4

    const/16 v4, 0x34

    aput v2, v1, v4

    const/16 v4, 0x35

    aput p1, v1, v4

    const/16 v4, 0x36

    aput v0, v1, v4

    const/16 v4, 0x37

    aput v2, v1, v4

    const/16 v4, 0x38

    aput v2, v1, v4

    const/16 v4, 0x39

    aput v2, v1, v4

    const/16 v4, 0x3a

    aput v0, v1, v4

    const/16 v4, 0x3b

    aput v2, v1, v4

    const/16 v4, 0x3c

    aput v2, v1, v4

    const/16 v4, 0x3d

    aput v2, v1, v4

    const/16 v4, 0x3e

    aput p1, v1, v4

    const/16 p1, 0x3f

    aput v0, v1, p1

    const/16 p1, 0x40

    aput v2, v1, p1

    const/16 p1, 0x41

    aput v2, v1, p1

    const/16 p1, 0x42

    aput v2, v1, p1

    const/16 p1, 0x43

    aput v2, v1, p1

    const/16 p1, 0x44

    aput v0, v1, p1

    const/16 p1, 0x45

    aput v2, v1, p1

    const/16 p1, 0x46

    aput v0, v1, p1

    const/16 p1, 0x47

    aput v2, v1, p1

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p0, v0, v3, p1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    .line 6
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    if-eqz p2, :cond_0

    .line 7
    invoke-static {p0}, Lif/p;->j(Lcom/jme3/scene/Mesh;)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->updateBound()V

    .line 9
    invoke-virtual {p0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method
