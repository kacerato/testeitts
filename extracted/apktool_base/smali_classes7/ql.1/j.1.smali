.class public final Lql/j;
.super Lql/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lql/j$b;
    }
.end annotation


# static fields
.field public static final h:I


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lql/j$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lql/r;-><init>(Lql/r$a;)V

    invoke-static {p1}, Lql/j$b;->j(Lql/j$b;)I

    move-result v0

    iput v0, p0, Lql/j;->e:I

    invoke-static {p1}, Lql/j$b;->k(Lql/j$b;)I

    move-result v0

    iput v0, p0, Lql/j;->f:I

    invoke-static {p1}, Lql/j$b;->l(Lql/j$b;)I

    move-result p1

    iput p1, p0, Lql/j;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lql/j$b;Lql/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lql/j;-><init>(Lql/j$b;)V

    return-void
.end method


# virtual methods
.method public e()[B
    .locals 3

    invoke-super {p0}, Lql/r;->e()[B

    move-result-object v0

    iget v1, p0, Lql/j;->e:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v1, p0, Lql/j;->f:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/p;->h(I[BI)V

    iget v1, p0, Lql/j;->g:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/p;->h(I[BI)V

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lql/j;->f:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lql/j;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lql/j;->e:I

    return v0
.end method
