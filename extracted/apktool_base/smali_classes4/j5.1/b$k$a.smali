.class public Lj5/b$k$a;
.super Lt5/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj5/b$k;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lj5/b$k;


# direct methods
.method public constructor <init>(Lj5/b$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lj5/b$k$a;->a:Lj5/b$k;

    invoke-direct {p0}, Lt5/i$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    iget-object v0, p0, Lj5/b$k$a;->a:Lj5/b$k;

    iget-object v0, v0, Lj5/b$k;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushSize:F

    return-void
.end method

.method public get()F
    .locals 1

    iget-object v0, p0, Lj5/b$k$a;->a:Lj5/b$k;

    iget-object v0, v0, Lj5/b$k;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->brushSize:F

    return v0
.end method

.method public getMax()F
    .locals 1

    iget-object v0, p0, Lj5/b$k$a;->a:Lj5/b$k;

    iget-object v0, v0, Lj5/b$k;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getBrushSizeMaxSliderValue()F

    move-result v0

    return v0
.end method

.method public getMin()F
    .locals 1

    iget-object v0, p0, Lj5/b$k$a;->a:Lj5/b$k;

    iget-object v0, v0, Lj5/b$k;->a:Lj5/b;

    invoke-static {v0}, Lj5/b;->I(Lj5/b;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getBrushSizeMinSliderValue()F

    move-result v0

    return v0
.end method
