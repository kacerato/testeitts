.class public Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LIc/p;
.end annotation

.annotation runtime LIc/q;
.end annotation

.annotation runtime LIc/r;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawCmd"
.end annotation


# instance fields
.field public clipW:F

.field public clipX:F

.field public clipY:F

.field public clipZ:F

.field public elemCount:I

.field public indexOffset:I

.field public textureId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->elemCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->textureId:J

    const/4 v1, 0x0

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->clipX:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->clipY:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->clipZ:F

    iput v1, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->clipW:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ImGUI/Backend/ImguiBackend$DrawCmd;->indexOffset:I

    return-void
.end method
