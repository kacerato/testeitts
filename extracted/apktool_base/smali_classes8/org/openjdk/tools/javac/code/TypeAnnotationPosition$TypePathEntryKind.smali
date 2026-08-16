.class public final enum Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/TypeAnnotationPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypePathEntryKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

.field public static final enum ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

.field public static final enum INNER_TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

.field public static final enum TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

.field public static final enum WILDCARD:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;


# instance fields
.field public final tag:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    const-string v1, "ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->ARRAY:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    new-instance v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    const-string v2, "INNER_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->INNER_TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    new-instance v2, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    const-string v3, "WILDCARD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->WILDCARD:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    new-instance v3, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    const-string v4, "TYPE_ARGUMENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->TYPE_ARGUMENT:Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->$VALUES:[Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->tag:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->$VALUES:[Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/TypeAnnotationPosition$TypePathEntryKind;

    return-object v0
.end method
