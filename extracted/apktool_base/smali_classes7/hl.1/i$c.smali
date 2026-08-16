.class public Lhl/i$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhl/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/security/SecureRandom;

.field public b:[B

.field public c:[B

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lhl/i$c;->b:[B

    iput-object v0, p0, Lhl/i$c;->c:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhl/i$c;->d:Z

    iput-object p1, p0, Lhl/i$c;->a:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public a()Lhl/i;
    .locals 4

    iget-boolean v0, p0, Lhl/i$c;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhl/i$c;->d:Z

    new-instance v0, Lhl/i;

    iget-object v1, p0, Lhl/i$c;->c:[B

    iget-object v2, p0, Lhl/i$c;->b:[B

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lhl/i;-><init>([B[BLhl/i$a;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "builder already used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b([B)[B
    .locals 2

    new-instance v0, Lhl/d;

    iget-object v1, p0, Lhl/i$c;->a:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lhl/d;-><init>(Ljava/security/SecureRandom;)V

    new-instance v1, Lhl/h;

    invoke-direct {v1, p1}, Lhl/h;-><init>([B)V

    invoke-virtual {v0, v1}, Lhl/d;->a(LXi/c;)LYk/c;

    move-result-object p1

    invoke-virtual {p1}, LYk/c;->b()[B

    move-result-object v0

    iput-object v0, p0, Lhl/i$c;->c:[B

    invoke-virtual {p1}, LYk/c;->a()LXi/c;

    move-result-object p1

    check-cast p1, Lhl/h;

    invoke-virtual {p1}, Lhl/h;->d()[B

    move-result-object p1

    return-object p1
.end method

.method public c([B)Lhl/i$c;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    iput-object p1, p0, Lhl/i$c;->b:[B

    return-object p0
.end method
