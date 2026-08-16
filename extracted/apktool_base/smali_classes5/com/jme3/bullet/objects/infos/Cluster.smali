.class public final enum Lcom/jme3/bullet/objects/infos/Cluster;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/bullet/objects/infos/Cluster;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/bullet/objects/infos/Cluster;

.field public static final enum AngularDamping:Lcom/jme3/bullet/objects/infos/Cluster;

.field public static final enum LinearDamping:Lcom/jme3/bullet/objects/infos/Cluster;

.field public static final enum Matching:Lcom/jme3/bullet/objects/infos/Cluster;

.field public static final enum MaxSelfImpulse:Lcom/jme3/bullet/objects/infos/Cluster;

.field public static final enum NodeDamping:Lcom/jme3/bullet/objects/infos/Cluster;

.field public static final enum SelfImpulse:Lcom/jme3/bullet/objects/infos/Cluster;


# direct methods
.method private static synthetic $values()[Lcom/jme3/bullet/objects/infos/Cluster;
    .locals 6

    sget-object v0, Lcom/jme3/bullet/objects/infos/Cluster;->AngularDamping:Lcom/jme3/bullet/objects/infos/Cluster;

    sget-object v1, Lcom/jme3/bullet/objects/infos/Cluster;->LinearDamping:Lcom/jme3/bullet/objects/infos/Cluster;

    sget-object v2, Lcom/jme3/bullet/objects/infos/Cluster;->Matching:Lcom/jme3/bullet/objects/infos/Cluster;

    sget-object v3, Lcom/jme3/bullet/objects/infos/Cluster;->MaxSelfImpulse:Lcom/jme3/bullet/objects/infos/Cluster;

    sget-object v4, Lcom/jme3/bullet/objects/infos/Cluster;->NodeDamping:Lcom/jme3/bullet/objects/infos/Cluster;

    sget-object v5, Lcom/jme3/bullet/objects/infos/Cluster;->SelfImpulse:Lcom/jme3/bullet/objects/infos/Cluster;

    filled-new-array/range {v0 .. v5}, [Lcom/jme3/bullet/objects/infos/Cluster;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/bullet/objects/infos/Cluster;

    const-string v1, "AngularDamping"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Cluster;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Cluster;->AngularDamping:Lcom/jme3/bullet/objects/infos/Cluster;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Cluster;

    const-string v1, "LinearDamping"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Cluster;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Cluster;->LinearDamping:Lcom/jme3/bullet/objects/infos/Cluster;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Cluster;

    const-string v1, "Matching"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Cluster;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Cluster;->Matching:Lcom/jme3/bullet/objects/infos/Cluster;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Cluster;

    const-string v1, "MaxSelfImpulse"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Cluster;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Cluster;->MaxSelfImpulse:Lcom/jme3/bullet/objects/infos/Cluster;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Cluster;

    const-string v1, "NodeDamping"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Cluster;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Cluster;->NodeDamping:Lcom/jme3/bullet/objects/infos/Cluster;

    new-instance v0, Lcom/jme3/bullet/objects/infos/Cluster;

    const-string v1, "SelfImpulse"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/objects/infos/Cluster;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/objects/infos/Cluster;->SelfImpulse:Lcom/jme3/bullet/objects/infos/Cluster;

    invoke-static {}, Lcom/jme3/bullet/objects/infos/Cluster;->$values()[Lcom/jme3/bullet/objects/infos/Cluster;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/infos/Cluster;->$VALUES:[Lcom/jme3/bullet/objects/infos/Cluster;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/bullet/objects/infos/Cluster;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/bullet/objects/infos/Cluster;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/bullet/objects/infos/Cluster;

    return-object p0
.end method

.method public static values()[Lcom/jme3/bullet/objects/infos/Cluster;
    .locals 1

    sget-object v0, Lcom/jme3/bullet/objects/infos/Cluster;->$VALUES:[Lcom/jme3/bullet/objects/infos/Cluster;

    invoke-virtual {v0}, [Lcom/jme3/bullet/objects/infos/Cluster;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/bullet/objects/infos/Cluster;

    return-object v0
.end method


# virtual methods
.method public canSet(F)Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/Cluster;->minValue()F

    move-result v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/infos/Cluster;->maxValue()F

    move-result v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public defValue()F
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/high16 v0, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maxValue()F
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    return v0
.end method

.method public minValue()F
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parameter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const v0, -0x800001

    return v0
.end method
