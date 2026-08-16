.class public Lcom/ardor3d/renderer/state/record/WireframeStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public backMode:I

.field public frontMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/WireframeStateRecord;->frontMode:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/WireframeStateRecord;->backMode:I

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/WireframeStateRecord;->frontMode:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/WireframeStateRecord;->backMode:I

    return-void
.end method
