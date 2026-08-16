.class Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TSpace"
.end annotation


# instance fields
.field counter:I

.field magS:F

.field magT:F

.field orient:Z

.field os:Lcom/jme3/math/Vector3f;

.field ot:Lcom/jme3/math/Vector3f;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->os:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v0, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    iput v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magS:F

    iget-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    iget-object v1, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->ot:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v0, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    iput v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->magT:F

    iget v0, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->counter:I

    iput v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->counter:I

    iget-boolean p1, p1, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->orient:Z

    iput-boolean p1, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$TSpace;->orient:Z

    return-void
.end method
