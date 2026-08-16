.class public Lwi/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lli/h;)Z
    .locals 1

    invoke-virtual {p0}, Lli/h;->l()Lfi/d;

    move-result-object v0

    invoke-virtual {p0}, Lli/h;->e()Lfi/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfi/d;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
