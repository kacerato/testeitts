.class public final enum Lcom/jme3/scene/Mesh$Mode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/Mesh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jme3/scene/Mesh$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/scene/Mesh$Mode;

.field public static final enum Hybrid:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum LineLoop:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum LineStrip:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum Lines:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum Patch:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum Points:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum TriangleFan:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

.field public static final enum Triangles:Lcom/jme3/scene/Mesh$Mode;


# instance fields
.field private listMode:Z


# direct methods
.method private static synthetic $values()[Lcom/jme3/scene/Mesh$Mode;
    .locals 9

    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    sget-object v2, Lcom/jme3/scene/Mesh$Mode;->LineStrip:Lcom/jme3/scene/Mesh$Mode;

    sget-object v3, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    sget-object v4, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    sget-object v5, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    sget-object v6, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    sget-object v7, Lcom/jme3/scene/Mesh$Mode;->Hybrid:Lcom/jme3/scene/Mesh$Mode;

    sget-object v8, Lcom/jme3/scene/Mesh$Mode;->Patch:Lcom/jme3/scene/Mesh$Mode;

    filled-new-array/range {v0 .. v8}, [Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "Points"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->Points:Lcom/jme3/scene/Mesh$Mode;

    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "Lines"

    invoke-direct {v0, v1, v3, v3}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "LineStrip"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->LineStrip:Lcom/jme3/scene/Mesh$Mode;

    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "LineLoop"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->LineLoop:Lcom/jme3/scene/Mesh$Mode;

    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "Triangles"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v3}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->Triangles:Lcom/jme3/scene/Mesh$Mode;

    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "TriangleStrip"

    const/4 v4, 0x5

    invoke-direct {v0, v1, v4, v2}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->TriangleStrip:Lcom/jme3/scene/Mesh$Mode;

    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "TriangleFan"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v4, v2}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->TriangleFan:Lcom/jme3/scene/Mesh$Mode;

    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "Hybrid"

    const/4 v4, 0x7

    invoke-direct {v0, v1, v4, v2}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->Hybrid:Lcom/jme3/scene/Mesh$Mode;

    new-instance v0, Lcom/jme3/scene/Mesh$Mode;

    const-string v1, "Patch"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/scene/Mesh$Mode;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->Patch:Lcom/jme3/scene/Mesh$Mode;

    invoke-static {}, Lcom/jme3/scene/Mesh$Mode;->$values()[Lcom/jme3/scene/Mesh$Mode;

    move-result-object v0

    sput-object v0, Lcom/jme3/scene/Mesh$Mode;->$VALUES:[Lcom/jme3/scene/Mesh$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/jme3/scene/Mesh$Mode;->listMode:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/scene/Mesh$Mode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/jme3/scene/Mesh$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jme3/scene/Mesh$Mode;

    return-object p0
.end method

.method public static values()[Lcom/jme3/scene/Mesh$Mode;
    .locals 1

    sget-object v0, Lcom/jme3/scene/Mesh$Mode;->$VALUES:[Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0}, [Lcom/jme3/scene/Mesh$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Mesh$Mode;

    return-object v0
.end method


# virtual methods
.method public isListMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/scene/Mesh$Mode;->listMode:Z

    return v0
.end method
