.class final enum Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StaticKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

.field public static final enum BOTH:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

.field public static final enum NON_STATIC:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

.field public static final enum STATIC:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

.field public static final enum UNDEFINED:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    const-string v1, "STATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->STATIC:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    const-string v2, "NON_STATIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->NON_STATIC:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    const-string v3, "BOTH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->BOTH:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    const-string v4, "UNDEFINED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->UNDEFINED:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    filled-new-array {v0, v1, v2, v3}, [Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->$VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

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

.method public static from(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->STATIC:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->NON_STATIC:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    :goto_0
    return-object p0
.end method

.method public static reduce(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->UNDEFINED:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    if-ne p0, v0, :cond_0

    return-object p1

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->BOTH:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->$VALUES:[Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    invoke-virtual {v0}, [Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    return-object v0
.end method
