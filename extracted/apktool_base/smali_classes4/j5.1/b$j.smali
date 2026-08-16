.class public Lj5/b$j;
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

    iput-object p1, p0, Lj5/b$j;->a:Lj5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 18
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

    move-object/from16 v0, p0

    iget-object v1, v0, Lj5/b$j;->a:Lj5/b;

    invoke-static {v1}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    sget-object v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;->ProceduralBrush:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    const/4 v3, 0x0

    const-string v4, "Procedural"

    const/16 v5, 0x28

    const/16 v6, 0xfa

    if-ne v1, v2, :cond_0

    new-instance v8, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v8}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, v0, Lj5/b$j;->a:Lj5/b;

    invoke-static {v1}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->N:Le4/d;

    new-instance v2, Lj5/b$j$a;

    invoke-direct {v2, v0}, Lj5/b$j$a;-><init>(Lj5/b$j;)V

    const-class v7, Le4/d;

    invoke-static {v4, v7, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v10, Lr4/a$e;->Right:Lr4/a$e;

    new-instance v11, Lj5/b$j$b;

    invoke-direct {v11, v0}, Lj5/b$j$b;-><init>(Lj5/b$j;)V

    invoke-static {v6}, LN7/c;->g(I)F

    move-result v12

    invoke-static {v5}, LN7/c;->f(I)F

    move-result v13

    const/4 v15, 0x1

    const/16 v16, 0x1

    const-string v9, "Procedural Brush"

    const/4 v14, 0x1

    move-object/from16 v7, p1

    invoke-static/range {v7 .. v16}, Lr4/a;->e(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FFZZZ)LG4/c;

    move-result-object v1

    iget-object v2, v1, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    invoke-virtual {v2, v6, v5, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v1, v1, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    goto/16 :goto_1

    :cond_0
    iget-object v1, v0, Lj5/b$j;->a:Lj5/b;

    invoke-static {v1}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    sget-object v7, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;->ProceduralPaint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    if-ne v1, v7, :cond_1

    new-instance v9, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v9}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, v0, Lj5/b$j;->a:Lj5/b;

    invoke-static {v1}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->O:Lf4/c;

    new-instance v2, Lj5/b$j$c;

    invoke-direct {v2, v0}, Lj5/b$j$c;-><init>(Lj5/b$j;)V

    const-class v7, Lf4/c;

    invoke-static {v4, v7, v1, v2}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object v1

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v11, Lr4/a$e;->Right:Lr4/a$e;

    new-instance v12, Lj5/b$j$d;

    invoke-direct {v12, v0}, Lj5/b$j$d;-><init>(Lj5/b$j;)V

    invoke-static {v6}, LN7/c;->g(I)F

    move-result v13

    invoke-static {v5}, LN7/c;->f(I)F

    move-result v14

    const/16 v16, 0x1

    const/16 v17, 0x1

    const-string v10, "Procedural Paint"

    const/4 v15, 0x1

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v17}, Lr4/a;->e(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FFZZZ)LG4/c;

    move-result-object v1

    iget-object v2, v1, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;->Fixed:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;

    invoke-virtual {v2, v6, v5, v4}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->I1(IILcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea$i;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    iget-object v1, v1, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v1, v3}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v5}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iget-object v1, v0, Lj5/b$j;->a:Lj5/b;

    invoke-static {v1}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v1

    iget-object v1, v1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    if-ne v1, v2, :cond_2

    const-string v1, "Mask"

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lj5/b$j$e;

    invoke-direct {v2, v0}, Lj5/b$j$e;-><init>(Lj5/b$j;)V

    move-object/from16 v3, p2

    invoke-static {v3, v1, v2}, LF5/c;->b(Landroid/content/Context;Ljava/lang/String;LF5/a;)LC5/b;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v7, Lr4/a$e;->Right:Lr4/a$e;

    new-instance v8, Lj5/b$j$f;

    invoke-direct {v8, v0}, Lj5/b$j$f;-><init>(Lj5/b$j;)V

    const/16 v1, 0x132

    invoke-static {v1}, LN7/c;->g(I)F

    move-result v9

    const/16 v1, 0xc8

    invoke-static {v1}, LN7/c;->f(I)F

    move-result v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    const-string v6, "Brush"

    const/4 v11, 0x1

    move-object/from16 v4, p1

    invoke-static/range {v4 .. v13}, Lr4/a;->e(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FFZZZ)LG4/c;

    move-result-object v1

    iget-object v1, v1, LG4/c;->Z:Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-static {v1}, LF5/c;->Y(Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)V

    :goto_1
    return-void
.end method
