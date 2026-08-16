.class public Lorg/bouncycastle/cms/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    new-instance p1, Loh/x;

    invoke-direct {p1, p0}, Loh/x;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Loh/x;

    invoke-direct {v0, p0}, Loh/x;-><init>(Ljava/lang/String;)V

    sget-object p0, Lorg/bouncycastle/cms/U;->a:Lorg/bouncycastle/cms/U;

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/cms/U;->h(Loh/x;Ljava/lang/String;)V

    return-void
.end method
