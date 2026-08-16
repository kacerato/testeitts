.class public Lcom/ardor3d/renderer/state/record/StencilStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public enabled:Z

.field public useTwoSided:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/StencilStateRecord;->enabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/StencilStateRecord;->useTwoSided:Z

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/StencilStateRecord;->enabled:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/StencilStateRecord;->useTwoSided:Z

    return-void
.end method
