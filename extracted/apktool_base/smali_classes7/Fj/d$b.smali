.class public LFj/d$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFj/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ldk/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LFj/d$b;->a:Ldk/f;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/PrivateKey;)LFj/d;
    .locals 3

    new-instance v0, LFj/d;

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    const/4 v1, 0x0

    iget-object v2, p0, LFj/d$b;->a:Ldk/f;

    invoke-direct {v0, p1, v1, v2, v1}, LFj/d;-><init>(Ljava/security/interfaces/ECPrivateKey;LDj/j;Ldk/f;LFj/d$a;)V

    return-object v0
.end method

.method public b(Ljava/security/PrivateKey;LDj/j;)LFj/d;
    .locals 3

    new-instance v0, LFj/d;

    check-cast p1, Ljava/security/interfaces/ECPrivateKey;

    iget-object v1, p0, LFj/d$b;->a:Ldk/f;

    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v1, v2}, LFj/d;-><init>(Ljava/security/interfaces/ECPrivateKey;LDj/j;Ldk/f;LFj/d$a;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)LFj/d$b;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LFj/d$b;->a:Ldk/f;

    return-object p0
.end method

.method public d(Ljava/security/Provider;)LFj/d$b;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LFj/d$b;->a:Ldk/f;

    return-object p0
.end method
