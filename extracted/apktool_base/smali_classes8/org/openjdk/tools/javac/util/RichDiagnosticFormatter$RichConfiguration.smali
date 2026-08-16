.class public Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;
.super Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RichConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;
    }
.end annotation


# instance fields
.field protected features:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Options;Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;)V
    .locals 4

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->getConfiguration()Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter$SimpleConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/util/ForwardingDiagnosticFormatter$ForwardingConfiguration;-><init>(Lorg/openjdk/tools/javac/api/DiagnosticFormatter$Configuration;)V

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/AbstractDiagnosticFormatter;->isRaw()Z

    move-result p2

    if-eqz p2, :cond_0

    const-class p2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    sget-object v0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    sget-object v1, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->UNIQUE_TYPEVAR_NAMES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-static {p2, v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->features:Ljava/util/EnumSet;

    const-string p2, "diags.formatterOptions"

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p2, ","

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_7

    aget-object v1, p1, v0

    const-string v2, "-where"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v3, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    const-string v2, "where"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v3, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->WHERE_CLAUSES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    const-string v2, "-simpleNames"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v3, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    const-string v2, "simpleNames"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v3, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->SIMPLE_NAMES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    const-string v2, "-disambiguateTvars"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->UNIQUE_TYPEVAR_NAMES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    const-string v2, "disambiguateTvars"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->features:Ljava/util/EnumSet;

    sget-object v2, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->UNIQUE_TYPEVAR_NAMES:Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method


# virtual methods
.method public disable(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->features:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public enable(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->features:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAvailableFeatures()[Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;->values()[Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration$RichFormatterFeature;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter$RichConfiguration;->features:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
