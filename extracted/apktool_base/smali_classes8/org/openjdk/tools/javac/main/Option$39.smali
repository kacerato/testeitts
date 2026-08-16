.class final Lorg/openjdk/tools/javac/main/Option$39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/main/Option;->showHelp(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/main/Option$OptionKind;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/openjdk/tools/javac/main/Option;",
        ">;"
    }
.end annotation


# instance fields
.field final collator:Ljava/text/Collator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/Option$39;->collator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/main/Option;

    check-cast p2, Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/main/Option$39;->compare(Lorg/openjdk/tools/javac/main/Option;Lorg/openjdk/tools/javac/main/Option;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/openjdk/tools/javac/main/Option;Lorg/openjdk/tools/javac/main/Option;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/Option$39;->collator:Ljava/text/Collator;

    iget-object p1, p1, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    iget-object p2, p2, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
