.class LJAVARuntime/Matcap$2$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH3/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Matcap$2$2$1;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:LJAVARuntime/Matcap$2$2$1;


# direct methods
.method public constructor <init>(LJAVARuntime/Matcap$2$2$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Matcap$2$2$1$1;->this$2:LJAVARuntime/Matcap$2$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelected()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LJAVARuntime/Matcap$2$2$1$1;->this$2:LJAVARuntime/Matcap$2$2$1;

    iget-object v0, v0, LJAVARuntime/Matcap$2$2$1;->this$1:LJAVARuntime/Matcap$2$2;

    iget-object v0, v0, LJAVARuntime/Matcap$2$2;->val$finalVar:LJAVARuntime/Matcap;

    invoke-static {v0}, LJAVARuntime/Matcap;->access$000(LJAVARuntime/Matcap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onSelected(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    new-instance v0, LJAVARuntime/Matcap$2$2$1$1$1;

    invoke-direct {v0, p0, p1}, LJAVARuntime/Matcap$2$2$1$1$1;-><init>(LJAVARuntime/Matcap$2$2$1$1;Ljava/lang/String;)V

    invoke-static {v0}, LK8/a;->I(Ljava/lang/Runnable;)V

    return-void
.end method
