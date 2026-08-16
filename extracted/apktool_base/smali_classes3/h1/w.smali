.class public final Lh1/w;
.super Lh1/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lh1/x;-><init>(Ljava/lang/Class;Ljava/lang/Object;Lh1/y;)V

    return-void
.end method

.method public static d(J)Lh1/w;
    .locals 2

    new-instance v0, Lh1/w;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lh1/w;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method
