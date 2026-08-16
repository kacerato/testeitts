.class synthetic Lorg/openjdk/javax/tools/DocumentationTool$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/javax/tools/DocumentationTool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javax$tools$DocumentationTool$Location:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/openjdk/javax/tools/DocumentationTool$Location;->values()[Lorg/openjdk/javax/tools/DocumentationTool$Location;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/openjdk/javax/tools/DocumentationTool$1;->$SwitchMap$javax$tools$DocumentationTool$Location:[I

    :try_start_0
    sget-object v1, Lorg/openjdk/javax/tools/DocumentationTool$Location;->DOCUMENTATION_OUTPUT:Lorg/openjdk/javax/tools/DocumentationTool$Location;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
