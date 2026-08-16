.class LJAVARuntime/PropertiesButton$1$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/PropertiesButton$1$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:LJAVARuntime/PropertiesButton$1$3$1;


# direct methods
.method public constructor <init>(LJAVARuntime/PropertiesButton$1$3$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/PropertiesButton$1$3$1$1;->this$2:LJAVARuntime/PropertiesButton$1$3$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LJAVARuntime/PropertiesButton$1$3$1$1;->this$2:LJAVARuntime/PropertiesButton$1$3$1;

    iget-object v0, v0, LJAVARuntime/PropertiesButton$1$3$1;->this$1:LJAVARuntime/PropertiesButton$1$3;

    iget-object v0, v0, LJAVARuntime/PropertiesButton$1$3;->val$finalVar:LJAVARuntime/PropertiesButton;

    invoke-static {v0}, LJAVARuntime/PropertiesButton;->access$000(LJAVARuntime/PropertiesButton;)LJAVARuntime/PropertiesButtonListener;

    move-result-object v0

    invoke-interface {v0}, LJAVARuntime/PropertiesButtonListener;->onClicked()V

    return-void
.end method
