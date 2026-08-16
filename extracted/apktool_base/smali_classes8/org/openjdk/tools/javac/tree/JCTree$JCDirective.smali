.class public abstract Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;
.super Lorg/openjdk/tools/javac/tree/JCTree;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/tree/DirectiveTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/tree/JCTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JCDirective"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree;-><init>()V

    return-void
.end method
