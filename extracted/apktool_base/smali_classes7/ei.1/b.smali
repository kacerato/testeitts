.class public Lei/b;
.super Lei/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lei/a;-><init>()V

    return-void
.end method

.method public static f(Loh/g;)Ljava/lang/String;
    .locals 0

    invoke-interface {p0}, Loh/g;->r()Loh/B;

    move-result-object p0

    invoke-static {p0}, Lei/b;->g(Loh/B;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Loh/B;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v1, v2, p0, v0}, Lei/a;->a(Ljava/lang/String;ZLoh/B;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
