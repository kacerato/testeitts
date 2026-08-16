.class public Lcom/ardor3d/renderer/state/record/ClipStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public final buf:Ljava/nio/DoubleBuffer;

.field public final planeEnabled:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/ClipStateRecord;->planeEnabled:[Z

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createDoubleBuffer(I)Ljava/nio/DoubleBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/ClipStateRecord;->buf:Ljava/nio/DoubleBuffer;

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/ClipStateRecord;->planeEnabled:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method
