.class public final LLe/i1;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/i1$a;,
        LLe/i1$b;,
        LLe/i1$d;,
        LLe/i1$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
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
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "*>;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(Lhn/b;Lhn/b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "TT;>;",
            "Lhn/b<",
            "*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/i1;->c:Lhn/b;

    iput-object p2, p0, LLe/i1;->d:Lhn/b;

    iput-boolean p3, p0, LLe/i1;->e:Z

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

    new-instance v0, Lcf/e;

    invoke-direct {v0, p1}, Lcf/e;-><init>(Lhn/c;)V

    iget-boolean p1, p0, LLe/i1;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LLe/i1;->c:Lhn/b;

    new-instance v1, LLe/i1$a;

    iget-object v2, p0, LLe/i1;->d:Lhn/b;

    invoke-direct {v1, v0, v2}, LLe/i1$a;-><init>(Lhn/c;Lhn/b;)V

    invoke-interface {p1, v1}, Lhn/b;->l(Lhn/c;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, LLe/i1;->c:Lhn/b;

    new-instance v1, LLe/i1$b;

    iget-object v2, p0, LLe/i1;->d:Lhn/b;

    invoke-direct {v1, v0, v2}, LLe/i1$b;-><init>(Lhn/c;Lhn/b;)V

    invoke-interface {p1, v1}, Lhn/b;->l(Lhn/c;)V

    :goto_0
    return-void
.end method
