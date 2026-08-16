.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelected()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->selectedMatcap:Ljava/lang/String;

    return-object v0
.end method

.method public onSelected(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a;

    invoke-direct {v0, p0, p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a;Ljava/lang/String;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
