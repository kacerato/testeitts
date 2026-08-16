.class public Lpl/d$m;
.super Lpl/d$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
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
    invoke-direct {p0}, Lpl/d$m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p2

    invoke-static {p2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p2

    invoke-virtual {p2}, Loh/y;->H()[B

    move-result-object p2

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p1

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object p1

    invoke-static {p1}, Lpl/g;->s(Loh/x;)Lil/g;

    move-result-object p1

    new-instance v0, Lil/i;

    invoke-direct {v0, p1, p2}, Lil/i;-><init>(Lil/g;[B)V

    return-object v0
.end method
