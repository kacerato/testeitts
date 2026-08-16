.class Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$ArgMismatchRewriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$DiagnosticRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArgMismatchRewriter"
.end annotation


# instance fields
.field causeIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$ArgMismatchRewriter;->causeIndex:I

    return-void
.end method


# virtual methods
.method public rewriteDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 7

    invoke-virtual {p5}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$ArgMismatchRewriter;->causeIndex:I

    aget-object v0, v0, v1

    check-cast v0, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {p5}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getDiagnosticPosition()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p5

    if-nez p5, :cond_0

    move-object v4, p2

    goto :goto_0

    :cond_0
    move-object v4, p5

    :goto_0
    const-string v5, "prob.found.req"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    move-object v1, p1

    move-object v2, p4

    move-object v3, p3

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    return-object p1
.end method
