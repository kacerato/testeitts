.class LJAVARuntime/AButton$9;
.super LJAVARuntime/AOnCreateContextMenuListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AButton;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AButton;

.field final synthetic val$l:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method public constructor <init>(LJAVARuntime/AButton;Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$l"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AButton$9;->this$0:LJAVARuntime/AButton;

    iput-object p2, p0, LJAVARuntime/AButton$9;->val$l:Landroid/view/View$OnCreateContextMenuListener;

    invoke-direct {p0}, LJAVARuntime/AOnCreateContextMenuListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenuEvent(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "menu",
            "v",
            "menuInfo"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/AButton$9;->val$l:Landroid/view/View$OnCreateContextMenuListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/View$OnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method
