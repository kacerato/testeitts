.class public Lcom/ardor3d/renderer/state/record/FogStateRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public colorBuff:Ljava/nio/FloatBuffer;

.field public density:F

.field public enabled:Z

.field public fogColor:Lcom/ardor3d/math/ColorRGBA;

.field public fogEnd:F

.field public fogHint:I

.field public fogMode:I

.field public fogStart:F

.field public source:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->enabled:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->fogStart:F

    iput v0, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->fogEnd:F

    iput v0, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->density:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->fogMode:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->fogHint:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->fogColor:Lcom/ardor3d/math/ColorRGBA;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->colorBuff:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->source:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v0}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->fogColor:Lcom/ardor3d/math/ColorRGBA;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ardor3d/util/geom/BufferUtils;->createColorBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->colorBuff:Ljava/nio/FloatBuffer;

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 3

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->enabled:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->fogStart:F

    iput v0, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->fogEnd:F

    iput v0, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->density:F

    const/4 v1, -0x1

    iput v1, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->fogMode:I

    iput v1, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->fogHint:I

    iget-object v1, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->fogColor:Lcom/ardor3d/math/ColorRGBA;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/FogStateRecord;->source:Lcom/ardor3d/renderer/state/FogState$CoordinateSource;

    return-void
.end method
