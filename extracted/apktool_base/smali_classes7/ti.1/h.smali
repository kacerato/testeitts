.class public Lti/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x5

.field public static final f:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)Lti/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Lti/g;

    new-instance v0, LVh/g;

    new-instance v1, LVh/h;

    invoke-direct {v1, p1}, LVh/h;-><init>(I)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, p1}, LVh/g;-><init>(LVh/h;LVh/k;)V

    invoke-direct {p2, v0}, Lti/g;-><init>(LVh/g;)V

    return-object p2

    :cond_0
    instance-of v0, p2, Lti/a;

    if-eqz v0, :cond_1

    check-cast p2, Lti/a;

    :try_start_0
    new-instance v0, Loh/C0;

    invoke-virtual {p2}, Lti/a;->getEncoded()[B

    move-result-object p2

    invoke-direct {v0, p2}, Loh/C0;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, LVh/k;

    sget-object v1, LVh/e;->b:Loh/x;

    invoke-direct {p2, v1, v0}, LVh/k;-><init>(Loh/x;Loh/y;)V

    new-instance v0, Lti/g;

    new-instance v1, LVh/g;

    new-instance v2, LVh/h;

    invoke-direct {v2, p1}, LVh/h;-><init>(I)V

    invoke-direct {v1, v2, p2}, LVh/g;-><init>(LVh/h;LVh/k;)V

    invoke-direct {v0, v1}, Lti/g;-><init>(LVh/g;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string v0, "can\'t encode object."

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-instance p1, Lorg/bouncycastle/cert/ocsp/OCSPException;

    const-string p2, "unknown response object"

    invoke-direct {p1, p2}, Lorg/bouncycastle/cert/ocsp/OCSPException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
