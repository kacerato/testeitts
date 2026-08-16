.class public Loh/E0;
.super Loh/U0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Loh/U0;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public A([Loh/B;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Loh/B;->C()Loh/B;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Loh/B;->v(Loh/A;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f()Loh/E0;
    .locals 0

    return-object p0
.end method

.method public n([Loh/g;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-interface {v2}, Loh/g;->r()Loh/B;

    move-result-object v2

    invoke-virtual {v2}, Loh/B;->C()Loh/B;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p0, v3}, Loh/B;->v(Loh/A;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public z(Loh/B;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Loh/B;->C()Loh/B;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Loh/B;->v(Loh/A;Z)V

    return-void
.end method
