.class public Lorg/openjdk/tools/javac/code/Attribute$UnresolvedClass;
.super Lorg/openjdk/tools/javac/code/Attribute$Error;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Attribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnresolvedClass"
.end annotation


# instance fields
.field public classType:Lorg/openjdk/tools/javac/code/Type;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/code/Attribute$Error;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/code/Attribute$UnresolvedClass;->classType:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method
