.class public final LLe/W1;
.super LLe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLe/W1$a;,
        LLe/W1$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "LLe/a<",
        "TT;",
        "LBe/l<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lhn/b<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method public constructor <init>(LBe/l;Ljava/util/concurrent/Callable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/l<",
            "TT;>;",
            "Ljava/util/concurrent/Callable<",
            "+",
            "Lhn/b<",
            "TB;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LLe/a;-><init>(LBe/l;)V

    iput-object p2, p0, LLe/W1;->d:Ljava/util/concurrent/Callable;

    iput p3, p0, LLe/W1;->e:I

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
            "LBe/l<",
            "TT;>;>;)V"
        }
    .end annotation

    new-instance v0, LLe/W1$b;

    iget v1, p0, LLe/W1;->e:I

    iget-object v2, p0, LLe/W1;->d:Ljava/util/concurrent/Callable;

    invoke-direct {v0, p1, v1, v2}, LLe/W1$b;-><init>(Lhn/c;ILjava/util/concurrent/Callable;)V

    iget-object p1, p0, LLe/a;->c:LBe/l;

    invoke-virtual {p1, v0}, LBe/l;->l6(LBe/q;)V

    return-void
.end method
