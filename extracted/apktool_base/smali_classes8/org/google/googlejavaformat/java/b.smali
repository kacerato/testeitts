.class public final synthetic Lorg/google/googlejavaformat/java/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/openjdk/javax/tools/Diagnostic;

    invoke-static {p1}, Lorg/google/googlejavaformat/java/FormatterException;->a(Lorg/openjdk/javax/tools/Diagnostic;)Lorg/google/googlejavaformat/FormatterDiagnostic;

    move-result-object p1

    return-object p1
.end method
