.class public final LOe/v0;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/v0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "TT;>;"
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
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LOe/v0;->b:LBe/G;

    iput-object p2, p0, LOe/v0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/v0;->b:LBe/G;

    new-instance v1, LOe/v0$a;

    iget-object v2, p0, LOe/v0;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, LOe/v0$a;-><init>(LBe/N;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
