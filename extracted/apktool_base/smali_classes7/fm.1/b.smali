.class public Lfm/b;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final b:[B

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lfm/b;->b:[B

    const/4 p1, 0x0

    iput p1, p0, Lfm/b;->c:I

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 3

    iget-object v0, p0, Lfm/b;->b:[B

    const/4 v1, 0x0

    iget v2, p0, Lfm/b;->c:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lfm/b;->c:I

    return p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lfm/b;->b:[B

    array-length v0, v0

    return v0
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lfm/b;->c:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lfm/b;->c:I

    return v0
.end method

.method public write(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lfm/b;->b:[B

    iget v1, p0, Lfm/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lfm/b;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method public write([B)V
    .locals 4

    .line 2
    iget-object v0, p0, Lfm/b;->b:[B

    iget v1, p0, Lfm/b;->c:I

    array-length v2, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lfm/b;->c:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lfm/b;->c:I

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 3
    iget-object v0, p0, Lfm/b;->b:[B

    iget v1, p0, Lfm/b;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lfm/b;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lfm/b;->c:I

    return-void
.end method
