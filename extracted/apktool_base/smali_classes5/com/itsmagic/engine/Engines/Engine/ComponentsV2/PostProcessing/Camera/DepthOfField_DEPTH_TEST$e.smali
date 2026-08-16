.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField_DEPTH_TEST$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField_DEPTH_TEST;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:Z

.field public e:Ljava/nio/ByteBuffer;

.field public f:LTb/a;

.field public g:F

.field public h:F

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final j:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField_DEPTH_TEST$e;->a:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField_DEPTH_TEST$e;->b:F

    iput v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField_DEPTH_TEST$e;->c:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField_DEPTH_TEST$e;->f:LTb/a;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField_DEPTH_TEST$e;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField_DEPTH_TEST$e$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField_DEPTH_TEST$e$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField_DEPTH_TEST$e;)V

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/PostProcessing/Camera/DepthOfField_DEPTH_TEST$e;->j:Lcom/itsmagic/engine/Engines/Engine/Texture/DepthTexture$d;

    return-void
.end method
