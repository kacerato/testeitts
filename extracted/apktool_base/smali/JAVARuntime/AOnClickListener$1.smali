.class LJAVARuntime/AOnClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AOnClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AOnClickListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method public constructor <init>(LJAVARuntime/AOnClickListener;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$v"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AOnClickListener$1;->this$0:LJAVARuntime/AOnClickListener;

    iput-object p2, p0, LJAVARuntime/AOnClickListener$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/AOnClickListener$1;->this$0:LJAVARuntime/AOnClickListener;

    iget-object v1, p0, LJAVARuntime/AOnClickListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, LJAVARuntime/AOnClickListener;->onClickEvent(Landroid/view/View;)V

    return-void
.end method
