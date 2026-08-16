.class public final LOe/p0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LFe/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LFe/o<",
        "TT;",
        "LBe/G<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final b:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "-TT;+",
            "LBe/G<",
            "TU;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/p0$f;->b:LFe/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)LBe/G;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "LBe/G<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, LOe/p0$f;->b:LFe/o;

    invoke-interface {v0, p1}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "The itemDelay returned a null ObservableSource"

    invoke-static {v0, v1}, LHe/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBe/G;

    new-instance v1, LOe/o1;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v0, v2, v3}, LOe/o1;-><init>(LBe/G;J)V

    invoke-static {p1}, LHe/a;->n(Ljava/lang/Object;)LFe/o;

    move-result-object v0

    invoke-virtual {v1, v0}, LBe/B;->B3(LFe/o;)LBe/B;

    move-result-object v0

    invoke-virtual {v0, p1}, LBe/B;->w1(Ljava/lang/Object;)LBe/B;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, LOe/p0$f;->a(Ljava/lang/Object;)LBe/G;

    move-result-object p1

    return-object p1
.end method
