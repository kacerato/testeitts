.class public final Lcom/android/tools/r8/internal/nN;
.super Lcom/android/tools/r8/internal/rN;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/nN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/nN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/nN;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/nN;->b:Lcom/android/tools/r8/internal/nN;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/rN;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;
    .locals 1

    .line 9
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;->CONSTRAINT_NAME:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/aP;)V
    .locals 1

    .line 6
    sget-object v0, Lcom/android/tools/r8/internal/bP;->d:Lcom/android/tools/r8/internal/bP;

    .line 7
    iget-object p1, p1, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/tN;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/yM;

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/yM;->a:Lcom/android/tools/r8/shaking/s1;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->g()Lcom/android/tools/r8/shaking/s1;

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/yM;->c:Lcom/android/tools/r8/graph/D5;

    invoke-interface {v0}, Lcom/android/tools/r8/graph/o0;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/yM;->a:Lcom/android/tools/r8/shaking/s1;

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->a()Lcom/android/tools/r8/shaking/k1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/k1;->s()Lcom/android/tools/r8/shaking/k1;

    :cond_0
    return-void
.end method
