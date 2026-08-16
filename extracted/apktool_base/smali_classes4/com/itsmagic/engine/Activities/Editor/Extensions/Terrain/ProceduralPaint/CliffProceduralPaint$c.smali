.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD5/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->t()LC5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/View;Landroid/content/Context;LC5/b;)V
    .locals 0
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

    const p2, 0x7f090544

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const-string p3, "Texture"

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const p2, 0x7f090283

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-static {p2, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->s(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;Landroid/widget/ImageView;)V

    new-instance p2, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    invoke-direct {p2, p0, p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
