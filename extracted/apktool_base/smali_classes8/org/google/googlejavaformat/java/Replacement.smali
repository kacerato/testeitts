.class public Lorg/google/googlejavaformat/java/Replacement;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final replaceRange:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final replacementString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "replaceRange",
            "replacementString"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lorg/google/googlejavaformat/java/Replacement;->replaceRange:Lcom/google/common/collect/j2;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lorg/google/googlejavaformat/java/Replacement;->replacementString:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null replacementString"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null replaceRange"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static create(IILjava/lang/String;)Lorg/google/googlejavaformat/java/Replacement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPosition",
            "endPosition",
            "replaceWith"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/google/googlejavaformat/java/Replacement;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lorg/google/googlejavaformat/java/Replacement;-><init>(Lcom/google/common/collect/j2;Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Lcom/google/common/collect/j2;Ljava/lang/String;)Lorg/google/googlejavaformat/java/Replacement;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "range",
            "replaceWith"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/google/googlejavaformat/java/Replacement;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/google/googlejavaformat/java/Replacement;

    invoke-direct {v0, p0, p1}, Lorg/google/googlejavaformat/java/Replacement;-><init>(Lcom/google/common/collect/j2;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/google/googlejavaformat/java/Replacement;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lorg/google/googlejavaformat/java/Replacement;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/Replacement;->replaceRange:Lcom/google/common/collect/j2;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/Replacement;->getReplaceRange()Lcom/google/common/collect/j2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/j2;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/google/googlejavaformat/java/Replacement;->replacementString:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/google/googlejavaformat/java/Replacement;->getReplacementString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getReplaceRange()Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/google/googlejavaformat/java/Replacement;->replaceRange:Lcom/google/common/collect/j2;

    return-object v0
.end method

.method public getReplacementString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/google/googlejavaformat/java/Replacement;->replacementString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/google/googlejavaformat/java/Replacement;->replaceRange:Lcom/google/common/collect/j2;

    iget-object v1, p0, Lorg/google/googlejavaformat/java/Replacement;->replacementString:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
