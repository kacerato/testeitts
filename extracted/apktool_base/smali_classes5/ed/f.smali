.class public Led/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;LZ6/d;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "error",
            "context",
            "popupDialog"
        }
    .end annotation

    const-string p1, "@no_ethernet@"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const-string v1, "Ops!"

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-string p0, "Seems that you are out of connection"

    invoke-virtual {p2, v1, p0}, LZ6/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    invoke-static {p0}, Lhd/c;->h(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "error_code"

    invoke-static {p0, p1}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "error_message"

    invoke-static {p0, p2}, Lhd/c;->g(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "tokenProibited"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "1x"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v1, p0}, LZ6/i;->y1(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
