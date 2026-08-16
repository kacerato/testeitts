.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;->onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LG4/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->o(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;LG4/c;)LG4/c;

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->p(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)LG4/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->p(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;)LG4/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->q(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;LG4/c;)LG4/c;

    :cond_0
    return-void
.end method

.method public b(LG4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entriesClassPanel"
        }
    .end annotation

    return-void
.end method
