.class public Lq7/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq7/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lq7/a$a;


# direct methods
.method public constructor <init>(Lq7/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lq7/a$a$a;->a:Lq7/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blockPanel"
        }
    .end annotation

    const/16 v0, 0x20

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v1

    invoke-static {v0}, LN7/c;->f(I)F

    move-result v0

    new-instance v2, Lq7/a;

    iget-object v3, p0, Lq7/a$a$a;->a:Lq7/a$a;

    iget-boolean v3, v3, Lq7/a$a;->b:Z

    invoke-direct {v2, v3, p1}, Lq7/a;-><init>(ZLcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    invoke-static {v2, v1, v0}, Lr4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iget-object v0, p0, Lq7/a$a$a;->a:Lq7/a$a;

    iget-boolean v0, v0, Lq7/a$a;->b:Z

    invoke-virtual {p1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    iget-object p1, p0, Lq7/a$a$a;->a:Lq7/a$a;

    iget-object p1, p1, Lq7/a$a;->c:Lq7/a$d;

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Lq7/a$d;->a(Lq7/a;)V

    :cond_0
    return-void
.end method
