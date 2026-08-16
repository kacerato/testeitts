.class public final enum Lcom/jme3/bullet/animation/MassHeuristic;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/bullet/animation/MassHeuristic;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/bullet/animation/MassHeuristic;

.field public static final enum Density:Lcom/jme3/bullet/animation/MassHeuristic;

.field public static final enum Mass:Lcom/jme3/bullet/animation/MassHeuristic;


# direct methods
.method private static synthetic $values()[Lcom/jme3/bullet/animation/MassHeuristic;
    .locals 2

    sget-object v0, Lcom/jme3/bullet/animation/MassHeuristic;->Density:Lcom/jme3/bullet/animation/MassHeuristic;

    sget-object v1, Lcom/jme3/bullet/animation/MassHeuristic;->Mass:Lcom/jme3/bullet/animation/MassHeuristic;

    filled-new-array {v0, v1}, [Lcom/jme3/bullet/animation/MassHeuristic;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/jme3/bullet/animation/MassHeuristic;

    const-string v1, "Density"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/animation/MassHeuristic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/animation/MassHeuristic;->Density:Lcom/jme3/bullet/animation/MassHeuristic;

    new-instance v0, Lcom/jme3/bullet/animation/MassHeuristic;

    const-string v1, "Mass"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/jme3/bullet/animation/MassHeuristic;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/bullet/animation/MassHeuristic;->Mass:Lcom/jme3/bullet/animation/MassHeuristic;

    invoke-static {}, Lcom/jme3/bullet/animation/MassHeuristic;->$values()[Lcom/jme3/bullet/animation/MassHeuristic;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/animation/MassHeuristic;->$VALUES:[Lcom/jme3/bullet/animation/MassHeuristic;

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

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/bullet/animation/MassHeuristic;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/bullet/animation/MassHeuristic;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/bullet/animation/MassHeuristic;

    return-object p0
.end method

.method public static values()[Lcom/jme3/bullet/animation/MassHeuristic;
    .locals 1

    sget-object v0, Lcom/jme3/bullet/animation/MassHeuristic;->$VALUES:[Lcom/jme3/bullet/animation/MassHeuristic;

    invoke-virtual {v0}, [Lcom/jme3/bullet/animation/MassHeuristic;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/bullet/animation/MassHeuristic;

    return-object v0
.end method
