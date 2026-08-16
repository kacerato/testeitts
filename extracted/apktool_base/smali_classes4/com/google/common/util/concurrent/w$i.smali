.class public Lcom/google/common/util/concurrent/w$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/util/concurrent/w$n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/w;->M(Lcom/google/common/util/concurrent/m;)Lcom/google/common/util/concurrent/w$n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/w$n<",
        "TV;TU;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/common/util/concurrent/m;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/m;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/w$i;->a:Lcom/google/common/util/concurrent/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/util/concurrent/w$w;Ljava/lang/Object;)Lcom/google/common/util/concurrent/w;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w$w;",
            "TV;)",
            "Lcom/google/common/util/concurrent/w<",
            "TU;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/google/common/util/concurrent/w$i;->a:Lcom/google/common/util/concurrent/m;

    invoke-interface {p1, p2}, Lcom/google/common/util/concurrent/m;->apply(Ljava/lang/Object;)Lcom/google/common/util/concurrent/Z;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/util/concurrent/w;->w(Lcom/google/common/util/concurrent/Z;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method
