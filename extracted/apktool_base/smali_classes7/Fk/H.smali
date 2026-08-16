.class public LFk/H;
.super Loh/C0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Loh/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Loh/C0;-><init>(Loh/g;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Loh/C0;-><init>([B)V

    return-void
.end method

.method public static M(Ljava/lang/Object;)LFk/H;
    .locals 1

    instance-of v0, p0, LFk/H;

    if-eqz v0, :cond_0

    check-cast p0, LFk/H;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LFk/H;

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-virtual {p0}, Loh/y;->H()[B

    move-result-object p0

    invoke-direct {v0, p0}, LFk/H;-><init>([B)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
