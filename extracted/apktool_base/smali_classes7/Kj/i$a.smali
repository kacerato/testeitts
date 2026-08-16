.class public LKj/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbk/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LKj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:LTj/a;


# direct methods
.method public constructor <init>(LTj/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LKj/i$a;->a:LTj/a;

    return-void
.end method


# virtual methods
.method public a(Lhi/h0;)Ljava/security/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lhi/h0;->A()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lqh/e;->y(Ljava/lang/Object;)Lqh/e;

    move-result-object p1

    new-instance v0, LHj/f;

    invoke-direct {v0, p1}, LHj/f;-><init>(Lqh/e;)V

    return-object v0
.end method

.method public b(LXh/v;)Ljava/security/PrivateKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "no support for private key"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
