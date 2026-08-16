.class LJAVARuntime/AButton$2;
.super LJAVARuntime/AOnClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AButton;

.field final synthetic val$l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(LJAVARuntime/AButton;Landroid/view/View$OnClickListener;)V
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

    iput-object p1, p0, LJAVARuntime/AButton$2;->this$0:LJAVARuntime/AButton;

    iput-object p2, p0, LJAVARuntime/AButton$2;->val$l:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, LJAVARuntime/AOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickEvent(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/AButton$2;->val$l:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
