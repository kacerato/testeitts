.class public final enum Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Directive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExportsFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

.field public static final enum MANDATED:Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

.field public static final enum SYNTHETIC:Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    const/4 v1, 0x0

    const/16 v2, 0x1000

    const-string v3, "SYNTHETIC"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->SYNTHETIC:Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    new-instance v1, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    const/4 v2, 0x1

    const v3, 0x8000

    const-string v4, "MANDATED"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->MANDATED:Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    filled-new-array {v0, v1}, [Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->$VALUES:[Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

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

    iput p3, p0, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->value:I

    return-void
.end method

.method public static value(Ljava/util/Set;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    iget v1, v1, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->value:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->$VALUES:[Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    return-object v0
.end method
