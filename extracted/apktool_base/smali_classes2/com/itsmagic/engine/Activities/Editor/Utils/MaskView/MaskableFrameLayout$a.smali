.class public Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/ViewTreeObserver;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;Landroid/view/ViewTreeObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$treeObserver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout$a;->b:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout$a;->b:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;

    const-string v1, "GlobalLayoutListener not removed as ViewTreeObserver is not valid"

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->a(Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout$a;->c:Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->b(Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->c(Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;->d(Lcom/itsmagic/engine/Activities/Editor/Utils/MaskView/MaskableFrameLayout;Landroid/graphics/Bitmap;)V

    return-void
.end method
