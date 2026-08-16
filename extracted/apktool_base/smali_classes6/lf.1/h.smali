.class public Llf/h;
.super Lcom/jme3/scene/Mesh;
.source "SourceFile"


# static fields
.field public static final b:I = 0x3

.field public static final c:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llf/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Llf/h;->c:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    return-void
.end method

.method public constructor <init>(FZ)V
    .locals 7

    .line 2
    invoke-direct {p0}, Lcom/jme3/scene/Mesh;-><init>()V

    .line 3
    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 4
    sget v0, Ljf/f;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v5, 0x1

    aput v0, v3, v5

    invoke-static {v3}, Ljf/f;->r([F)F

    move-result v3

    div-float/2addr v3, p1

    div-float/2addr v1, v3

    div-float/2addr v0, v3

    neg-float p1, v1

    neg-float v3, v0

    const/16 v6, 0xb4

    .line 5
    new-array v6, v6, [F

    aput p1, v6, v4

    aput v0, v6, v5

    const/4 v4, 0x0

    aput v4, v6, v2

    const/4 v2, 0x3

    aput v3, v6, v2

    const/4 v5, 0x4

    aput v4, v6, v5

    const/4 v5, 0x5

    aput v1, v6, v5

    const/4 v5, 0x6

    aput v4, v6, v5

    const/4 v5, 0x7

    aput v1, v6, v5

    const/16 v5, 0x8

    aput v0, v6, v5

    const/16 v5, 0x9

    aput p1, v6, v5

    const/16 v5, 0xa

    aput v0, v6, v5

    const/16 v5, 0xb

    aput v4, v6, v5

    const/16 v5, 0xc

    aput v4, v6, v5

    const/16 v5, 0xd

    aput v1, v6, v5

    const/16 v5, 0xe

    aput v0, v6, v5

    const/16 v5, 0xf

    aput v1, v6, v5

    const/16 v5, 0x10

    aput v0, v6, v5

    const/16 v5, 0x11

    aput v4, v6, v5

    const/16 v5, 0x12

    aput p1, v6, v5

    const/16 v5, 0x13

    aput v0, v6, v5

    const/16 v5, 0x14

    aput v4, v6, v5

    const/16 v5, 0x15

    aput v1, v6, v5

    const/16 v5, 0x16

    aput v0, v6, v5

    const/16 v5, 0x17

    aput v4, v6, v5

    const/16 v5, 0x18

    aput v4, v6, v5

    const/16 v5, 0x19

    aput v1, v6, v5

    const/16 v5, 0x1a

    aput v3, v6, v5

    const/16 v5, 0x1b

    aput p1, v6, v5

    const/16 v5, 0x1c

    aput v0, v6, v5

    const/16 v5, 0x1d

    aput v4, v6, v5

    const/16 v5, 0x1e

    aput v4, v6, v5

    const/16 v5, 0x1f

    aput v1, v6, v5

    const/16 v5, 0x20

    aput v3, v6, v5

    const/16 v5, 0x21

    aput v3, v6, v5

    const/16 v5, 0x22

    aput v4, v6, v5

    const/16 v5, 0x23

    aput p1, v6, v5

    const/16 v5, 0x24

    aput p1, v6, v5

    const/16 v5, 0x25

    aput v0, v6, v5

    const/16 v5, 0x26

    aput v4, v6, v5

    const/16 v5, 0x27

    aput v3, v6, v5

    const/16 v5, 0x28

    aput v4, v6, v5

    const/16 v5, 0x29

    aput p1, v6, v5

    const/16 v5, 0x2a

    aput v3, v6, v5

    const/16 v5, 0x2b

    aput v4, v6, v5

    const/16 v5, 0x2c

    aput v1, v6, v5

    const/16 v5, 0x2d

    aput v1, v6, v5

    const/16 v5, 0x2e

    aput v0, v6, v5

    const/16 v5, 0x2f

    aput v4, v6, v5

    const/16 v5, 0x30

    aput v4, v6, v5

    const/16 v5, 0x31

    aput v1, v6, v5

    const/16 v5, 0x32

    aput v0, v6, v5

    const/16 v5, 0x33

    aput v0, v6, v5

    const/16 v5, 0x34

    aput v4, v6, v5

    const/16 v5, 0x35

    aput v1, v6, v5

    const/16 v5, 0x36

    aput v4, v6, v5

    const/16 v5, 0x37

    aput v1, v6, v5

    const/16 v5, 0x38

    aput v0, v6, v5

    const/16 v5, 0x39

    aput v3, v6, v5

    const/16 v5, 0x3a

    aput v4, v6, v5

    const/16 v5, 0x3b

    aput v1, v6, v5

    const/16 v5, 0x3c

    aput v4, v6, v5

    const/16 v5, 0x3d

    aput p1, v6, v5

    const/16 v5, 0x3e

    aput v0, v6, v5

    const/16 v5, 0x3f

    aput v3, v6, v5

    const/16 v5, 0x40

    aput v4, v6, v5

    const/16 v5, 0x41

    aput v1, v6, v5

    const/16 v5, 0x42

    aput v3, v6, v5

    const/16 v5, 0x43

    aput v4, v6, v5

    const/16 v5, 0x44

    aput p1, v6, v5

    const/16 v5, 0x45

    aput p1, v6, v5

    const/16 v5, 0x46

    aput v3, v6, v5

    const/16 v5, 0x47

    aput v4, v6, v5

    const/16 v5, 0x48

    aput v3, v6, v5

    const/16 v5, 0x49

    aput v4, v6, v5

    const/16 v5, 0x4a

    aput p1, v6, v5

    const/16 v5, 0x4b

    aput v4, v6, v5

    const/16 v5, 0x4c

    aput v1, v6, v5

    const/16 v5, 0x4d

    aput v3, v6, v5

    const/16 v5, 0x4e

    aput v4, v6, v5

    const/16 v5, 0x4f

    aput p1, v6, v5

    const/16 v5, 0x50

    aput v3, v6, v5

    const/16 v5, 0x51

    aput v4, v6, v5

    const/16 v5, 0x52

    aput v1, v6, v5

    const/16 v5, 0x53

    aput v3, v6, v5

    const/16 v5, 0x54

    aput v1, v6, v5

    const/16 v5, 0x55

    aput v0, v6, v5

    const/16 v5, 0x56

    aput v4, v6, v5

    const/16 v5, 0x57

    aput v0, v6, v5

    const/16 v5, 0x58

    aput v4, v6, v5

    const/16 v5, 0x59

    aput p1, v6, v5

    const/16 v5, 0x5a

    aput v1, v6, v5

    const/16 v5, 0x5b

    aput v3, v6, v5

    const/16 v5, 0x5c

    aput v4, v6, v5

    const/16 v5, 0x5d

    aput v0, v6, v5

    const/16 v5, 0x5e

    aput v4, v6, v5

    const/16 v5, 0x5f

    aput v1, v6, v5

    const/16 v5, 0x60

    aput v4, v6, v5

    const/16 v5, 0x61

    aput p1, v6, v5

    const/16 v5, 0x62

    aput v0, v6, v5

    const/16 v5, 0x63

    aput v1, v6, v5

    const/16 v5, 0x64

    aput v3, v6, v5

    const/16 v5, 0x65

    aput v4, v6, v5

    const/16 v5, 0x66

    aput v4, v6, v5

    const/16 v5, 0x67

    aput p1, v6, v5

    const/16 v5, 0x68

    aput v0, v6, v5

    const/16 v5, 0x69

    aput p1, v6, v5

    const/16 v5, 0x6a

    aput v3, v6, v5

    const/16 v5, 0x6b

    aput v4, v6, v5

    const/16 v5, 0x6c

    aput v1, v6, v5

    const/16 v5, 0x6d

    aput v3, v6, v5

    const/16 v5, 0x6e

    aput v4, v6, v5

    const/16 v5, 0x6f

    aput p1, v6, v5

    const/16 v5, 0x70

    aput v3, v6, v5

    const/16 v5, 0x71

    aput v4, v6, v5

    const/16 v5, 0x72

    aput v4, v6, v5

    const/16 v5, 0x73

    aput p1, v6, v5

    const/16 v5, 0x74

    aput v3, v6, v5

    const/16 v5, 0x75

    aput v1, v6, v5

    const/16 v5, 0x76

    aput v3, v6, v5

    const/16 v5, 0x77

    aput v4, v6, v5

    const/16 v5, 0x78

    aput v4, v6, v5

    const/16 v5, 0x79

    aput p1, v6, v5

    const/16 v5, 0x7a

    aput v3, v6, v5

    const/16 v5, 0x7b

    aput v0, v6, v5

    const/16 v5, 0x7c

    aput v4, v6, v5

    const/16 v5, 0x7d

    aput p1, v6, v5

    const/16 v5, 0x7e

    aput v1, v6, v5

    const/16 v5, 0x7f

    aput v3, v6, v5

    const/16 v5, 0x80

    aput v4, v6, v5

    const/16 v5, 0x81

    aput v0, v6, v5

    const/16 v5, 0x82

    aput v4, v6, v5

    const/16 v5, 0x83

    aput p1, v6, v5

    const/16 v5, 0x84

    aput v0, v6, v5

    const/16 v5, 0x85

    aput v4, v6, v5

    const/16 v5, 0x86

    aput v1, v6, v5

    const/16 v5, 0x87

    aput v4, v6, v5

    const/16 v5, 0x88

    aput p1, v6, v5

    const/16 v5, 0x89

    aput v0, v6, v5

    const/16 v5, 0x8a

    aput v0, v6, v5

    const/16 v5, 0x8b

    aput v4, v6, v5

    const/16 v5, 0x8c

    aput v1, v6, v5

    const/16 v5, 0x8d

    aput v4, v6, v5

    const/16 v5, 0x8e

    aput v1, v6, v5

    const/16 v5, 0x8f

    aput v0, v6, v5

    const/16 v5, 0x90

    aput p1, v6, v5

    const/16 v5, 0x91

    aput v3, v6, v5

    const/16 v5, 0x92

    aput v4, v6, v5

    const/16 v5, 0x93

    aput v4, v6, v5

    const/16 v5, 0x94

    aput p1, v6, v5

    const/16 v5, 0x95

    aput v0, v6, v5

    const/16 v5, 0x96

    aput v3, v6, v5

    const/16 v5, 0x97

    aput v4, v6, v5

    const/16 v5, 0x98

    aput v1, v6, v5

    const/16 v5, 0x99

    aput v4, v6, v5

    const/16 v5, 0x9a

    aput p1, v6, v5

    const/16 v5, 0x9b

    aput v3, v6, v5

    const/16 v5, 0x9c

    aput p1, v6, v5

    const/16 v5, 0x9d

    aput v3, v6, v5

    const/16 v5, 0x9e

    aput v4, v6, v5

    const/16 v5, 0x9f

    aput v3, v6, v5

    const/16 v5, 0xa0

    aput v4, v6, v5

    const/16 v5, 0xa1

    aput p1, v6, v5

    const/16 v5, 0xa2

    aput v0, v6, v5

    const/16 v5, 0xa3

    aput v4, v6, v5

    const/16 v5, 0xa4

    aput p1, v6, v5

    const/16 v5, 0xa5

    aput v4, v6, v5

    const/16 v5, 0xa6

    aput p1, v6, v5

    const/16 v5, 0xa7

    aput v3, v6, v5

    const/16 v5, 0xa8

    aput v4, v6, v5

    const/16 v5, 0xa9

    aput v1, v6, v5

    const/16 v5, 0xaa

    aput v3, v6, v5

    const/16 v3, 0xab

    aput v0, v6, v3

    const/16 v3, 0xac

    aput v4, v6, v3

    const/16 v3, 0xad

    aput v1, v6, v3

    const/16 v3, 0xae

    aput v0, v6, v3

    const/16 v3, 0xaf

    aput v4, v6, v3

    const/16 v3, 0xb0

    aput p1, v6, v3

    const/16 p1, 0xb1

    aput v1, v6, p1

    const/16 p1, 0xb2

    aput v0, v6, p1

    const/16 p1, 0xb3

    aput v4, v6, p1

    invoke-static {v6}, Lcom/jme3/util/BufferUtils;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

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
