.class Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Template"
.end annotation


# instance fields
.field regex:Ljava/lang/String;

.field subTemplates:[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;->regex:Ljava/lang/String;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;->subTemplates:[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getCode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;->regex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;->subTemplates:[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    array-length v1, v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getArgs()[Ljava/lang/Object;

    move-result-object p1

    array-length p1, p1

    if-eq v1, p1, :cond_0

    goto :goto_1

    :cond_0
    move p1, v2

    :goto_0
    array-length v1, v0

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;->subTemplates:[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    aget-object v1, v1, p1

    aget-object v3, v0, p1

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v2
.end method
