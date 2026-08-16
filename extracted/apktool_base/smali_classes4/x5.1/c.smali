.class public Lx5/c;
.super Lx5/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lx5/d;-><init>(Ljava/lang/String;)V

    new-instance v0, Lx5/c$a;

    invoke-direct {v0, p0}, Lx5/c$a;-><init>(Lx5/c;)V

    iput-object v0, p0, LF7/i;->b:LF7/j;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LF7/i;->r(Z)V

    return-void
.end method


# virtual methods
.method public D(Ljava/util/List;Lx5/d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "listInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj7/b;",
            ">;",
            "Lx5/d$a;",
            ")V"
        }
    .end annotation

    return-void
.end method
