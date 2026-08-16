.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp4/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->U0(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;Li4/e;Lk4/b;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

.field public final synthetic b:Li4/e;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Li4/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$panel",
            "val$panelsControllerListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->b:Li4/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->d(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-void
.end method

.method public b()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->height:F

    return v0
.end method

.method public c()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->c(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-void
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->b:Li4/e;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-interface {v0, v1}, Li4/e;->k(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getW()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->y:F

    return v0
.end method

.method public onClick()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$e;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->a(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)V

    return-void
.end method
