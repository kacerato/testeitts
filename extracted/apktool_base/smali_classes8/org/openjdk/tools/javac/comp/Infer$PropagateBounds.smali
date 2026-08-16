.class Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;
.super Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PropagateBounds"
.end annotation


# instance fields
.field ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    return-void
.end method


# virtual methods
.method public apply(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 6

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->isCaptured()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->complement()Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2, v0, v1, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->addBound(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->backwards()Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v1}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, v1, v3, v5}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->addBound(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->forward()Ljava/util/EnumSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    filled-new-array {v0}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->isCaptured()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v2, v3, v4}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->addBound(Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public backwards()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    if-ne v0, v1, :cond_0

    const-class v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public dup(Lorg/openjdk/tools/javac/code/Type$UndetVar;)Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    return-object v0
.end method

.method public forward()Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    if-ne v0, v1, :cond_0

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->uv:Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->t:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;->ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s[undet=%s,t=%s,bound=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
