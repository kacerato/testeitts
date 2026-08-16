.class public LGk/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGk/e;
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

.field public e:LGk/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LGk/e;
    .locals 7

    new-instance v6, LGk/e;

    iget-object v1, p0, LGk/e$a;->a:LFk/w0;

    iget-object v2, p0, LGk/e$a;->b:LFk/p0;

    iget-object v3, p0, LGk/e$a;->c:LEk/e;

    iget-object v4, p0, LGk/e$a;->d:LEk/K;

    iget-object v5, p0, LGk/e$a;->e:LGk/a;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LGk/e;-><init>(LFk/w0;LFk/p0;LEk/e;LEk/K;LGk/a;)V

    return-object v6
.end method

.method public b(LGk/a;)LGk/e$a;
    .locals 0

    iput-object p1, p0, LGk/e$a;->e:LGk/a;

    return-object p0
.end method

.method public c(LFk/p0;)LGk/e$a;
    .locals 0

    iput-object p1, p0, LGk/e$a;->b:LFk/p0;

    return-object p0
.end method

.method public d(LEk/K;)LGk/e$a;
    .locals 0

    iput-object p1, p0, LGk/e$a;->d:LEk/K;

    return-object p0
.end method

.method public e(LEk/e;)LGk/e$a;
    .locals 0

    iput-object p1, p0, LGk/e$a;->c:LEk/e;

    return-object p0
.end method

.method public f(LFk/w0;)LGk/e$a;
    .locals 0

    iput-object p1, p0, LGk/e$a;->a:LFk/w0;

    return-object p0
.end method
