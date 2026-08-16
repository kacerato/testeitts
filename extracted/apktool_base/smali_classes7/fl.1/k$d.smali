.class public Lfl/k$d;
.super Lfl/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lfl/k;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lfl/k$d;->a:[J

    return-void
.end method


# virtual methods
.method public H(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 6

    iget-object v0, p1, Lfl/l;->a:[J

    iget-object v2, p2, Lfl/l;->a:[J

    iget v3, p2, Lfl/l;->b:I

    iget-object v4, p3, Lfl/l;->a:[J

    iget v5, p3, Lfl/l;->b:I

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lfl/k;->x([JI[JI[JI)V

    return-void
.end method

.method public I(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 7

    iget-object v0, p1, Lfl/l;->a:[J

    iget v1, p1, Lfl/l;->b:I

    iget-object v2, p2, Lfl/l;->a:[J

    iget v3, p2, Lfl/l;->b:I

    iget-object v4, p3, Lfl/l;->a:[J

    iget v5, p3, Lfl/l;->b:I

    iget-object v6, p0, Lfl/k$d;->a:[J

    invoke-static/range {v0 .. v6}, Lfl/k;->y([JI[JI[JI[J)V

    return-void
.end method

.method public J([J[JI)V
    .locals 3

    add-int/lit8 v0, p3, 0x2

    aget-wide v0, p2, v0

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lfl/k;->i([JIJ)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lfl/k;->j([JI[JI)V

    return-void
.end method
