.class public LEk/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/w0;

.field public b:LEk/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/h;
    .locals 3

    new-instance v0, LEk/h;

    iget-object v1, p0, LEk/q$a;->a:LFk/w0;

    iget-object v2, p0, LEk/q$a;->b:LEk/p;

    invoke-direct {v0, v1, v2}, LEk/h;-><init>(LFk/w0;LEk/p;)V

    return-object v0
.end method

.method public b()LCk/b;
    .locals 3

    new-instance v0, LCk/b;

    iget-object v1, p0, LEk/q$a;->a:LFk/w0;

    iget-object v2, p0, LEk/q$a;->b:LEk/p;

    invoke-direct {v0, v1, v2}, LCk/b;-><init>(LFk/w0;LEk/p;)V

    return-object v0
.end method

.method public c()LCk/c;
    .locals 2

    new-instance v0, LCk/c;

    iget-object v1, p0, LEk/q$a;->b:LEk/p;

    invoke-direct {v0, v1}, LCk/c;-><init>(LEk/p;)V

    return-object v0
.end method

.method public d()LCk/d;
    .locals 2

    new-instance v0, LCk/d;

    iget-object v1, p0, LEk/q$a;->b:LEk/p;

    invoke-direct {v0, v1}, LCk/d;-><init>(LEk/p;)V

    return-object v0
.end method

.method public e()LCk/e;
    .locals 2

    new-instance v0, LCk/e;

    iget-object v1, p0, LEk/q$a;->b:LEk/p;

    invoke-direct {v0, v1}, LCk/e;-><init>(LEk/p;)V

    return-object v0
.end method

.method public f()LCk/f;
    .locals 2

    new-instance v0, LCk/f;

    iget-object v1, p0, LEk/q$a;->b:LEk/p;

    invoke-direct {v0, v1}, LCk/f;-><init>(LEk/p;)V

    return-object v0
.end method

.method public g()LCk/g;
    .locals 2

    new-instance v0, LCk/g;

    iget-object v1, p0, LEk/q$a;->b:LEk/p;

    invoke-direct {v0, v1}, LCk/g;-><init>(LEk/p;)V

    return-object v0
.end method

.method public h()LCk/h;
    .locals 2

    new-instance v0, LCk/h;

    iget-object v1, p0, LEk/q$a;->b:LEk/p;

    invoke-direct {v0, v1}, LCk/h;-><init>(LEk/p;)V

    return-object v0
.end method

.method public i()LCk/j;
    .locals 2

    new-instance v0, LCk/j;

    iget-object v1, p0, LEk/q$a;->b:LEk/p;

    invoke-direct {v0, v1}, LCk/j;-><init>(LEk/p;)V

    return-object v0
.end method

.method public j()LEk/q;
    .locals 3

    new-instance v0, LEk/q;

    iget-object v1, p0, LEk/q$a;->a:LFk/w0;

    iget-object v2, p0, LEk/q$a;->b:LEk/p;

    invoke-direct {v0, v1, v2}, LEk/q;-><init>(LFk/w0;LEk/p;)V

    return-object v0
.end method

.method public k()LAk/H;
    .locals 2

    new-instance v0, LAk/H;

    iget-object v1, p0, LEk/q$a;->b:LEk/p;

    invoke-direct {v0, v1}, LAk/H;-><init>(LEk/p;)V

    return-object v0
.end method

.method public l(LEk/p;)LEk/q$a;
    .locals 0

    iput-object p1, p0, LEk/q$a;->b:LEk/p;

    return-object p0
.end method

.method public m(LFk/w0;)LEk/q$a;
    .locals 0

    iput-object p1, p0, LEk/q$a;->a:LFk/w0;

    return-object p0
.end method
