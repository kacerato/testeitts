.class public LAh/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILAh/n;)Loh/M;
    .locals 3

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, p0, p1}, Loh/K0;-><init>(ZIILoh/g;)V

    return-object v0
.end method

.method public static b(ILoh/E;)Loh/M;
    .locals 3

    new-instance v0, Loh/K0;

    const/4 v1, 0x0

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2, p0, p1}, Loh/K0;-><init>(ZIILoh/g;)V

    return-object v0
.end method

.method public static c(I[B)Loh/M;
    .locals 3

    new-instance v0, Loh/K0;

    new-instance v1, Loh/C0;

    invoke-direct {v1, p1}, Loh/C0;-><init>([B)V

    const/4 p1, 0x0

    const/16 v2, 0x40

    invoke-direct {v0, p1, v2, p0, v1}, Loh/K0;-><init>(ZIILoh/g;)V

    return-object v0
.end method
