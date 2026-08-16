.class public Lcl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/B;


# instance fields
.field public final a:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcl/e;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a(LXi/c;)LBi/P;
    .locals 3

    check-cast p1, Lcl/k;

    invoke-virtual {p1}, Lcl/h;->d()Lcl/i;

    move-result-object v0

    invoke-virtual {v0}, Lcl/i;->a()Lcl/b;

    move-result-object v0

    iget-object v1, p0, Lcl/e;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Lcl/b;->v(Ljava/security/SecureRandom;)V

    invoke-virtual {p1}, Lcl/k;->getEncoded()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcl/b;->x([B)[[B

    move-result-object p1

    new-instance v0, Lpl/e;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-direct {v0, v1, p1}, Lpl/e;-><init>([B[B)V

    return-object v0
.end method
