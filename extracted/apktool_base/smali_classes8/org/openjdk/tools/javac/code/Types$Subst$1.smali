.class Lorg/openjdk/tools/javac/code/Types$Subst$1;
.super Lorg/openjdk/tools/javac/code/Type$ForAll;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/code/Types$Subst;->visitForAll(Lorg/openjdk/tools/javac/code/Type$ForAll;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/openjdk/tools/javac/code/Types$Subst;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Types$Subst;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Types$Subst$1;->this$1:Lorg/openjdk/tools/javac/code/Types$Subst;

    invoke-direct {p0, p2, p3}, Lorg/openjdk/tools/javac/code/Type$ForAll;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method


# virtual methods
.method public needsStripping()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
