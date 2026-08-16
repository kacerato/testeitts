.class public LPi/f;
.super LPi/e;
.source "SourceFile"


# instance fields
.field public final e:[B


# direct methods
.method public constructor <init>(LPi/e;[B)V
    .locals 3

    iget-object v0, p1, LPi/e;->a:LPi/a;

    iget-object v1, p1, LPi/e;->b:LPi/c;

    iget-object v2, p1, LPi/e;->c:[B

    iget-object p1, p1, LPi/e;->d:[B

    invoke-direct {p0, v0, v1, v2, p1}, LPi/e;-><init>(LPi/a;LPi/c;[B[B)V

    iput-object p2, p0, LPi/f;->e:[B

    return-void
.end method


# virtual methods
.method public h()[B
    .locals 1

    iget-object v0, p0, LPi/f;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method
