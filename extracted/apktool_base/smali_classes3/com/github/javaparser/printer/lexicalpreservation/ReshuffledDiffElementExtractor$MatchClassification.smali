.class final enum Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchClassification"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

.field public static final enum ALL:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

.field public static final enum ALMOST:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

.field public static final enum NEXT_AND_SAME:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

.field public static final enum PREVIOUS_AND_SAME:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

.field public static final enum SAME_ONLY:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;


# instance fields
.field private final priority:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->ALL:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    const-string v2, "PREVIOUS_AND_SAME"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->PREVIOUS_AND_SAME:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    new-instance v2, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    const-string v3, "NEXT_AND_SAME"

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5}, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->NEXT_AND_SAME:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    new-instance v3, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    const-string v4, "SAME_ONLY"

    const/4 v6, 0x4

    invoke-direct {v3, v4, v5, v6}, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->SAME_ONLY:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    new-instance v4, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    const-string v5, "ALMOST"

    const/4 v7, 0x5

    invoke-direct {v4, v5, v6, v7}, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->ALMOST:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->$VALUES:[Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "priority"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->priority:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    return-object p0
.end method

.method public static values()[Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;
    .locals 1

    sget-object v0, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->$VALUES:[Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    invoke-virtual {v0}, [Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    return-object v0
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->priority:I

    return v0
.end method
