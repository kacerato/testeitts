.class public LUl/g;
.super LUl/d;
.source "SourceFile"


# instance fields
.field public d:[[S

.field public e:[[S

.field public f:[S


# direct methods
.method public constructor <init>(I[[S[[S[S)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, LUl/d;-><init>(ZI)V

    iput-object p2, p0, LUl/g;->d:[[S

    iput-object p3, p0, LUl/g;->e:[[S

    iput-object p4, p0, LUl/g;->f:[S

    return-void
.end method


# virtual methods
.method public e()[[S
    .locals 1

    iget-object v0, p0, LUl/g;->d:[[S

    return-object v0
.end method

.method public f()[S
    .locals 1

    iget-object v0, p0, LUl/g;->f:[S

    return-object v0
.end method

.method public g()[[S
    .locals 1

    iget-object v0, p0, LUl/g;->e:[[S

    return-object v0
.end method
