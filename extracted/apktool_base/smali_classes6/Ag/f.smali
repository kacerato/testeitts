.class public LAg/f;
.super LAg/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAg/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LAg/b<",
        "LAg/f$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(LAg/j;LBg/s;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, LAg/b;-><init>(LAg/j;LBg/s;[CZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic f(Ljava/io/OutputStream;LBg/s;[CZ)Lvg/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, LAg/f;->h(Ljava/io/OutputStream;LBg/s;[CZ)LAg/f$a;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/io/OutputStream;LBg/s;[CZ)LAg/f$a;
    .locals 0

    new-instance p1, LAg/f$a;

    invoke-direct {p1}, LAg/f$a;-><init>()V

    return-object p1
.end method
