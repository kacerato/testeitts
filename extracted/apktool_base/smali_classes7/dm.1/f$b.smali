.class public Ldm/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldm/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lhi/b;

.field public final b:[B


# direct methods
.method public constructor <init>(Lhi/b;[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldm/f$b;->a:Lhi/b;

    iput-object p2, p0, Ldm/f$b;->b:[B

    return-void
.end method

.method public synthetic constructor <init>(Lhi/b;[BLdm/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ldm/f$b;-><init>(Lhi/b;[B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldm/f$b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ldm/f$b;

    iget-object v1, p0, Ldm/f$b;->a:Lhi/b;

    iget-object v3, p1, Ldm/f$b;->a:Lhi/b;

    invoke-virtual {v1, v3}, Loh/v;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ldm/f$b;->b:[B

    iget-object p1, p1, Ldm/f$b;->b:[B

    invoke-static {v1, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Ldm/f$b;->a:Lhi/b;

    invoke-virtual {v0}, Loh/v;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ldm/f$b;->b:[B

    invoke-static {v1}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
