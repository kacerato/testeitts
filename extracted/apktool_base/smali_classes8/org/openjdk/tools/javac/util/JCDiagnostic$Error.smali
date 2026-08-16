.class public final Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;
.super Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/util/JCDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Error"
.end annotation


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->ERROR:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticInfo;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lorg/openjdk/tools/javac/util/JCDiagnostic$1;)V

    return-void
.end method
