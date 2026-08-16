.class public interface abstract Lorg/openjdk/tools/javac/api/Formattable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/api/Formattable$LocalizedString;
    }
.end annotation


# virtual methods
.method public abstract getKind()Ljava/lang/String;
.end method

.method public abstract toString(Ljava/util/Locale;Lorg/openjdk/tools/javac/api/Messages;)Ljava/lang/String;
.end method
