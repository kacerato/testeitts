.class public Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->e0(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$panel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$d;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$d;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$d;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$d;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;

    invoke-virtual {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->H(Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;)Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController$d;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->d0(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    :cond_0
    return-void
.end method
