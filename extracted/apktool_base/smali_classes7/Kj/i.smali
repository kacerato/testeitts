.class public LKj/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LKj/i$a;,
        LKj/i$b;,
        LKj/i$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "org.bouncycastle.jcajce.provider.asymmetric.EXTERNAL"

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lbk/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LKj/i;->b:Ljava/util/Map;

    const-string v1, "SupportedKeyClasses"

    const-string v2, "org.bouncycastle.jcajce.ExternalPublicKey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SupportedKeyFormats"

    const-string v2, "X.509"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lbk/c;
    .locals 1

    sget-object v0, LKj/i;->c:Lbk/c;

    return-object v0
.end method

.method public static synthetic b(Lbk/c;)Lbk/c;
    .locals 0

    sput-object p0, LKj/i;->c:Lbk/c;

    return-object p0
.end method
