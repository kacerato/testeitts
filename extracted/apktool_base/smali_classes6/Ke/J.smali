.class public final LKe/J;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/J$a;
    }
.end annotation


# instance fields
.field public final b:LBe/i;

.field public final c:LFe/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBe/i;LFe/o;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/i;",
            "LFe/o<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "LBe/i;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/J;->b:LBe/i;

    iput-object p2, p0, LKe/J;->c:LFe/o;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    new-instance v0, LKe/J$a;

    iget-object v1, p0, LKe/J;->c:LFe/o;

    invoke-direct {v0, p1, v1}, LKe/J$a;-><init>(LBe/f;LFe/o;)V

    invoke-interface {p1, v0}, LBe/f;->e(LDe/c;)V

    iget-object p1, p0, LKe/J;->b:LBe/i;

    invoke-interface {p1, v0}, LBe/i;->b(LBe/f;)V

    return-void
.end method
