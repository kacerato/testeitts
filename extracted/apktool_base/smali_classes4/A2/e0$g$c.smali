.class public LA2/e0$g$c;
.super Lcom/google/common/collect/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LA2/e0$g;->f(Ljava/util/Iterator;LA2/e0$f;)Ljava/util/Iterator;
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

.field public final synthetic e:LA2/e0$f;

.field public final synthetic f:LA2/e0$g;


# direct methods
.method public constructor <init>(LA2/e0$g;Ljava/util/Deque;LA2/e0$f;)V
    .locals 0

    iput-object p1, p0, LA2/e0$g$c;->f:LA2/e0$g;

    iput-object p2, p0, LA2/e0$g$c;->d:Ljava/util/Deque;

    iput-object p3, p0, LA2/e0$g$c;->e:LA2/e0$f;

    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :cond_0
    iget-object v0, p0, LA2/e0$g$c;->f:LA2/e0$g;

    iget-object v1, p0, LA2/e0$g$c;->d:Ljava/util/Deque;

    invoke-virtual {v0, v1}, LA2/e0$g;->g(Ljava/util/Deque;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, LA2/e0$g$c;->f:LA2/e0$g;

    iget-object v1, v1, LA2/e0$g;->a:LA2/d0;

    invoke-interface {v1, v0}, LA2/d0;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, LA2/e0$g$c;->e:LA2/e0$f;

    iget-object v3, p0, LA2/e0$g$c;->d:Ljava/util/Deque;

    invoke-virtual {v2, v3, v1}, LA2/e0$f;->b(Ljava/util/Deque;Ljava/lang/Object;)V

    :cond_1
    return-object v0

    :cond_2
    iget-object v0, p0, LA2/e0$g$c;->d:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/c;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
