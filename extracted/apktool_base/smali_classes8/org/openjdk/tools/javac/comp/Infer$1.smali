.class Lorg/openjdk/tools/javac/comp/Infer$1;
.super Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
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
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$1;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/code/Type$StructuralTypeMapping;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$1;->visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;Ljava/lang/Void;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    .line 2
    new-instance p2, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$1;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Infer;->incorporationEngine()Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$1;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-direct {p2, p1, v0, v1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;-><init>(Lorg/openjdk/tools/javac/code/Type$TypeVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$UndetVarListener;Lorg/openjdk/tools/javac/code/Types;)V

    .line 3
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v2, 0x800000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->setThrow()V

    :cond_0
    return-object p2
.end method
