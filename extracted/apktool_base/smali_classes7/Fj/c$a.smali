.class public LFj/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFj/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ldk/f;

.field public final b:[B

.field public final c:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LFj/c$a;->c:Ljava/security/PrivateKey;

    invoke-static {p2}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, LFj/c$a;->b:[B

    return-void
.end method


# virtual methods
.method public a()LFj/c;
    .locals 4

    new-instance v0, LFj/c;

    iget-object v1, p0, LFj/c$a;->c:Ljava/security/PrivateKey;

    iget-object v2, p0, LFj/c$a;->b:[B

    iget-object v3, p0, LFj/c$a;->a:Ldk/f;

    invoke-direct {v0, v1, v2, v3}, LFj/c;-><init>(Ljava/security/PrivateKey;[BLdk/f;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)LFj/c$a;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LFj/c$a;->a:Ldk/f;

    return-object p0
.end method

.method public c(Ljava/security/Provider;)LFj/c$a;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LFj/c$a;->a:Ldk/f;

    return-object p0
.end method
