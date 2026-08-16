.class public Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;
.source "SourceFile"


# instance fields
.field private problemId:I


# direct methods
.method public constructor <init>([CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    .line 5
    filled-new-array {p1}, [[C

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;-><init>([[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V

    return-void
.end method

.method public constructor <init>([[CILorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->compoundName:[[C

    .line 3
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;->problemId:I

    .line 4
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    return-void
.end method


# virtual methods
.method public final problemId()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemPackageBinding;->problemId:I

    return v0
.end method
