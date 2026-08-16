.class public LVc/e$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVc/e$i;->d(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;LV/p;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LVc/e$i;


# direct methods
.method public constructor <init>(LVc/e$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LVc/e$i$a;->b:LVc/e$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LVc/e$i$a;->b:LVc/e$i;

    iget-object v0, v0, LVc/e$i;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    iget-object v1, p0, LVc/e$i$a;->b:LVc/e$i;

    iget-object v1, v1, LVc/e$i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/k;->K(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object v0

    sget-object v1, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {v0, v1}, LU/a;->z(LC/b;)LU/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {v0, v1}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    iget-object v1, p0, LVc/e$i$a;->b:LVc/e$i;

    iget-object v1, v1, LVc/e$i;->d:LU/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, LVc/e$i$a;->b:LVc/e$i;

    iget-object v1, v1, LVc/e$i;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->h1(Landroid/widget/ImageView;)LV/r;

    return-void
.end method
