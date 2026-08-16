.class public Lcom/bumptech/glide/load/engine/j$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Lcom/bumptech/glide/load/engine/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/k<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:LU/i;

.field public final synthetic c:Lcom/bumptech/glide/load/engine/j;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/j;LU/i;Lcom/bumptech/glide/load/engine/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LU/i;",
            "Lcom/bumptech/glide/load/engine/k<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/j$d;->c:Lcom/bumptech/glide/load/engine/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/j$d;->b:LU/i;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/j$d;->a:Lcom/bumptech/glide/load/engine/k;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/j$d;->c:Lcom/bumptech/glide/load/engine/j;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/j$d;->a:Lcom/bumptech/glide/load/engine/k;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/j$d;->b:LU/i;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/k;->s(LU/i;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
