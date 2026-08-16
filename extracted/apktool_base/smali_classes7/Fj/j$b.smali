.class public LFj/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFj/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/security/interfaces/ECPublicKey;

.field public final b:[B

.field public c:Ldk/f;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    iput-object v0, p0, LFj/j$b;->c:Ldk/f;

    iput-object p1, p0, LFj/j$b;->a:Ljava/security/interfaces/ECPublicKey;

    iput-object p2, p0, LFj/j$b;->b:[B

    return-void
.end method


# virtual methods
.method public a()LFj/j;
    .locals 5

    new-instance v0, LFj/j;

    iget-object v1, p0, LFj/j$b;->a:Ljava/security/interfaces/ECPublicKey;

    iget-object v2, p0, LFj/j$b;->b:[B

    iget-object v3, p0, LFj/j$b;->c:Ldk/f;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, LFj/j;-><init>(Ljava/security/interfaces/ECPublicKey;[BLdk/f;LFj/j$a;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)LFj/j$b;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LFj/j$b;->c:Ldk/f;

    return-object p0
.end method

.method public c(Ljava/security/Provider;)LFj/j$b;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LFj/j$b;->c:Ldk/f;

    return-object p0
.end method
