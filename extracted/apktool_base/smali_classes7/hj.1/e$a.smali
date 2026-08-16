.class public Lhj/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgj/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhj/e;->c(Loh/x;Ljava/security/PrivateKey;)Lgj/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loh/x;

.field public final synthetic b:Lhj/e$b;

.field public final synthetic c:Lhj/e;


# direct methods
.method public constructor <init>(Lhj/e;Loh/x;Lhj/e$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lhj/e$a;->c:Lhj/e;

    iput-object p2, p0, Lhj/e$a;->a:Loh/x;

    iput-object p3, p0, Lhj/e$a;->b:Lhj/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Loh/x;
    .locals 1

    iget-object v0, p0, Lhj/e$a;->a:Loh/x;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lhj/e$a;->b:Lhj/e$b;

    return-object v0
.end method

.method public getSignature()[B
    .locals 4

    :try_start_0
    iget-object v0, p0, Lhj/e$a;->b:Lhj/e$b;

    invoke-virtual {v0}, Lhj/e$b;->c()[B

    move-result-object v0

    iget-object v1, p0, Lhj/e$a;->a:Loh/x;

    sget-object v2, LAh/h;->r:Loh/x;

    invoke-virtual {v1, v2}, Loh/x;->O(Loh/x;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lhj/e;->a([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-object v0

    :goto_0
    new-instance v1, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception obtaining signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
