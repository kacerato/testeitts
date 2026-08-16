.class public LW5/a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW5/a$b;->d(Lcom/bumptech/glide/load/engine/GlideException;Ljava/lang/Object;LV/p;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LW5/a$b;


# direct methods
.method public constructor <init>(LW5/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LW5/a$b$a;->b:LW5/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->D(Landroid/content/Context;)Lcom/bumptech/glide/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/k;->s()Lcom/bumptech/glide/j;

    move-result-object v0

    iget-object v1, p0, LW5/a$b$a;->b:LW5/a$b;

    iget-object v1, v1, LW5/a$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->q1(Ljava/lang/String;)Lcom/bumptech/glide/j;

    move-result-object v0

    sget-object v1, LC/b;->PREFER_RGB_565:LC/b;

    invoke-virtual {v0, v1}, LU/a;->z(LC/b;)LU/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    sget-object v1, Lcom/bumptech/glide/load/engine/i;->b:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {v0, v1}, LU/a;->m(Lcom/bumptech/glide/load/engine/i;)LU/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/j;

    iget-object v1, p0, LW5/a$b$a;->b:LW5/a$b;

    iget-object v1, v1, LW5/a$b;->d:LU/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->S0(LU/a;)Lcom/bumptech/glide/j;

    move-result-object v0

    new-instance v1, LW5/a$b$a$b;

    invoke-direct {v1, p0}, LW5/a$b$a$b;-><init>(LW5/a$b$a;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->j1(LU/g;)Lcom/bumptech/glide/j;

    move-result-object v0

    new-instance v1, LW5/a$b$a$a;

    invoke-direct {v1, p0}, LW5/a$b$a$a;-><init>(LW5/a$b$a;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/j;->e1(LV/p;)LV/p;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v0, p0, LW5/a$b$a;->b:LW5/a$b;

    iget-object v0, v0, LW5/a$b;->e:Lq7/a;

    invoke-virtual {v0}, Lq7/a;->p1()V

    :goto_0
    return-void
.end method
