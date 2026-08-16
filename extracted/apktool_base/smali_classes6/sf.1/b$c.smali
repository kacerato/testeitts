.class public final Lsf/b$c;
.super Lpf/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsf/b;->b([B)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf/d<",
        "Lnf/x0;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final synthetic d:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    iput-object p1, p0, Lsf/b$c;->d:[B

    invoke-direct {p0}, Lpf/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lsf/b$c;->d:[B

    invoke-static {v0}, Lnf/y0;->t([B)I

    move-result v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnf/x0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lnf/x0;

    invoke-virtual {p1}, Lnf/x0;->j0()B

    move-result p1

    invoke-virtual {p0, p1}, Lsf/b$c;->d(B)Z

    move-result p1

    return p1
.end method

.method public d(B)Z
    .locals 1

    iget-object v0, p0, Lsf/b$c;->d:[B

    invoke-static {v0, p1}, Lnf/y0;->m([BB)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lsf/b$c;->j(I)B

    move-result p1

    invoke-static {p1}, Lnf/x0;->b(B)Lnf/x0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lnf/x0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lnf/x0;

    invoke-virtual {p1}, Lnf/x0;->j0()B

    move-result p1

    invoke-virtual {p0, p1}, Lsf/b$c;->k(B)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lsf/b$c;->d:[B

    invoke-static {v0}, Lnf/y0;->w([B)Z

    move-result v0

    return v0
.end method

.method public j(I)B
    .locals 1

    iget-object v0, p0, Lsf/b$c;->d:[B

    invoke-static {v0, p1}, Lnf/y0;->r([BI)B

    move-result p1

    return p1
.end method

.method public k(B)I
    .locals 1

    iget-object v0, p0, Lsf/b$c;->d:[B

    invoke-static {v0, p1}, Lpf/A;->Uf([BB)I

    move-result p1

    return p1
.end method

.method public l(B)I
    .locals 1

    iget-object v0, p0, Lsf/b$c;->d:[B

    invoke-static {v0, p1}, Lpf/A;->Yh([BB)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lnf/x0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lnf/x0;

    invoke-virtual {p1}, Lnf/x0;->j0()B

    move-result p1

    invoke-virtual {p0, p1}, Lsf/b$c;->l(B)I

    move-result p1

    return p1
.end method
