.class public Ldm/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldm/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[B

.field public final b:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldm/m$a;->a:[B

    invoke-static {p1}, Lorg/bouncycastle/util/a;->t0([B)I

    move-result p1

    iput p1, p0, Ldm/m$a;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ldm/m$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldm/m$a;->a:[B

    check-cast p1, Ldm/m$a;

    iget-object p1, p1, Ldm/m$a;->a:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/util/a;->g([B[B)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Ldm/m$a;->b:I

    return v0
.end method
