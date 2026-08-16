.class public Lpi/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:LXi/o0;

.field public b:Lhi/b;

.field public c:Ljava/lang/Object;

.field public final synthetic d:Lpi/a;


# direct methods
.method public constructor <init>(Lpi/a;Loh/x;ILjava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    iput-object p1, p0, Lpi/a$a;->d:Lpi/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p4}, LBi/r;->i(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p3

    invoke-static {p1}, Lpi/a;->a(Lpi/a;)Lpi/d;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lpi/d;->b(Loh/x;Ljava/security/SecureRandom;)LBi/j;

    move-result-object p4

    new-instance v0, LXi/o0;

    invoke-virtual {p4}, LBi/j;->a()[B

    move-result-object p4

    invoke-direct {v0, p4}, LXi/o0;-><init>([B)V

    iput-object v0, p0, Lpi/a$a;->a:LXi/o0;

    invoke-static {p1}, Lpi/a;->a(Lpi/a;)Lpi/d;

    move-result-object p4

    iget-object v0, p0, Lpi/a$a;->a:LXi/o0;

    invoke-virtual {p4, p2, v0, p3}, Lpi/d;->c(Loh/x;LXi/o0;Ljava/security/SecureRandom;)Lhi/b;

    move-result-object p2

    iput-object p2, p0, Lpi/a$a;->b:Lhi/b;

    invoke-static {p1}, Lpi/a;->a(Lpi/a;)Lpi/d;

    iget-object p1, p0, Lpi/a$a;->a:LXi/o0;

    iget-object p2, p0, Lpi/a$a;->b:Lhi/b;

    const/4 p3, 0x1

    invoke-static {p3, p1, p2}, Lpi/d;->a(ZLBi/k;Lhi/b;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lpi/a$a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lpi/a$a;->b:Lhi/b;

    return-object v0
.end method

.method public d(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lpi/a$a;->c:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/util/c;->d(Ljava/io/OutputStream;Ljava/lang/Object;)LQi/b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()LQk/r;
    .locals 3

    new-instance v0, LQk/r;

    iget-object v1, p0, Lpi/a$a;->b:Lhi/b;

    iget-object v2, p0, Lpi/a$a;->a:LXi/o0;

    invoke-virtual {v2}, LXi/o0;->b()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0
.end method
