.class public final LZj/N$e;
.super LZj/N$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LZj/N;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, LSi/k;

    invoke-static {}, LIi/L;->x()LBi/O;

    move-result-object v1

    invoke-direct {v0, v1}, LSi/k;-><init>(LBi/y;)V

    const-string v1, "TLS12withSHA256KDF"

    invoke-direct {p0, v1, v0}, LZj/N$d;-><init>(Ljava/lang/String;LBi/I;)V

    return-void
.end method
