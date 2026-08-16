.class public final LLe/T;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/T$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final d:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "Lhn/d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:LFe/q;

.field public final f:LFe/a;


# direct methods
.method public constructor <init>(LBe/l;LFe/g;LFe/q;LFe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "LFe/g<",
            "-",
            "Lhn/d;",
            ">;",
            "LFe/q;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/T;->d:LFe/g;

    iput-object p3, p0, LLe/T;->e:LFe/q;

    iput-object p4, p0, LLe/T;->f:LFe/a;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/a;->c:LBe/l;

    new-instance v1, LLe/T$a;

    iget-object v2, p0, LLe/T;->d:LFe/g;

    iget-object v3, p0, LLe/T;->e:LFe/q;

    iget-object v4, p0, LLe/T;->f:LFe/a;

    invoke-direct {v1, p1, v2, v3, v4}, LLe/T$a;-><init>(Lhn/c;LFe/g;LFe/q;LFe/a;)V

    invoke-virtual {v0, v1}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
