.class public final synthetic Lorg/eclipse/jdt/internal/compiler/lookup/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18$InferenceOperation;


# instance fields
.field public final synthetic a:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

.field public final synthetic b:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;


# direct methods
.method public synthetic constructor <init>(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/f;->a:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/lookup/f;->b:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    return-void
.end method


# virtual methods
.method public final perform()Z
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/lookup/f;->a:Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/lookup/f;->b:Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;

    invoke-static {v0, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;->c(Lorg/eclipse/jdt/internal/compiler/lookup/InferenceContext18;Lorg/eclipse/jdt/internal/compiler/lookup/ConstraintFormula;)Z

    move-result v0

    return v0
.end method
