.class public final LOe/M0;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/M0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final d:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;Ljava/lang/Object;LFe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;TR;",
            "LFe/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LOe/M0;->b:LBe/G;

    iput-object p2, p0, LOe/M0;->c:Ljava/lang/Object;

    iput-object p3, p0, LOe/M0;->d:LFe/c;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/M0;->b:LBe/G;

    new-instance v1, LOe/M0$a;

    iget-object v2, p0, LOe/M0;->d:LFe/c;

    iget-object v3, p0, LOe/M0;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3}, LOe/M0$a;-><init>(LBe/N;LFe/c;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
