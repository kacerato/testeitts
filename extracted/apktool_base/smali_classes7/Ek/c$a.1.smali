.class public LEk/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/w0;

.field public b:LEk/e;

.field public c:LEk/s;

.field public d:LEk/K;

.field public e:LFk/j0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/b;
    .locals 7

    new-instance v6, LEk/b;

    iget-object v1, p0, LEk/c$a;->a:LFk/w0;

    iget-object v2, p0, LEk/c$a;->b:LEk/e;

    iget-object v3, p0, LEk/c$a;->c:LEk/s;

    iget-object v4, p0, LEk/c$a;->d:LEk/K;

    iget-object v5, p0, LEk/c$a;->e:LFk/j0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LEk/b;-><init>(LFk/w0;LEk/e;LEk/s;LEk/K;LFk/j0;)V

    return-object v6
.end method

.method public b()LEk/c;
    .locals 7

    new-instance v6, LEk/c;

    iget-object v1, p0, LEk/c$a;->a:LFk/w0;

    iget-object v2, p0, LEk/c$a;->b:LEk/e;

    iget-object v3, p0, LEk/c$a;->c:LEk/s;

    iget-object v4, p0, LEk/c$a;->d:LEk/K;

    iget-object v5, p0, LEk/c$a;->e:LFk/j0;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, LEk/c;-><init>(LFk/w0;LEk/e;LEk/s;LEk/K;LFk/j0;)V

    return-object v6
.end method

.method public c()LEk/c;
    .locals 5

    new-instance v0, LCk/a;

    iget-object v1, p0, LEk/c$a;->a:LFk/w0;

    iget-object v2, p0, LEk/c$a;->c:LEk/s;

    iget-object v3, p0, LEk/c$a;->d:LEk/K;

    iget-object v4, p0, LEk/c$a;->e:LFk/j0;

    invoke-direct {v0, v1, v2, v3, v4}, LCk/a;-><init>(LFk/w0;LEk/s;LEk/K;LFk/j0;)V

    return-object v0
.end method

.method public d()LEk/l;
    .locals 5

    new-instance v0, LEk/l;

    iget-object v1, p0, LEk/c$a;->a:LFk/w0;

    iget-object v2, p0, LEk/c$a;->c:LEk/s;

    iget-object v3, p0, LEk/c$a;->d:LEk/K;

    iget-object v4, p0, LEk/c$a;->e:LFk/j0;

    invoke-direct {v0, v1, v2, v3, v4}, LEk/l;-><init>(LFk/w0;LEk/s;LEk/K;LFk/j0;)V

    return-object v0
.end method

.method public e()LEk/r;
    .locals 5

    new-instance v0, LEk/r;

    iget-object v1, p0, LEk/c$a;->a:LFk/w0;

    iget-object v2, p0, LEk/c$a;->c:LEk/s;

    iget-object v3, p0, LEk/c$a;->d:LEk/K;

    iget-object v4, p0, LEk/c$a;->e:LFk/j0;

    invoke-direct {v0, v1, v2, v3, v4}, LEk/r;-><init>(LFk/w0;LEk/s;LEk/K;LFk/j0;)V

    return-object v0
.end method

.method public f(LEk/s;)LEk/c$a;
    .locals 0

    iput-object p1, p0, LEk/c$a;->c:LEk/s;

    return-object p0
.end method

.method public g(LFk/j0;)LEk/c$a;
    .locals 0

    iput-object p1, p0, LEk/c$a;->e:LFk/j0;

    return-object p0
.end method

.method public h(LEk/K;)LEk/c$a;
    .locals 0

    iput-object p1, p0, LEk/c$a;->d:LEk/K;

    return-object p0
.end method

.method public i(LEk/e;)LEk/c$a;
    .locals 0

    iput-object p1, p0, LEk/c$a;->b:LEk/e;

    return-object p0
.end method

.method public j(LFk/w0;)LEk/c$a;
    .locals 0

    iput-object p1, p0, LEk/c$a;->a:LFk/w0;

    return-object p0
.end method
