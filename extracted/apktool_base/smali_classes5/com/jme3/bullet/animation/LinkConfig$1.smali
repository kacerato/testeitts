.class synthetic Lcom/jme3/bullet/animation/LinkConfig$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/bullet/animation/LinkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$bullet$animation$MassHeuristic:[I

.field static final synthetic $SwitchMap$com$jme3$bullet$animation$ShapeHeuristic:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/jme3/bullet/animation/MassHeuristic;->values()[Lcom/jme3/bullet/animation/MassHeuristic;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$MassHeuristic:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/jme3/bullet/animation/MassHeuristic;->Density:Lcom/jme3/bullet/animation/MassHeuristic;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$MassHeuristic:[I

    sget-object v3, Lcom/jme3/bullet/animation/MassHeuristic;->Mass:Lcom/jme3/bullet/animation/MassHeuristic;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    invoke-static {}, Lcom/jme3/bullet/animation/ShapeHeuristic;->values()[Lcom/jme3/bullet/animation/ShapeHeuristic;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$ShapeHeuristic:[I

    :try_start_2
    sget-object v3, Lcom/jme3/bullet/animation/ShapeHeuristic;->AABB:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$ShapeHeuristic:[I

    sget-object v2, Lcom/jme3/bullet/animation/ShapeHeuristic;->Sphere:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$ShapeHeuristic:[I

    sget-object v1, Lcom/jme3/bullet/animation/ShapeHeuristic;->VertexHull:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$ShapeHeuristic:[I

    sget-object v1, Lcom/jme3/bullet/animation/ShapeHeuristic;->Cylinder:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v0, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$ShapeHeuristic:[I

    sget-object v1, Lcom/jme3/bullet/animation/ShapeHeuristic;->FourSphere:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v0, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$ShapeHeuristic:[I

    sget-object v1, Lcom/jme3/bullet/animation/ShapeHeuristic;->MinBox:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v0, Lcom/jme3/bullet/animation/LinkConfig$1;->$SwitchMap$com$jme3$bullet$animation$ShapeHeuristic:[I

    sget-object v1, Lcom/jme3/bullet/animation/ShapeHeuristic;->TwoSphere:Lcom/jme3/bullet/animation/ShapeHeuristic;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    return-void
.end method
