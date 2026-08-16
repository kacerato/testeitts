.class public Lcom/google/common/util/concurrent/w$s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/w$r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/w$s;->i(Lcom/google/common/util/concurrent/w$s$c;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
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
.field public final synthetic a:Lcom/google/common/util/concurrent/w$s$c;

.field public final synthetic b:Lcom/google/common/util/concurrent/w$s;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w$s;Lcom/google/common/util/concurrent/w$s$c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$s$b;->b:Lcom/google/common/util/concurrent/w$s;

    iput-object p2, p0, Lcom/google/common/util/concurrent/w$s$b;->a:Lcom/google/common/util/concurrent/w$s$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/w$w;Lcom/google/common/util/concurrent/w$x;)Lcom/google/common/util/concurrent/w;
    .locals 3
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

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$s$b;->a:Lcom/google/common/util/concurrent/w$s$c;

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$s$b;->b:Lcom/google/common/util/concurrent/w$s;

    invoke-static {v1}, Lcom/google/common/util/concurrent/w$s;->f(Lcom/google/common/util/concurrent/w$s;)Lcom/google/common/util/concurrent/w;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/common/util/concurrent/w$x;->e(Lcom/google/common/util/concurrent/w;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/w$s$b;->b:Lcom/google/common/util/concurrent/w$s;

    invoke-static {v2}, Lcom/google/common/util/concurrent/w$s;->g(Lcom/google/common/util/concurrent/w$s;)Lcom/google/common/util/concurrent/w;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/common/util/concurrent/w$x;->e(Lcom/google/common/util/concurrent/w;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, v1, p2}, Lcom/google/common/util/concurrent/w$s$c;->a(Lcom/google/common/util/concurrent/w$w;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$s$b;->a:Lcom/google/common/util/concurrent/w$s$c;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
