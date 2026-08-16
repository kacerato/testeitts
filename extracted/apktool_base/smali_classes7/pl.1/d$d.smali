.class public Lpl/d$d;
.super Lpl/d$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lpl/d$u;-><init>(Lpl/d$a;)V

    return-void
.end method

.method public static b(Lbl/e;Loh/c;)Lbl/g;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Loh/c;->J()[B

    move-result-object v0

    invoke-static {v0}, Loh/B;->B([B)Loh/B;

    move-result-object v0

    instance-of v1, v0, Loh/E;

    if-eqz v1, :cond_0

    invoke-static {v0}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v0

    new-instance v1, Lbl/g;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Loh/E;->I(I)Loh/g;

    move-result-object v2

    invoke-static {v2}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v2

    invoke-virtual {v2}, Loh/y;->H()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Loh/E;->I(I)Loh/g;

    move-result-object v0

    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, Lbl/g;-><init>(Lbl/e;[B[B)V

    return-object v1

    :cond_0
    invoke-static {v0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object v0

    invoke-virtual {v0}, Loh/y;->H()[B

    move-result-object v0

    new-instance v1, Lbl/g;

    invoke-direct {v1, p0, v0}, Lbl/g;-><init>(Lbl/e;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Lbl/g;

    invoke-virtual {p1}, Loh/c;->J()[B

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lbl/g;-><init>(Lbl/e;[B)V

    return-object v0
.end method


# virtual methods
.method public a(Lhi/h0;Ljava/lang/Object;)LXi/c;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->u()Lhi/b;

    move-result-object p2

    invoke-virtual {p2}, Lhi/b;->u()Loh/x;

    move-result-object p2

    invoke-static {p2}, Lpl/g;->d(Loh/x;)Lbl/e;

    move-result-object p2

    invoke-virtual {p1}, Lhi/h0;->z()Loh/c;

    move-result-object p1

    invoke-static {p2, p1}, Lpl/d$d;->b(Lbl/e;Loh/c;)Lbl/g;

    move-result-object p1

    return-object p1
.end method
