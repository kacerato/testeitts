.class public LFj/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFj/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ldk/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LFj/k$a;->a:Ldk/f;

    return-void
.end method


# virtual methods
.method public a(LFk/S;)LFj/k;
    .locals 2

    new-instance v0, LFj/k;

    iget-object v1, p0, LFj/k$a;->a:Ldk/f;

    invoke-direct {v0, p1, v1}, LFj/k;-><init>(LFk/S;Ldk/f;)V

    return-object v0
.end method

.method public b(Ljava/security/PublicKey;)LFj/k;
    .locals 2

    new-instance v0, LFj/k;

    iget-object v1, p0, LFj/k$a;->a:Ldk/f;

    invoke-direct {v0, p1, v1}, LFj/k;-><init>(Ljava/security/PublicKey;Ldk/f;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)LFj/k$a;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LFj/k$a;->a:Ldk/f;

    return-object p0
.end method

.method public d(Ljava/security/Provider;)LFj/k$a;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LFj/k$a;->a:Ldk/f;

    return-object p0
.end method
