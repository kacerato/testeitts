.class public final Lcom/android/tools/r8/internal/kN;
.super Lcom/android/tools/r8/internal/rN;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/kN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/kN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/kN;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/kN;->b:Lcom/android/tools/r8/internal/kN;

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

    .line 11
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;->CONSTRAINT_LOOKUP:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/aP;)V
    .locals 1

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/bP;->b:Lcom/android/tools/r8/internal/bP;

    .line 9
    iget-object p1, p1, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/tN;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/yM;

    .line 2
    iget-object v0, p1, Lcom/android/tools/r8/internal/yM;->a:Lcom/android/tools/r8/shaking/s1;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->i()Lcom/android/tools/r8/shaking/s1;

    .line 4
    iget-object v0, p1, Lcom/android/tools/r8/internal/yM;->a:Lcom/android/tools/r8/shaking/s1;

    new-instance v1, Lcom/android/tools/r8/internal/xM;

    iget-object p1, p1, Lcom/android/tools/r8/internal/yM;->b:Lcom/android/tools/r8/internal/BN;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/xM;-><init>()V

    .line 5
    iget-object p1, v0, Lcom/android/tools/r8/shaking/s1;->c:Ljava/util/Set;

    .line 6
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/s1;->m()Lcom/android/tools/r8/shaking/s1;

    return-void
.end method
