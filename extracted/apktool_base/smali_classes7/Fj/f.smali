.class public LFj/f;
.super LDj/l;
.source "SourceFile"


# instance fields
.field public g:Ldk/f;


# direct methods
.method public constructor <init>(LGj/d;LEk/K$a;)V
    .locals 1

    .line 1
    new-instance v0, Ldk/d;

    invoke-direct {v0}, Ldk/d;-><init>()V

    invoke-direct {p0, p1, p2, v0}, LFj/f;-><init>(LGj/d;LEk/K$a;Ldk/f;)V

    return-void
.end method

.method public constructor <init>(LGj/d;LEk/K$a;Ldk/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, LDj/l;-><init>(LGj/d;LEk/K$a;)V

    iput-object p3, p0, LFj/f;->g:Ldk/f;

    return-void
.end method


# virtual methods
.method public j(LEk/d;Ljava/security/interfaces/ECPublicKey;)LDj/j;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LFj/f;->k(LEk/d;Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPublicKey;)LDj/j;

    move-result-object p1

    return-object p1
.end method

.method public k(LEk/d;Ljava/security/interfaces/ECPublicKey;Ljava/security/interfaces/ECPublicKey;)LDj/j;
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, LFj/k;

    iget-object v1, p0, LFj/f;->g:Ldk/f;

    invoke-direct {v0, p3, v1}, LFj/k;-><init>(Ljava/security/PublicKey;Ldk/f;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance p3, LFj/h;

    iget-object v1, p0, LFj/f;->g:Ldk/f;

    invoke-direct {p3, p2, v1}, LFj/h;-><init>(Ljava/security/PublicKey;Ldk/f;)V

    invoke-super {p0, p1, p3, v0}, LDj/l;->i(LEk/d;LDj/o;LDj/n;)LDj/j;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)LFj/f;
    .locals 1

    new-instance v0, Ldk/i;

    invoke-direct {v0, p1}, Ldk/i;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LFj/f;->g:Ldk/f;

    return-object p0
.end method

.method public m(Ljava/security/Provider;)LFj/f;
    .locals 1

    new-instance v0, Ldk/k;

    invoke-direct {v0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, LFj/f;->g:Ldk/f;

    return-object p0
.end method
