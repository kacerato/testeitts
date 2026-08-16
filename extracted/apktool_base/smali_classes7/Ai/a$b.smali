.class public LAi/a$b;
.super LAi/a$c;
.source "SourceFile"

# interfaces
.implements LQk/D;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAi/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public e:LTi/a;

.field public f:LQk/C;

.field public final synthetic g:LAi/a;


# direct methods
.method public constructor <init>(LAi/a;Loh/x;ILjava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iput-object p1, p0, LAi/a$b;->g:LAi/a;

    invoke-direct {p0, p1, p2, p3, p4}, LAi/a$c;-><init>(LAi/a;Loh/x;ILjava/security/SecureRandom;)V

    invoke-virtual {p0}, LAi/a$b;->e()LTi/a;

    move-result-object p1

    iput-object p1, p0, LAi/a$b;->e:LTi/a;

    return-void
.end method


# virtual methods
.method public b()[B
    .locals 1

    iget-object v0, p0, LAi/a$b;->f:LQk/C;

    invoke-virtual {v0}, LQk/C;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LAi/a$a;

    iget-object v1, p0, LAi/a$b;->e:LTi/a;

    invoke-direct {v0, v1}, LAi/a$a;-><init>(LTi/a;)V

    return-object v0
.end method

.method public d(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LQk/C;

    iget-object v1, p0, LAi/a$b;->e:LTi/a;

    invoke-interface {v1}, LTi/b;->e()[B

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, p1, v1}, LQk/C;-><init>(Ljava/io/OutputStream;I)V

    iput-object v0, p0, LAi/a$b;->f:LQk/C;

    iget-object p1, p0, LAi/a$c;->c:Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/util/c;->d(Ljava/io/OutputStream;Ljava/lang/Object;)LQi/b;

    move-result-object p1

    return-object p1
.end method

.method public final e()LTi/a;
    .locals 2

    iget-object v0, p0, LAi/a$c;->c:Ljava/lang/Object;

    instance-of v1, v0, LTi/a;

    if-eqz v1, :cond_0

    check-cast v0, LTi/a;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to create Authenticated Output Encryptor without Authenticaed Data cipher!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
