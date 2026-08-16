.class public abstract Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;
.super Lorg/eclipse/jdt/internal/compiler/ast/Statement;
.source "SourceFile"


# instance fields
.field anyExceptionLabel:Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/ast/Statement;-><init>()V

    return-void
.end method

.method public static reenterAllExceptionHandlers([Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;ILorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    array-length p1, p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_2

    return-void

    :cond_2
    aget-object v1, p0, v0

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->enterAnyExceptionHandler(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    invoke-virtual {v1, p2}, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->enterDeclaredExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enterAnyExceptionHandler(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->anyExceptionLabel:Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    if-nez v0, :cond_0

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;-><init>(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->anyExceptionLabel:Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    :cond_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->anyExceptionLabel:Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeStart()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->anyExceptionLabel:Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    return-object p1
.end method

.method public enterDeclaredExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 0

    return-void
.end method

.method public exitAnyExceptionHandler()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->anyExceptionLabel:Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->placeEnd()V

    :cond_0
    return-void
.end method

.method public exitDeclaredExceptionHandlers(Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;)V
    .locals 0

    return-void
.end method

.method public abstract generateSubRoutineInvocation(Lorg/eclipse/jdt/internal/compiler/lookup/BlockScope;Lorg/eclipse/jdt/internal/compiler/codegen/CodeStream;Ljava/lang/Object;ILorg/eclipse/jdt/internal/compiler/lookup/LocalVariableBinding;)Z
.end method

.method public abstract isSubRoutineEscaping()Z
.end method

.method public placeAllAnyExceptionHandler()V
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/ast/SubRoutineStatement;->anyExceptionLabel:Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/codegen/ExceptionLabel;->place()V

    return-void
.end method
