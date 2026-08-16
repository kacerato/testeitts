.class public final LZj/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LZj/a$b;,
        LZj/a$c;,
        LZj/a$d;,
        LZj/a$e;,
        LZj/a$f;,
        LZj/a$g;,
        LZj/a$h;,
        LZj/a$i;,
        LZj/a$j;,
        LZj/a$k;,
        LZj/a$l;,
        LZj/a$m;,
        LZj/a$n;,
        LZj/a$o;,
        LZj/a$p;,
        LZj/a$t;,
        LZj/a$q;,
        LZj/a$r;,
        LZj/a$s;,
        LZj/a$u;,
        LZj/a$v;,
        LZj/a$w;,
        LZj/a$x;,
        LZj/a$y;,
        LZj/a$z;,
        LZj/a$A;,
        LZj/a$B;,
        LZj/a$C;,
        LZj/a$D;,
        LZj/a$E;,
        LZj/a$F;,
        LZj/a$G;,
        LZj/a$H;,
        LZj/a$I;,
        LZj/a$J;,
        LZj/a$K;,
        LZj/a$L;,
        LZj/a$M;,
        LZj/a$N;,
        LZj/a$O;,
        LZj/a$P;,
        LZj/a$Q;,
        LZj/a$R;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LZj/a;->a:Ljava/util/Map;

    const-string v1, "SupportedKeyClasses"

    const-string v2, "javax.crypto.SecretKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SupportedKeyFormats"

    const-string v2, "RAW"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, LZj/a;->a:Ljava/util/Map;

    return-object v0
.end method
