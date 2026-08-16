.class public final LOe/F0;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/F0$a;
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
.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/G<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(LBe/G;LFe/o;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/G<",
            "+TT;>;>;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/F0;->c:LFe/o;

    iput-boolean p3, p0, LOe/F0;->d:Z

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

    new-instance v0, LOe/F0$a;

    iget-object v1, p0, LOe/F0;->c:LFe/o;

    iget-boolean v2, p0, LOe/F0;->d:Z

    invoke-direct {v0, p1, v1, v2}, LOe/F0$a;-><init>(LBe/I;LFe/o;Z)V

    iget-object v1, v0, LOe/F0$a;->e:LGe/h;

    invoke-interface {p1, v1}, LBe/I;->e(LDe/c;)V

    iget-object p1, p0, LOe/a;->b:LBe/G;

    invoke-interface {p1, v0}, LBe/G;->c(LBe/I;)V

    return-void
.end method
