.class public Lij/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltk/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lij/n;->h(Lij/m;)Lij/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/Object;

.field public final synthetic b:Lij/n;


# direct methods
.method public constructor <init>(Lij/n;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lij/n$b;->b:Lij/n;

    iput-object p2, p0, Lij/n$b;->a:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltk/j;Ltk/e;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Ltk/e;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/pkcs8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Loh/r;

    invoke-direct {p1, p3}, Loh/r;-><init>(Ljava/io/InputStream;)V

    iget-object p2, p0, Lij/n$b;->a:[Ljava/lang/Object;

    invoke-virtual {p1}, Loh/r;->k()Loh/B;

    move-result-object p3

    invoke-static {p3}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    invoke-virtual {p1}, Loh/r;->k()Loh/B;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    const-string p2, "Unexpected ASN1 object after private key info"

    invoke-direct {p1, p2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p2}, Ltk/e;->h()Ljava/lang/String;

    move-result-object p1

    const-string p2, "application/pkcs7-mime"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Loh/r;

    invoke-direct {p1, p3}, Loh/r;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    iget-object p2, p0, Lij/n$b;->a:[Ljava/lang/Object;

    new-instance p3, Lzi/a;

    invoke-virtual {p1}, Loh/r;->k()Loh/B;

    move-result-object v0

    invoke-static {v0}, Luh/o;->w(Ljava/lang/Object;)Luh/o;

    move-result-object v0

    invoke-direct {p3, v0}, Lzi/a;-><init>(Luh/o;)V

    const/4 v0, 0x1

    aput-object p3, p2, v0
    :try_end_0
    .catch Lorg/bouncycastle/cmc/CMCException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Loh/r;->k()Loh/B;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/est/ESTException;

    const-string p2, "Unexpected ASN1 object after reading certificates"

    invoke-direct {p1, p2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void
.end method

.method public b(Ltk/j;Ltk/e;)Ltk/g;
    .locals 0

    sget-object p1, Ltk/d;->a:Ltk/d;

    return-object p1
.end method
