.class public final LLe/o1;
.super LBe/K;
.source "SourceFile"

# interfaces
.implements LIe/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/o1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "Ljava/lang/Boolean;",
        ">;",
        "LIe/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final c:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:LFe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(Lhn/b;Lhn/b;LFe/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "+TT;>;",
            "LFe/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LLe/o1;->b:Lhn/b;

    iput-object p2, p0, LLe/o1;->c:Lhn/b;

    iput-object p3, p0, LLe/o1;->d:LFe/d;

    iput p4, p0, LLe/o1;->e:I

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LLe/o1$a;

    iget v1, p0, LLe/o1;->e:I

    iget-object v2, p0, LLe/o1;->d:LFe/d;

    invoke-direct {v0, p1, v1, v2}, LLe/o1$a;-><init>(LBe/N;ILFe/d;)V

    invoke-interface {p1, v0}, LBe/N;->e(LDe/c;)V

    iget-object p1, p0, LLe/o1;->b:Lhn/b;

    iget-object v1, p0, LLe/o1;->c:Lhn/b;

    invoke-virtual {v0, p1, v1}, LLe/o1$a;->b(Lhn/b;Lhn/b;)V

    return-void
.end method

.method public f()LBe/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LBe/l<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, LLe/n1;

    iget-object v1, p0, LLe/o1;->b:Lhn/b;

    iget-object v2, p0, LLe/o1;->c:Lhn/b;

    iget-object v3, p0, LLe/o1;->d:LFe/d;

    iget v4, p0, LLe/o1;->e:I

    invoke-direct {v0, v1, v2, v3, v4}, LLe/n1;-><init>(Lhn/b;Lhn/b;LFe/d;I)V

    invoke-static {v0}, LYe/a;->P(LBe/l;)LBe/l;

    move-result-object v0

    return-object v0
.end method
