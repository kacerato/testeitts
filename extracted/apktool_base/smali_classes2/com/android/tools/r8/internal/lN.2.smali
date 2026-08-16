.class public final Lcom/android/tools/r8/internal/lN;
.super Lcom/android/tools/r8/internal/rN;
.source "SourceFile"


# static fields
.field public static final b:Lcom/android/tools/r8/internal/lN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/lN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/lN;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/lN;->b:Lcom/android/tools/r8/internal/lN;

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

    .line 7
    sget-object v0, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;->CONSTRAINT_METHOD_INVOKE:Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$ConstraintElement;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/aP;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/android/tools/r8/internal/bP;->c:Lcom/android/tools/r8/internal/bP;

    .line 5
    iget-object p1, p1, Lcom/android/tools/r8/internal/aP;->b:Ljava/util/HashSet;

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/tN;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/tools/r8/internal/yM;

    .line 2
    iget-object p1, p1, Lcom/android/tools/r8/internal/yM;->a:Lcom/android/tools/r8/shaking/s1;

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/shaking/s1;->h()Lcom/android/tools/r8/shaking/s1;

    return-void
.end method
