.class public final enum Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/JavaCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImplicitSourcePolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

.field public static final enum CLASS:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

.field public static final enum NONE:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

.field public static final enum UNSET:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->NONE:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    new-instance v1, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    const-string v2, "CLASS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->CLASS:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    new-instance v2, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    const-string v3, "UNSET"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->UNSET:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->$VALUES:[Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

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

.method public static decode(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->UNSET:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    return-object p0

    :cond_0
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->NONE:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    return-object p0

    :cond_1
    const-string v0, "class"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->CLASS:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    return-object p0

    :cond_2
    sget-object p0, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->UNSET:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->$VALUES:[Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    return-object v0
.end method
