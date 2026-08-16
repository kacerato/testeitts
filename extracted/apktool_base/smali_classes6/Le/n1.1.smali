.class public final LLe/n1;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/n1$c;,
        LLe/n1$a;,
        LLe/n1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "Ljava/lang/Boolean;",
        ">;"
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
            "+TT;>;"
        }
    .end annotation
.end field

.field public final e:LFe/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field public final f:I


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

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/n1;->c:Lhn/b;

    iput-object p2, p0, LLe/n1;->d:Lhn/b;

    iput-object p3, p0, LLe/n1;->e:LFe/d;

    iput p4, p0, LLe/n1;->f:I

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, LLe/n1$a;

    iget v1, p0, LLe/n1;->f:I

    iget-object v2, p0, LLe/n1;->e:LFe/d;

    invoke-direct {v0, p1, v1, v2}, LLe/n1$a;-><init>(Lhn/c;ILFe/d;)V

    invoke-interface {p1, v0}, Lhn/c;->j(Lhn/d;)V

    iget-object p1, p0, LLe/n1;->c:Lhn/b;

    iget-object v1, p0, LLe/n1;->d:Lhn/b;

    invoke-virtual {v0, p1, v1}, LLe/n1$a;->v(Lhn/b;Lhn/b;)V

    return-void
.end method
