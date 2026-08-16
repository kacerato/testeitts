.class LJAVARuntime/Matcap$2$2$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Matcap$2$2$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$4:LJAVARuntime/Matcap$2$2$1$1$1;


# direct methods
.method public constructor <init>(LJAVARuntime/Matcap$2$2$1$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$4"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Matcap$2$2$1$1$1$1;->this$4:LJAVARuntime/Matcap$2$2$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, LJAVARuntime/Matcap$2$2$1$1$1$1;->this$4:LJAVARuntime/Matcap$2$2$1$1$1;

    iget-object v0, v0, LJAVARuntime/Matcap$2$2$1$1$1;->this$3:LJAVARuntime/Matcap$2$2$1$1;

    iget-object v0, v0, LJAVARuntime/Matcap$2$2$1$1;->this$2:LJAVARuntime/Matcap$2$2$1;

    iget-object v1, v0, LJAVARuntime/Matcap$2$2$1;->val$colorImage:Landroid/widget/ImageView;

    iget-object v0, v0, LJAVARuntime/Matcap$2$2$1;->this$1:LJAVARuntime/Matcap$2$2;

    iget-object v0, v0, LJAVARuntime/Matcap$2$2;->val$finalVar:LJAVARuntime/Matcap;

    invoke-virtual {v0}, LJAVARuntime/Matcap;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LH3/f;->y1(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, LJAVARuntime/Matcap$2$2$1$1$1$1;->this$4:LJAVARuntime/Matcap$2$2$1$1$1;

    iget-object v2, v2, LJAVARuntime/Matcap$2$2$1$1$1;->this$3:LJAVARuntime/Matcap$2$2$1$1;

    iget-object v2, v2, LJAVARuntime/Matcap$2$2$1$1;->this$2:LJAVARuntime/Matcap$2$2$1;

    iget-object v2, v2, LJAVARuntime/Matcap$2$2$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v0, v2}, LVc/e;->G(Landroid/widget/ImageView;Ljava/io/File;Landroid/content/Context;)V

    return-void
.end method
