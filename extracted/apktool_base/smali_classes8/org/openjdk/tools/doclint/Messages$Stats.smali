.class Lorg/openjdk/tools/doclint/Messages$Stats;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/doclint/Messages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Stats"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/doclint/Messages$Stats$Table;
    }
.end annotation


# static fields
.field public static final NO_CODE:Ljava/lang/String; = ""

.field public static final OPT:Ljava/lang/String; = "stats"


# instance fields
.field final bundle:Ljava/util/ResourceBundle;

.field codeCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field dkindCounts:[I

.field groupCounts:[I


# direct methods
.method public constructor <init>(Ljava/util/ResourceBundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->bundle:Ljava/util/ResourceBundle;

    return-void
.end method


# virtual methods
.method public record(Lorg/openjdk/tools/doclint/Messages$Group;Lorg/openjdk/javax/tools/Diagnostic$Kind;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->codeCounts:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->groupCounts:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget v1, v0, p1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    aput v1, v0, p1

    iget-object p1, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->dkindCounts:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget v0, p1, p2

    add-int/2addr v0, v2

    aput v0, p1, p2

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->codeCounts:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object p2, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->codeCounts:Ljava/util/Map;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public report(Ljava/io/PrintWriter;)V
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->codeCounts:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "By group..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lorg/openjdk/tools/doclint/Messages$Stats$Table;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/openjdk/tools/doclint/Messages$Stats$Table;-><init>(Lorg/openjdk/tools/doclint/Messages$1;)V

    invoke-static {}, Lorg/openjdk/tools/doclint/Messages$Group;->values()[Lorg/openjdk/tools/doclint/Messages$Group;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-virtual {v6}, Lorg/openjdk/tools/doclint/Messages$Group;->optName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->groupCounts:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    invoke-virtual {v0, v7, v6}, Lorg/openjdk/tools/doclint/Messages$Stats$Table;->put(Ljava/lang/String;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/doclint/Messages$Stats$Table;->print(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "By diagnostic kind..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lorg/openjdk/tools/doclint/Messages$Stats$Table;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/doclint/Messages$Stats$Table;-><init>(Lorg/openjdk/tools/doclint/Messages$1;)V

    invoke-static {}, Lorg/openjdk/javax/tools/Diagnostic$Kind;->values()[Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->dkindCounts:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    invoke-virtual {v0, v6, v5}, Lorg/openjdk/tools/doclint/Messages$Stats$Table;->put(Ljava/lang/String;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/doclint/Messages$Stats$Table;->print(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "By message kind..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Lorg/openjdk/tools/doclint/Messages$Stats$Table;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/doclint/Messages$Stats$Table;-><init>(Lorg/openjdk/tools/doclint/Messages$1;)V

    iget-object v1, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->codeCounts:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v3, "OTHER"

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->bundle:Ljava/util/ResourceBundle;

    invoke-virtual {v4, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Lorg/openjdk/tools/doclint/Messages$Stats$Table;->put(Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p1}, Lorg/openjdk/tools/doclint/Messages$Stats$Table;->print(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/openjdk/tools/doclint/Messages$Group;->values()[Lorg/openjdk/tools/doclint/Messages$Group;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->groupCounts:[I

    invoke-static {}, Lorg/openjdk/javax/tools/Diagnostic$Kind;->values()[Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->dkindCounts:[I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->codeCounts:Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->groupCounts:[I

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->dkindCounts:[I

    iput-object p1, p0, Lorg/openjdk/tools/doclint/Messages$Stats;->codeCounts:Ljava/util/Map;

    :goto_0
    return-void
.end method
