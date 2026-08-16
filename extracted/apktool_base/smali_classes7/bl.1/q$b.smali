.class public Lbl/q$b;
.super Lbl/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final c:LIi/Q;

.field public final d:LIi/Q;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa8

    const/16 v1, 0x88

    invoke-direct {p0, v0, v1}, Lbl/q;-><init>(II)V

    new-instance v0, LIi/Q;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, LIi/Q;-><init>(I)V

    iput-object v0, p0, Lbl/q$b;->c:LIi/Q;

    new-instance v0, LIi/Q;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, LIi/Q;-><init>(I)V

    iput-object v0, p0, Lbl/q$b;->d:LIi/Q;

    return-void
.end method


# virtual methods
.method public a([BS)V
    .locals 1

    iget-object v0, p0, Lbl/q$b;->c:LIi/Q;

    invoke-virtual {p0, v0, p1, p2}, Lbl/q$b;->e(LIi/Q;[BS)V

    return-void
.end method

.method public b([BII)V
    .locals 1

    iget-object v0, p0, Lbl/q$b;->c:LIi/Q;

    invoke-virtual {v0, p1, p2, p3}, LIi/Q;->h([BII)I

    return-void
.end method

.method public c([BS)V
    .locals 1

    iget-object v0, p0, Lbl/q$b;->d:LIi/Q;

    invoke-virtual {p0, v0, p1, p2}, Lbl/q$b;->e(LIi/Q;[BS)V

    return-void
.end method

.method public d([BII)V
    .locals 1

    iget-object v0, p0, Lbl/q$b;->d:LIi/Q;

    invoke-virtual {v0, p1, p2, p3}, LIi/Q;->h([BII)I

    return-void
.end method

.method public final e(LIi/Q;[BS)V
    .locals 4

    invoke-virtual {p1}, LIi/v;->reset()V

    int-to-byte v0, p3

    shr-int/lit8 p3, p3, 0x8

    int-to-byte p3, p3

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte p3, v2, v0

    array-length p3, p2

    invoke-virtual {p1, p2, v3, p3}, LIi/v;->update([BII)V

    invoke-virtual {p1, v2, v3, v1}, LIi/v;->update([BII)V

    return-void
.end method
