.class public LLi/N$f;
.super LLi/N$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LLi/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic l:LLi/N;


# direct methods
.method public constructor <init>(LLi/N;)V
    .locals 1

    iput-object p1, p0, LLi/N$f;->l:LLi/N;

    invoke-direct {p0, p1}, LLi/N$e;-><init>(LLi/N;)V

    const/4 p1, 0x4

    new-array v0, p1, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, LLi/N$e;->b:[S

    new-array v0, p1, [S

    fill-array-data v0, :array_1

    iput-object v0, p0, LLi/N$e;->c:[S

    new-array p1, p1, [S

    fill-array-data p1, :array_2

    iput-object p1, p0, LLi/N$e;->d:[S

    return-void

    :array_0
    .array-data 2
        -0x7fffs
        0x190s
        0xc14s
        0xc0cs
    .end array-data

    :array_1
    .array-data 2
        -0x7ffes
        0x190s
        0xc14s
        0xc0cs
    .end array-data

    :array_2
    .array-data 2
        -0x7ffds
        0x190s
        0xc14s
        0xc0cs
    .end array-data
.end method


# virtual methods
.method public d([S[S[S)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LLi/N$e;->l([S[S[S)V

    return-void
.end method

.method public e([S[S[S)V
    .locals 1

    invoke-virtual {p0, p1, p3}, LLi/N$e;->k([S[S)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, LLi/N$e;->r(I[S[S[S)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p1, p3}, LLi/N$e;->r(I[S[S[S)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2, p3}, LLi/N$e;->r(I[S[S[S)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2, p1, p3}, LLi/N$e;->r(I[S[S[S)V

    invoke-virtual {p0, p1, p2, p3}, LLi/N$e;->n([S[S[S)V

    return-void
.end method

.method public f([S[S[S)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LLi/N$e;->l([S[S[S)V

    return-void
.end method
