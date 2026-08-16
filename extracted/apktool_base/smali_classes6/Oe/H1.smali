.class public final LOe/H1;
.super LOe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOe/H1$a;,
        LOe/H1$b;,
        LOe/H1$d;,
        LOe/H1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LOe/a<",
        "TT;",
        "LBe/B<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final c:LBe/G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/G<",
            "TB;>;"
        }
    .end annotation
.end field

.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TB;+",
            "LBe/G<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(LBe/G;LBe/G;LFe/o;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/G<",
            "TT;>;",
            "LBe/G<",
            "TB;>;",
            "LFe/o<",
            "-TB;+",
            "LBe/G<",
            "TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LOe/a;-><init>(LBe/G;)V

    iput-object p2, p0, LOe/H1;->c:LBe/G;

    iput-object p3, p0, LOe/H1;->d:LFe/o;

    iput p4, p0, LOe/H1;->e:I

    return-void
.end method


# virtual methods
.method public J5(LBe/I;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/I<",
            "-",
            "LBe/B<",
            "TT;>;>;)V"
        }
    .end annotation

    iget-object v0, p0, LOe/a;->b:LBe/G;

    new-instance v1, LOe/H1$c;

    new-instance v2, LWe/m;

    invoke-direct {v2, p1}, LWe/m;-><init>(LBe/I;)V

    iget-object p1, p0, LOe/H1;->c:LBe/G;

    iget-object v3, p0, LOe/H1;->d:LFe/o;

    iget v4, p0, LOe/H1;->e:I

    invoke-direct {v1, v2, p1, v3, v4}, LOe/H1$c;-><init>(LBe/I;LBe/G;LFe/o;I)V

    invoke-interface {v0, v1}, LBe/G;->c(LBe/I;)V

    return-void
.end method
