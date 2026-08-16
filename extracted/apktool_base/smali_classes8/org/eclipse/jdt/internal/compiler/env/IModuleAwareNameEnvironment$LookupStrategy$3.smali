.class enum Lorg/eclipse/jdt/internal/compiler/env/IModuleAwareNameEnvironment$LookupStrategy$3;
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
    .locals 0
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

    const/4 p1, 0x1

    return p1
.end method
