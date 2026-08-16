.class public Lfl/k$b;
.super Lfl/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:[J

.field public b:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lfl/k;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [J

    iput-object v0, p0, Lfl/k$b;->a:[J

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lfl/k$b;->b:[J

    return-void
.end method


# virtual methods
.method public H(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 6

    iget-object v0, p1, Lfl/l;->a:[J

    iget-object v1, p2, Lfl/l;->a:[J

    iget v2, p2, Lfl/l;->b:I

    iget-object v3, p3, Lfl/l;->a:[J

    iget v4, p3, Lfl/l;->b:I

    iget-object v5, p0, Lfl/k$b;->a:[J

    invoke-static/range {v0 .. v5}, Lfl/k;->s([J[JI[JI[J)V

    return-void
.end method

.method public I(Lfl/l;Lfl/l;Lfl/l;)V
    .locals 7

    iget-object v0, p1, Lfl/l;->a:[J

    iget-object v1, p2, Lfl/l;->a:[J

    iget v2, p2, Lfl/l;->b:I

    iget-object v3, p3, Lfl/l;->a:[J

    iget v4, p3, Lfl/l;->b:I

    iget-object v5, p0, Lfl/k$b;->a:[J

    iget-object v6, p0, Lfl/k$b;->b:[J

    invoke-static/range {v0 .. v6}, Lfl/k;->t([J[JI[JI[J[J)V

    return-void
.end method

.method public J([J[JI)V
    .locals 3

    add-int/lit8 v0, p3, 0x6

    aget-wide v0, p2, v0

    invoke-static {v0, v1}, Lfl/k;->n(J)J

    move-result-wide v0

    const/16 v2, 0xc

    aput-wide v0, p1, v2

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x8

    invoke-static {p1, v1, p2, v0}, Lfl/k;->j([JI[JI)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lfl/k;->o([JI[JI)V

    return-void
.end method
