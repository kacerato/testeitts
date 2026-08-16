.class public final LLe/E0;
.super LBe/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "LBe/l<",
        "TU;>;"
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

.field public final d:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-TT;+TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/b;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "TT;>;",
            "LFe/o<",
            "-TT;+TU;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/E0;->c:Lhn/b;

    iput-object p2, p0, LLe/E0;->d:LFe/o;

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TU;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/E0;->c:Lhn/b;

    new-instance v1, LLe/C0$b;

    iget-object v2, p0, LLe/E0;->d:LFe/o;

    invoke-direct {v1, p1, v2}, LLe/C0$b;-><init>(Lhn/c;LFe/o;)V

    invoke-interface {v0, v1}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
