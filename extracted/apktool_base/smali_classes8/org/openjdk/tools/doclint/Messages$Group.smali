.class public final enum Lorg/openjdk/tools/doclint/Messages$Group;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Group"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/openjdk/tools/doclint/Messages$Group;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/openjdk/tools/doclint/Messages$Group;

.field public static final enum ACCESSIBILITY:Lorg/openjdk/tools/doclint/Messages$Group;

.field public static final enum HTML:Lorg/openjdk/tools/doclint/Messages$Group;

.field public static final enum MISSING:Lorg/openjdk/tools/doclint/Messages$Group;

.field public static final enum REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

.field public static final enum SYNTAX:Lorg/openjdk/tools/doclint/Messages$Group;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v1, "ACCESSIBILITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/doclint/Messages$Group;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->ACCESSIBILITY:Lorg/openjdk/tools/doclint/Messages$Group;

    new-instance v1, Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v2, "HTML"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/doclint/Messages$Group;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/openjdk/tools/doclint/Messages$Group;->HTML:Lorg/openjdk/tools/doclint/Messages$Group;

    new-instance v2, Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v3, "MISSING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/doclint/Messages$Group;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/openjdk/tools/doclint/Messages$Group;->MISSING:Lorg/openjdk/tools/doclint/Messages$Group;

    new-instance v3, Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v4, "SYNTAX"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/doclint/Messages$Group;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/openjdk/tools/doclint/Messages$Group;->SYNTAX:Lorg/openjdk/tools/doclint/Messages$Group;

    new-instance v4, Lorg/openjdk/tools/doclint/Messages$Group;

    const-string v5, "REFERENCE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lorg/openjdk/tools/doclint/Messages$Group;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/openjdk/tools/doclint/Messages$Group;->REFERENCE:Lorg/openjdk/tools/doclint/Messages$Group;

    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/openjdk/tools/doclint/Messages$Group;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->$VALUES:[Lorg/openjdk/tools/doclint/Messages$Group;

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

.method public static accepts(Ljava/lang/String;)Z
    .locals 5

    invoke-static {}, Lorg/openjdk/tools/doclint/Messages$Group;->values()[Lorg/openjdk/tools/doclint/Messages$Group;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/openjdk/tools/doclint/Messages$Group;->optName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/openjdk/tools/doclint/Messages$Group;
    .locals 1

    const-class v0, Lorg/openjdk/tools/doclint/Messages$Group;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/openjdk/tools/doclint/Messages$Group;

    return-object p0
.end method

.method public static values()[Lorg/openjdk/tools/doclint/Messages$Group;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/doclint/Messages$Group;->$VALUES:[Lorg/openjdk/tools/doclint/Messages$Group;

    invoke-virtual {v0}, [Lorg/openjdk/tools/doclint/Messages$Group;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/openjdk/tools/doclint/Messages$Group;

    return-object v0
.end method


# virtual methods
.method public notOptName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/openjdk/tools/doclint/Messages$Group;->optName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public optName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
