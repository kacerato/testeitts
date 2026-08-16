.class public final LB2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB2/o$e;,
        LB2/o$c;,
        LB2/o$d;,
        LB2/o$b;,
        LB2/o$f;,
        LB2/o$g;,
        LB2/o$a;
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LB2/G;)Ljava/io/OutputStream;
    .locals 1

    new-instance v0, LB2/o$e;

    invoke-direct {v0, p0}, LB2/o$e;-><init>(LB2/G;)V

    return-object v0
.end method

.method public static b()LB2/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LB2/n<",
            "[B>;"
        }
    .end annotation

    sget-object v0, LB2/o$a;->INSTANCE:LB2/o$a;

    return-object v0
.end method

.method public static c()LB2/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LB2/n<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v0, LB2/o$b;->INSTANCE:LB2/o$b;

    return-object v0
.end method

.method public static d()LB2/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LB2/n<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    sget-object v0, LB2/o$c;->INSTANCE:LB2/o$c;

    return-object v0
.end method

.method public static e(LB2/n;)LB2/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "LB2/n<",
            "TE;>;)",
            "LB2/n<",
            "Ljava/lang/Iterable<",
            "+TE;>;>;"
        }
    .end annotation

    new-instance v0, LB2/o$d;

    invoke-direct {v0, p0}, LB2/o$d;-><init>(LB2/n;)V

    return-object v0
.end method

.method public static f(Ljava/nio/charset/Charset;)LB2/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/charset/Charset;",
            ")",
            "LB2/n<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v0, LB2/o$f;

    invoke-direct {v0, p0}, LB2/o$f;-><init>(Ljava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static g()LB2/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LB2/n<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    sget-object v0, LB2/o$g;->INSTANCE:LB2/o$g;

    return-object v0
.end method
