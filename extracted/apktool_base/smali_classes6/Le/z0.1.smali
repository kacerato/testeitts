.class public final LLe/z0;
.super LBe/K;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/z0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LBe/K<",
        "TT;>;"
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
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lhn/b;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/K;-><init>()V

    iput-object p1, p0, LLe/z0;->b:Lhn/b;

    iput-object p2, p0, LLe/z0;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public d1(LBe/N;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/N<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/z0;->b:Lhn/b;

    new-instance v1, LLe/z0$a;

    iget-object v2, p0, LLe/z0;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, v2}, LLe/z0$a;-><init>(LBe/N;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
