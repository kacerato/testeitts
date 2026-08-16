.class public Lq7/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq7/a;->u1(ZLq7/a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Lq7/a$d;


# direct methods
.method public constructor <init>(ZLq7/a$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$blockClicks",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-boolean p1, p0, Lq7/a$a;->b:Z

    iput-object p2, p0, Lq7/a$a;->c:Lq7/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-boolean v0, p0, Lq7/a$a;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lq7/a$a$a;

    invoke-direct {v0, p0}, Lq7/a$a$a;-><init>(Lq7/a$a;)V

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    invoke-static {v0}, LN7/c;->g(I)F

    move-result v1

    invoke-static {v0}, LN7/c;->f(I)F

    move-result v0

    new-instance v2, Lq7/a;

    iget-boolean v3, p0, Lq7/a$a;->b:Z

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lq7/a;-><init>(ZLcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    invoke-static {v2, v1, v0}, Lr4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    iget-boolean v1, p0, Lq7/a$a;->b:Z

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    iget-object v0, p0, Lq7/a$a;->c:Lq7/a$d;

    if-eqz v0, :cond_1

    invoke-interface {v0, v2}, Lq7/a$d;->a(Lq7/a;)V

    :cond_1
    :goto_0
    return-void
.end method
