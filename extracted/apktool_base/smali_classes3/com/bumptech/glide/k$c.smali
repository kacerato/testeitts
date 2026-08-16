.class public Lcom/bumptech/glide/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:LR/n;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "RequestManager.this"
    .end annotation
.end field

.field public final synthetic b:Lcom/bumptech/glide/k;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/k;LR/n;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/bumptech/glide/k$c;->b:Lcom/bumptech/glide/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/k$c;->a:LR/n;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bumptech/glide/k$c;->b:Lcom/bumptech/glide/k;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/k$c;->a:LR/n;

    invoke-virtual {v0}, LR/n;->g()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method
