.class public Lorg/eclipse/jdt/internal/compiler/lookup/Substitution$NullSubstitution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/lookup/Substitution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullSubstitution"
.end annotation


# instance fields
.field environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution$NullSubstitution;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-void
.end method


# virtual methods
.method public environment()Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;
    .locals 1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/Substitution$NullSubstitution;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-object v0
.end method

.method public isRawSubstitution()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public substitute(Lorg/eclipse/jdt/internal/compiler/lookup/TypeVariableBinding;)Lorg/eclipse/jdt/internal/compiler/lookup/TypeBinding;
    .locals 0

    return-object p1
.end method
