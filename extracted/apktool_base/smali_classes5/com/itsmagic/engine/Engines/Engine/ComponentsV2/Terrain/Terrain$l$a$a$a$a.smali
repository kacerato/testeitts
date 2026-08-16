.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a;

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a;->b:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a;->d:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;->selectedMatcap:Ljava/lang/String;

    invoke-static {v0}, LH3/g;->z1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a$a;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a$a;->c:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a$a;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a;

    iget-object v2, v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$l$a;->c:Landroid/content/Context;

    new-instance v3, LVc/c;

    invoke-direct {v3}, LVc/c;-><init>()V

    invoke-static {v1, v0, v2, v3}, LVc/e;->K(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;Lcom/bumptech/glide/load/resource/bitmap/h;)V

    return-void
.end method
