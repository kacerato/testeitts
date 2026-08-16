.class public final Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final level:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/github/javaparser/ParserConfiguration$LanguageLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "reason",
            "level"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;->reason:Ljava/lang/String;

    iput-object p2, p0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;->level:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;->reason:Ljava/lang/String;

    iget-object v1, p0, Lcom/github/javaparser/ast/validator/language_level_validations/UpgradeJavaMessage;->level:Lcom/github/javaparser/ParserConfiguration$LanguageLevel;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s Pay attention that this feature is supported starting from \'%s\' language level. If you need that feature the language level must be configured in the configuration before parsing the source files."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
