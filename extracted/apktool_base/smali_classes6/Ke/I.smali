.class public final LKe/I;
.super LBe/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKe/I$a;
    }
.end annotation


# instance fields
.field public final b:LBe/i;

.field public final c:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:LFe/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field public final e:LFe/a;

.field public final f:LFe/a;

.field public final g:LFe/a;

.field public final h:LFe/a;


# direct methods
.method public constructor <init>(LBe/i;LFe/g;LFe/g;LFe/a;LFe/a;LFe/a;LFe/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBe/i;",
            "LFe/g<",
            "-",
            "LDe/c;",
            ">;",
            "LFe/g<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "LFe/a;",
            "LFe/a;",
            "LFe/a;",
            "LFe/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LBe/c;-><init>()V

    iput-object p1, p0, LKe/I;->b:LBe/i;

    iput-object p2, p0, LKe/I;->c:LFe/g;

    iput-object p3, p0, LKe/I;->d:LFe/g;

    iput-object p4, p0, LKe/I;->e:LFe/a;

    iput-object p5, p0, LKe/I;->f:LFe/a;

    iput-object p6, p0, LKe/I;->g:LFe/a;

    iput-object p7, p0, LKe/I;->h:LFe/a;

    return-void
.end method


# virtual methods
.method public K0(LBe/f;)V
    .locals 2

    iget-object v0, p0, LKe/I;->b:LBe/i;

    new-instance v1, LKe/I$a;

    invoke-direct {v1, p0, p1}, LKe/I$a;-><init>(LKe/I;LBe/f;)V

    invoke-interface {v0, v1}, LBe/i;->b(LBe/f;)V

    return-void
.end method
