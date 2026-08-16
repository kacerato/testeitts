.class Lorg/openjdk/tools/javac/code/Type$UndetVar$1;
.super Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Type$UndetVar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/code/Type$UndetVar;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Type$UndetVar;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Type$UndetVar$1;->this$0:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$UndetVar$1;->visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitUndetVar(Lorg/openjdk/tools/javac/code/Type$UndetVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    .line 2
    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->access$300(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->access$300(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    :goto_0
    return-object p1
.end method
