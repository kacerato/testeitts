.class public LXi/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public b:[B

.field public c:[B

.field public d:LXi/o0;

.field public e:I


# direct methods
.method public constructor <init>(LXi/o0;I[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, LXi/a;-><init>(LXi/o0;I[B[B)V

    return-void
.end method

.method public constructor <init>(LXi/o0;I[B[B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LXi/a;->d:LXi/o0;

    invoke-static {p3}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXi/a;->c:[B

    iput p2, p0, LXi/a;->e:I

    invoke-static {p4}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LXi/a;->b:[B

    return-void
.end method


# virtual methods
.method public a()[B
    .locals 1

    iget-object v0, p0, LXi/a;->b:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public b()LXi/o0;
    .locals 1

    iget-object v0, p0, LXi/a;->d:LXi/o0;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LXi/a;->e:I

    return v0
.end method

.method public d()[B
    .locals 1

    iget-object v0, p0, LXi/a;->c:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
