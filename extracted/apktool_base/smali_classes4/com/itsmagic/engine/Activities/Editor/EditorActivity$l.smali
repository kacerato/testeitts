.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$l;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$l;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->s:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$l;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->B(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$l;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->u(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;)Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$l;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v2, v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->s:Landroid/widget/FrameLayout;

    iget-object v3, v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g:Landroid/app/Activity;

    iget-object v1, v1, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->f:Landroid/content/Context;

    invoke-virtual {v0, v2, v3, v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->U(Landroid/widget/FrameLayout;Landroid/app/Activity;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$l;->b:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->C(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Z)Z

    :cond_0
    return-void
.end method
