.class public final enum Lcom/ardor3d/scenegraph/hint/CullHint;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ardor3d/scenegraph/hint/CullHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ardor3d/scenegraph/hint/CullHint;

.field public static final enum Always:Lcom/ardor3d/scenegraph/hint/CullHint;

.field public static final enum Dynamic:Lcom/ardor3d/scenegraph/hint/CullHint;

.field public static final enum Inherit:Lcom/ardor3d/scenegraph/hint/CullHint;

.field public static final enum Never:Lcom/ardor3d/scenegraph/hint/CullHint;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/ardor3d/scenegraph/hint/CullHint;

    const-string v1, "Inherit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ardor3d/scenegraph/hint/CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ardor3d/scenegraph/hint/CullHint;->Inherit:Lcom/ardor3d/scenegraph/hint/CullHint;

    new-instance v1, Lcom/ardor3d/scenegraph/hint/CullHint;

    const-string v2, "Dynamic"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/ardor3d/scenegraph/hint/CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/ardor3d/scenegraph/hint/CullHint;->Dynamic:Lcom/ardor3d/scenegraph/hint/CullHint;

    new-instance v2, Lcom/ardor3d/scenegraph/hint/CullHint;

    const-string v3, "Always"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/ardor3d/scenegraph/hint/CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/ardor3d/scenegraph/hint/CullHint;->Always:Lcom/ardor3d/scenegraph/hint/CullHint;

    new-instance v3, Lcom/ardor3d/scenegraph/hint/CullHint;

    const-string v4, "Never"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/ardor3d/scenegraph/hint/CullHint;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/ardor3d/scenegraph/hint/CullHint;->Never:Lcom/ardor3d/scenegraph/hint/CullHint;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ardor3d/scenegraph/hint/CullHint;

    move-result-object v0

    sput-object v0, Lcom/ardor3d/scenegraph/hint/CullHint;->$VALUES:[Lcom/ardor3d/scenegraph/hint/CullHint;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ardor3d/scenegraph/hint/CullHint;
    .locals 1

    const-class v0, Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ardor3d/scenegraph/hint/CullHint;

    return-object p0
.end method

.method public static values()[Lcom/ardor3d/scenegraph/hint/CullHint;
    .locals 1

    sget-object v0, Lcom/ardor3d/scenegraph/hint/CullHint;->$VALUES:[Lcom/ardor3d/scenegraph/hint/CullHint;

    invoke-virtual {v0}, [Lcom/ardor3d/scenegraph/hint/CullHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ardor3d/scenegraph/hint/CullHint;

    return-object v0
.end method
