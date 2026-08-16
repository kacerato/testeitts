.class abstract Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LookupHelper"
.end annotation


# instance fields
.field argtypes:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field maxPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

.field name:Lorg/openjdk/tools/javac/util/Name;

.field site:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;

.field typeargtypes:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->name:Lorg/openjdk/tools/javac/util/Name;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->site:Lorg/openjdk/tools/javac/code/Type;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->argtypes:Lorg/openjdk/tools/javac/util/List;

    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->typeargtypes:Lorg/openjdk/tools/javac/util/List;

    iput-object p6, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->maxPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    return-void
.end method


# virtual methods
.method public abstract access(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation
.end method

.method public debug(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    return-void
.end method

.method public abstract lookup(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Lorg/openjdk/tools/javac/code/Symbol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;",
            ")",
            "Lorg/openjdk/tools/javac/code/Symbol;"
        }
    .end annotation
.end method

.method public final shouldStop(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)Z
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$LookupHelper;->maxPhase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-gt p2, v0, :cond_1

    iget-object p2, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object p2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->AMBIGUOUS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
