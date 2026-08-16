.class public final enum Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModuleResolutionFlags"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

.field public static final enum DO_NOT_RESOLVE_BY_DEFAULT:Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

.field public static final enum WARN_DEPRECATED:Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

.field public static final enum WARN_DEPRECATED_REMOVAL:Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

.field public static final enum WARN_INCUBATING:Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    const-string v1, "DO_NOT_RESOLVE_BY_DEFAULT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->DO_NOT_RESOLVE_BY_DEFAULT:Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    new-instance v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    const-string v2, "WARN_DEPRECATED"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->WARN_DEPRECATED:Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    new-instance v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    const-string v3, "WARN_DEPRECATED_REMOVAL"

    const/4 v5, 0x4

    invoke-direct {v2, v3, v4, v5}, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->WARN_DEPRECATED_REMOVAL:Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    new-instance v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    const/4 v4, 0x3

    const/16 v5, 0x8

    const-string v6, "WARN_INCUBATING"

    invoke-direct {v3, v6, v4, v5}, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->WARN_INCUBATING:Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->$VALUES:[Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

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

    iput p3, p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->value:I

    return-void
.end method

.method public static value(Ljava/util/Set;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;",
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

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    iget v1, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->value:I

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->$VALUES:[Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/code/Symbol$ModuleResolutionFlags;

    return-object v0
.end method
