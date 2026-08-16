.class public final Lcom/google/common/util/concurrent/w$s;
.super Lcom/google/common/util/concurrent/w$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/w$s$c;,
        Lcom/google/common/util/concurrent/w$s$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/w$r;"
    }
.end annotation


# instance fields
.field public final e:Lcom/google/common/util/concurrent/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/w<",
            "TV1;>;"
        }
    .end annotation
.end field

.field public final f:Lcom/google/common/util/concurrent/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/w<",
            "TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w<",
            "TV1;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV2;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2}, Lcom/google/common/collect/g1;->z(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/util/concurrent/w$r;-><init>(ZLjava/lang/Iterable;Lcom/google/common/util/concurrent/w$d;)V

    .line 3
    iput-object p1, p0, Lcom/google/common/util/concurrent/w$s;->e:Lcom/google/common/util/concurrent/w;

    .line 4
    iput-object p2, p0, Lcom/google/common/util/concurrent/w$s;->f:Lcom/google/common/util/concurrent/w;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/w$s;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/common/util/concurrent/w$s;)Lcom/google/common/util/concurrent/w;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/w$s;->e:Lcom/google/common/util/concurrent/w;

    return-object p0
.end method

.method public static synthetic g(Lcom/google/common/util/concurrent/w$s;)Lcom/google/common/util/concurrent/w;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/w$s;->f:Lcom/google/common/util/concurrent/w;

    return-object p0
.end method


# virtual methods
.method public h(Lcom/google/common/util/concurrent/w$s$d;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$s$d<",
            "TV1;TV2;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$s$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w$s$a;-><init>(Lcom/google/common/util/concurrent/w$s;Lcom/google/common/util/concurrent/w$s$d;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/w$r;->b(Lcom/google/common/util/concurrent/w$r$e;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/common/util/concurrent/w$s$c;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$s$c<",
            "TV1;TV2;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$s$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w$s$b;-><init>(Lcom/google/common/util/concurrent/w$s;Lcom/google/common/util/concurrent/w$s$c;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/w$r;->c(Lcom/google/common/util/concurrent/w$r$d;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method
