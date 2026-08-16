.class public LD7/b$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD7/b$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LD7/b$c;


# direct methods
.method public constructor <init>(LD7/b$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LD7/b$c$a;->b:LD7/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    const v1, 0x7f0701ce

    invoke-virtual {v0, v1}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    iget-object v1, p0, LD7/b$c$a;->b:LD7/b$c;

    iget-object v2, v1, LD7/b$c;->b:Landroid/widget/ImageView;

    iget-object v1, v1, LD7/b$c;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v2, v1, v3, v0, v4}, LVc/e;->L(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V

    return-void
.end method
