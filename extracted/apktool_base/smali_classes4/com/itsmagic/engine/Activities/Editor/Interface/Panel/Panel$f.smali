.class public Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->f0(Landroid/app/Activity;Landroid/view/LayoutInflater;Li4/a;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/FrameLayout;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;Landroid/widget/FrameLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$f;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$f;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$f;->b:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel$f;->c:Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;->t(Lcom/itsmagic/engine/Activities/Editor/Interface/Panel/Panel;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
