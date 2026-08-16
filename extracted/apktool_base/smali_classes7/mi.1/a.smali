.class public Lmi/a;
.super Lli/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmi/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lmi/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmi/a$b;-><init>(Lmi/a$a;)V

    invoke-direct {p0, v0}, Lli/j;-><init>(LQk/p;)V

    return-void
.end method

.method public constructor <init>(LQk/p;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lli/j;-><init>(LQk/p;)V

    return-void
.end method


# virtual methods
.method public h(LXi/c;)Lhi/k;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/w;->a(LXi/c;)Lhi/h0;

    move-result-object p1

    invoke-super {p0, p1}, Lli/j;->b(Lhi/h0;)Lhi/k;

    move-result-object p1

    return-object p1
.end method

.method public i(LXi/c;)Lhi/g0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/w;->a(LXi/c;)Lhi/h0;

    move-result-object p1

    invoke-super {p0, p1}, Lli/j;->e(Lhi/h0;)Lhi/g0;

    move-result-object p1

    return-object p1
.end method
