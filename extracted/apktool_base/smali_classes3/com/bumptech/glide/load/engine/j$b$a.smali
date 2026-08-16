.class public Lcom/bumptech/glide/load/engine/j$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LZ/a$d<",
        "Lcom/bumptech/glide/load/engine/k<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/bumptech/glide/load/engine/j$b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/j$b;)V
    .locals 0

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j$b$a;->a:Lcom/bumptech/glide/load/engine/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/k;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/engine/k<",
            "*>;"
        }
    .end annotation

    new-instance v8, Lcom/bumptech/glide/load/engine/k;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$b$a;->a:Lcom/bumptech/glide/load/engine/j$b;

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/j$b;->a:LH/a;

    iget-object v2, v0, Lcom/bumptech/glide/load/engine/j$b;->b:LH/a;

    iget-object v3, v0, Lcom/bumptech/glide/load/engine/j$b;->c:LH/a;

    iget-object v4, v0, Lcom/bumptech/glide/load/engine/j$b;->d:LH/a;

    iget-object v5, v0, Lcom/bumptech/glide/load/engine/j$b;->e:Lcom/bumptech/glide/load/engine/l;

    iget-object v6, v0, Lcom/bumptech/glide/load/engine/j$b;->f:Lcom/bumptech/glide/load/engine/o$a;

    iget-object v7, v0, Lcom/bumptech/glide/load/engine/j$b;->g:Landroidx/core/util/Pools$Pool;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/bumptech/glide/load/engine/k;-><init>(LH/a;LH/a;LH/a;LH/a;Lcom/bumptech/glide/load/engine/l;Lcom/bumptech/glide/load/engine/o$a;Landroidx/core/util/Pools$Pool;)V

    return-object v8
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/j$b$a;->a()Lcom/bumptech/glide/load/engine/k;

    move-result-object v0

    return-object v0
.end method
