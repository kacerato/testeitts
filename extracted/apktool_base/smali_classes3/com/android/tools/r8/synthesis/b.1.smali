.class public final Lcom/android/tools/r8/synthesis/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/x0;

.field public final b:I

.field public final c:Lcom/android/tools/r8/synthesis/d;

.field public final d:Lcom/android/tools/r8/internal/hC;

.field public final e:Lcom/android/tools/r8/synthesis/E;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/d;Lcom/android/tools/r8/internal/hC;Lcom/android/tools/r8/synthesis/E;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/synthesis/b;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/b;->a:Lcom/android/tools/r8/graph/x0;

    iput-object p3, p0, Lcom/android/tools/r8/synthesis/b;->c:Lcom/android/tools/r8/synthesis/d;

    iput-object p4, p0, Lcom/android/tools/r8/synthesis/b;->d:Lcom/android/tools/r8/internal/hC;

    iput-object p5, p0, Lcom/android/tools/r8/synthesis/b;->e:Lcom/android/tools/r8/synthesis/E;

    sget-boolean p1, Lcom/android/tools/r8/synthesis/b;->f:Z

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/android/tools/r8/synthesis/d;->f:Z

    if-nez p1, :cond_0

    iget-object p4, p3, Lcom/android/tools/r8/synthesis/d;->b:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/android/tools/r8/synthesis/d;->a(Lcom/android/tools/r8/graph/x0;Ljava/util/Collection;)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p4, p3, Lcom/android/tools/r8/synthesis/d;->c:Lcom/android/tools/r8/internal/nC;

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/android/tools/r8/synthesis/d;->a(Lcom/android/tools/r8/graph/x0;Ljava/util/Collection;)V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p3, Lcom/android/tools/r8/synthesis/d;->e:Lcom/android/tools/r8/internal/QC;

    invoke-static {p2, p1}, Lcom/android/tools/r8/synthesis/d;->a(Lcom/android/tools/r8/graph/x0;Ljava/util/Collection;)V

    return-void

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_3
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Function;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/b0;
    .locals 0

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/b0;

    return-object p1
.end method
