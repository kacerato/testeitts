.class public LRk/x;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LXi/o0;)Lhi/b;
    .locals 1

    invoke-virtual {p0}, LXi/o0;->b()[B

    move-result-object p0

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    const/16 v0, 0x80

    if-ne p0, v0, :cond_0

    sget-object p0, LUh/a;->d:Loh/x;

    goto :goto_0

    :cond_0
    const/16 v0, 0xc0

    if-ne p0, v0, :cond_1

    sget-object p0, LUh/a;->e:Loh/x;

    goto :goto_0

    :cond_1
    const/16 v0, 0x100

    if-ne p0, v0, :cond_2

    sget-object p0, LUh/a;->f:Loh/x;

    :goto_0
    new-instance v0, Lhi/b;

    invoke-direct {v0, p0}, Lhi/b;-><init>(Loh/x;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal keysize in Camellia"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
