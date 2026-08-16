.class public LGk/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/w0;

.field public b:LFk/p0;

.field public c:LEk/e;

.field public d:LEk/K;

.field public e:Loh/z0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LGk/d;
    .locals 7

    new-instance v6, LGk/d;

    iget-object v1, p0, LGk/d$a;->a:LFk/w0;

    iget-object v2, p0, LGk/d$a;->b:LFk/p0;

    iget-object v3, p0, LGk/d$a;->c:LEk/e;

    iget-object v4, p0, LGk/d$a;->d:LEk/K;

    iget-object v5, p0, LGk/d$a;->e:Loh/z0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LGk/d;-><init>(LFk/w0;LFk/p0;LEk/e;LEk/K;Loh/q;)V

    return-object v6
.end method

.method public b(Ljava/lang/String;)LGk/d$a;
    .locals 1

    new-instance v0, Loh/z0;

    invoke-direct {v0, p1}, Loh/z0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LGk/d$a;->e:Loh/z0;

    return-object p0
.end method

.method public c(Loh/z0;)LGk/d$a;
    .locals 0

    iput-object p1, p0, LGk/d$a;->e:Loh/z0;

    return-object p0
.end method

.method public d(LFk/p0;)LGk/d$a;
    .locals 0

    iput-object p1, p0, LGk/d$a;->b:LFk/p0;

    return-object p0
.end method

.method public e(LEk/K;)LGk/d$a;
    .locals 0

    iput-object p1, p0, LGk/d$a;->d:LEk/K;

    return-object p0
.end method

.method public f(LEk/e;)LGk/d$a;
    .locals 0

    iput-object p1, p0, LGk/d$a;->c:LEk/e;

    return-object p0
.end method

.method public g(LFk/w0;)LGk/d$a;
    .locals 0

    iput-object p1, p0, LGk/d$a;->a:LFk/w0;

    return-object p0
.end method
