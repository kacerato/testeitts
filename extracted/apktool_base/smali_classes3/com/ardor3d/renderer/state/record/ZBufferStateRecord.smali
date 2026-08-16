.class public Lcom/ardor3d/renderer/state/record/ZBufferStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public depthFunc:I

.field public depthTest:Z

.field public writable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ZBufferStateRecord;->depthTest:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ZBufferStateRecord;->writable:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/ZBufferStateRecord;->depthFunc:I

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ZBufferStateRecord;->depthTest:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/ZBufferStateRecord;->writable:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/ZBufferStateRecord;->depthFunc:I

    return-void
.end method
