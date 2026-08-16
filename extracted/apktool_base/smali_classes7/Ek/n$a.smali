.class public LEk/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/O;

.field public b:LFk/q0;

.field public c:LFk/q0;

.field public d:LFk/o0;

.field public e:LFk/w;

.field public f:LEk/u;

.field public g:LFk/q;

.field public h:LFk/X;

.field public i:LEk/b;

.field public j:LEk/x;

.field public k:LEk/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/n;
    .locals 13

    new-instance v12, LEk/n;

    iget-object v1, p0, LEk/n$a;->a:LFk/O;

    iget-object v2, p0, LEk/n$a;->b:LFk/q0;

    iget-object v3, p0, LEk/n$a;->c:LFk/q0;

    iget-object v4, p0, LEk/n$a;->d:LFk/o0;

    iget-object v5, p0, LEk/n$a;->e:LFk/w;

    iget-object v6, p0, LEk/n$a;->f:LEk/u;

    iget-object v7, p0, LEk/n$a;->g:LFk/q;

    iget-object v8, p0, LEk/n$a;->h:LFk/X;

    iget-object v9, p0, LEk/n$a;->i:LEk/b;

    iget-object v10, p0, LEk/n$a;->j:LEk/x;

    iget-object v11, p0, LEk/n$a;->k:LEk/g;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, LEk/n;-><init>(LFk/O;LFk/q0;LFk/q0;LFk/o0;LFk/w;LEk/u;LFk/q;LFk/X;LEk/b;LEk/x;LEk/g;)V

    return-object v12
.end method

.method public b(LEk/g;)LEk/n$a;
    .locals 0

    iput-object p1, p0, LEk/n$a;->k:LEk/g;

    return-object p0
.end method

.method public c(LFk/q;)LEk/n$a;
    .locals 0

    iput-object p1, p0, LEk/n$a;->g:LFk/q;

    return-object p0
.end method

.method public d(LFk/q0;)LEk/n$a;
    .locals 0

    iput-object p1, p0, LEk/n$a;->c:LFk/q0;

    return-object p0
.end method

.method public e(LFk/o0;)LEk/n$a;
    .locals 0

    iput-object p1, p0, LEk/n$a;->d:LFk/o0;

    return-object p0
.end method

.method public f(LFk/q0;)LEk/n$a;
    .locals 0

    iput-object p1, p0, LEk/n$a;->b:LFk/q0;

    return-object p0
.end method

.method public g(LFk/X;)LEk/n$a;
    .locals 0

    iput-object p1, p0, LEk/n$a;->h:LFk/X;

    return-object p0
.end method

.method public h(LEk/u;)LEk/n$a;
    .locals 0

    iput-object p1, p0, LEk/n$a;->f:LEk/u;

    return-object p0
.end method

.method public i(LFk/w;)LEk/n$a;
    .locals 0

    iput-object p1, p0, LEk/n$a;->e:LFk/w;

    return-object p0
.end method

.method public j(LEk/x;)LEk/n$a;
    .locals 0

    iput-object p1, p0, LEk/n$a;->j:LEk/x;

    return-object p0
.end method

.method public k(LFk/O;)LEk/n$a;
    .locals 0

    iput-object p1, p0, LEk/n$a;->a:LFk/O;

    return-object p0
.end method

.method public l(LEk/b;)LEk/n$a;
    .locals 0

    iput-object p1, p0, LEk/n$a;->i:LEk/b;

    return-object p0
.end method
