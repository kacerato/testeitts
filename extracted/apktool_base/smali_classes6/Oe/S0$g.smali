.class public final LOe/S0$g;
.super LVe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOe/S0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LVe/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:LVe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LVe/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:LBe/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/B<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LVe/a;LBe/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LVe/a<",
            "TT;>;",
            "LBe/B<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LVe/a;-><init>()V

    iput-object p1, p0, LOe/S0$g;->b:LVe/a;

    iput-object p2, p0, LOe/S0$g;->c:LBe/B;

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/S0$g;->c:LBe/B;

    invoke-virtual {v0, p1}, LBe/B;->c(LBe/I;)V

    return-void
.end method

.method public n8(LFe/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/S0$g;->b:LVe/a;

    invoke-virtual {v0, p1}, LVe/a;->n8(LFe/g;)V

    return-void
.end method
