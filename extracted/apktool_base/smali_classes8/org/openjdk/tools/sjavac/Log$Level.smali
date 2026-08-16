.class public final enum Lorg/openjdk/tools/sjavac/Log$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/sjavac/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/sjavac/Log$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/sjavac/Log$Level;

.field public static final enum DEBUG:Lorg/openjdk/tools/sjavac/Log$Level;

.field public static final enum ERROR:Lorg/openjdk/tools/sjavac/Log$Level;

.field public static final enum INFO:Lorg/openjdk/tools/sjavac/Log$Level;

.field public static final enum TRACE:Lorg/openjdk/tools/sjavac/Log$Level;

.field public static final enum WARN:Lorg/openjdk/tools/sjavac/Log$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/sjavac/Log$Level;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/sjavac/Log$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->ERROR:Lorg/openjdk/tools/sjavac/Log$Level;

    new-instance v1, Lorg/openjdk/tools/sjavac/Log$Level;

    const-string v2, "WARN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/sjavac/Log$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/sjavac/Log$Level;->WARN:Lorg/openjdk/tools/sjavac/Log$Level;

    new-instance v2, Lorg/openjdk/tools/sjavac/Log$Level;

    const-string v3, "INFO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/sjavac/Log$Level;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/sjavac/Log$Level;->INFO:Lorg/openjdk/tools/sjavac/Log$Level;

    new-instance v3, Lorg/openjdk/tools/sjavac/Log$Level;

    const-string v4, "DEBUG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/sjavac/Log$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/sjavac/Log$Level;->DEBUG:Lorg/openjdk/tools/sjavac/Log$Level;

    new-instance v4, Lorg/openjdk/tools/sjavac/Log$Level;

    const-string v5, "TRACE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/sjavac/Log$Level;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/sjavac/Log$Level;->TRACE:Lorg/openjdk/tools/sjavac/Log$Level;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjdk/tools/sjavac/Log$Level;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->$VALUES:[Lorg/openjdk/tools/sjavac/Log$Level;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/sjavac/Log$Level;
    .locals 1

    const-class v0, Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/sjavac/Log$Level;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/sjavac/Log$Level;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/sjavac/Log$Level;->$VALUES:[Lorg/openjdk/tools/sjavac/Log$Level;

    invoke-virtual {v0}, [Lorg/openjdk/tools/sjavac/Log$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/sjavac/Log$Level;

    return-object v0
.end method
