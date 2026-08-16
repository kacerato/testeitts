.class LJAVARuntime/AOnItemSelectedListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AOnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/AOnItemSelectedListener;

.field final synthetic val$parent:Landroid/widget/AdapterView;


# direct methods
.method public constructor <init>(LJAVARuntime/AOnItemSelectedListener;Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AOnItemSelectedListener$2;->this$0:LJAVARuntime/AOnItemSelectedListener;

    iput-object p2, p0, LJAVARuntime/AOnItemSelectedListener$2;->val$parent:Landroid/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/AOnItemSelectedListener$2;->this$0:LJAVARuntime/AOnItemSelectedListener;

    iget-object v1, p0, LJAVARuntime/AOnItemSelectedListener$2;->val$parent:Landroid/widget/AdapterView;

    invoke-virtual {v0, v1}, LJAVARuntime/AOnItemSelectedListener;->onNothingSelectedEvent(Landroid/widget/AdapterView;)Z

    return-void
.end method
