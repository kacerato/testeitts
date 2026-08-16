.class public LSe/q;
.super LBe/J;
.source "SourceFile"

# interfaces
.implements LDe/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSe/q$g;,
        LSe/q$e;,
        LSe/q$a;,
        LSe/q$d;,
        LSe/q$b;,
        LSe/q$c;,
        LSe/q$f;
    }
.end annotation


# static fields
.field public static final f:LDe/c;

.field public static final g:LDe/c;


# instance fields
.field public final c:LBe/J;

.field public final d:LZe/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LZe/c<",
            "LBe/l<",
            "LBe/c;",
            ">;>;"
        }
    .end annotation
.end field

.field public e:LDe/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LSe/q$g;

    invoke-direct {v0}, LSe/q$g;-><init>()V

    sput-object v0, LSe/q;->f:LDe/c;

    invoke-static {}, LDe/d;->a()LDe/c;

    move-result-object v0

    sput-object v0, LSe/q;->g:LDe/c;

    return-void
.end method

.method public constructor <init>(LFe/o;LBe/J;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LFe/o<",
            "LBe/l<",
            "LBe/l<",
            "LBe/c;",
            ">;>;",
            "LBe/c;",
            ">;",
            "LBe/J;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, LBe/J;-><init>()V

    iput-object p2, p0, LSe/q;->c:LBe/J;

    invoke-static {}, LZe/h;->U8()LZe/h;

    move-result-object p2

    invoke-virtual {p2}, LZe/c;->S8()LZe/c;

    move-result-object p2

    iput-object p2, p0, LSe/q;->d:LZe/c;

    :try_start_0
    invoke-interface {p1, p2}, LFe/o;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LBe/c;

    invoke-virtual {p1}, LBe/c;->H0()LDe/c;

    move-result-object p1

    iput-object p1, p0, LSe/q;->e:LDe/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lio/reactivex/internal/util/ExceptionHelper;->f(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public c()LBe/J$c;
    .locals 4
    .annotation build LCe/f;
    .end annotation

    iget-object v0, p0, LSe/q;->c:LBe/J;

    invoke-virtual {v0}, LBe/J;->c()LBe/J$c;

    move-result-object v0

    invoke-static {}, LZe/h;->U8()LZe/h;

    move-result-object v1

    invoke-virtual {v1}, LZe/c;->S8()LZe/c;

    move-result-object v1

    new-instance v2, LSe/q$a;

    invoke-direct {v2, v0}, LSe/q$a;-><init>(LBe/J$c;)V

    invoke-virtual {v1, v2}, LBe/l;->M3(LFe/o;)LBe/l;

    move-result-object v2

    new-instance v3, LSe/q$e;

    invoke-direct {v3, v1, v0}, LSe/q$e;-><init>(LZe/c;LBe/J$c;)V

    iget-object v0, p0, LSe/q;->d:LZe/c;

    invoke-interface {v0, v2}, Lhn/c;->h(Ljava/lang/Object;)V

    return-object v3
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, LSe/q;->e:LDe/c;

    invoke-interface {v0}, LDe/c;->d()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, LSe/q;->e:LDe/c;

    invoke-interface {v0}, LDe/c;->dispose()V

    return-void
.end method
