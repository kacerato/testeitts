.class Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;->generateCodeForStringSwitch(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StringSwitchCase"
.end annotation


# instance fields
.field hashCode:I

.field label:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

.field string:Ljava/lang/String;

.field final synthetic this$0:Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;ILjava/lang/String;Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->this$0:Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->hashCode:I

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->string:Ljava/lang/String;

    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->label:Lorg/eclipse/jdt/internal/compiler/codegen/BranchLabel;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->hashCode:I

    iget p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->hashCode:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StringSwitchCase :\ncase "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->hashCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SwitchStatement$1StringSwitchCase;->string:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
