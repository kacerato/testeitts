.class Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodResolutionDiagHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$ArgMismatchRewriter;,
        Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;,
        Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$DiagnosticRewriter;
    }
.end annotation


# static fields
.field static final argMismatchTemplate:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

.field static final inferArgMismatchTemplate:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

.field static final rewriters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$DiagnosticRewriter;",
            ">;"
        }
    .end annotation
.end field

.field static final skip:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$1;

    const/4 v1, 0x0

    new-array v2, v1, [Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    const-string v3, ""

    invoke-direct {v0, v3, v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$1;-><init>(Ljava/lang/String;[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;)V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;->skip:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    new-instance v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    sget-object v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->ARG_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->regex()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    aput-object v0, v6, v1

    invoke-direct {v2, v4, v6}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;-><init>(Ljava/lang/String;[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;)V

    sput-object v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;->argMismatchTemplate:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    new-instance v4, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->regex()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    aput-object v0, v6, v1

    aput-object v0, v6, v5

    invoke-direct {v4, v3, v6}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$2;-><init>(Ljava/lang/String;[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;)V

    sput-object v4, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;->inferArgMismatchTemplate:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;->rewriters:Ljava/util/Map;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$ArgMismatchRewriter;

    invoke-direct {v3, v1}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$ArgMismatchRewriter;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$ArgMismatchRewriter;

    invoke-direct {v1, v5}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$ArgMismatchRewriter;-><init>(I)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static rewrite(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 7

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;->rewriters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    invoke-virtual {v2, p4}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$DiagnosticRewriter;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$DiagnosticRewriter;->rewriteDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p0

    sget-object p1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->COMPRESSED:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->setFlag(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
