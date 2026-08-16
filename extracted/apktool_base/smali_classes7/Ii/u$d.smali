.class public LIi/u$d;
.super LIi/u$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIi/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x20

    .line 1
    sget-object v1, LBi/o;->ANY:LBi/o;

    invoke-direct {p0, v0, v1}, LIi/u$d;-><init>(ILBi/o;)V

    return-void
.end method

.method public constructor <init>(ILBi/o;)V
    .locals 2

    const/16 v0, 0x80

    const/16 v1, 0xc

    .line 2
    invoke-direct {p0, v0, v1, p1, p2}, LIi/u$a;-><init>(IIILBi/o;)V

    return-void
.end method

.method public constructor <init>(LBi/o;)V
    .locals 1

    const/16 v0, 0x20

    .line 3
    invoke-direct {p0, v0, p1}, LIi/u$d;-><init>(ILBi/o;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "KangarooTwelve"

    return-object v0
.end method

.method public bridge synthetic c([BI)I
    .locals 0

    invoke-super {p0, p1, p2}, LIi/u$a;->c([BI)I

    move-result p1

    return p1
.end method

.method public bridge synthetic d(LIi/u$b;)V
    .locals 0

    invoke-super {p0, p1}, LIi/u$a;->d(LIi/u$b;)V

    return-void
.end method

.method public bridge synthetic e([BII)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, LIi/u$a;->e([BII)I

    move-result p1

    return p1
.end method

.method public bridge synthetic f()I
    .locals 1

    invoke-super {p0}, LIi/u$a;->f()I

    move-result v0

    return v0
.end method

.method public bridge synthetic h([BII)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, LIi/u$a;->h([BII)I

    move-result p1

    return p1
.end method

.method public bridge synthetic i()I
    .locals 1

    invoke-super {p0}, LIi/u$a;->i()I

    move-result v0

    return v0
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, LIi/u$a;->reset()V

    return-void
.end method

.method public bridge synthetic update(B)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, LIi/u$a;->update(B)V

    return-void
.end method

.method public bridge synthetic update([BII)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, LIi/u$a;->update([BII)V

    return-void
.end method
