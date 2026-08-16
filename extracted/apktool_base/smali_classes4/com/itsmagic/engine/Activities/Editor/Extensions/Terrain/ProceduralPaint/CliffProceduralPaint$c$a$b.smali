.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

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

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a$b;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint$c;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;->q(Lcom/itsmagic/engine/Activities/Editor/Extensions/Terrain/ProceduralPaint/CliffProceduralPaint;LG4/c;)LG4/c;

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
