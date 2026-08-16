.class public Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;
.super Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;
.source "SourceFile"


# instance fields
.field public closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

.field private problemId:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->closestMatch:Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;

    .line 4
    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;->declaringClass:Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    .line 5
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/lookup/VariableBinding;->name:[C

    .line 6
    iput p4, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->problemId:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;-><init>(Lorg/eclipse/jdt/internal/compiler/lookup/FieldBinding;Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;[CI)V

    return-void
.end method


# virtual methods
.method public final problemId()I
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/ProblemFieldBinding;->problemId:I

    return v0
.end method
