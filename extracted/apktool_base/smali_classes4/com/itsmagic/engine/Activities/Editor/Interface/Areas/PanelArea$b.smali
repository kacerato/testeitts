.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;->W(Landroid/content/Context;Landroid/view/LayoutInflater;Lq4/c;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq4/c;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;Lq4/c;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$rightOption",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$b;->d:Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$b;->b:Lq4/c;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$b;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$b;->b:Lq4/c;

    iget-object v1, v0, Lq4/c;->d:Lq4/d;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Areas/PanelArea$b;->c:Landroid/content/Context;

    invoke-interface {v1, p1, p2, v2, v0}, Lq4/d;->b(Landroid/view/View;Landroid/view/MotionEvent;Landroid/content/Context;Lq4/c;)Z

    move-result p1

    return p1
.end method
