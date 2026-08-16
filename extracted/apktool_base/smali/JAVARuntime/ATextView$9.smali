.class LJAVARuntime/ATextView$9;
.super LJAVARuntime/AOnFocusChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/ATextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/ATextView;

.field final synthetic val$l:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(LJAVARuntime/ATextView;Landroid/view/View$OnFocusChangeListener;)V
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

    iput-object p1, p0, LJAVARuntime/ATextView$9;->this$0:LJAVARuntime/ATextView;

    iput-object p2, p0, LJAVARuntime/ATextView$9;->val$l:Landroid/view/View$OnFocusChangeListener;

    invoke-direct {p0}, LJAVARuntime/AOnFocusChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChangeEvent(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/ATextView$9;->val$l:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    return-void
.end method
