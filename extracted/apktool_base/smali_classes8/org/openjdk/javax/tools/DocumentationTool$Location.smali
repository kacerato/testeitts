.class public final enum Lorg/openjdk/javax/tools/DocumentationTool$Location;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/tools/JavaFileManager$Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/javax/tools/DocumentationTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/javax/tools/DocumentationTool$Location;",
        ">;",
        "Lorg/openjdk/javax/tools/JavaFileManager$Location;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/javax/tools/DocumentationTool$Location;

.field public static final enum DOCLET_PATH:Lorg/openjdk/javax/tools/DocumentationTool$Location;

.field public static final enum DOCUMENTATION_OUTPUT:Lorg/openjdk/javax/tools/DocumentationTool$Location;

.field public static final enum TAGLET_PATH:Lorg/openjdk/javax/tools/DocumentationTool$Location;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/javax/tools/DocumentationTool$Location;

    const-string v1, "DOCUMENTATION_OUTPUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/javax/tools/DocumentationTool$Location;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/javax/tools/DocumentationTool$Location;->DOCUMENTATION_OUTPUT:Lorg/openjdk/javax/tools/DocumentationTool$Location;

    new-instance v1, Lorg/openjdk/javax/tools/DocumentationTool$Location;

    const-string v2, "DOCLET_PATH"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/javax/tools/DocumentationTool$Location;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/javax/tools/DocumentationTool$Location;->DOCLET_PATH:Lorg/openjdk/javax/tools/DocumentationTool$Location;

    new-instance v2, Lorg/openjdk/javax/tools/DocumentationTool$Location;

    const-string v3, "TAGLET_PATH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/javax/tools/DocumentationTool$Location;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/javax/tools/DocumentationTool$Location;->TAGLET_PATH:Lorg/openjdk/javax/tools/DocumentationTool$Location;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/javax/tools/DocumentationTool$Location;

    move-result-object v0

    sput-object v0, Lorg/openjdk/javax/tools/DocumentationTool$Location;->$VALUES:[Lorg/openjdk/javax/tools/DocumentationTool$Location;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/javax/tools/DocumentationTool$Location;
    .locals 1

    const-class v0, Lorg/openjdk/javax/tools/DocumentationTool$Location;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/javax/tools/DocumentationTool$Location;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/javax/tools/DocumentationTool$Location;
    .locals 1

    sget-object v0, Lorg/openjdk/javax/tools/DocumentationTool$Location;->$VALUES:[Lorg/openjdk/javax/tools/DocumentationTool$Location;

    invoke-virtual {v0}, [Lorg/openjdk/javax/tools/DocumentationTool$Location;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/javax/tools/DocumentationTool$Location;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isOutputLocation()Z
    .locals 2

    sget-object v0, Lorg/openjdk/javax/tools/DocumentationTool$1;->$SwitchMap$javax$tools$DocumentationTool$Location:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
