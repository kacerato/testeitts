.class public LSk/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Loh/x;

.field public b:Loh/g;

.field public c:Loh/h;


# direct methods
.method public constructor <init>(LXh/v;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iput-object v0, p0, LSk/l;->c:Loh/h;

    sget-object v0, LXh/t;->X3:Loh/x;

    iput-object v0, p0, LSk/l;->a:Loh/x;

    iput-object p1, p0, LSk/l;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(LXh/v;LQk/F;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iput-object v0, p0, LSk/l;->c:Loh/h;

    sget-object v0, LXh/t;->Y3:Loh/x;

    iput-object v0, p0, LSk/l;->a:Loh/x;

    new-instance v0, LSk/o;

    invoke-direct {v0, p1}, LSk/o;-><init>(LXh/v;)V

    invoke-virtual {v0, p2}, LSk/o;->a(LQk/F;)LSk/n;

    move-result-object p1

    invoke-virtual {p1}, LSk/n;->f()LXh/j;

    move-result-object p1

    iput-object p1, p0, LSk/l;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Lhi/q;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iput-object v0, p0, LSk/l;->c:Loh/h;

    sget-object v0, LXh/t;->Z3:Loh/x;

    iput-object v0, p0, LSk/l;->a:Loh/x;

    new-instance v0, LXh/d;

    sget-object v1, LXh/t;->n2:Loh/x;

    new-instance v2, Loh/C0;

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-direct {v2, p1}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v1, v2}, LXh/d;-><init>(Loh/x;Loh/g;)V

    iput-object v0, p0, LSk/l;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Lhi/r;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    iput-object v0, p0, LSk/l;->c:Loh/h;

    sget-object v0, LXh/t;->a4:Loh/x;

    iput-object v0, p0, LSk/l;->a:Loh/x;

    new-instance v0, LXh/d;

    sget-object v1, LXh/t;->r2:Loh/x;

    new-instance v2, Loh/C0;

    invoke-virtual {p1}, Loh/v;->getEncoded()[B

    move-result-object p1

    invoke-direct {v2, p1}, Loh/C0;-><init>([B)V

    invoke-direct {v0, v1, v2}, LXh/d;-><init>(Loh/x;Loh/g;)V

    iput-object v0, p0, LSk/l;->b:Loh/g;

    return-void
.end method

.method public constructor <init>(Lli/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lli/g;->r()Lhi/r;

    move-result-object p1

    invoke-direct {p0, p1}, LSk/l;-><init>(Lhi/r;)V

    return-void
.end method

.method public constructor <init>(Lli/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p1}, Lli/h;->x()Lhi/q;

    move-result-object p1

    invoke-direct {p0, p1}, LSk/l;-><init>(Lhi/q;)V

    return-void
.end method


# virtual methods
.method public a(Loh/x;Loh/g;)LSk/l;
    .locals 3

    iget-object v0, p0, LSk/l;->c:Loh/h;

    new-instance v1, LXh/a;

    new-instance v2, Loh/I0;

    invoke-direct {v2, p2}, Loh/I0;-><init>(Loh/g;)V

    invoke-direct {v1, p1, v2}, LXh/a;-><init>(Loh/x;Loh/G;)V

    invoke-virtual {v0, v1}, Loh/h;->a(Loh/g;)V

    return-object p0
.end method

.method public b()LSk/k;
    .locals 6

    new-instance v0, LSk/k;

    new-instance v1, LXh/C;

    iget-object v2, p0, LSk/l;->a:Loh/x;

    iget-object v3, p0, LSk/l;->b:Loh/g;

    new-instance v4, Loh/I0;

    iget-object v5, p0, LSk/l;->c:Loh/h;

    invoke-direct {v4, v5}, Loh/I0;-><init>(Loh/h;)V

    invoke-direct {v1, v2, v3, v4}, LXh/C;-><init>(Loh/x;Loh/g;Loh/G;)V

    invoke-direct {v0, v1}, LSk/k;-><init>(LXh/C;)V

    return-object v0
.end method
