.class public LXi/A0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/k;


# instance fields
.field public b:[B

.field public c:LBi/k;


# direct methods
.method public constructor <init>(LBi/k;[B)V
    .locals 2

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, LXi/A0;-><init>(LBi/k;[BII)V

    return-void
.end method

.method public constructor <init>(LBi/k;[BII)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p4, [B

    iput-object v0, p0, LXi/A0;->b:[B

    iput-object p1, p0, LXi/A0;->c:LBi/k;

    const/4 p1, 0x0

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public a()LBi/k;
    .locals 1

    iget-object v0, p0, LXi/A0;->c:LBi/k;

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, LXi/A0;->b:[B

    return-object v0
.end method
