.class public LFk/z0;
.super LFk/I;
.source "SourceFile"


# static fields
.field public static final f:LFk/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LFk/z0;

    invoke-direct {v0}, LFk/z0;-><init>()V

    sput-object v0, LFk/z0;->f:LFk/z0;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/32 v0, 0x6b49d201

    invoke-direct {p0, v0, v1}, LFk/I;-><init>(J)V

    return-void
.end method

.method public static z(Ljava/lang/Object;)LFk/z0;
    .locals 3

    instance-of v0, p0, LFk/z0;

    if-eqz v0, :cond_0

    check-cast p0, LFk/z0;

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object p0

    invoke-virtual {p0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const v1, 0x6b49d201

    if-ne v0, v1, :cond_1

    sget-object p0, LFk/z0;->f:LFk/z0;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Loh/s;->I()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not 1800000001"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
