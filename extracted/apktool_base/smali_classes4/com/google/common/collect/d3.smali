.class public abstract Lcom/google/common/collect/d3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/d3$e;,
        Lcom/google/common/collect/d3$f;,
        Lcom/google/common/collect/d3$g;,
        Lcom/google/common/collect/d3$h;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lv2/a;
.end annotation

.annotation build Lv2/b;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static g(Lw2/t;)Lcom/google/common/collect/d3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw2/t<",
            "TT;+",
            "Ljava/lang/Iterable<",
            "TT;>;>;)",
            "Lcom/google/common/collect/d3<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/d3$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/d3$a;-><init>(Lw2/t;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/collect/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/d3$d;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/d3$d;-><init>(Lcom/google/common/collect/d3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation
.end method

.method public c(Ljava/lang/Object;)Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/e3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d3$f;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/d3$f;-><init>(Lcom/google/common/collect/d3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)Lcom/google/common/collect/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/d3$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/d3$c;-><init>(Lcom/google/common/collect/d3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/e3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/d3$h;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/d3$h;-><init>(Lcom/google/common/collect/d3;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final f(Ljava/lang/Object;)Lcom/google/common/collect/p0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/google/common/collect/p0<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/d3$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/d3$b;-><init>(Lcom/google/common/collect/d3;Ljava/lang/Object;)V

    return-object v0
.end method
