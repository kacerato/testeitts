.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq4/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->V(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;Landroid/view/LayoutInflater;Li4/a;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$h;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/content/Context;Lq4/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "rightOption"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    iget-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$h;->a:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->b(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;)V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/MotionEvent;Landroid/content/Context;Lq4/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "motionEvent",
            "context",
            "rightOption"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public c(Landroid/view/View;Landroid/content/Context;Lq4/c;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "rightOption"
        }
    .end annotation

    invoke-static {}, LN7/c;->Y()V

    const/4 p1, 0x0

    return p1
.end method
