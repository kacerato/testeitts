.class public final LLe/e1$b;
.super LEe/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLe/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LEe/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:LEe/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LEe/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final d:LBe/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBe/l<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LEe/a;LBe/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LEe/a<",
            "TT;>;",
            "LBe/l<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LEe/a;-><init>()V

    iput-object p1, p0, LLe/e1$b;->c:LEe/a;

    iput-object p2, p0, LLe/e1$b;->d:LBe/l;

    return-void
.end method


# virtual methods
.method public S8(LFe/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/e1$b;->c:LEe/a;

    invoke-virtual {v0, p1}, LEe/a;->S8(LFe/g;)V

    return-void
.end method

.method public m6(Lhn/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhn/c<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, LLe/e1$b;->d:LBe/l;

    invoke-virtual {v0, p1}, LBe/l;->l(Lhn/c;)V

    return-void
.end method
