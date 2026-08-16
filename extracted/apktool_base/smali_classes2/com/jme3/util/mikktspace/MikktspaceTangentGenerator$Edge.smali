.class Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Edge"
.end annotation


# instance fields
.field array:[I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;-><init>()V

    return-void
.end method


# virtual methods
.method public getF()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getI0()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getI1()I
    .locals 2

    iget-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public setF(I)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    const/4 v1, 0x2

    aput p1, v0, v1

    return-void
.end method

.method public setI0(I)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method public setI1(I)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/util/mikktspace/MikktspaceTangentGenerator$Edge;->array:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method
