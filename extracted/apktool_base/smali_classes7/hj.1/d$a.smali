.class public Lhj/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgj/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhj/d;->b(Loh/x;Ljava/security/PublicKey;)Lgj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loh/x;

.field public final synthetic b:Lhj/d$b;

.field public final synthetic c:Lhj/d;


# direct methods
.method public constructor <init>(Lhj/d;Loh/x;Lhj/d$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lhj/d$a;->c:Lhj/d;

    iput-object p2, p0, Lhj/d$a;->a:Loh/x;

    iput-object p3, p0, Lhj/d$a;->b:Lhj/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Loh/x;
    .locals 1

    iget-object v0, p0, Lhj/d$a;->a:Loh/x;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lhj/d$a;->b:Lhj/d$b;

    return-object v0
.end method

.method public verify([B)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lhj/d$a;->a:Loh/x;

    sget-object v1, LAh/h;->r:Loh/x;

    invoke-virtual {v0, v1}, Loh/x;->O(Loh/x;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-static {p1}, Lhj/d;->a([B)[B

    move-result-object p1

    iget-object v0, p0, Lhj/d$a;->b:Lhj/d$b;

    invoke-virtual {v0, p1}, Lhj/d$b;->a([B)Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_2
    iget-object v0, p0, Lhj/d$a;->b:Lhj/d$b;

    invoke-virtual {v0, p1}, Lhj/d$b;->a([B)Z

    move-result p1
    :try_end_2
    .catch Ljava/security/SignatureException; {:try_start_2 .. :try_end_2} :catch_1

    return p1

    :catch_1
    move-exception p1

    new-instance v0, Lorg/bouncycastle/operator/RuntimeOperatorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception obtaining signature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/operator/RuntimeOperatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
