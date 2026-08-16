.class public LXj/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LXj/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:[B

.field public final synthetic b:LXj/a;


# direct methods
.method public constructor <init>(LXj/a;Ljava/security/PublicKey;)V
    .locals 0

    .line 1
    iput-object p1, p0, LXj/a$f;->b:LXj/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, LXj/a;->b(LXj/a;Ljava/security/PublicKey;)Lhi/g0;

    move-result-object p1

    invoke-virtual {p1}, Lhi/g0;->x()[B

    move-result-object p1

    iput-object p1, p0, LXj/a$f;->a:[B

    return-void
.end method

.method public constructor <init>(LXj/a;[B)V
    .locals 0

    .line 2
    iput-object p1, p0, LXj/a$f;->b:LXj/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LXj/a$f;->a:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, LXj/a$f;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, LXj/a$f;

    iget-object v0, p0, LXj/a$f;->a:[B

    iget-object p1, p1, LXj/a$f;->a:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LXj/a$f;->a:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v0

    return v0
.end method
