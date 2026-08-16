.class public Lcom/ardor3d/renderer/state/record/LineRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public smoothHint:I

.field public smoothed:Z

.field public stippleFactor:I

.field public stipplePattern:S

.field public stippled:Z

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->smoothed:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->stippled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->smoothHint:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->width:F

    iput v0, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->stippleFactor:I

    iput-short v0, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->stipplePattern:S

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->smoothed:Z

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->stippled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->smoothHint:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->width:F

    iput v0, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->stippleFactor:I

    iput-short v0, p0, Lcom/ardor3d/renderer/state/record/LineRecord;->stipplePattern:S

    return-void
.end method
