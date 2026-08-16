.class LJAVARuntime/Matcap$2$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/Matcap$2$1$1$1;->onSelected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$3:LJAVARuntime/Matcap$2$1$1$1;

.field final synthetic val$file:Ljava/lang/String;


# direct methods
.method public constructor <init>(LJAVARuntime/Matcap$2$1$1$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$3",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/Matcap$2$1$1$1$1;->this$3:LJAVARuntime/Matcap$2$1$1$1;

    iput-object p2, p0, LJAVARuntime/Matcap$2$1$1$1$1;->val$file:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, LJAVARuntime/Matcap$2$1$1$1$1;->this$3:LJAVARuntime/Matcap$2$1$1$1;

    iget-object v0, v0, LJAVARuntime/Matcap$2$1$1$1;->this$2:LJAVARuntime/Matcap$2$1$1;

    iget-object v0, v0, LJAVARuntime/Matcap$2$1$1;->this$1:LJAVARuntime/Matcap$2$1;

    iget-object v0, v0, LJAVARuntime/Matcap$2$1;->val$finalVar:LJAVARuntime/Matcap;

    iget-object v1, p0, LJAVARuntime/Matcap$2$1$1$1$1;->val$file:Ljava/lang/String;

    invoke-static {v0, v1}, LJAVARuntime/Matcap;->access$002(LJAVARuntime/Matcap;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, LJAVARuntime/Matcap$2$1$1$1$1;->this$3:LJAVARuntime/Matcap$2$1$1$1;

    iget-object v0, v0, LJAVARuntime/Matcap$2$1$1$1;->this$2:LJAVARuntime/Matcap$2$1$1;

    iget-object v0, v0, LJAVARuntime/Matcap$2$1$1;->this$1:LJAVARuntime/Matcap$2$1;

    iget-object v0, v0, LJAVARuntime/Matcap$2$1;->val$finalVar:LJAVARuntime/Matcap;

    iget-object v1, p0, LJAVARuntime/Matcap$2$1$1$1$1;->val$file:Ljava/lang/String;

    const-string v2, "Albedo.jpg"

    const-string v3, "color.jpg"

    const-string v4, "BaseColor.jpg"

    const-string v5, "Color.jpg"

    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, LH3/g;->G1(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LJAVARuntime/Matcap;->access$102(LJAVARuntime/Matcap;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, LJAVARuntime/Matcap$2$1$1$1$1;->this$3:LJAVARuntime/Matcap$2$1$1$1;

    iget-object v0, v0, LJAVARuntime/Matcap$2$1$1$1;->this$2:LJAVARuntime/Matcap$2$1$1;

    iget-object v0, v0, LJAVARuntime/Matcap$2$1$1;->this$1:LJAVARuntime/Matcap$2$1;

    iget-object v1, v0, LJAVARuntime/Matcap$2$1;->val$getSetterListener:LP8/n;

    if-eqz v1, :cond_0

    iget-object v0, v0, LJAVARuntime/Matcap$2$1;->val$finalVar:LJAVARuntime/Matcap;

    invoke-interface {v1, v0}, LP8/n;->a(Ljava/lang/Object;)V

    :cond_0
    new-instance v0, LJAVARuntime/Matcap$2$1$1$1$1$1;

    invoke-direct {v0, p0}, LJAVARuntime/Matcap$2$1$1$1$1$1;-><init>(LJAVARuntime/Matcap$2$1$1$1$1;)V

    invoke-static {v0}, LN7/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method
