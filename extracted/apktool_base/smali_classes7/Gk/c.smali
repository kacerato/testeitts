.class public LGk/c;
.super Loh/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LGk/c$a;
    }
.end annotation


# instance fields
.field public final b:LGk/b;

.field public final c:LFk/S;

.field public final d:LGk/b;


# direct methods
.method public constructor <init>(LGk/b;LFk/S;LGk/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LGk/c;->b:LGk/b;

    iput-object p2, p0, LGk/c;->c:LFk/S;

    iput-object p3, p0, LGk/c;->d:LGk/b;

    return-void
.end method

.method public constructor <init>(Loh/E;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    invoke-virtual {p1}, Loh/E;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LGk/b;->z(Ljava/lang/Object;)LGk/b;

    move-result-object v0

    iput-object v0, p0, LGk/c;->b:LGk/b;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, LFk/S;->v(Ljava/lang/Object;)LFk/S;

    move-result-object v0

    iput-object v0, p0, LGk/c;->c:LFk/S;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Loh/E;->I(I)Loh/g;

    move-result-object p1

    invoke-static {p1}, LGk/b;->z(Ljava/lang/Object;)LGk/b;

    move-result-object p1

    iput-object p1, p0, LGk/c;->d:LGk/b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "expected sequence size of 3"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static u()LGk/c$a;
    .locals 1

    new-instance v0, LGk/c$a;

    invoke-direct {v0}, LGk/c$a;-><init>()V

    return-object v0
.end method

.method public static y(Ljava/lang/Object;)LGk/c;
    .locals 1

    instance-of v0, p0, LGk/c;

    if-eqz v0, :cond_0

    check-cast p0, LGk/c;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LGk/c;

    invoke-static {p0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object p0

    invoke-direct {v0, p0}, LGk/c;-><init>(Loh/E;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 6

    new-instance v0, Loh/G0;

    iget-object v1, p0, LGk/c;->b:LGk/b;

    iget-object v2, p0, LGk/c;->c:LFk/S;

    iget-object v3, p0, LGk/c;->d:LGk/b;

    const/4 v4, 0x3

    new-array v4, v4, [Loh/g;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    invoke-direct {v0, v4}, Loh/G0;-><init>([Loh/g;)V

    return-object v0
.end method

.method public v()LGk/b;
    .locals 1

    iget-object v0, p0, LGk/c;->d:LGk/b;

    return-object v0
.end method

.method public x()LFk/S;
    .locals 1

    iget-object v0, p0, LGk/c;->c:LFk/S;

    return-object v0
.end method

.method public z()LGk/b;
    .locals 1

    iget-object v0, p0, LGk/c;->b:LGk/b;

    return-object v0
.end method
