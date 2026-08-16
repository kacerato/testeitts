.class public final LLe/Y0;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/Y0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lhn/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lhn/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public final d:LFe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/b;Ljava/lang/Object;LFe/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "TT;>;TR;",
            "LFe/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LLe/Y0;->b:Lhn/b;

    iput-object p2, p0, LLe/Y0;->c:Ljava/lang/Object;

    iput-object p3, p0, LLe/Y0;->d:LFe/c;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/Y0;->b:Lhn/b;

    new-instance v1, LLe/Y0$a;

    iget-object v2, p0, LLe/Y0;->d:LFe/c;

    iget-object v3, p0, LLe/Y0;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3}, LLe/Y0$a;-><init>(LBe/N;LFe/c;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
