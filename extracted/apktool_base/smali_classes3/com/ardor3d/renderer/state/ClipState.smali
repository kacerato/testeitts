.class public Lcom/ardor3d/renderer/state/ClipState;
.super Lcom/ardor3d/renderer/state/RenderState;
.source "SourceFile"


# static fields
.field public static final MAX_CLIP_PLANES:I = 0x6


# instance fields
.field protected enabledClipPlanes:[Z

.field protected planeEquations:[[D


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/RenderState;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [Z

    iput-object v1, p0, Lcom/ardor3d/renderer/state/ClipState;->enabledClipPlanes:[Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/ardor3d/renderer/state/ClipState;->planeEquations:[[D

    return-void
.end method


# virtual methods
.method public createStateRecord()Lcom/ardor3d/renderer/state/record/StateRecord;
    .locals 1

    new-instance v0, Lcom/ardor3d/renderer/state/record/ClipStateRecord;

    invoke-direct {v0}, Lcom/ardor3d/renderer/state/record/ClipStateRecord;-><init>()V

    return-object v0
.end method

.method public getPlaneEnabled(I)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/ClipState;->enabledClipPlanes:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public getPlaneEquation(II)D
    .locals 2

    iget-object v0, p0, Lcom/ardor3d/renderer/state/ClipState;->planeEquations:[[D

    aget-object p1, v0, p1

    aget-wide v0, p1, p2

    return-wide v0
.end method

.method public getPlaneEquations(I)[D
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/ClipState;->planeEquations:[[D

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getType()Lcom/ardor3d/renderer/state/RenderState$StateType;
    .locals 1

    sget-object v0, Lcom/ardor3d/renderer/state/RenderState$StateType;->Clip:Lcom/ardor3d/renderer/state/RenderState$StateType;

    return-object v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->read(Lcom/ardor3d/util/export/InputCapsule;)V

    const/4 v0, 0x6

    new-array v1, v0, [Z

    const-string v2, "enabledClipPlanes"

    invoke-interface {p1, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readBooleanArray(Ljava/lang/String;[Z)[Z

    move-result-object v1

    iput-object v1, p0, Lcom/ardor3d/renderer/state/ClipState;->enabledClipPlanes:[Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const-string v1, "planeEquations"

    invoke-interface {p1, v1, v0}, Lcom/ardor3d/util/export/InputCapsule;->readDoubleArray2D(Ljava/lang/String;[[D)[[D

    move-result-object p1

    iput-object p1, p0, Lcom/ardor3d/renderer/state/ClipState;->planeEquations:[[D

    return-void
.end method

.method public setClipPlaneEquation(IDDDD)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/ClipState;->planeEquations:[[D

    aget-object p1, v0, p1

    const/4 v0, 0x0

    aput-wide p2, p1, v0

    const/4 p2, 0x1

    aput-wide p4, p1, p2

    const/4 p3, 0x2

    aput-wide p6, p1, p3

    const/4 p3, 0x3

    aput-wide p8, p1, p3

    invoke-virtual {p0, p2}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnableClipPlane(IZ)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x6

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/renderer/state/ClipState;->enabledClipPlanes:[Z

    aput-boolean p2, v0, p1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPlaneEq(IID)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/renderer/state/ClipState;->planeEquations:[[D

    aget-object p1, v0, p1

    aput-wide p3, p1, p2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->setNeedsRefresh(Z)V

    return-void
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/ardor3d/renderer/state/RenderState;->write(Lcom/ardor3d/util/export/OutputCapsule;)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/ClipState;->enabledClipPlanes:[Z

    const/4 v1, 0x6

    new-array v2, v1, [Z

    const-string v3, "enabledClipPlanes"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write([ZLjava/lang/String;[Z)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/ClipState;->planeEquations:[[D

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    const/4 v4, 0x4

    aput v4, v2, v3

    const/4 v3, 0x0

    aput v1, v2, v3

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const-string v2, "planeEquations"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write([[DLjava/lang/String;[[D)V

    return-void
.end method
