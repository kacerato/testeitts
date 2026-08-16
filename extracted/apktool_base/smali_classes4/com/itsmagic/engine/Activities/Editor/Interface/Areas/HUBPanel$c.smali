.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->x0(Landroid/widget/LinearLayout;Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;FFFFFFFFLandroid/widget/FrameLayout;Landroid/view/View;Li4/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$c;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$c;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;->panelArea:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->R()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel$c;->b:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/HUBPanel;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->o0()V

    :cond_0
    return-void
.end method
