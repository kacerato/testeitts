.class public final LLe/M1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/M1$a;,
        LLe/M1$b;,
        LLe/M1$d;,
        LLe/M1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TU;>;"
        }
    .end annotation
.end field

.field public final e:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field public final f:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/l;Lhn/b;LFe/o;Lhn/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "Lhn/b<",
            "TU;>;",
            "LFe/o<",
            "-TT;+",
            "Lhn/b<",
            "TV;>;>;",
            "Lhn/b<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/M1;->d:Lhn/b;

    iput-object p3, p0, LLe/M1;->e:LFe/o;

    iput-object p4, p0, LLe/M1;->f:Lhn/b;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/M1;->f:Lhn/b;

    if-nez v0, :cond_0

    new-instance v0, LLe/M1$d;

    iget-object v1, p0, LLe/M1;->e:LFe/o;

    invoke-direct {v0, p1, v1}, LLe/M1$d;-><init>(Lhn/c;LFe/o;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, p0, LLe/M1;->d:Lhn/b;

    invoke-virtual {v0, p1}, LLe/M1$d;->d(Lhn/b;)V

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    goto :goto_0

    :cond_0
    new-instance v0, LLe/M1$b;

    iget-object v1, p0, LLe/M1;->e:LFe/o;

    iget-object v2, p0, LLe/M1;->f:Lhn/b;

    invoke-direct {v0, p1, v1, v2}, LLe/M1$b;-><init>(Lhn/c;LFe/o;Lhn/b;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, p0, LLe/M1;->d:Lhn/b;

    invoke-virtual {v0, p1}, LLe/M1$b;->m(Lhn/b;)V

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    :goto_0
    return-void
.end method
