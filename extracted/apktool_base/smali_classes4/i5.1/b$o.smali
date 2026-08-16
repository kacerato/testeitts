.class public Li5/b$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:LG4/c;

.field public final synthetic b:Li5/b;


# direct methods
.method public constructor <init>(Li5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Li5/b$o;->b:Li5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 12
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

    iget-object v0, p0, Li5/b$o;->a:LG4/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    :cond_0
    new-instance v2, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v2}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    new-instance v0, LC5/b;

    new-instance v1, Li5/b$o$a;

    invoke-direct {v1, p0, p3, p2}, Li5/b$o$a;-><init>(Li5/b$o;LM7/c;Landroid/content/Context;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->TEXTURE:LAc/b;

    invoke-static {v4}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, LC5/b$a;->Texture:LC5/b$a;

    invoke-direct {v0, v1, v3, v5, p2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;Landroid/content/Context;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->DRAW_MODE:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Li5/b$o;->b:Li5/b;

    invoke-static {v1}, Li5/b;->k0(Li5/b;)Li5/b$p;

    move-result-object v1

    new-instance v3, Li5/b$o$b;

    invoke-direct {v3, p0, p1, p2, p3}, Li5/b$o$b;-><init>(Li5/b$o;Landroid/view/View;Landroid/content/Context;LM7/c;)V

    const-class p2, Li5/b$p;

    invoke-static {v0, p2, v1, v3}, LF5/c;->i(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;LF5/c$r0;)LC5/b;

    move-result-object p2

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Li5/b$o;->b:Li5/b;

    invoke-static {p2}, Li5/b;->k0(Li5/b;)Li5/b$p;

    move-result-object p2

    sget-object p3, Li5/b$p;->Grid:Li5/b$p;

    if-ne p2, p3, :cond_1

    new-instance p2, LC5/b;

    new-instance v6, Li5/b$o$c;

    invoke-direct {v6, p0}, Li5/b$o$c;-><init>(Li5/b$o;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->GRID_SIZE:LAc/b;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, LC5/b$a;->SLIntSlider:LC5/b$a;

    const/high16 v10, 0x447a0000    # 1000.0f

    const/4 v11, 0x0

    const/4 v9, 0x0

    move-object v5, p2

    invoke-direct/range {v5 .. v11}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;FFF)V

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v4, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v5, Li5/b$o$d;

    invoke-direct {v5, p0}, Li5/b$o$d;-><init>(Li5/b$o;)V

    const/16 p2, 0x12c

    invoke-static {p2}, LN7/c;->g(I)F

    move-result v6

    const/16 p2, 0xaa

    invoke-static {p2}, LN7/c;->f(I)F

    move-result v7

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v3, "Options"

    const/4 v8, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Lr4/a;->e(Landroid/view/View;Ljava/util/List;Ljava/lang/String;Lr4/a$e;LG4/d;FFZZZ)LG4/c;

    move-result-object p1

    iput-object p1, p0, Li5/b$o;->a:LG4/c;

    return-void
.end method
