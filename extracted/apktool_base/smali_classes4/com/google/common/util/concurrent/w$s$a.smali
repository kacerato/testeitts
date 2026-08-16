.class public Lcom/google/common/util/concurrent/w$s$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/w$r$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/w$s;->h(Lcom/google/common/util/concurrent/w$s$d;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/w$r$e<",
        "TU;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/w$s$d;

.field public final synthetic b:Lcom/google/common/util/concurrent/w$s;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w$s;Lcom/google/common/util/concurrent/w$s$d;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$s$a;->b:Lcom/google/common/util/concurrent/w$s;

    iput-object p2, p0, Lcom/google/common/util/concurrent/w$s$a;->a:Lcom/google/common/util/concurrent/w$s$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/w$w;Lcom/google/common/util/concurrent/w$x;)Ljava/lang/Object;
    .locals 3
    .annotation runtime Lcom/google/common/util/concurrent/j0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w$w;",
            "Lcom/google/common/util/concurrent/w$x;",
            ")TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$s$a;->a:Lcom/google/common/util/concurrent/w$s$d;

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$s$a;->b:Lcom/google/common/util/concurrent/w$s;

    invoke-static {v1}, Lcom/google/common/util/concurrent/w$s;->f(Lcom/google/common/util/concurrent/w$s;)Lcom/google/common/util/concurrent/w;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/w$x;->e(Lcom/google/common/util/concurrent/w;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/w$s$a;->b:Lcom/google/common/util/concurrent/w$s;

    invoke-static {v2}, Lcom/google/common/util/concurrent/w$s;->g(Lcom/google/common/util/concurrent/w$s;)Lcom/google/common/util/concurrent/w;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/common/util/concurrent/w$x;->e(Lcom/google/common/util/concurrent/w;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lcom/google/common/util/concurrent/w$s$d;->a(Lcom/google/common/util/concurrent/w$w;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$s$a;->a:Lcom/google/common/util/concurrent/w$s$d;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
