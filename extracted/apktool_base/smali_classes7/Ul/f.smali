.class public LUl/f;
.super LUl/d;
.source "SourceFile"


# instance fields
.field public d:[[S

.field public e:[S

.field public f:[[S

.field public g:[S

.field public h:[I

.field public i:[LUl/a;


# direct methods
.method public constructor <init>([[S[S[[S[S[I[LUl/a;)V
    .locals 3

    array-length v0, p5

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget v0, p5, v0

    const/4 v2, 0x0

    aget v2, p5, v2

    sub-int/2addr v0, v2

    invoke-direct {p0, v1, v0}, LUl/d;-><init>(ZI)V

    iput-object p1, p0, LUl/f;->d:[[S

    iput-object p2, p0, LUl/f;->e:[S

    iput-object p3, p0, LUl/f;->f:[[S

    iput-object p4, p0, LUl/f;->g:[S

    iput-object p5, p0, LUl/f;->h:[I

    iput-object p6, p0, LUl/f;->i:[LUl/a;

    return-void
.end method


# virtual methods
.method public e()[S
    .locals 1

    iget-object v0, p0, LUl/f;->e:[S

    return-object v0
.end method

.method public f()[S
    .locals 1

    iget-object v0, p0, LUl/f;->g:[S

    return-object v0
.end method

.method public g()[[S
    .locals 1

    iget-object v0, p0, LUl/f;->d:[[S

    return-object v0
.end method

.method public h()[[S
    .locals 1

    iget-object v0, p0, LUl/f;->f:[[S

    return-object v0
.end method

.method public i()[LUl/a;
    .locals 1

    iget-object v0, p0, LUl/f;->i:[LUl/a;

    return-object v0
.end method

.method public j()[I
    .locals 1

    iget-object v0, p0, LUl/f;->h:[I

    return-object v0
.end method
