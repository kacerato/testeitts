.class public LY6/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LY6/a;->D1(IILjava/util/List;Landroid/content/Context;LY6/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:LY6/b;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;LY6/b;FFLandroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$items",
            "val$listener",
            "val$x",
            "val$y",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LY6/a$b;->a:Ljava/util/List;

    iput-object p2, p0, LY6/a$b;->b:LY6/b;

    iput p3, p0, LY6/a$b;->c:F

    iput p4, p0, LY6/a$b;->d:F

    iput-object p5, p0, LY6/a$b;->e:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    new-instance v6, LY6/a;

    iget-object v1, p0, LY6/a$b;->a:Ljava/util/List;

    iget-object v2, p0, LY6/a$b;->b:LY6/b;

    sget-object v3, Lr4/a$e;->Right:Lr4/a$e;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, LY6/a;-><init>(Ljava/util/List;LY6/b;Lr4/a$e;Lcom/itsmagic/engine/Activities/Editor/Utils/E;LY6/a$a;)V

    iget v0, p0, LY6/a$b;->c:F

    iget v1, p0, LY6/a$b;->d:F

    iget-object v2, p0, LY6/a$b;->a:Ljava/util/List;

    invoke-static {v2}, LY6/a;->p1(Ljava/util/List;)F

    move-result v2

    iget-object v3, p0, LY6/a$b;->a:Ljava/util/List;

    iget-object v4, p0, LY6/a$b;->e:Landroid/content/Context;

    invoke-static {v3, v4}, LY6/a;->q1(Ljava/util/List;Landroid/content/Context;)F

    move-result v3

    invoke-static {v6, v0, v1, v2, v3}, Lr4/a;->n(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FFFF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-static {v6, v0}, LY6/a;->r1(LY6/a;Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->N0(ZZZZ)V

    invoke-virtual {v0, v2}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->O1(Z)V

    new-instance v0, LY6/a$b$a;

    invoke-direct {v0, p0, v6, p1}, LY6/a$b$a;-><init>(LY6/a$b;LY6/a;Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->r1(Landroid/view/View$OnClickListener;)V

    return-void
.end method
