.class public final LOe/Z0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/Z0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/G;LFe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LFe/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/Z0;->c:LFe/c;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v1, LOe/Z0$a;

    iget-object v2, p0, LOe/Z0;->c:LFe/c;

    invoke-direct {v1, p1, v2}, LOe/Z0$a;-><init>(LBe/I;LFe/c;)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
