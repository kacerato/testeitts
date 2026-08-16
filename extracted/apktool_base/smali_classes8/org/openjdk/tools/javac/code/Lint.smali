.class public Lorg/openjdk/tools/javac/code/Lint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;,
        Lorg/openjdk/tools/javac/code/Lint$LintCategory;
    }
.end annotation


# static fields
.field protected static final lintKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/code/Lint;",
            ">;"
        }
    .end annotation
.end field

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/javac/code/Lint$LintCategory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final augmentor:Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;

.field private final suppressedValues:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Lint$LintCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Lint$LintCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint;->lintKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lorg/openjdk/tools/javac/code/Lint;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/code/Lint;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Lint;->augmentor:Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Lint;->augmentor:Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;

    .line 25
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    .line 26
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->XLINT:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v1

    const-class v2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    if-nez v1, :cond_3

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->XLINT_CUSTOM:Lorg/openjdk/tools/javac/main/Option;

    const-string v3, "all"

    invoke-virtual {v0, v1, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const-string v3, "none"

    invoke-virtual {v0, v1, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    .line 7
    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v3

    .line 8
    sget-object v4, Lorg/openjdk/tools/javac/code/Source;->JDK1_9:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 9
    sget-object v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->DEP_ANN:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    sget-object v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->REQUIRES_TRANSITIVE_AUTOMATIC:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 11
    sget-object v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OPENS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 12
    sget-object v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->MODULE:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->REMOVAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    .line 15
    :goto_1
    invoke-static {}, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->values()[Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_6

    aget-object v5, v1, v4

    .line 16
    sget-object v6, Lorg/openjdk/tools/javac/main/Option;->XLINT_CUSTOM:Lorg/openjdk/tools/javac/main/Option;

    iget-object v7, v5, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 17
    iget-object v6, p0, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    invoke-virtual {v6, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 19
    iget-object v6, p0, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    invoke-virtual {v6, v5}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 20
    :cond_6
    invoke-static {v2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    .line 21
    sget-object v0, Lorg/openjdk/tools/javac/code/Lint;->lintKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    .line 22
    new-instance v0, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/code/Lint;->augmentor:Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint;->map:Ljava/util/Map;

    return-object v0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/code/Lint;)Ljava/util/EnumSet;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/code/Lint;)Ljava/util/EnumSet;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Lint;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/code/Lint;->lintKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Lint;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/Lint;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public augment(Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/code/Lint;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Lint;->augmentor:Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;

    invoke-virtual {v0, p0, p1}, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->augment(Lorg/openjdk/tools/javac/code/Lint;Lorg/openjdk/tools/javac/code/Attribute$Compound;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object p1

    return-object p1
.end method

.method public augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;
    .locals 2

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Lint;->augmentor:Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->getDeclarationAttributes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/openjdk/tools/javac/code/Lint$AugmentVisitor;->augment(Lorg/openjdk/tools/javac/code/Lint;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isDeprecated()Z

    move-result p1

    if-eqz p1, :cond_1

    if-ne v0, p0, :cond_0

    .line 4
    new-instance v0, Lorg/openjdk/tools/javac/code/Lint;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/Lint;-><init>(Lorg/openjdk/tools/javac/code/Lint;)V

    .line 5
    :cond_0
    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isSuppressed(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public varargs suppress([Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Lorg/openjdk/tools/javac/code/Lint;
    .locals 3

    new-instance v0, Lorg/openjdk/tools/javac/code/Lint;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/code/Lint;-><init>(Lorg/openjdk/tools/javac/code/Lint;)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Lint:[values"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Lint;->values:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " suppressedValues"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/code/Lint;->suppressedValues:Ljava/util/EnumSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
