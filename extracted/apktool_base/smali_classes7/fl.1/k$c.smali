.class public Lfl/k$c;
.super Lfl/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:[J

.field public b:[J

.field public c:[J

.field public d:[J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lfl/k;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [J

    iput-object v1, p0, Lfl/k$c;->a:[J

    new-array v0, v0, [J

    iput-object v0, p0, Lfl/k$c;->b:[J

    const/16 v0, 0x11

    new-array v0, v0, [J

    iput-object v0, p0, Lfl/k$c;->c:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lfl/k$c;->d:[J

    return-void
.end method


# virtual methods
.method public H(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 8

    iget-object v0, p1, Lfl/l;->a:[J

    iget-object v1, p2, Lfl/l;->a:[J

    iget v2, p2, Lfl/l;->b:I

    iget-object v3, p3, Lfl/l;->a:[J

    iget v4, p3, Lfl/l;->b:I

    iget-object v5, p0, Lfl/k$c;->a:[J

    iget-object v6, p0, Lfl/k$c;->b:[J

    iget-object v7, p0, Lfl/k$c;->c:[J

    invoke-static/range {v0 .. v7}, Lfl/k;->k([J[JI[JI[J[J[J)V

    return-void
.end method

.method public I(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 9

    iget-object v0, p1, Lfl/l;->a:[J

    iget-object v1, p2, Lfl/l;->a:[J

    iget v2, p2, Lfl/l;->b:I

    iget-object v3, p3, Lfl/l;->a:[J

    iget v4, p3, Lfl/l;->b:I

    iget-object v5, p0, Lfl/k$c;->a:[J

    iget-object v6, p0, Lfl/k$c;->b:[J

    iget-object v7, p0, Lfl/k$c;->c:[J

    iget-object v8, p0, Lfl/k$c;->d:[J

    invoke-static/range {v0 .. v8}, Lfl/k;->l([J[JI[JI[J[J[J[J)V

    return-void
.end method

.method public J([J[JI)V
    .locals 3

    add-int/lit8 v0, p3, 0x8

    aget-wide v0, p2, v0

    invoke-static {v0, v1}, Lfl/k;->n(J)J

    move-result-wide v0

    const/16 v2, 0x10

    aput-wide v0, p1, v2

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    invoke-static {p1, v1, p2, v0}, Lfl/k;->o([JI[JI)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lfl/k;->o([JI[JI)V

    return-void
.end method
