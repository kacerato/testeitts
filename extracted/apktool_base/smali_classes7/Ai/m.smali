.class public LAi/m;
.super LAi/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lli/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, LRk/r;

    invoke-virtual {p1}, Lli/h;->m()Lhi/h0;

    move-result-object v1

    invoke-virtual {v1}, Lhi/h0;->u()Lhi/b;

    move-result-object v1

    invoke-virtual {p1}, Lli/h;->m()Lhi/h0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, LRk/r;-><init>(Lhi/b;Lhi/h0;)V

    invoke-direct {p0, p1, v0}, LAi/h;-><init>(Lli/h;LRk/e;)V

    return-void
.end method

.method public constructor <init>([BLhi/b;LXi/c;)V
    .locals 1

    .line 2
    new-instance v0, LRk/r;

    invoke-direct {v0, p2, p3}, LRk/r;-><init>(Lhi/b;LXi/c;)V

    invoke-direct {p0, p1, v0}, LAi/h;-><init>([BLRk/e;)V

    return-void
.end method
