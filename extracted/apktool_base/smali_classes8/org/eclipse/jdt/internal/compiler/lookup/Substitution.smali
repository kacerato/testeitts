.class public interface abstract Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/lookup/Substitution$NullSubstitution;
    }
.end annotation


# virtual methods
.method public abstract environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
.end method

.method public abstract isRawSubstitution()Z
.end method

.method public abstract substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
.end method
