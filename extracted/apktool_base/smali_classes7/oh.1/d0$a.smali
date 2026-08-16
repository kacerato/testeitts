.class public Loh/d0$a;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loh/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public b:[B

.field public c:I

.field public d:Loh/E0;

.field public final synthetic e:Loh/d0;


# direct methods
.method public constructor <init>(Loh/d0;[B)V
    .locals 0

    iput-object p1, p0, Loh/d0$a;->e:Loh/d0;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Loh/d0$a;->b:[B

    const/4 p2, 0x0

    iput p2, p0, Loh/d0$a;->c:I

    new-instance p2, Loh/E0;

    iget-object p1, p1, Loh/o;->a:Ljava/io/OutputStream;

    invoke-direct {p2, p1}, Loh/E0;-><init>(Ljava/io/OutputStream;)V

    iput-object p2, p0, Loh/d0$a;->d:Loh/E0;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Loh/d0$a;->c:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Loh/d0$a;->d:Loh/E0;

    iget-object v2, p0, Loh/d0$a;->b:[B

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v4, v2, v3, v0}, Loh/C0;->K(Loh/A;Z[BII)V

    :cond_0
    iget-object v0, p0, Loh/d0$a;->d:Loh/E0;

    invoke-virtual {v0}, Loh/A;->e()V

    iget-object v0, p0, Loh/d0$a;->e:Loh/d0;

    invoke-virtual {v0}, Loh/b0;->b()V

    return-void
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Loh/d0$a;->b:[B

    iget v1, p0, Loh/d0$a;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Loh/d0$a;->c:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    array-length p1, v0

    if-ne v2, p1, :cond_0

    iget-object p1, p0, Loh/d0$a;->d:Loh/E0;

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3, v1}, Loh/C0;->K(Loh/A;Z[BII)V

    iput v3, p0, Loh/d0$a;->c:I

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Loh/d0$a;->b:[B

    array-length v1, v0

    iget v2, p0, Loh/d0$a;->c:I

    sub-int v3, v1, v2

    if-ge p3, v3, :cond_0

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Loh/d0$a;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Loh/d0$a;->c:I

    return-void

    :cond_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_1

    invoke-static {p1, p2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Loh/d0$a;->d:Loh/E0;

    iget-object v2, p0, Loh/d0$a;->b:[B

    invoke-static {v0, v4, v2, v5, v1}, Loh/C0;->K(Loh/A;Z[BII)V

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    sub-int v0, p3, v3

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Loh/d0$a;->d:Loh/E0;

    add-int v2, p2, v3

    invoke-static {v0, v4, p1, v2, v1}, Loh/C0;->K(Loh/A;Z[BII)V

    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    add-int/2addr p2, v3

    iget-object p3, p0, Loh/d0$a;->b:[B

    invoke-static {p1, p2, p3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Loh/d0$a;->c:I

    return-void
.end method
