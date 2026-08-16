.class public Lj5/b$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/b;->o(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj5/b;


# direct methods
.method public constructor <init>(Lj5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lj5/b$m;->a:Lj5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lj5/b$m;Ljava/util/List;LM7/c;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lj5/b$m;->c(Ljava/util/List;LM7/c;)V

    return-void
.end method


# virtual methods
.method public a(LM7/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tbButton"
        }
    .end annotation

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {p1, v0}, LM7/c;->g0(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LM7/c;->W(Z)LM7/c;

    iget-object v0, p0, Lj5/b$m;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    invoke-virtual {p1}, LM7/c;->D()Landroid/widget/ImageView;

    move-result-object p1

    iget-object v1, p0, Lj5/b$m;->a:Lj5/b;

    invoke-static {v1}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getSelectedLayer()Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->drawLayerIconTo(Landroid/widget/ImageView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final c(Ljava/util/List;LM7/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entries",
            "tbButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LC5/b;",
            ">;",
            "LM7/c;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lj5/b$m;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    new-instance v1, Lj5/b$m$b;

    invoke-direct {v1, p0, p2, p1}, Lj5/b$m$b;-><init>(Lj5/b$m;LM7/c;Ljava/util/List;)V

    invoke-virtual {v0, p1, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getTerrainLayerSelector(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$W;)V

    return-void
.end method

.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    new-instance v1, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    invoke-virtual {p0, v1, p3}, Lj5/b$m;->c(Ljava/util/List;LM7/c;)V

    iget-object p2, p0, Lj5/b$m;->a:Lj5/b;

    sget-object v3, Lr4/a$e;->Right:Lr4/a$e;

    new-instance v4, Lj5/b$m$a;

    invoke-direct {v4, p0}, Lj5/b$m$a;-><init>(Lj5/b$m;)V

    const/16 p3, 0xc8

    invoke-static {p3}, LN7/c;->g(I)F

    move-result v5

    const/16 p3, 0x56

    invoke-static {p3}, LN7/c;->f(I)F

    move-result v6

    const/4 v8, 0x1

    const/4 v9, 0x1

    const-string v2, "Layer"

    const/4 v7, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lr4/a;->e(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FFZZZ)LG4/c;

    move-result-object p1

    invoke-static {p2, p1}, Lj5/b;->K(Lj5/b;LG4/c;)LG4/c;

    return-void
.end method
