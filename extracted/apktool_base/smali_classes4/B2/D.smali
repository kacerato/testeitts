.class public final LB2/D;
.super LB2/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime LB2/k;
.end annotation

.annotation runtime LI2/j;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LB2/D$a;
    }
.end annotation


# static fields
.field public static final c:LB2/q;

.field public static final d:LB2/q;

.field public static final e:J


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LB2/D;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LB2/D;-><init>(I)V

    sput-object v0, LB2/D;->c:LB2/q;

    new-instance v0, LB2/D;

    sget v1, LB2/s;->a:I

    invoke-direct {v0, v1}, LB2/D;-><init>(I)V

    sput-object v0, LB2/D;->d:LB2/q;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, LB2/c;-><init>()V

    iput p1, p0, LB2/D;->b:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, LB2/D;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LB2/D;

    iget v0, p0, LB2/D;->b:I

    iget p1, p1, LB2/D;->b:I

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public h()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public hashCode()I
    .locals 2

    const-class v0, LB2/D;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget v1, p0, LB2/D;->b:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public i()LB2/r;
    .locals 2

    new-instance v0, LB2/D$a;

    iget v1, p0, LB2/D;->b:I

    invoke-direct {v0, v1}, LB2/D$a;-><init>(I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LB2/D;->b:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Hashing.murmur3_128("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
