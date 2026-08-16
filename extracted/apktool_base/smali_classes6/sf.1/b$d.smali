.class public final Lsf/b$d;
.super Lpf/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsf/b;->d([S)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf/d<",
        "Lnf/L0;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final synthetic d:[S


# direct methods
.method public constructor <init>([S)V
    .locals 0

    iput-object p1, p0, Lsf/b$d;->d:[S

    invoke-direct {p0}, Lpf/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lsf/b$d;->d:[S

    invoke-static {v0}, Lnf/M0;->t([S)I

    move-result v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lnf/L0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lnf/L0;

    invoke-virtual {p1}, Lnf/L0;->j0()S

    move-result p1

    invoke-virtual {p0, p1}, Lsf/b$d;->d(S)Z

    move-result p1

    return p1
.end method

.method public d(S)Z
    .locals 1

    iget-object v0, p0, Lsf/b$d;->d:[S

    invoke-static {v0, p1}, Lnf/M0;->m([SS)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lsf/b$d;->j(I)S

    move-result p1

    invoke-static {p1}, Lnf/L0;->b(S)Lnf/L0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lnf/L0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lnf/L0;

    invoke-virtual {p1}, Lnf/L0;->j0()S

    move-result p1

    invoke-virtual {p0, p1}, Lsf/b$d;->k(S)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lsf/b$d;->d:[S

    invoke-static {v0}, Lnf/M0;->w([S)Z

    move-result v0

    return v0
.end method

.method public j(I)S
    .locals 1

    iget-object v0, p0, Lsf/b$d;->d:[S

    invoke-static {v0, p1}, Lnf/M0;->r([SI)S

    move-result p1

    return p1
.end method

.method public k(S)I
    .locals 1

    iget-object v0, p0, Lsf/b$d;->d:[S

    invoke-static {v0, p1}, Lpf/A;->bg([SS)I

    move-result p1

    return p1
.end method

.method public l(S)I
    .locals 1

    iget-object v0, p0, Lsf/b$d;->d:[S

    invoke-static {v0, p1}, Lpf/A;->fi([SS)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lnf/L0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lnf/L0;

    invoke-virtual {p1}, Lnf/L0;->j0()S

    move-result p1

    invoke-virtual {p0, p1}, Lsf/b$d;->l(S)I

    move-result p1

    return p1
.end method
