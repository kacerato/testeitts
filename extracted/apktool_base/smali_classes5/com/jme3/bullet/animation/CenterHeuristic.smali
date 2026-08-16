.class public final enum Lcom/jme3/bullet/animation/CenterHeuristic;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/bullet/animation/CenterHeuristic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/bullet/animation/CenterHeuristic;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum AABB:Lcom/jme3/bullet/animation/CenterHeuristic;

.field public static final enum Joint:Lcom/jme3/bullet/animation/CenterHeuristic;

.field public static final enum Mean:Lcom/jme3/bullet/animation/CenterHeuristic;

.field public static final enum Sphere:Lcom/jme3/bullet/animation/CenterHeuristic;


# direct methods
.method private static synthetic $values()[Lcom/jme3/bullet/animation/CenterHeuristic;
    .locals 4

    sget-object v0, Lcom/jme3/bullet/animation/CenterHeuristic;->AABB:Lcom/jme3/bullet/animation/CenterHeuristic;

    sget-object v1, Lcom/jme3/bullet/animation/CenterHeuristic;->Joint:Lcom/jme3/bullet/animation/CenterHeuristic;

    sget-object v2, Lcom/jme3/bullet/animation/CenterHeuristic;->Mean:Lcom/jme3/bullet/animation/CenterHeuristic;

    sget-object v3, Lcom/jme3/bullet/animation/CenterHeuristic;->Sphere:Lcom/jme3/bullet/animation/CenterHeuristic;

    filled-new-array {v0, v1, v2, v3}, [Lcom/jme3/bullet/animation/CenterHeuristic;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/bullet/animation/CenterHeuristic;

    const-string v1, "AABB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/animation/CenterHeuristic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/animation/CenterHeuristic;->AABB:Lcom/jme3/bullet/animation/CenterHeuristic;

    new-instance v0, Lcom/jme3/bullet/animation/CenterHeuristic;

    const-string v1, "Joint"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/animation/CenterHeuristic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/animation/CenterHeuristic;->Joint:Lcom/jme3/bullet/animation/CenterHeuristic;

    new-instance v0, Lcom/jme3/bullet/animation/CenterHeuristic;

    const-string v1, "Mean"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/animation/CenterHeuristic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/animation/CenterHeuristic;->Mean:Lcom/jme3/bullet/animation/CenterHeuristic;

    new-instance v0, Lcom/jme3/bullet/animation/CenterHeuristic;

    const-string v1, "Sphere"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/animation/CenterHeuristic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/animation/CenterHeuristic;->Sphere:Lcom/jme3/bullet/animation/CenterHeuristic;

    invoke-static {}, Lcom/jme3/bullet/animation/CenterHeuristic;->$values()[Lcom/jme3/bullet/animation/CenterHeuristic;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/CenterHeuristic;->$VALUES:[Lcom/jme3/bullet/animation/CenterHeuristic;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/bullet/animation/CenterHeuristic;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/bullet/animation/CenterHeuristic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/bullet/animation/CenterHeuristic;

    return-object p0
.end method

.method public static values()[Lcom/jme3/bullet/animation/CenterHeuristic;
    .locals 1

    sget-object v0, Lcom/jme3/bullet/animation/CenterHeuristic;->$VALUES:[Lcom/jme3/bullet/animation/CenterHeuristic;

    invoke-virtual {v0}, [Lcom/jme3/bullet/animation/CenterHeuristic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/bullet/animation/CenterHeuristic;

    return-object v0
.end method


# virtual methods
.method public center(Ljf/o;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    invoke-interface {p1}, Ljf/o;->m()I

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/jme3/bounding/BoundingSphere;

    invoke-direct {v0}, Lcom/jme3/bounding/BoundingSphere;-><init>()V

    invoke-interface {p1}, Ljf/o;->j()Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/bounding/BoundingSphere;->computeFromPoints(Ljava/nio/FloatBuffer;)V

    invoke-virtual {v0, p2}, Lcom/jme3/bounding/BoundingVolume;->getCenter(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "heuristic = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-interface {p1, p2}, Ljf/o;->k(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-interface {p1, v0, v1}, Ljf/o;->g(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {v0, v1, p2}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    return-object p2
.end method
