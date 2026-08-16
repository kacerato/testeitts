.class public LFj/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFj/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/security/SecureRandom;

.field public b:Ldk/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LFj/i$b;->b:Ldk/f;

    return-void
.end method


# virtual methods
.method public a()LFj/i;
    .locals 4

    iget-object v0, p0, LFj/i$b;->a:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, LFj/i$b;->a:Ljava/security/SecureRandom;

    :cond_0
    new-instance v0, LFj/i;

    iget-object v1, p0, LFj/i$b;->a:Ljava/security/SecureRandom;

    iget-object v2, p0, LFj/i$b;->b:Ldk/f;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, LFj/i;-><init>(Ljava/security/SecureRandom;Ldk/f;LFj/i$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)LFj/i$b;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LFj/i$b;->b:Ldk/f;

    return-object p0
.end method

.method public c(Ljava/security/Provider;)LFj/i$b;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LFj/i$b;->b:Ldk/f;

    return-object p0
.end method

.method public d(Ljava/security/SecureRandom;)LFj/i$b;
    .locals 0

    iput-object p1, p0, LFj/i$b;->a:Ljava/security/SecureRandom;

    return-object p0
.end method
