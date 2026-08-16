.class LJAVARuntime/AOnCreateContextMenuListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AOnCreateContextMenuListener;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AOnCreateContextMenuListener;

.field final synthetic val$menu:Landroid/view/ContextMenu;

.field final synthetic val$menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(LJAVARuntime/AOnCreateContextMenuListener;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$menu",
            "val$v",
            "val$menuInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AOnCreateContextMenuListener$1;->this$0:LJAVARuntime/AOnCreateContextMenuListener;

    iput-object p2, p0, LJAVARuntime/AOnCreateContextMenuListener$1;->val$menu:Landroid/view/ContextMenu;

    iput-object p3, p0, LJAVARuntime/AOnCreateContextMenuListener$1;->val$v:Landroid/view/View;

    iput-object p4, p0, LJAVARuntime/AOnCreateContextMenuListener$1;->val$menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, LJAVARuntime/AOnCreateContextMenuListener$1;->this$0:LJAVARuntime/AOnCreateContextMenuListener;

    iget-object v1, p0, LJAVARuntime/AOnCreateContextMenuListener$1;->val$menu:Landroid/view/ContextMenu;

    iget-object v2, p0, LJAVARuntime/AOnCreateContextMenuListener$1;->val$v:Landroid/view/View;

    iget-object v3, p0, LJAVARuntime/AOnCreateContextMenuListener$1;->val$menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1, v2, v3}, LJAVARuntime/AOnCreateContextMenuListener;->onCreateContextMenuEvent(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method
