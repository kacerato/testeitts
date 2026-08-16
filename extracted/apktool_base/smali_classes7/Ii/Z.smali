.class public LIi/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIi/Z$a;,
        LIi/Z$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LBi/y;ILBi/o;)LBi/n;
    .locals 2

    new-instance v0, LIi/Z$b;

    invoke-interface {p0}, LBi/y;->f()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-interface {p0}, LBi/y;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0, p2}, LIi/Z$b;-><init>(IILjava/lang/String;LBi/o;)V

    return-object v0
.end method

.method public static b(LBi/y;LBi/o;)LBi/n;
    .locals 2

    new-instance v0, LIi/Z$a;

    invoke-interface {p0}, LBi/y;->f()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-interface {p0}, LBi/y;->b()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0, p1}, LIi/Z$a;-><init>(ILjava/lang/String;LBi/o;)V

    return-object v0
.end method
