.class public interface abstract Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getElementUtils()Lorg/openjdk/javax/lang/model/util/Elements;
.end method

.method public abstract getFiler()Lorg/openjdk/javax/annotation/processing/Filer;
.end method

.method public abstract getLocale()Ljava/util/Locale;
.end method

.method public abstract getMessager()Lorg/openjdk/javax/annotation/processing/Messager;
.end method

.method public abstract getOptions()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSourceVersion()Lorg/openjdk/javax/lang/model/SourceVersion;
.end method

.method public abstract getTypeUtils()Lorg/openjdk/javax/lang/model/util/Types;
.end method
