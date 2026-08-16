.class public LGk/e;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGk/e$a;
    }
.end annotation


# instance fields
.field public final b:LFk/w0;

.field public final c:LFk/p0;

.field public final d:LEk/e;

.field public final e:LEk/K;

.field public final f:LGk/a;


# direct methods
.method public constructor <init>(LFk/w0;LFk/p0;LEk/e;LEk/K;LGk/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LGk/e;->b:LFk/w0;

    iput-object p2, p0, LGk/e;->c:LFk/p0;

    iput-object p3, p0, LGk/e;->d:LEk/e;

    iput-object p4, p0, LGk/e;->e:LEk/K;

    iput-object p5, p0, LGk/e;->f:LGk/a;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/w0;->w(Ljava/lang/Object;)LFk/w0;

    move-result-object v0

    iput-object v0, p0, LGk/e;->b:LFk/w0;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/p0;->x(Ljava/lang/Object;)LFk/p0;

    move-result-object v0

    iput-object v0, p0, LGk/e;->c:LFk/p0;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LEk/e;->N(Ljava/lang/Object;)LEk/e;

    move-result-object v0

    iput-object v0, p0, LGk/e;->d:LEk/e;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LEk/K;->R(Ljava/lang/Object;)LEk/K;

    move-result-object v0

    iput-object v0, p0, LGk/e;->e:LEk/K;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object p1

    const-class v0, LGk/a;

    invoke-virtual {p1, v0}, Lyk/i;->x(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LGk/a;

    iput-object p1, p0, LGk/e;->f:LGk/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 5"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LGk/e$a;
    .locals 1

    new-instance v0, LGk/e$a;

    invoke-direct {v0}, LGk/e$a;-><init>()V

    return-object v0
.end method

.method public static y(Ljava/lang/Object;)LGk/e;
    .locals 1

    instance-of v0, p0, LGk/e;

    if-eqz v0, :cond_0

    check-cast p0, LGk/e;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LGk/e;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LGk/e;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public A()LEk/e;
    .locals 1

    iget-object v0, p0, LGk/e;->d:LEk/e;

    return-object v0
.end method

.method public B()LFk/w0;
    .locals 1

    iget-object v0, p0, LGk/e;->b:LFk/w0;

    return-object v0
.end method

.method public r()Loh/B;
    .locals 7

    iget-object v0, p0, LGk/e;->b:LFk/w0;

    iget-object v1, p0, LGk/e;->c:LFk/p0;

    iget-object v2, p0, LGk/e;->d:LEk/e;

    iget-object v3, p0, LGk/e;->e:LEk/K;

    iget-object v4, p0, LGk/e;->f:LGk/a;

    invoke-static {v4}, Lyk/i;->w(Ljava/lang/Object;)Lyk/i;

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [Loh/g;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    invoke-static {v5}, Lzk/a;->e([Loh/g;)Loh/E;

    move-result-object v0

    return-object v0
.end method

.method public v()LGk/a;
    .locals 1

    iget-object v0, p0, LGk/e;->f:LGk/a;

    return-object v0
.end method

.method public x()LFk/p0;
    .locals 1

    iget-object v0, p0, LGk/e;->c:LFk/p0;

    return-object v0
.end method

.method public z()LEk/K;
    .locals 1

    iget-object v0, p0, LGk/e;->e:LEk/K;

    return-object v0
.end method
