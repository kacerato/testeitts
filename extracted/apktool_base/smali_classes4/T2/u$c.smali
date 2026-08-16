.class public LT2/u$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LT2/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:LT2/F;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LT2/F<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Z


# direct methods
.method public constructor <init>(LT2/F;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LT2/F<",
            "*>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LT2/u$c;->a:LT2/F;

    .line 4
    iput-boolean p2, p0, LT2/u$c;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(LT2/F;ZLT2/u$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LT2/u$c;-><init>(LT2/F;Z)V

    return-void
.end method

.method public static synthetic a(LT2/u$c;)Z
    .locals 0

    iget-boolean p0, p0, LT2/u$c;->b:Z

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LT2/u$c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LT2/u$c;

    iget-object v0, p1, LT2/u$c;->a:LT2/F;

    iget-object v2, p0, LT2/u$c;->a:LT2/F;

    invoke-virtual {v0, v2}, LT2/F;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, LT2/u$c;->b:Z

    iget-boolean v0, p0, LT2/u$c;->b:Z

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, LT2/u$c;->a:LT2/F;

    invoke-virtual {v0}, LT2/F;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-boolean v1, p0, LT2/u$c;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
