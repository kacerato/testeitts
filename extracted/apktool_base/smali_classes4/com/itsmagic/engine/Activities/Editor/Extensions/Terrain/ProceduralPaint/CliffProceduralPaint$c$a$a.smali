.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$2",
            "val$entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->p(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)LG4/c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->r(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1, p0}, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->getCustomTerrainLayerSelector(Ljava/util/List;Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain$V;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->p(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)LG4/c;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, LG4/c;->v1(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iget-object v1, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->b:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->s(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;Landroid/widget/ImageView;)V

    return-void
.end method

.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->r(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->Q:Lf4/b;

    iput p1, v0, Lf4/b;->a:I

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iget-object v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->b:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->s(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;Landroid/widget/ImageView;)V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->p(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)LG4/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->p(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)LG4/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->q(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;LG4/c;)LG4/c;

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->r(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;

    move-result-object v0

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain;->Q:Lf4/b;

    iget v0, v0, Lf4/b;->a:I

    return v0
.end method
