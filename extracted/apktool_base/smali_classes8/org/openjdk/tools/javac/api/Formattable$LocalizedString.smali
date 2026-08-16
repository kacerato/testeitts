.class public Lorg/openjdk/tools/javac/api/Formattable$LocalizedString;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/api/Formattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/api/Formattable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalizedString"
.end annotation


# instance fields
.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/Formattable$LocalizedString;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKind()Ljava/lang/String;
    .locals 1

    const-string v0, "LocalizedString"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/Formattable$LocalizedString;->key:Ljava/lang/String;

    return-object v0
.end method

.method public toString(Ljava/util/Locale;Lorg/openjdk/tools/javac/api/Messages;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/Formattable$LocalizedString;->key:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p2, p1, v0, v1}, Lorg/openjdk/tools/javac/api/Messages;->getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
