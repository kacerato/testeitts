.class public final Lbn/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbn/c$l;,
        Lbn/c$m;,
        Lbn/c$o;,
        Lbn/c$n;,
        Lbn/c$f;,
        Lbn/c$p;,
        Lbn/c$j;,
        Lbn/c$b;,
        Lbn/c$k;,
        Lbn/c$c;,
        Lbn/c$h;,
        Lbn/c$q;,
        Lbn/c$a;,
        Lbn/c$i;,
        Lbn/c$d;,
        Lbn/c$e;,
        Lbn/c$g;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "JdkConstants should not be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
