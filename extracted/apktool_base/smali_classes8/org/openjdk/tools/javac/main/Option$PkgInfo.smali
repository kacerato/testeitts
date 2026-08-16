.class public final enum Lorg/openjdk/tools/javac/main/Option$PkgInfo;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/main/Option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PkgInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/main/Option$PkgInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/main/Option$PkgInfo;

.field public static final enum ALWAYS:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

.field public static final enum LEGACY:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

.field public static final enum NONEMPTY:Lorg/openjdk/tools/javac/main/Option$PkgInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/main/Option$PkgInfo;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/main/Option$PkgInfo;->ALWAYS:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    new-instance v1, Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    const-string v2, "LEGACY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/main/Option$PkgInfo;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/main/Option$PkgInfo;->LEGACY:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    new-instance v2, Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    const-string v3, "NONEMPTY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/main/Option$PkgInfo;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/main/Option$PkgInfo;->NONEMPTY:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/main/Option$PkgInfo;->$VALUES:[Lorg/openjdk/tools/javac/main/Option$PkgInfo;

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

.method public static get(Lorg/openjdk/tools/javac/util/Options;)Lorg/openjdk/tools/javac/main/Option$PkgInfo;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->XPKGINFO:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lorg/openjdk/tools/javac/main/Option$PkgInfo;->LEGACY:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/openjdk/tools/javac/util/StringUtils;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/main/Option$PkgInfo;->valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/Option$PkgInfo;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/main/Option$PkgInfo;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/Option$PkgInfo;->$VALUES:[Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/main/Option$PkgInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    return-object v0
.end method
