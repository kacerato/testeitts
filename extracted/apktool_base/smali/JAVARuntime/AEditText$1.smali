.class LJAVARuntime/AEditText$1;
.super LJAVARuntime/AOnLongClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AEditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AEditText;

.field final synthetic val$l:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(LJAVARuntime/AEditText;Landroid/view/View$OnLongClickListener;)V
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

    iput-object p1, p0, LJAVARuntime/AEditText$1;->this$0:LJAVARuntime/AEditText;

    iput-object p2, p0, LJAVARuntime/AEditText$1;->val$l:Landroid/view/View$OnLongClickListener;

    invoke-direct {p0}, LJAVARuntime/AOnLongClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClickEvent(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/AEditText$1;->val$l:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1
.end method
