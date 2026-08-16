.class public Lcom/itsmagic/engine/Activities/Editor/EditorActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/res/Configuration;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$newConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$k;->c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$k;->b:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, LK8/c;->e:LK8/c$a;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$k;->c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$k;->b:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v1, v2}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->z(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;I)V

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$k;->c:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/EditorActivity$k;->b:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    sget-object v1, LK8/c$a;->Portrait:LK8/c$a;

    sput-object v1, LK8/c;->e:LK8/c$a;

    goto :goto_0

    :cond_0
    const/16 v2, 0x1006

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    sget-object v1, LK8/c$a;->Landscape:LK8/c$a;

    sput-object v1, LK8/c;->e:LK8/c$a;

    :goto_0
    invoke-static {}, LN7/c;->D()Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itsmagic/engine/Activities/Editor/Interface/PanelsController;->h0(LK8/c$a;)V

    return-void
.end method
