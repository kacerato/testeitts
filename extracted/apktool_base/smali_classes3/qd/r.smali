.class public final Lqd/r;
.super Lqd/z;
.source "SourceFile"


# instance fields
.field public final e:[Lqd/z;


# direct methods
.method public constructor <init>([Lqd/z;)V
    .locals 1

    invoke-direct {p0}, Lqd/z;-><init>()V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lqd/z;

    iput-object p1, p0, Lqd/r;->e:[Lqd/z;

    return-void
.end method


# virtual methods
.method public a(J)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b(JJ)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lqd/r;->e:[Lqd/z;

    invoke-static {v0}, Ltd/d;->c([Lqd/z;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public e(J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lqd/r;->e:[Lqd/z;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
