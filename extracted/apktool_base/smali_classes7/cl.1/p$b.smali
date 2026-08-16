.class public Lcl/p$b;
.super Lcl/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcl/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:LIi/Q;

.field public final c:LIi/N;

.field public final d:LIi/N;

.field public final e:LIi/Q;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa8

    invoke-direct {p0, v0}, Lcl/p;-><init>(I)V

    new-instance v0, LIi/Q;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, LIi/Q;-><init>(I)V

    iput-object v0, p0, Lcl/p$b;->b:LIi/Q;

    new-instance v0, LIi/Q;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, LIi/Q;-><init>(I)V

    iput-object v0, p0, Lcl/p$b;->e:LIi/Q;

    new-instance v0, LIi/N;

    invoke-direct {v0, v1}, LIi/N;-><init>(I)V

    iput-object v0, p0, Lcl/p$b;->d:LIi/N;

    new-instance v0, LIi/N;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, LIi/N;-><init>(I)V

    iput-object v0, p0, Lcl/p$b;->c:LIi/N;

    return-void
.end method


# virtual methods
.method public a([B[B)V
    .locals 3

    iget-object v0, p0, Lcl/p$b;->c:LIi/N;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, LIi/v;->update([BII)V

    iget-object p2, p0, Lcl/p$b;->c:LIi/N;

    invoke-virtual {p2, p1, v2}, LIi/N;->c([BI)I

    return-void
.end method

.method public b([B[BI)V
    .locals 3

    iget-object v0, p0, Lcl/p$b;->d:LIi/N;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, LIi/v;->update([BII)V

    iget-object p2, p0, Lcl/p$b;->d:LIi/N;

    invoke-virtual {p2, p1, p3}, LIi/N;->c([BI)I

    return-void
.end method

.method public c([B[B)V
    .locals 3

    iget-object v0, p0, Lcl/p$b;->e:LIi/Q;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, LIi/v;->update([BII)V

    iget-object p2, p0, Lcl/p$b;->e:LIi/Q;

    array-length v0, p1

    invoke-virtual {p2, p1, v2, v0}, LIi/Q;->e([BII)I

    return-void
.end method

.method public d([B[BB)V
    .locals 4

    array-length v0, p2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p2, p2

    aput-byte p3, v1, p2

    iget-object p2, p0, Lcl/p$b;->e:LIi/Q;

    invoke-virtual {p2, v1, v3, v0}, LIi/v;->update([BII)V

    iget-object p2, p0, Lcl/p$b;->e:LIi/Q;

    array-length p3, p1

    invoke-virtual {p2, p1, v3, p3}, LIi/Q;->e([BII)I

    return-void
.end method

.method public e([BBB)V
    .locals 3

    iget-object v0, p0, Lcl/p$b;->b:LIi/Q;

    invoke-virtual {v0}, LIi/v;->reset()V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    aput-byte p2, v0, v1

    array-length p2, p1

    add-int/lit8 p2, p2, 0x1

    aput-byte p3, v0, p2

    iget-object p2, p0, Lcl/p$b;->b:LIi/Q;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, v0, v2, p1}, LIi/v;->update([BII)V

    return-void
.end method

.method public f([BII)V
    .locals 1

    iget-object v0, p0, Lcl/p$b;->b:LIi/Q;

    invoke-virtual {v0, p1, p2, p3}, LIi/Q;->h([BII)I

    return-void
.end method
