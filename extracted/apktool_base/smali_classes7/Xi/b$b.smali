.class public LXi/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LXi/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:[B

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final h:I

.field public i:LBi/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, LXi/b$b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LBi/M;->UTF8:LBi/M;

    iput-object v0, p0, LXi/b$b;->i:LBi/i;

    iput p1, p0, LXi/b$b;->h:I

    const/4 p1, 0x1

    iput p1, p0, LXi/b$b;->f:I

    const/16 p1, 0x1000

    iput p1, p0, LXi/b$b;->e:I

    const/4 p1, 0x3

    iput p1, p0, LXi/b$b;->d:I

    const/16 p1, 0x13

    iput p1, p0, LXi/b$b;->g:I

    return-void
.end method


# virtual methods
.method public a()LXi/b;
    .locals 12

    new-instance v11, LXi/b;

    iget v1, p0, LXi/b$b;->h:I

    iget-object v2, p0, LXi/b$b;->a:[B

    iget-object v3, p0, LXi/b$b;->b:[B

    iget-object v4, p0, LXi/b$b;->c:[B

    iget v5, p0, LXi/b$b;->d:I

    iget v6, p0, LXi/b$b;->e:I

    iget v7, p0, LXi/b$b;->f:I

    iget v8, p0, LXi/b$b;->g:I

    iget-object v9, p0, LXi/b$b;->i:LBi/i;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, LXi/b;-><init>(I[B[B[BIIIILBi/i;LXi/b$a;)V

    return-object v11
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, LXi/b$b;->a:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->n([B)V

    iget-object v0, p0, LXi/b$b;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->n([B)V

    iget-object v0, p0, LXi/b$b;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->n([B)V

    return-void
.end method

.method public c([B)LXi/b$b;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXi/b$b;->c:[B

    return-object p0
.end method

.method public d(LBi/i;)LXi/b$b;
    .locals 0

    iput-object p1, p0, LXi/b$b;->i:LBi/i;

    return-object p0
.end method

.method public e(I)LXi/b$b;
    .locals 0

    iput p1, p0, LXi/b$b;->d:I

    return-object p0
.end method

.method public f(I)LXi/b$b;
    .locals 0

    iput p1, p0, LXi/b$b;->e:I

    return-object p0
.end method

.method public g(I)LXi/b$b;
    .locals 1

    const/4 v0, 0x1

    shl-int p1, v0, p1

    iput p1, p0, LXi/b$b;->e:I

    return-object p0
.end method

.method public h(I)LXi/b$b;
    .locals 0

    iput p1, p0, LXi/b$b;->f:I

    return-object p0
.end method

.method public i([B)LXi/b$b;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXi/b$b;->a:[B

    return-object p0
.end method

.method public j([B)LXi/b$b;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXi/b$b;->b:[B

    return-object p0
.end method

.method public k(I)LXi/b$b;
    .locals 0

    iput p1, p0, LXi/b$b;->g:I

    return-object p0
.end method
