.class public Loi/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loi/k;


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:Loh/x;


# instance fields
.field public final a:Lwh/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lwh/b;->g:Loh/x;

    sput-object v0, Loi/o;->e:Loh/x;

    return-void
.end method

.method public constructor <init>(Lwh/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loi/o;->a:Lwh/o;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Loi/o;->a:Lwh/o;

    invoke-virtual {v0}, Lwh/o;->v()I

    move-result v0

    return v0
.end method

.method public b()Lorg/bouncycastle/cms/y;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Loi/o;->a:Lwh/o;

    invoke-virtual {v0}, Lwh/o;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lwh/l;->u(Ljava/lang/Object;)Lwh/l;

    move-result-object v0

    invoke-virtual {v0}, Lwh/l;->v()Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/u;->w(Ljava/lang/Object;)Luh/u;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cms/y;

    new-instance v2, Luh/o;

    sget-object v3, Luh/l;->o8:Loh/x;

    invoke-direct {v2, v3, v0}, Luh/o;-><init>(Loh/x;Loh/g;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/cms/y;-><init>(Luh/o;)V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    new-instance v1, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CRMF parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :goto_1
    new-instance v1, Lorg/bouncycastle/cert/crmf/CRMFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMS parsing error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/crmf/CRMFException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Loi/o;->a:Lwh/o;

    invoke-virtual {v0}, Lwh/o;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lwh/l;->u(Ljava/lang/Object;)Lwh/l;

    move-result-object v0

    invoke-virtual {v0}, Lwh/l;->x()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getType()Loh/x;
    .locals 1

    sget-object v0, Loi/o;->e:Loh/x;

    return-object v0
.end method

.method public getValue()Loh/g;
    .locals 1

    iget-object v0, p0, Loi/o;->a:Lwh/o;

    return-object v0
.end method
