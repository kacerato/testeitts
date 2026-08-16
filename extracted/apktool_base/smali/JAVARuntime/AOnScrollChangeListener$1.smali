.class LJAVARuntime/AOnScrollChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AOnScrollChangeListener;->onScrollChange(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AOnScrollChangeListener;

.field final synthetic val$oldScrollX:I

.field final synthetic val$oldScrollY:I

.field final synthetic val$scrollX:I

.field final synthetic val$scrollY:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(LJAVARuntime/AOnScrollChangeListener;Landroid/view/View;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$v",
            "val$scrollX",
            "val$scrollY",
            "val$oldScrollX",
            "val$oldScrollY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AOnScrollChangeListener$1;->this$0:LJAVARuntime/AOnScrollChangeListener;

    iput-object p2, p0, LJAVARuntime/AOnScrollChangeListener$1;->val$v:Landroid/view/View;

    iput p3, p0, LJAVARuntime/AOnScrollChangeListener$1;->val$scrollX:I

    iput p4, p0, LJAVARuntime/AOnScrollChangeListener$1;->val$scrollY:I

    iput p5, p0, LJAVARuntime/AOnScrollChangeListener$1;->val$oldScrollX:I

    iput p6, p0, LJAVARuntime/AOnScrollChangeListener$1;->val$oldScrollY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LJAVARuntime/AOnScrollChangeListener$1;->this$0:LJAVARuntime/AOnScrollChangeListener;

    iget-object v1, p0, LJAVARuntime/AOnScrollChangeListener$1;->val$v:Landroid/view/View;

    iget v2, p0, LJAVARuntime/AOnScrollChangeListener$1;->val$scrollX:I

    iget v3, p0, LJAVARuntime/AOnScrollChangeListener$1;->val$scrollY:I

    iget v4, p0, LJAVARuntime/AOnScrollChangeListener$1;->val$oldScrollX:I

    iget v5, p0, LJAVARuntime/AOnScrollChangeListener$1;->val$oldScrollY:I

    invoke-virtual/range {v0 .. v5}, LJAVARuntime/AOnScrollChangeListener;->onScrollChangeEvent(Landroid/view/View;IIII)V

    return-void
.end method
