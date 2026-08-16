.class public LLi/T;
.super LLi/L;
.source "SourceFile"


# direct methods
.method public constructor <init>(LBi/e;LBi/w;LBi/I;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LLi/L;-><init>(LBi/e;LBi/w;LBi/I;)V

    return-void
.end method

.method public constructor <init>(LBi/e;LBi/w;LBi/I;LBi/h;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, LLi/L;-><init>(LBi/e;LBi/w;LBi/I;LBi/h;)V

    return-void
.end method


# virtual methods
.method public e([B)[B
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    if-eqz p1, :cond_0

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x8

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/p;->h(I[BI)V

    :cond_0
    return-object v0
.end method
