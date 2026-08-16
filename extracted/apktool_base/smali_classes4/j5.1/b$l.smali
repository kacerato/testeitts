.class public Lj5/b$l;
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

    iput-object p1, p0, Lj5/b$l;->a:Lj5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 2
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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INTENSITY:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lj5/b$l;->a:Lj5/b;

    invoke-static {p2}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object p2

    iget p2, p2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushIntensity:F

    iget-object p3, p0, Lj5/b$l;->a:Lj5/b;

    invoke-static {p3}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getBrushIntensityMinSliderValue()F

    move-result p3

    iget-object v0, p0, Lj5/b$l;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getBrushIntensityMaxSliderValue()F

    move-result v0

    new-instance v1, Lj5/b$l$a;

    invoke-direct {v1, p0}, Lj5/b$l$a;-><init>(Lj5/b$l;)V

    invoke-static {p1, p2, p3, v0, v1}, LZ6/e;->B1(Ljava/lang/String;FFFLZ6/e$i;)V

    return-void
.end method
