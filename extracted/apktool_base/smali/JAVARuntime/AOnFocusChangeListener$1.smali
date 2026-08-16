.class LJAVARuntime/AOnFocusChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AOnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AOnFocusChangeListener;

.field final synthetic val$hasFocus:Z

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(LJAVARuntime/AOnFocusChangeListener;Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$v",
            "val$hasFocus"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AOnFocusChangeListener$1;->this$0:LJAVARuntime/AOnFocusChangeListener;

    iput-object p2, p0, LJAVARuntime/AOnFocusChangeListener$1;->val$v:Landroid/view/View;

    iput-boolean p3, p0, LJAVARuntime/AOnFocusChangeListener$1;->val$hasFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LJAVARuntime/AOnFocusChangeListener$1;->this$0:LJAVARuntime/AOnFocusChangeListener;

    iget-object v1, p0, LJAVARuntime/AOnFocusChangeListener$1;->val$v:Landroid/view/View;

    iget-boolean v2, p0, LJAVARuntime/AOnFocusChangeListener$1;->val$hasFocus:Z

    invoke-virtual {v0, v1, v2}, LJAVARuntime/AOnFocusChangeListener;->onFocusChangeEvent(Landroid/view/View;Z)V

    return-void
.end method
