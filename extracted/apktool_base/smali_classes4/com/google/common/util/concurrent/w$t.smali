.class public final Lcom/google/common/util/concurrent/w$t;
.super Lcom/google/common/util/concurrent/w$r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/w$t$c;,
        Lcom/google/common/util/concurrent/w$t$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        "V3:",
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

.field public final g:Lcom/google/common/util/concurrent/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/w<",
            "TV3;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/w<",
            "TV1;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV2;>;",
            "Lcom/google/common/util/concurrent/w<",
            "TV3;>;)V"
        }
    .end annotation

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/common/collect/g1;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/g1;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/google/common/util/concurrent/w$r;-><init>(ZLjava/lang/Iterable;Lcom/google/common/util/concurrent/w$d;)V

    .line 3
    iput-object p1, p0, Lcom/google/common/util/concurrent/w$t;->e:Lcom/google/common/util/concurrent/w;

    .line 4
    iput-object p2, p0, Lcom/google/common/util/concurrent/w$t;->f:Lcom/google/common/util/concurrent/w;

    .line 5
    iput-object p3, p0, Lcom/google/common/util/concurrent/w$t;->g:Lcom/google/common/util/concurrent/w;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/util/concurrent/w$t;-><init>(Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;Lcom/google/common/util/concurrent/w;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/common/util/concurrent/w$t;)Lcom/google/common/util/concurrent/w;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/w$t;->e:Lcom/google/common/util/concurrent/w;

    return-object p0
.end method

.method public static synthetic g(Lcom/google/common/util/concurrent/w$t;)Lcom/google/common/util/concurrent/w;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/w$t;->f:Lcom/google/common/util/concurrent/w;

    return-object p0
.end method

.method public static synthetic h(Lcom/google/common/util/concurrent/w$t;)Lcom/google/common/util/concurrent/w;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/w$t;->g:Lcom/google/common/util/concurrent/w;

    return-object p0
.end method


# virtual methods
.method public i(Lcom/google/common/util/concurrent/w$t$d;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$t$d<",
            "TV1;TV2;TV3;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$t$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w$t$a;-><init>(Lcom/google/common/util/concurrent/w$t;Lcom/google/common/util/concurrent/w$t$d;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/w$r;->b(Lcom/google/common/util/concurrent/w$r$e;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/google/common/util/concurrent/w$t$c;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/util/concurrent/w$t$c<",
            "TV1;TV2;TV3;TU;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/common/util/concurrent/w<",
            "TU;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/util/concurrent/w$t$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/w$t$b;-><init>(Lcom/google/common/util/concurrent/w$t;Lcom/google/common/util/concurrent/w$t$c;)V

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/w$r;->c(Lcom/google/common/util/concurrent/w$r$d;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/w;

    move-result-object p1

    return-object p1
.end method
