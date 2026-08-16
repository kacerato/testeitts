.class final Lorg/google/googlejavaformat/java/javadoc/Token;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/javadoc/Token$Type;
    }
.end annotation


# instance fields
.field private final type:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/google/googlejavaformat/java/javadoc/Token$Type;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/google/googlejavaformat/java/javadoc/Token;->type:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    iput-object p2, p0, Lorg/google/googlejavaformat/java/javadoc/Token;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/Token;->type:Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/Token;->value:Ljava/lang/String;

    return-object v0
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/javadoc/Token;->value:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/javadoc/Token;->getType()Lorg/google/googlejavaformat/java/javadoc/Token$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/google/googlejavaformat/java/javadoc/Token;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
