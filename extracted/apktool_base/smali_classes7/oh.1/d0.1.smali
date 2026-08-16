.class public Loh/d0;
.super Loh/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Loh/d0$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Loh/b0;-><init>(Ljava/io/OutputStream;)V

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Loh/b0;->c(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Loh/b0;-><init>(Ljava/io/OutputStream;IZ)V

    const/16 p1, 0x24

    invoke-virtual {p0, p1}, Loh/b0;->c(I)V

    return-void
.end method


# virtual methods
.method public e()Ljava/io/OutputStream;
    .locals 1

    const/16 v0, 0x3e8

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Loh/d0;->f([B)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public f([B)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, Loh/d0$a;

    invoke-direct {v0, p0, p1}, Loh/d0$a;-><init>(Loh/d0;[B)V

    return-object v0
.end method
