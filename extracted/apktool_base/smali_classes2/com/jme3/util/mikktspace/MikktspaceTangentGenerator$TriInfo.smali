.class Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TriInfo"
.end annotation


# instance fields
.field assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

.field faceNeighbors:[I

.field flag:I

.field magS:F

.field magT:F

.field orgFaceNumber:I

.field os:Lcom/jme3/math/Vector3f;

.field ot:Lcom/jme3/math/Vector3f;

.field tSpacesOffs:I

.field vertNum:[B


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->faceNeighbors:[I

    .line 3
    new-array v0, v0, [Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    iput-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->assignedGroup:[Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Group;

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->os:Lcom/jme3/math/Vector3f;

    .line 5
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->ot:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;->vertNum:[B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TriInfo;-><init>()V

    return-void
.end method
