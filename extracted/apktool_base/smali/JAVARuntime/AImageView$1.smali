.class LJAVARuntime/AImageView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/AImageView;->setImageFile(Landroid/widget/ImageView;LJAVARuntime/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$file:LJAVARuntime/File;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;LJAVARuntime/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$imageView",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/AImageView$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p2, p0, LJAVARuntime/AImageView$1;->val$file:LJAVARuntime/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LJAVARuntime/AImageView$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, LJAVARuntime/AImageView$1;->val$file:LJAVARuntime/File;

    invoke-static {v0, v1}, LVc/e;->F(Landroid/widget/ImageView;Ljava/io/File;)V

    return-void
.end method
