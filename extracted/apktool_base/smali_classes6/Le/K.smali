.class public final LLe/K;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/K$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/b;Lhn/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "+TT;>;",
            "Lhn/b<",
            "TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/K;->c:Lhn/b;

    iput-object p2, p0, LLe/K;->d:Lhn/b;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, LLe/K$a;

    iget-object v1, p0, LLe/K;->c:Lhn/b;

    invoke-direct {v0, p1, v1}, LLe/K$a;-><init>(Lhn/c;Lhn/b;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, p0, LLe/K;->d:Lhn/b;

    iget-object v0, v0, LLe/K$a;->d:LLe/K$a$a;

    invoke-interface {p1, v0}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
