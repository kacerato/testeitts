.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->scheduleApplyBakedOutput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;Z)Z

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve$f;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Path/MeshCurve;)V

    return-void
.end method
