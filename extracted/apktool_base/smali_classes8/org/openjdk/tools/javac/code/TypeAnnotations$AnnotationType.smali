.class public final enum Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/TypeAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnnotationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

.field public static final enum BOTH:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

.field public static final enum DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

.field public static final enum NONE:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

.field public static final enum TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->DECLARATION:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    new-instance v1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->TYPE:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    new-instance v2, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->NONE:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    new-instance v3, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    const-string v4, "BOTH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->BOTH:Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->$VALUES:[Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->$VALUES:[Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/TypeAnnotations$AnnotationType;

    return-object v0
.end method
