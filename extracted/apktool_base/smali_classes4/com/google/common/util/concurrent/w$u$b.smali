.class public Lcom/google/common/util/concurrent/w$u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/w$r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/w$u;->k(Lcom/google/common/util/concurrent/w$u$c;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/w$r$d<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/w$u$c;

.field public final synthetic b:Lcom/google/common/util/concurrent/w$u;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w$u;Lcom/google/common/util/concurrent/w$u$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$u$b;->b:Lcom/google/common/util/concurrent/w$u;

    iput-object p2, p0, Lcom/google/common/util/concurrent/w$u$b;->a:Lcom/google/common/util/concurrent/w$u$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/w$w;Lcom/google/common/util/concurrent/w$x;)Lcom/google/common/util/concurrent/w;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w$w;",
            "Lcom/google/common/util/concurrent/w$x;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$u$b;->a:Lcom/google/common/util/concurrent/w$u$c;

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$u$b;->b:Lcom/google/common/util/concurrent/w$u;

    invoke-static {v1}, Lcom/google/common/util/concurrent/w$u;->f(Lcom/google/common/util/concurrent/w$u;)Lcom/google/common/util/concurrent/w;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/w$x;->e(Lcom/google/common/util/concurrent/w;)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$u$b;->b:Lcom/google/common/util/concurrent/w$u;

    invoke-static {v1}, Lcom/google/common/util/concurrent/w$u;->g(Lcom/google/common/util/concurrent/w$u;)Lcom/google/common/util/concurrent/w;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/w$x;->e(Lcom/google/common/util/concurrent/w;)Ljava/lang/Object;

    move-result-object v3

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$u$b;->b:Lcom/google/common/util/concurrent/w$u;

    invoke-static {v1}, Lcom/google/common/util/concurrent/w$u;->h(Lcom/google/common/util/concurrent/w$u;)Lcom/google/common/util/concurrent/w;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/w$x;->e(Lcom/google/common/util/concurrent/w;)Ljava/lang/Object;

    move-result-object v4

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$u$b;->b:Lcom/google/common/util/concurrent/w$u;

    invoke-static {v1}, Lcom/google/common/util/concurrent/w$u;->i(Lcom/google/common/util/concurrent/w$u;)Lcom/google/common/util/concurrent/w;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/w$x;->e(Lcom/google/common/util/concurrent/w;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/common/util/concurrent/w$u$c;->a(Lcom/google/common/util/concurrent/w$w;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$u$b;->a:Lcom/google/common/util/concurrent/w$u$c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
