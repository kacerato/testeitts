.class public abstract Lorg/openjdk/tools/javac/code/Directive;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/lang/model/element/ModuleElement$Directive;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/code/Directive$UsesDirective;,
        Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;,
        Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;,
        Lorg/openjdk/tools/javac/code/Directive$OpensDirective;,
        Lorg/openjdk/tools/javac/code/Directive$OpensFlag;,
        Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;,
        Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;,
        Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
