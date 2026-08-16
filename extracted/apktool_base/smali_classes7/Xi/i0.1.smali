.class public LXi/i0;
.super LXi/h0;
.source "SourceFile"


# instance fields
.field public e:I


# direct methods
.method public constructor <init>([B[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, LXi/h0;-><init>([B[BI)V

    iput p4, p0, LXi/i0;->e:I

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget v0, p0, LXi/i0;->e:I

    return v0
.end method
