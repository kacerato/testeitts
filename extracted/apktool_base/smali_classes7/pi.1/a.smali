.class public Lpi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpi/a$a;
    }
.end annotation


# instance fields
.field public final a:Loh/x;

.field public final b:I

.field public c:Lpi/d;

.field public d:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Loh/x;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lpi/a;-><init>(Loh/x;I)V

    return-void
.end method

.method public constructor <init>(Loh/x;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lpi/d;

    invoke-direct {v0}, Lpi/d;-><init>()V

    iput-object v0, p0, Lpi/a;->c:Lpi/d;

    iput-object p1, p0, Lpi/a;->a:Loh/x;

    iput p2, p0, Lpi/a;->b:I

    return-void
.end method

.method public static synthetic a(Lpi/a;)Lpi/d;
    .locals 0

    iget-object p0, p0, Lpi/a;->c:Lpi/d;

    return-object p0
.end method


# virtual methods
.method public b()LQk/F;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    new-instance v0, Lpi/a$a;

    iget-object v1, p0, Lpi/a;->a:Loh/x;

    iget v2, p0, Lpi/a;->b:I

    iget-object v3, p0, Lpi/a;->d:Ljava/security/SecureRandom;

    invoke-direct {v0, p0, v1, v2, v3}, Lpi/a$a;-><init>(Lpi/a;Loh/x;ILjava/security/SecureRandom;)V

    return-object v0
.end method

.method public c(Ljava/security/SecureRandom;)Lpi/a;
    .locals 0

    iput-object p1, p0, Lpi/a;->d:Ljava/security/SecureRandom;

    return-object p0
.end method
