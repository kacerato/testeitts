.class LJAVARuntime/ASwitch$8;
.super LJAVARuntime/AOnScrollChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/ASwitch;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/ASwitch;

.field final synthetic val$l:Landroid/view/View$OnScrollChangeListener;


# direct methods
.method public constructor <init>(LJAVARuntime/ASwitch;Landroid/view/View$OnScrollChangeListener;)V
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

    iput-object p1, p0, LJAVARuntime/ASwitch$8;->this$0:LJAVARuntime/ASwitch;

    iput-object p2, p0, LJAVARuntime/ASwitch$8;->val$l:Landroid/view/View$OnScrollChangeListener;

    invoke-direct {p0}, LJAVARuntime/AOnScrollChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChangeEvent(Landroid/view/View;IIII)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "scrollX",
            "scrollY",
            "oldScrollX",
            "oldScrollY"
        }
    .end annotation

    iget-object v0, p0, LJAVARuntime/ASwitch$8;->val$l:Landroid/view/View$OnScrollChangeListener;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/view/View$OnScrollChangeListener;->onScrollChange(Landroid/view/View;IIII)V

    return-void
.end method
