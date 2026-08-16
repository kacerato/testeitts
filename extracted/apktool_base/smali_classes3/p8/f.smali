.class public Lp8/f;
.super LJ4/e;
.source "SourceFile"


# instance fields
.field public final b:LJAVARuntime/TerminalCLIExtension;


# direct methods
.method public constructor <init>(LJAVARuntime/TerminalCLIExtension;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cliExtension"
        }
    .end annotation

    invoke-direct {p0}, LJ4/e;-><init>()V

    invoke-virtual {p1, p0}, LJAVARuntime/TerminalCLIExtension;->setInstance(Lp8/f;)V

    iput-object p1, p0, Lp8/f;->b:LJAVARuntime/TerminalCLIExtension;

    return-void
.end method

.method public static synthetic o(Lp8/f;)LJAVARuntime/TerminalCLIExtension;
    .locals 0

    iget-object p0, p0, Lp8/f;->b:LJAVARuntime/TerminalCLIExtension;

    return-object p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Lp8/f$d;

    invoke-direct {v1, p0, v0}, Lp8/f$d;-><init>(Lp8/f;[Ljava/lang/String;)V

    invoke-static {v1}, Ld8/m;->d(Lo8/d;)Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Lp8/f$c;

    invoke-direct {v1, p0, v0}, Lp8/f$c;-><init>(Lp8/f;[Ljava/lang/String;)V

    invoke-static {v1}, Ld8/m;->d(Lo8/d;)Z

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "command"
        }
    .end annotation

    invoke-super {p0, p1}, LJ4/e;->m(Ljava/lang/String;)V

    new-instance v0, Lp8/f$b;

    invoke-direct {v0, p0, p1}, Lp8/f$b;-><init>(Lp8/f;Ljava/lang/String;)V

    invoke-static {v0}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method

.method public n([Ljava/lang/String;LJ4/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "args",
            "terminal"
        }
    .end annotation

    invoke-super {p0, p1, p2}, LJ4/e;->n([Ljava/lang/String;LJ4/d;)V

    new-instance p2, Lp8/f$a;

    invoke-direct {p2, p0, p1}, Lp8/f$a;-><init>(Lp8/f;[Ljava/lang/String;)V

    invoke-static {p2}, Ld8/m;->d(Lo8/d;)Z

    return-void
.end method
