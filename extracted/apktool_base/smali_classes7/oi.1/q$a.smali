.class public Loi/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQk/A;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Loi/q;->e(Lth/B;[C)LQk/A;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Ljava/io/ByteArrayOutputStream;

.field public final synthetic b:Lth/B;

.field public final synthetic c:[B

.field public final synthetic d:Loi/q;


# direct methods
.method public constructor <init>(Loi/q;Lth/B;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Loi/q$a;->d:Loi/q;

    iput-object p2, p0, Loi/q$a;->b:Lth/B;

    iput-object p3, p0, Loi/q$a;->c:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Loi/q$a;->a:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 3

    new-instance v0, Lhi/b;

    sget-object v1, Lth/c;->a:Loh/x;

    iget-object v2, p0, Loi/q$a;->b:Lth/B;

    invoke-direct {v0, v1, v2}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    return-object v0
.end method

.method public e()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Loi/q$a;->d:Loi/q;

    invoke-static {v0}, Loi/q;->b(Loi/q;)Loi/t;

    move-result-object v0

    iget-object v1, p0, Loi/q$a;->c:[B

    iget-object v2, p0, Loi/q$a;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Loi/t;->b([B[B)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/cert/crmf/CRMFException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception calculating mac: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKey()LQk/r;
    .locals 3

    new-instance v0, LQk/r;

    invoke-virtual {p0}, Loi/q$a;->a()Lhi/b;

    move-result-object v1

    iget-object v2, p0, Loi/q$a;->c:[B

    invoke-direct {v0, v1, v2}, LQk/r;-><init>(Lhi/b;[B)V

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Loi/q$a;->a:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method
