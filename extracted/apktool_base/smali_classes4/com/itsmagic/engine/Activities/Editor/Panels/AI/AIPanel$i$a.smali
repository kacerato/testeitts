.class public Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;->c(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/a;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;)V
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

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i$a;->c:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIPanel$i$a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIGeneratorPanel;->F1(Lcom/itsmagic/engine/Activities/Editor/Panels/AI/AIModel;)Lcom/itsmagic/engine/Activities/Editor/Interface/FloatingPanel/FloatingPanelArea;

    return-void
.end method
