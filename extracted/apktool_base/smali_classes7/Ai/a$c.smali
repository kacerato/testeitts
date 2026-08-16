.class public LAi/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:LXi/o0;

.field public b:Lhi/b;

.field public c:Ljava/lang/Object;

.field public final synthetic d:LAi/a;


# direct methods
.method public constructor <init>(LAi/a;Loh/x;ILjava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iput-object p1, p0, LAi/a$c;->d:LAi/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p4, :cond_0

    new-instance p4, Ljava/security/SecureRandom;

    invoke-direct {p4}, Ljava/security/SecureRandom;-><init>()V

    :cond_0
    invoke-static {p1}, LAi/a;->a(LAi/a;)LAi/p;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, LAi/p;->b(Loh/x;ILjava/security/SecureRandom;)LBi/j;

    move-result-object p3

    new-instance v0, LXi/o0;

    invoke-virtual {p3}, LBi/j;->a()[B

    move-result-object p3

    invoke-direct {v0, p3}, LXi/o0;-><init>([B)V

    iput-object v0, p0, LAi/a$c;->a:LXi/o0;

    invoke-static {p1}, LAi/a;->a(LAi/a;)LAi/p;

    move-result-object p1

    iget-object p3, p0, LAi/a$c;->a:LXi/o0;

    invoke-virtual {p1, p2, p3, p4}, LAi/p;->e(Loh/x;LXi/o0;Ljava/security/SecureRandom;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, LAi/a$c;->b:Lhi/b;

    const/4 p2, 0x1

    iget-object p3, p0, LAi/a$c;->a:LXi/o0;

    invoke-static {p2, p3, p1}, LAi/p;->a(ZLBi/k;Lhi/b;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LAi/a$c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, LAi/a$c;->b:Lhi/b;

    return-object v0
.end method

.method public d(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, LAi/a$c;->c:Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/util/c;->d(Ljava/io/OutputStream;Ljava/lang/Object;)LQi/b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()LQk/r;
    .locals 3

    new-instance v0, LQk/r;

    iget-object v1, p0, LAi/a$c;->b:Lhi/b;

    iget-object v2, p0, LAi/a$c;->a:LXi/o0;

    invoke-virtual {v2}, LXi/o0;->b()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0
.end method
