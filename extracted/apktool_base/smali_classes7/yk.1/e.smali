.class public Lyk/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;Lyk/c;)Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lyk/h;

    invoke-direct {v0, p0}, Lyk/h;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p1}, Lyk/h;->o(Lyk/c;)Loh/v;

    move-result-object p0

    return-object p0
.end method

.method public static b([BLyk/c;)Loh/g;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lyk/e;->a(Ljava/io/InputStream;Lyk/c;)Loh/g;

    move-result-object p0

    return-object p0
.end method
