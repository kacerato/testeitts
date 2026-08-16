.class public Lj5/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/b;->n(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
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

    iput-object p1, p0, Lj5/b$e;->a:Lj5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(ZLandroid/view/View;Landroid/content/Context;LM7/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "v",
            "context",
            "tbToggle",
            "isFromUserAction"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lj5/b$e;->a:Lj5/b;

    invoke-static {p1}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->K:Z

    iget-object p1, p0, Lj5/b$e;->a:Lj5/b;

    invoke-static {p1}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object p1

    sget-object p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;->ProceduralPaint:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    iput-object p2, p1, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->M:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$a0;

    iget-object p1, p0, Lj5/b$e;->a:Lj5/b;

    invoke-static {p1}, Lj5/b;->L(Lj5/b;)V

    iget-object p1, p0, Lj5/b$e;->a:Lj5/b;

    invoke-virtual {p1}, Lf5/d;->A()V

    iget-object p1, p0, Lj5/b$e;->a:Lj5/b;

    invoke-static {p1}, Lj5/b;->M(Lj5/b;)LM7/c;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, LM7/g;->o(Z)V

    :cond_0
    return-void
.end method
