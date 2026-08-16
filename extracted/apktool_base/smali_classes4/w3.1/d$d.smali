.class public final Lw3/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Ljava/security/PrivateKey;

.field public final b:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "certificate"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lw3/d$d;->a:Ljava/security/PrivateKey;

    .line 4
    iput-object p2, p0, Lw3/d$d;->b:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;Lw3/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lw3/d$d;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V

    return-void
.end method

.method public static synthetic a(Lw3/d$d;)Ljava/security/cert/X509Certificate;
    .locals 0

    iget-object p0, p0, Lw3/d$d;->b:Ljava/security/cert/X509Certificate;

    return-object p0
.end method

.method public static synthetic b(Lw3/d$d;)Ljava/security/PrivateKey;
    .locals 0

    iget-object p0, p0, Lw3/d$d;->a:Ljava/security/PrivateKey;

    return-object p0
.end method
