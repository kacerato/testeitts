.class abstract enum Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/parser/JavacParser$ErrorRecoveryAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/parser/JavacParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "BasicErrorRecoveryAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;",
        ">;",
        "Lorg/openjdk/tools/javac/parser/JavacParser$ErrorRecoveryAction;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

.field public static final enum BLOCK_STMT:Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

.field public static final enum CATCH_CLAUSE:Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction$1;

    const-string v1, "BLOCK_STMT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;->BLOCK_STMT:Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

    new-instance v1, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction$2;

    const-string v3, "CATCH_CLAUSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;->CATCH_CLAUSE:Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;->$VALUES:[Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

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

.method public synthetic constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/parser/JavacParser$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;->$VALUES:[Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/parser/JavacParser$BasicErrorRecoveryAction;

    return-object v0
.end method
