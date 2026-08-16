.class public Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;
.super Lorg/openjdk/tools/javac/code/Symbol;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/code/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DelegatedSymbol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/openjdk/tools/javac/code/Symbol;",
        ">",
        "Lorg/openjdk/tools/javac/code/Symbol;"
    }
.end annotation


# instance fields
.field protected other:Lorg/openjdk/tools/javac/code/Symbol;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iget-wide v2, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v4, p1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, p1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Symbol;-><init>(Lorg/openjdk/tools/javac/code/Kinds$Kind;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method


# virtual methods
.method public accept(Lorg/openjdk/javax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/javax/lang/model/element/ElementVisitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {v0, p1, p2}, Lorg/openjdk/javax/lang/model/element/Element;->accept(Lorg/openjdk/javax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public accept(Lorg/openjdk/tools/javac/code/Symbol$Visitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "P:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/code/Symbol$Visitor<",
            "TR;TP;>;TP;)TR;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-interface {p1, v0, p2}, Lorg/openjdk/tools/javac/code/Symbol$Visitor;->visitSymbol(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public asMemberOf(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->asMemberOf(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic asType()Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->asType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    return-object v0
.end method

.method public baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    return-object v0
.end method

.method public complete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    return-void
.end method

.method public enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->enclClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    return-object v0
.end method

.method public erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol;->erasure(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public externalType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol;->externalType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public flatName()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flatName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAnnotationMirrors()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getAnnotationMirrors()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEnclosingElement()Lorg/openjdk/javax/lang/model/element/Element;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getEnclosingElement()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSimpleName()Lorg/openjdk/javax/lang/model/element/Name;
    .locals 1

    invoke-super {p0}, Lorg/openjdk/tools/javac/code/Symbol;->getSimpleName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    return-object v0
.end method

.method public getUnderlyingSymbol()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    return-object v0
.end method

.method public hasOuterInstance()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->hasOuterInstance()Z

    move-result v0

    return v0
.end method

.method public isConstructor()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isConstructor()Z

    move-result v0

    return v0
.end method

.method public isEnclosedBy(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/code/Symbol;->isEnclosedBy(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result p1

    return p1
.end method

.method public isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->isInheritedIn(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    return p1
.end method

.method public isInner()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isInner()Z

    move-result v0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v0

    return v0
.end method

.method public isMemberOf(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->isMemberOf(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    return p1
.end method

.method public isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->isSubClass(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    return p1
.end method

.method public location()Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    return-object v0
.end method

.method public location(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->location(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    return-object v0
.end method

.method public outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->outermostClass()Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v0

    return-object v0
.end method

.method public packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/code/Symbol$DelegatedSymbol;->other:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
