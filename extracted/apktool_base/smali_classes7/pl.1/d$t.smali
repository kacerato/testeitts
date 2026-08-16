.class public Lpl/d$t;
.super Lpl/d$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "t"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lpl/d$u;-><init>(Lpl/d$a;)V

    return-void
.end method

.method public synthetic constructor <init>(Lpl/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lpl/d$t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p2

    invoke-static {p2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p2

    invoke-virtual {p2}, Loh/y;->H()[B

    move-result-object p2

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object v0

    invoke-virtual {v0}, Lhi/b;->u()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lpl/g;->I(Loh/x;)Lol/t;

    move-result-object v0

    new-instance v1, Lol/v;

    array-length v2, p2

    const/4 v3, 0x4

    invoke-static {p2, v3, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p2

    invoke-direct {v1, v0, p2}, Lol/v;-><init>(Lol/t;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p2

    invoke-virtual {p2}, Loh/c;->J()[B

    move-result-object p2

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, Lpl/g;->I(Loh/x;)Lol/t;

    move-result-object p1

    new-instance v0, Lol/v;

    invoke-direct {v0, p1, p2}, Lol/v;-><init>(Lol/t;[B)V

    return-object v0
.end method
