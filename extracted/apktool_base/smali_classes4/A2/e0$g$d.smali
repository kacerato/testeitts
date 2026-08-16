.class public LA2/e0$g$d;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/e0$g;->d(Ljava/util/Iterator;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c<",
        "TN;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ljava/util/Deque;

.field public final synthetic e:Ljava/util/Deque;

.field public final synthetic f:LA2/e0$g;


# direct methods
.method public constructor <init>(LA2/e0$g;Ljava/util/Deque;Ljava/util/Deque;)V
    .locals 0

    iput-object p1, p0, LA2/e0$g$d;->f:LA2/e0$g;

    iput-object p2, p0, LA2/e0$g$d;->d:Ljava/util/Deque;

    iput-object p3, p0, LA2/e0$g$d;->e:Ljava/util/Deque;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :goto_0
    iget-object v0, p0, LA2/e0$g$d;->f:LA2/e0$g;

    iget-object v1, p0, LA2/e0$g$d;->d:Ljava/util/Deque;

    invoke-virtual {v0, v1}, LA2/e0$g;->g(Ljava/util/Deque;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, LA2/e0$g$d;->f:LA2/e0$g;

    iget-object v1, v1, LA2/e0$g;->a:LA2/d0;

    invoke-interface {v1, v0}, LA2/d0;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, LA2/e0$g$d;->d:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    iget-object v1, p0, LA2/e0$g$d;->e:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, LA2/e0$g$d;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, LA2/e0$g$d;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
