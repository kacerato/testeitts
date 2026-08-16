.class public final LOe/p0$p;
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
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LFe/o<",
        "Ljava/util/List<",
        "LBe/G<",
        "+TT;>;>;",
        "LBe/G<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field public final b:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;"
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
            "-[",
            "Ljava/lang/Object;",
            "+TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOe/p0$p;->b:LFe/o;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)LBe/G;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LBe/G<",
            "+TT;>;>;)",
            "LBe/G<",
            "+TR;>;"
        }
    .end annotation

    iget-object v0, p0, LOe/p0$p;->b:LFe/o;

    const/4 v1, 0x0

    invoke-static {}, LBe/B;->V()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, LBe/B;->e8(Ljava/lang/Iterable;LFe/o;ZI)LBe/B;

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

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, LOe/p0$p;->a(Ljava/util/List;)LBe/G;

    move-result-object p1

    return-object p1
.end method
