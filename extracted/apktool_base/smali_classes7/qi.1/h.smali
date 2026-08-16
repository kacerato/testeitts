.class public Lqi/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqi/h$a;
    }
.end annotation


# static fields
.field public static final e:LQk/I;


# instance fields
.field public final a:Loh/x;

.field public final b:I

.field public c:Lqi/a;

.field public d:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LQk/l;->a:LQk/I;

    sput-object v0, Lqi/h;->e:LQk/I;

    return-void
.end method

.method public constructor <init>(Loh/x;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lqi/h;-><init>(Loh/x;I)V

    return-void
.end method

.method public constructor <init>(Loh/x;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lqi/a;

    new-instance v1, Ldk/d;

    invoke-direct {v1}, Ldk/d;-><init>()V

    invoke-direct {v0, v1}, Lqi/a;-><init>(Ldk/f;)V

    iput-object v0, p0, Lqi/h;->c:Lqi/a;

    iput-object p1, p0, Lqi/h;->a:Loh/x;

    iput p2, p0, Lqi/h;->b:I

    return-void
.end method

.method public static synthetic a(Lqi/h;)Lqi/a;
    .locals 0

    iget-object p0, p0, Lqi/h;->c:Lqi/a;

    return-object p0
.end method

.method public static synthetic b()LQk/I;
    .locals 1

    sget-object v0, Lqi/h;->e:LQk/I;

    return-object v0
.end method


# virtual methods
.method public c()LQk/F;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    new-instance v0, Lqi/h$a;

    iget-object v1, p0, Lqi/h;->a:Loh/x;

    iget v2, p0, Lqi/h;->b:I

    iget-object v3, p0, Lqi/h;->d:Ljava/security/SecureRandom;

    invoke-direct {v0, p0, v1, v2, v3}, Lqi/h$a;-><init>(Lqi/h;Loh/x;ILjava/security/SecureRandom;)V

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lqi/h;
    .locals 2

    new-instance v0, Lqi/a;

    new-instance v1, Ldk/i;

    invoke-direct {v1, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lqi/a;-><init>(Ldk/f;)V

    iput-object v0, p0, Lqi/h;->c:Lqi/a;

    return-object p0
.end method

.method public e(Ljava/security/Provider;)Lqi/h;
    .locals 2

    new-instance v0, Lqi/a;

    new-instance v1, Ldk/k;

    invoke-direct {v1, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lqi/a;-><init>(Ldk/f;)V

    iput-object v0, p0, Lqi/h;->c:Lqi/a;

    return-object p0
.end method

.method public f(Ljava/security/SecureRandom;)Lqi/h;
    .locals 0

    iput-object p1, p0, Lqi/h;->d:Ljava/security/SecureRandom;

    return-object p0
.end method
