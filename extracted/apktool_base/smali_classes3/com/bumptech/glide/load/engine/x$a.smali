.class public Lcom/bumptech/glide/load/engine/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/x;->j(LJ/n$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LD/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LJ/n$a;

.field public final synthetic c:Lcom/bumptech/glide/load/engine/x;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/x;LJ/n$a;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/x$a;->c:Lcom/bumptech/glide/load/engine/x;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/x$a;->b:LJ/n$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x$a;->c:Lcom/bumptech/glide/load/engine/x;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x$a;->b:LJ/n$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/x;->g(LJ/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x$a;->c:Lcom/bumptech/glide/load/engine/x;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x$a;->b:LJ/n$a;

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/x;->h(LJ/n$a;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x$a;->c:Lcom/bumptech/glide/load/engine/x;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x$a;->b:LJ/n$a;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/x;->g(LJ/n$a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/x$a;->c:Lcom/bumptech/glide/load/engine/x;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/x$a;->b:LJ/n$a;

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/x;->i(LJ/n$a;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
