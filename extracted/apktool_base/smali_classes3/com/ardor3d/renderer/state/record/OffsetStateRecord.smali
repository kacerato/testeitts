.class public Lcom/ardor3d/renderer/state/record/OffsetStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public enabled:Z

.field public enabledOffsets:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/ardor3d/renderer/state/OffsetState$OffsetType;",
            ">;"
        }
    .end annotation
.end field

.field public factor:F

.field public units:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/OffsetStateRecord;->enabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/renderer/state/record/OffsetStateRecord;->factor:F

    iput v0, p0, Lcom/ardor3d/renderer/state/record/OffsetStateRecord;->units:F

    const-class v0, Lcom/ardor3d/renderer/state/OffsetState$OffsetType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/OffsetStateRecord;->enabledOffsets:Ljava/util/EnumSet;

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/OffsetStateRecord;->enabled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ardor3d/renderer/state/record/OffsetStateRecord;->factor:F

    iput v0, p0, Lcom/ardor3d/renderer/state/record/OffsetStateRecord;->units:F

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/OffsetStateRecord;->enabledOffsets:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method
