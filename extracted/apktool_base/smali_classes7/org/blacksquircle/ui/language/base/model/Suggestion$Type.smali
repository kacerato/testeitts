.class public final enum Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/blacksquircle/ui/language/base/model/Suggestion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:LCf/a;

.field private static final synthetic $VALUES:[Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

.field public static final enum FIELD:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

.field public static final enum METHOD:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

.field public static final enum NONE:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

.field public static final enum WORD:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;


# instance fields
.field private final value:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;
    .locals 4

    sget-object v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->FIELD:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    sget-object v1, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->METHOD:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    sget-object v2, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->WORD:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    sget-object v3, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->NONE:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    filled-new-array {v0, v1, v2, v3}, [Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v1, 0x0

    const-string v2, "v"

    const-string v3, "FIELD"

    invoke-direct {v0, v3, v1, v2}, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->FIELD:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v1, 0x1

    const-string v2, "m"

    const-string v3, "METHOD"

    invoke-direct {v0, v3, v1, v2}, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->METHOD:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v1, 0x2

    const-string v2, "w"

    const-string v3, "WORD"

    invoke-direct {v0, v3, v1, v2}, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->WORD:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    new-instance v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    const/4 v1, 0x3

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->NONE:Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    invoke-static {}, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->$values()[Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    move-result-object v0

    sput-object v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->$VALUES:[Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    invoke-static {v0}, LCf/c;->c([Ljava/lang/Enum;)LCf/a;

    move-result-object v0

    sput-object v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->$ENTRIES:LCf/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()LCf/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LCf/a<",
            "Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->$ENTRIES:LCf/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;
    .locals 1

    const-class v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    return-object p0
.end method

.method public static values()[Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;
    .locals 1

    sget-object v0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->$VALUES:[Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lorg/blacksquircle/ui/language/base/model/Suggestion$Type;->value:Ljava/lang/String;

    return-object v0
.end method
