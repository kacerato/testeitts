.class public final LLe/F1;
.super LBe/l;
.source "SourceFile"


# annotations
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

.field public final d:J


# direct methods
.method public constructor <init>(Lhn/b;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/b<",
            "TT;>;J)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/l;-><init>()V

    iput-object p1, p0, LLe/F1;->c:Lhn/b;

    iput-wide p2, p0, LLe/F1;->d:J

    return-void
.end method


# virtual methods
.method public m6(Lhn/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/F1;->c:Lhn/b;

    new-instance v1, LLe/B1$a;

    iget-wide v2, p0, LLe/F1;->d:J

    invoke-direct {v1, p1, v2, v3}, LLe/B1$a;-><init>(Lhn/c;J)V

    invoke-interface {v0, v1}, Lhn/b;->l(Lhn/c;)V

    return-void
.end method
