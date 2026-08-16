.class Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Candidate"
.end annotation


# instance fields
.field final details:Lorg/openjdk/tools/javac/util/JCDiagnostic;

.field final mtype:Lorg/openjdk/tools/javac/code/Type;

.field final step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

.field final sym:Lorg/openjdk/tools/javac/code/Symbol;

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    .line 4
    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    .line 5
    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->details:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    .line 6
    iput-object p5, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->mtype:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Resolve$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v0, p1, :cond_0

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/openjdk/tools/javac/code/Symbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, v0, v2, v3, v1}, Lorg/openjdk/tools/javac/code/Symbol;->overrides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;Z)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v0, p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method

.method public isApplicable()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->mtype:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
