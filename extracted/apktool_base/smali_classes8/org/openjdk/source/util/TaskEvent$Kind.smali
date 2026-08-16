.class public final enum Lorg/openjdk/source/util/TaskEvent$Kind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/source/util/TaskEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/source/util/TaskEvent$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/source/util/TaskEvent$Kind;

.field public static final enum ANALYZE:Lorg/openjdk/source/util/TaskEvent$Kind;

.field public static final enum ANNOTATION_PROCESSING:Lorg/openjdk/source/util/TaskEvent$Kind;

.field public static final enum ANNOTATION_PROCESSING_ROUND:Lorg/openjdk/source/util/TaskEvent$Kind;

.field public static final enum COMPILATION:Lorg/openjdk/source/util/TaskEvent$Kind;

.field public static final enum ENTER:Lorg/openjdk/source/util/TaskEvent$Kind;

.field public static final enum GENERATE:Lorg/openjdk/source/util/TaskEvent$Kind;

.field public static final enum PARSE:Lorg/openjdk/source/util/TaskEvent$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lorg/openjdk/source/util/TaskEvent$Kind;

    const-string v1, "PARSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/source/util/TaskEvent$Kind;->PARSE:Lorg/openjdk/source/util/TaskEvent$Kind;

    new-instance v1, Lorg/openjdk/source/util/TaskEvent$Kind;

    const-string v2, "ENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/source/util/TaskEvent$Kind;->ENTER:Lorg/openjdk/source/util/TaskEvent$Kind;

    new-instance v2, Lorg/openjdk/source/util/TaskEvent$Kind;

    const-string v3, "ANALYZE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/source/util/TaskEvent$Kind;->ANALYZE:Lorg/openjdk/source/util/TaskEvent$Kind;

    new-instance v3, Lorg/openjdk/source/util/TaskEvent$Kind;

    const-string v4, "GENERATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/source/util/TaskEvent$Kind;->GENERATE:Lorg/openjdk/source/util/TaskEvent$Kind;

    new-instance v4, Lorg/openjdk/source/util/TaskEvent$Kind;

    const-string v5, "ANNOTATION_PROCESSING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING:Lorg/openjdk/source/util/TaskEvent$Kind;

    new-instance v5, Lorg/openjdk/source/util/TaskEvent$Kind;

    const-string v6, "ANNOTATION_PROCESSING_ROUND"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lorg/openjdk/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/openjdk/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING_ROUND:Lorg/openjdk/source/util/TaskEvent$Kind;

    new-instance v6, Lorg/openjdk/source/util/TaskEvent$Kind;

    const-string v7, "COMPILATION"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lorg/openjdk/source/util/TaskEvent$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/openjdk/source/util/TaskEvent$Kind;->COMPILATION:Lorg/openjdk/source/util/TaskEvent$Kind;

    filled-new-array/range {v0 .. v6}, [Lorg/openjdk/source/util/TaskEvent$Kind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/source/util/TaskEvent$Kind;->$VALUES:[Lorg/openjdk/source/util/TaskEvent$Kind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/source/util/TaskEvent$Kind;
    .locals 1

    const-class v0, Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/source/util/TaskEvent$Kind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/source/util/TaskEvent$Kind;
    .locals 1

    sget-object v0, Lorg/openjdk/source/util/TaskEvent$Kind;->$VALUES:[Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-virtual {v0}, [Lorg/openjdk/source/util/TaskEvent$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/source/util/TaskEvent$Kind;

    return-object v0
.end method
