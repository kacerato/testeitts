.class public final Lcom/jme3/bullet/SolverMode;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AllowZeroLength:I = 0x400

.field public static final ArticulatedWarmStart:I = 0x1000

.field public static final CacheDirection:I = 0x20

.field public static final CacheFriendly:I = 0x80

.field public static final Interleave:I = 0x200

.field public static final NoCone:I = 0x800

.field public static final NoVelocityDependent:I = 0x40

.field public static final RandomOrder:I = 0x1

.field public static final SIMD:I = 0x100

.field public static final Separate:I = 0x2

.field public static final Use2Directions:I = 0x10

.field public static final WarmStart:I = 0x4

.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/SolverMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/SolverMode;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static describe(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "RandomOrder"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "Separate"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, "WarmStart"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_3

    const-string v1, "Use2Directions"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v1, p0, 0x40

    if-nez v1, :cond_4

    const-string v1, "VelocityDependent"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_5

    const-string v1, "CacheFriendly"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_6

    const-string v1, "SIMD"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_7

    const-string v1, "Interleave"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_8

    const-string v1, "AllowZeroLength"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit16 v1, p0, 0x800

    if-nez v1, :cond_9

    const-string v1, "Cone"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_9
    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_a

    const-string p0, "ArticulatedWarmStart"

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_b

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_b
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
