.class public abstract enum Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/file/JavacFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "SortFiles"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;",
        ">;",
        "Ljava/util/Comparator<",
        "Ljava/nio/file/Path;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

.field public static final enum FORWARD:Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

.field public static final enum REVERSE:Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles$1;

    const-string v1, "FORWARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;->FORWARD:Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    new-instance v1, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles$2;

    const-string v3, "REVERSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;->REVERSE:Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;->$VALUES:[Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/file/JavacFileManager$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;->$VALUES:[Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/file/JavacFileManager$SortFiles;

    return-object v0
.end method
