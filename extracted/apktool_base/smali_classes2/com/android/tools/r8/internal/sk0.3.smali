.class public final Lcom/android/tools/r8/internal/sk0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/RetracedSingleFrame;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/Rj0;

.field public final b:Lcom/android/tools/r8/retrace/RetracedMethodReference;

.field public final c:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Rj0;Lcom/android/tools/r8/retrace/RetracedMethodReference;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/sk0;->a:Lcom/android/tools/r8/internal/Rj0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/sk0;->b:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    iput p3, p0, Lcom/android/tools/r8/internal/sk0;->c:I

    return-void
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/sk0;->c:I

    return v0
.end method

.method public final getMethodReference()Lcom/android/tools/r8/retrace/RetracedMethodReference;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/sk0;->b:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    return-object v0
.end method

.method public final getSourceFile()Lcom/android/tools/r8/retrace/RetracedSourceFile;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/sk0;->a:Lcom/android/tools/r8/internal/Rj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/sk0;->b:Lcom/android/tools/r8/retrace/RetracedMethodReference;

    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedClassMemberReference;->getHolderClass()Lcom/android/tools/r8/retrace/RetracedClassReference;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/Rj0;->b:Lcom/android/tools/r8/internal/Tj0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/Tj0;->c:Lcom/android/tools/r8/internal/wk0;

    sget-object v2, Lcom/android/tools/r8/internal/kk0;->a:Ljava/util/HashSet;

    new-instance v2, Lcom/android/tools/r8/internal/tk0;

    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetracedClassReference;->getClassReference()Lcom/android/tools/r8/references/ClassReference;

    move-result-object v3

    iget-object v0, v0, Lcom/android/tools/r8/internal/wk0;->a:Lcom/android/tools/r8/internal/dV;

    invoke-interface {v3}, Lcom/android/tools/r8/references/TypeReference;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/dV;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/tk0;-><init>(Lcom/android/tools/r8/retrace/RetracedClassReference;Ljava/lang/String;)V

    return-object v2
.end method
