.class public final enum Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModuleFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

.field public static final enum MANDATED:Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

.field public static final enum OPEN:Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

.field public static final enum SYNTHETIC:Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    const/4 v1, 0x0

    const/16 v2, 0x20

    const-string v3, "OPEN"

    invoke-direct {v0, v3, v1, v2}, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->OPEN:Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    const/4 v2, 0x1

    const/16 v3, 0x1000

    const-string v4, "SYNTHETIC"

    invoke-direct {v1, v4, v2, v3}, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->SYNTHETIC:Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    new-instance v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    const/4 v3, 0x2

    const v4, 0x8000

    const-string v5, "MANDATED"

    invoke-direct {v2, v5, v3, v4}, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->MANDATED:Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    filled-new-array {v0, v1, v2}, [Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->$VALUES:[Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

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

    iput p3, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->value:I

    return-void
.end method

.method public static value(Ljava/util/Set;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;",
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

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    iget v1, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->value:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->$VALUES:[Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    return-object v0
.end method
