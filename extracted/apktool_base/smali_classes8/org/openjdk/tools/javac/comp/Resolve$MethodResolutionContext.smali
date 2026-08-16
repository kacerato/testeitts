.class Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MethodResolutionContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;
    }
.end annotation


# instance fields
.field private attrMode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

.field private candidates:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;",
            ">;"
        }
    .end annotation
.end field

.field private internalResolution:Z

.field methodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

.field step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;)V
    .locals 1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->candidates:Lorg/openjdk/tools/javac/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve;->resolveMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->methodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->internalResolution:Z

    sget-object p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->SPECULATIVE:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->attrMode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->internalResolution:Z

    return p0
.end method

.method public static synthetic access$002(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->internalResolution:Z

    return p1
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->candidates:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public static synthetic access$202(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;)Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->attrMode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    return-object p1
.end method


# virtual methods
.method public addApplicableCandidate(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 8

    new-instance v7, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Resolve$1;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->candidates:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v7}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->candidates:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public addInapplicableCandidate(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V
    .locals 8

    new-instance v7, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Resolve;->currentResolutionContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Resolve$1;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->candidates:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v7}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->candidates:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public attrMode()Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->attrMode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    return-object v0
.end method

.method public deferredAttrContext(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;
    .locals 8

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/Resolve;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/DeferredAttr;->emptyDeferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    :goto_0
    move-object v6, p3

    goto :goto_1

    :cond_0
    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->deferredAttrContext()Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object p3

    goto :goto_0

    :goto_1
    new-instance p3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->attrMode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    move-object v0, p3

    move-object v3, p1

    move-object v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V

    return-object p3
.end method

.method public internal()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->internalResolution:Z

    return v0
.end method
