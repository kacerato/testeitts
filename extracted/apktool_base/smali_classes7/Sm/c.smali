.class public LSm/c;
.super LSm/b;
.source "SourceFile"


# instance fields
.field public final e:C

.field public f:I


# direct methods
.method public constructor <init>(LSm/b;LUm/w;)V
    .locals 0

    invoke-direct {p0, p1}, LSm/b;-><init>(LSm/b;)V

    invoke-virtual {p2}, LUm/w;->s()C

    move-result p1

    iput-char p1, p0, LSm/c;->e:C

    invoke-virtual {p2}, LUm/w;->t()I

    move-result p1

    iput p1, p0, LSm/c;->f:I

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    iget v0, p0, LSm/c;->f:I

    return v0
.end method

.method public d()C
    .locals 1

    iget-char v0, p0, LSm/c;->e:C

    return v0
.end method

.method public e()V
    .locals 1

    iget v0, p0, LSm/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LSm/c;->f:I

    return-void
.end method
