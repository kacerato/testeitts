.class public Lcom/google/common/util/concurrent/w$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/w;->C(Lcom/google/common/util/concurrent/w$n;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/m<",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/w$n;

.field public final synthetic b:Lcom/google/common/util/concurrent/w;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$h;->b:Lcom/google/common/util/concurrent/w;

    iput-object p2, p0, Lcom/google/common/util/concurrent/w$h;->a:Lcom/google/common/util/concurrent/w$n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/google/common/util/concurrent/Z<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$h;->b:Lcom/google/common/util/concurrent/w;

    invoke-static {v0}, Lcom/google/common/util/concurrent/w;->f(Lcom/google/common/util/concurrent/w;)Lcom/google/common/util/concurrent/w$o;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/w$h;->a:Lcom/google/common/util/concurrent/w$n;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/util/concurrent/w$o;->c(Lcom/google/common/util/concurrent/w$n;Ljava/lang/Object;)Lcom/google/common/util/concurrent/F;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/util/concurrent/w$h;->a:Lcom/google/common/util/concurrent/w$n;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
