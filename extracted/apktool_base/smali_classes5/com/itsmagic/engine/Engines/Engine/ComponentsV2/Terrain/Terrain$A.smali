.class public Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCustomTerrainLayerSelector(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;

.field public final synthetic b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$selectorListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "context",
            "entry"
        }
    .end annotation

    const p3, 0x7f090159

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f090425

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$900(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScrollX(I)V

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    const v1, 0x7f090544

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f09008a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Textures "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->access$700(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;

    const v3, 0x7f0c00f8

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/high16 v5, 0x42280000    # 42.0f

    invoke-static {v5, p2}, LNc/b;->l0(FLandroid/content/Context;)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v4, 0x7f090269

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    invoke-virtual {v5, v4, v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->drawLayerIconTo(Landroid/widget/ImageView;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Layer/TerrainLayer;)V

    iget-object v2, p0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;->a:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;

    invoke-interface {v2}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;->c()I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PRIMARY:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->PANEL:LAc/b;

    invoke-static {v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$c;

    invoke-direct {v2, p0, v1}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A$c;-><init>(Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$A;I)V

    invoke-virtual {v4, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
