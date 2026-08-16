.class public interface abstract Lorg/openjdk/javax/lang/model/element/ModuleElement$ExportsDirective;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/javax/lang/model/element/ModuleElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExportsDirective"
.end annotation


# virtual methods
.method public abstract getPackage()Lorg/openjdk/javax/lang/model/element/PackageElement;
.end method

.method public abstract getTargetModules()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/ModuleElement;",
            ">;"
        }
    .end annotation
.end method
