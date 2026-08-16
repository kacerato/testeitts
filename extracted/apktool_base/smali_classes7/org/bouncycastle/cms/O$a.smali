.class public Lorg/bouncycastle/cms/O$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/V;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/cms/O;-><init>(Lorg/bouncycastle/cms/F;Luh/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lorg/bouncycastle/cms/F;

.field public final synthetic b:Lorg/bouncycastle/cms/O;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/O;Lorg/bouncycastle/cms/F;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/O$a;->b:Lorg/bouncycastle/cms/O;

    iput-object p2, p0, Lorg/bouncycastle/cms/O$a;->a:Lorg/bouncycastle/cms/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Loh/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/O$a;->b:Lorg/bouncycastle/cms/O;

    iget-object v0, v0, Lorg/bouncycastle/cms/O;->b:Luh/V;

    invoke-virtual {v0}, Luh/V;->A()Luh/o;

    move-result-object v0

    invoke-virtual {v0}, Luh/o;->v()Loh/x;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/O$a;->a:Lorg/bouncycastle/cms/F;

    invoke-interface {v0, p1}, Lorg/bouncycastle/cms/F;->b(Ljava/io/OutputStream;)V

    return-void
.end method

.method public getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/O$a;->a:Lorg/bouncycastle/cms/F;

    invoke-interface {v0}, Lorg/bouncycastle/cms/F;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
