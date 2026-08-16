.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g$b;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;->c(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/b;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$element"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g$b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g$b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;->R0()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g$b;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;

    iget-object p1, p1, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$g$b;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

    invoke-virtual {v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;->p1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
