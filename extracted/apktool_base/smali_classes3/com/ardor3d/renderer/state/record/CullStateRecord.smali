.class public Lcom/ardor3d/renderer/state/record/CullStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public enabled:Z

.field public face:I

.field public windOrder:Lcom/ardor3d/renderer/state/CullState$PolygonWind;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/CullStateRecord;->enabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/CullStateRecord;->face:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/CullStateRecord;->windOrder:Lcom/ardor3d/renderer/state/CullState$PolygonWind;

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/CullStateRecord;->enabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/CullStateRecord;->face:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/CullStateRecord;->windOrder:Lcom/ardor3d/renderer/state/CullState$PolygonWind;

    return-void
.end method
