.class public final Lsf/b$b;
.super Lpf/d;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsf/b;->c([J)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpf/d<",
        "Lnf/F0;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public final synthetic d:[J


# direct methods
.method public constructor <init>([J)V
    .locals 0

    iput-object p1, p0, Lsf/b$b;->d:[J

    invoke-direct {p0}, Lpf/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lsf/b$b;->d:[J

    invoke-static {v0}, Lnf/G0;->t([J)I

    move-result v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnf/F0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lnf/F0;

    invoke-virtual {p1}, Lnf/F0;->l0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lsf/b$b;->d(J)Z

    move-result p1

    return p1
.end method

.method public d(J)Z
    .locals 1

    iget-object v0, p0, Lsf/b$b;->d:[J

    invoke-static {v0, p1, p2}, Lnf/G0;->m([JJ)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lsf/b$b;->j(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lnf/F0;->b(J)Lnf/F0;

    move-result-object p1

    return-object p1
.end method

.method public final bridge indexOf(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Lnf/F0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lnf/F0;

    invoke-virtual {p1}, Lnf/F0;->l0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lsf/b$b;->k(J)I

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lsf/b$b;->d:[J

    invoke-static {v0}, Lnf/G0;->w([J)Z

    move-result v0

    return v0
.end method

.method public j(I)J
    .locals 2

    iget-object v0, p0, Lsf/b$b;->d:[J

    invoke-static {v0, p1}, Lnf/G0;->r([JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public k(J)I
    .locals 1

    iget-object v0, p0, Lsf/b$b;->d:[J

    invoke-static {v0, p1, p2}, Lpf/A;->Zf([JJ)I

    move-result p1

    return p1
.end method

.method public l(J)I
    .locals 1

    iget-object v0, p0, Lsf/b$b;->d:[J

    invoke-static {v0, p1, p2}, Lpf/A;->di([JJ)I

    move-result p1

    return p1
.end method

.method public final bridge lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    instance-of v0, p1, Lnf/F0;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    check-cast p1, Lnf/F0;

    invoke-virtual {p1}, Lnf/F0;->l0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lsf/b$b;->l(J)I

    move-result p1

    return p1
.end method
