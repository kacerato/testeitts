.class public LD7/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD7/e;->f(LD7/e$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/widget/ImageView;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$display",
            "val$thumbFile"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LD7/e$b;->b:Landroid/widget/ImageView;

    iput-object p2, p0, LD7/e$b;->c:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, LU/h;

    invoke-direct {v0}, LU/h;-><init>()V

    const v1, 0x7f07022d

    invoke-virtual {v0, v1}, LU/a;->u(I)LU/a;

    move-result-object v0

    check-cast v0, LU/h;

    iget-object v1, p0, LD7/e$b;->b:Landroid/widget/ImageView;

    iget-object v2, p0, LD7/e$b;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-static {v1, v2, v3, v0, v4}, LVc/e;->L(Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;LU/h;Lcom/bumptech/glide/load/engine/i;)V

    return-void
.end method
