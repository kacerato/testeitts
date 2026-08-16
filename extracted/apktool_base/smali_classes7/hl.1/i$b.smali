.class public Lhl/i$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:LBi/c;

.field public final b:Lhl/c;

.field public c:[B

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lhl/c;

    invoke-direct {v0}, Lhl/c;-><init>()V

    iput-object v0, p0, Lhl/i$b;->b:Lhl/c;

    const/4 v1, 0x0

    iput-object v1, p0, Lhl/i$b;->c:[B

    const/4 v1, 0x0

    iput-boolean v1, p0, Lhl/i$b;->d:Z

    new-instance v1, Lhl/e;

    invoke-direct {v1}, Lhl/e;-><init>()V

    new-instance v2, LBi/G;

    const/16 v3, 0x800

    invoke-direct {v2, p1, v3}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v1, v2}, Lhl/e;->b(LBi/G;)V

    invoke-virtual {v1}, Lhl/e;->a()LBi/c;

    move-result-object p1

    iput-object p1, p0, Lhl/i$b;->a:LBi/c;

    invoke-virtual {p1}, LBi/c;->a()LXi/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhl/c;->b(LBi/k;)V

    return-void
.end method


# virtual methods
.method public a([B)Lhl/i;
    .locals 3

    iget-boolean v0, p0, Lhl/i$b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhl/i$b;->d:Z

    new-instance v0, Lhl/i;

    iget-object v1, p0, Lhl/i$b;->b:Lhl/c;

    new-instance v2, Lhl/h;

    invoke-direct {v2, p1}, Lhl/h;-><init>([B)V

    invoke-virtual {v1, v2}, Lhl/c;->a(LBi/k;)[B

    move-result-object p1

    iget-object v1, p0, Lhl/i$b;->c:[B

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lhl/i;-><init>([B[BLhl/i$a;)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "builder already used"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lhl/i$b;->a:LBi/c;

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v0

    check-cast v0, Lhl/h;

    invoke-virtual {v0}, Lhl/h;->d()[B

    move-result-object v0

    return-object v0
.end method

.method public c([B)Lhl/i$b;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lhl/i$b;->c:[B

    return-object p0
.end method
