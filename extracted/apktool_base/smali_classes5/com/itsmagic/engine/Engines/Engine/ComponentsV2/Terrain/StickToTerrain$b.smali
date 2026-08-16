.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lib/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Vector/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "globalMatrix"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->F1()F

    move-result v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;->access$002(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;F)F

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/f;->H1()F

    move-result p1

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;->access$102(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;F)F

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;->access$000(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;)F

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;->access$200(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;->access$100(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;)F

    move-result p1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;->access$300(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain$b;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;->access$402(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/StickToTerrain;Z)Z

    :cond_1
    return-void
.end method
