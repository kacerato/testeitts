.class enum Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy$1;
.super Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4001
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;-><init>(Ljava/lang/String;ILorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;)V

    return-void
.end method


# virtual methods
.method public matchesWithName(Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/function/Predicate<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "TT;>;)Z"
        }
    .end annotation

    sget-boolean v0, Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "name match needs a nameMatcher"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p3, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
