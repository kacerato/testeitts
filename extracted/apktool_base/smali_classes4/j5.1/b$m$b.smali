.class public Lj5/b$m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/b$m;->c(Ljava/util/List;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LM7/c;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lj5/b$m;


# direct methods
.method public constructor <init>(Lj5/b$m;LM7/c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$tbButton",
            "val$entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lj5/b$m$b;->c:Lj5/b$m;

    iput-object p2, p0, Lj5/b$m$b;->a:LM7/c;

    iput-object p3, p0, Lj5/b$m$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lj5/b$m$b;->c:Lj5/b$m;

    iget-object v0, v0, Lj5/b$m;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->J(Lj5/b;)LG4/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj5/b$m$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lj5/b$m$b;->c:Lj5/b$m;

    iget-object v1, p0, Lj5/b$m$b;->b:Ljava/util/List;

    iget-object v2, p0, Lj5/b$m$b;->a:LM7/c;

    invoke-static {v0, v1, v2}, Lj5/b$m;->b(Lj5/b$m;Ljava/util/List;LM7/c;)V

    iget-object v0, p0, Lj5/b$m$b;->c:Lj5/b$m;

    iget-object v0, v0, Lj5/b$m;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->J(Lj5/b;)LG4/c;

    move-result-object v0

    iget-object v1, p0, Lj5/b$m$b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, LG4/c;->v1(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lj5/b$m$b;->c:Lj5/b$m;

    iget-object v0, v0, Lj5/b$m;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->J(Lj5/b;)LG4/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj5/b$m$b;->c:Lj5/b$m;

    iget-object v0, v0, Lj5/b$m;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->J(Lj5/b;)LG4/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object v0, p0, Lj5/b$m$b;->c:Lj5/b$m;

    iget-object v0, v0, Lj5/b$m;->a:Lj5/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lj5/b;->K(Lj5/b;LG4/c;)LG4/c;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lj5/b$m$b;->a:LM7/c;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, LM7/c;->g0(I)V

    iget-object v0, p0, Lj5/b$m$b;->a:LM7/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LM7/c;->W(Z)LM7/c;

    iget-object v0, p0, Lj5/b$m$b;->c:Lj5/b$m;

    iget-object v0, v0, Lj5/b$m;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iget-object v1, p0, Lj5/b$m$b;->a:LM7/c;

    invoke-virtual {v1}, LM7/c;->D()Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lj5/b$m$b;->c:Lj5/b$m;

    iget-object v2, v2, Lj5/b$m;->a:Lj5/b;

    invoke-static {v2}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getSelectedLayer()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->drawLayerIconTo(Landroid/widget/ImageView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
