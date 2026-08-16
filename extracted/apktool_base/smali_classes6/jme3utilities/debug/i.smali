.class public final enum Ljme3utilities/debug/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljme3utilities/debug/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljme3utilities/debug/i;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum Icosphere:Ljme3utilities/debug/i;

.field public static final enum LoopMesh:Ljme3utilities/debug/i;

.field public static final enum Octasphere:Ljme3utilities/debug/i;

.field public static final enum PoleSphere:Ljme3utilities/debug/i;

.field public static final enum WireSphere:Ljme3utilities/debug/i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljme3utilities/debug/i;

    const-string v1, "Icosphere"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljme3utilities/debug/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljme3utilities/debug/i;->Icosphere:Ljme3utilities/debug/i;

    new-instance v0, Ljme3utilities/debug/i;

    const-string v1, "LoopMesh"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljme3utilities/debug/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljme3utilities/debug/i;->LoopMesh:Ljme3utilities/debug/i;

    new-instance v0, Ljme3utilities/debug/i;

    const-string v1, "Octasphere"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljme3utilities/debug/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljme3utilities/debug/i;->Octasphere:Ljme3utilities/debug/i;

    new-instance v0, Ljme3utilities/debug/i;

    const-string v1, "PoleSphere"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljme3utilities/debug/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljme3utilities/debug/i;->PoleSphere:Ljme3utilities/debug/i;

    new-instance v0, Ljme3utilities/debug/i;

    const-string v1, "WireSphere"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljme3utilities/debug/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljme3utilities/debug/i;->WireSphere:Ljme3utilities/debug/i;

    invoke-static {}, Ljme3utilities/debug/i;->a()[Ljme3utilities/debug/i;

    move-result-object v0

    sput-object v0, Ljme3utilities/debug/i;->$VALUES:[Ljme3utilities/debug/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static synthetic a()[Ljme3utilities/debug/i;
    .locals 5

    sget-object v0, Ljme3utilities/debug/i;->Icosphere:Ljme3utilities/debug/i;

    sget-object v1, Ljme3utilities/debug/i;->LoopMesh:Ljme3utilities/debug/i;

    sget-object v2, Ljme3utilities/debug/i;->Octasphere:Ljme3utilities/debug/i;

    sget-object v3, Ljme3utilities/debug/i;->PoleSphere:Ljme3utilities/debug/i;

    sget-object v4, Ljme3utilities/debug/i;->WireSphere:Ljme3utilities/debug/i;

    filled-new-array {v0, v1, v2, v3, v4}, [Ljme3utilities/debug/i;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ljme3utilities/debug/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Ljme3utilities/debug/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljme3utilities/debug/i;

    return-object p0
.end method

.method public static values()[Ljme3utilities/debug/i;
    .locals 1

    sget-object v0, Ljme3utilities/debug/i;->$VALUES:[Ljme3utilities/debug/i;

    invoke-virtual {v0}, [Ljme3utilities/debug/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljme3utilities/debug/i;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/jme3/scene/Mesh;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    instance-of p1, p1, Lcom/jme3/scene/debug/WireSphere;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enum value = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of p1, p1, Lcom/jme3/scene/shape/Sphere;

    goto :goto_0

    :cond_2
    instance-of p1, p1, Llf/l;

    goto :goto_0

    :cond_3
    instance-of p1, p1, Llf/j;

    goto :goto_0

    :cond_4
    instance-of p1, p1, Llf/i;

    :goto_0
    return p1
.end method

.method public c(FZZ)Lcom/jme3/scene/Mesh;
    .locals 3

    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->E(FLjava/lang/String;)Z

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/jme3/scene/debug/WireSphere;

    invoke-direct {v0, p1}, Lcom/jme3/scene/debug/WireSphere;-><init>(F)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "enum value = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance v0, Lcom/jme3/scene/shape/Sphere;

    const/16 v1, 0xc

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, p1}, Lcom/jme3/scene/shape/Sphere;-><init>(IIF)V

    goto :goto_0

    :cond_2
    new-instance v0, Llf/l;

    invoke-direct {v0, v1, p1}, Llf/l;-><init>(IF)V

    goto :goto_0

    :cond_3
    new-instance v0, Llf/j;

    const/16 v1, 0x20

    invoke-direct {v0, v1, p1}, Llf/j;-><init>(IF)V

    goto :goto_0

    :cond_4
    new-instance v0, Llf/i;

    invoke-direct {v0, v1, p1}, Llf/i;-><init>(IF)V

    :goto_0
    invoke-static {v0}, Lif/p;->r(Lcom/jme3/scene/Mesh;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    if-nez p1, :cond_6

    invoke-static {v0}, Lif/p;->b(Lcom/jme3/scene/Mesh;)V

    :cond_6
    :goto_1
    invoke-static {v0}, Lif/p;->u(Lcom/jme3/scene/Mesh;)Z

    move-result p1

    if-eqz p1, :cond_7

    if-nez p3, :cond_7

    sget-object p1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_9

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Texture coordinates not available for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    :goto_2
    return-object v0
.end method
