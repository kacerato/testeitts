.class public final enum Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/google/googlejavaformat/java/SnippetFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SnippetKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

.field public static final enum CLASS_BODY_DECLARATIONS:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

.field public static final enum COMPILATION_UNIT:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

.field public static final enum EXPRESSION:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

.field public static final enum STATEMENTS:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;


# direct methods
.method private static synthetic $values()[Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;
    .locals 4

    sget-object v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->COMPILATION_UNIT:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    sget-object v1, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->CLASS_BODY_DECLARATIONS:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    sget-object v2, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->STATEMENTS:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    sget-object v3, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->EXPRESSION:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    filled-new-array {v0, v1, v2, v3}, [Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    const-string v1, "COMPILATION_UNIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->COMPILATION_UNIT:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    new-instance v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    const-string v1, "CLASS_BODY_DECLARATIONS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->CLASS_BODY_DECLARATIONS:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    new-instance v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    const-string v1, "STATEMENTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->STATEMENTS:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    new-instance v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    const-string v1, "EXPRESSION"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->EXPRESSION:Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    invoke-static {}, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->$values()[Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    move-result-object v0

    sput-object v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->$VALUES:[Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    return-object p0
.end method

.method public static values()[Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;
    .locals 1

    sget-object v0, Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->$VALUES:[Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    invoke-virtual {v0}, [Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/google/googlejavaformat/java/SnippetFormatter$SnippetKind;

    return-object v0
.end method
