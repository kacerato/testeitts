.class public Lorg/bouncycastle/jce/provider/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jce/provider/a;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/security/Provider$Service;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lorg/bouncycastle/jce/provider/a;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/jce/provider/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jce/provider/a$b;->d:Lorg/bouncycastle/jce/provider/a;

    iput-object p2, p0, Lorg/bouncycastle/jce/provider/a$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/jce/provider/a$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lorg/bouncycastle/jce/provider/a$b;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/security/Provider$Service;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/a$b;->d:Lorg/bouncycastle/jce/provider/a;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/a$b;->a:Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/a$b;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jce/provider/a;->k(Lorg/bouncycastle/jce/provider/a;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/a$b;->d:Lorg/bouncycastle/jce/provider/a;

    invoke-static {v1}, Lorg/bouncycastle/jce/provider/a;->l(Lorg/bouncycastle/jce/provider/a;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/a$b;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/a$b;->d:Lorg/bouncycastle/jce/provider/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/jce/provider/a;->m(Lorg/bouncycastle/jce/provider/a;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/a$b;->d:Lorg/bouncycastle/jce/provider/a;

    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/a;->n(Lorg/bouncycastle/jce/provider/a;Ljava/security/Provider$Service;)V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/a$b;->a()Ljava/security/Provider$Service;

    move-result-object v0

    return-object v0
.end method
