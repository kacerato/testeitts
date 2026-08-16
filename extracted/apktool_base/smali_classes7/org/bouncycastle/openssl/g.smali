.class public Lorg/bouncycastle/openssl/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhi/h0;

.field public final b:LXh/v;


# direct methods
.method public constructor <init>(Lhi/h0;LXh/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/openssl/g;->a:Lhi/h0;

    iput-object p2, p0, Lorg/bouncycastle/openssl/g;->b:LXh/v;

    return-void
.end method


# virtual methods
.method public a()LXh/v;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/g;->b:LXh/v;

    return-object v0
.end method

.method public b()Lhi/h0;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/openssl/g;->a:Lhi/h0;

    return-object v0
.end method
