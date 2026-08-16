.class public Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;
.super Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;
.source "SourceFile"


# static fields
.field static factories:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;-><init>(I)V

    sput-object v0, Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;->factories:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblemFactory;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public static getProblemFactory(Ljava/util/Locale;)Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;
    .locals 2

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;->factories:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    invoke-virtual {v0, p0}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;->factories:Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;

    new-instance v1, Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;

    invoke-direct {v1, p0}, Lorg/eclipse/jdt/internal/core/builder/ProblemFactory;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0, p0, v1}, Lorg/eclipse/jdt/internal/compiler/util/SimpleLookupTable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_0
    return-object v0
.end method
