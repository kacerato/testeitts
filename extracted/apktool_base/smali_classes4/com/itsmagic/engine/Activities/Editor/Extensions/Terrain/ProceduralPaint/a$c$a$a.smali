.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$selectorEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->b:LG4/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCustomTerrainLayerSelector(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->b:LG4/c;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, LG4/c;->v1(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;

    iget-object v3, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->c:Landroid/widget/ImageView;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;

    invoke-interface {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;->get()I

    move-result v1

    invoke-static {v2, v3, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Landroid/widget/ImageView;I)V

    return-void
.end method

.method public b(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;

    invoke-interface {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;->b(I)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;

    iget-object v2, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;->b:Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->c:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;->get()I

    move-result v0

    invoke-static {v1, v2, p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;->b(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;Landroid/widget/ImageView;I)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->b:LG4/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->b:LG4/c;

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c$a;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/a$f;->get()I

    move-result v0

    return v0
.end method
