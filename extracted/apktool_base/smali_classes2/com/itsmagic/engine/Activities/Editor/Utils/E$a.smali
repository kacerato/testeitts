.class public Lcom/itsmagic/engine/Activities/Editor/Utils/E$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/E;->s1(Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/E;Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$panel",
            "val$post"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v1}, Lr4/a;->o(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;FF)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->T()Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->N1(Z)V

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->M0()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;->E1(Z)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/E$a;->b:Lcom/itsmagic/engine/Activities/Editor/Utils/E;

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/E$e;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/E;)V

    return-void
.end method
