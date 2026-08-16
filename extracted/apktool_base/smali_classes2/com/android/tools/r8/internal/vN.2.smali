.class public final Lcom/android/tools/r8/internal/vN;
.super Lcom/android/tools/r8/internal/zN;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/vN;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/vN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/vN;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/vN;->c:Lcom/android/tools/r8/internal/vN;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zN;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/kN;->b:Lcom/android/tools/r8/internal/kN;

    sget-object v1, Lcom/android/tools/r8/internal/nN;->b:Lcom/android/tools/r8/internal/nN;

    sget-object v2, Lcom/android/tools/r8/internal/pN;->b:Lcom/android/tools/r8/internal/pN;

    sget-object v3, Lcom/android/tools/r8/internal/qN;->b:Lcom/android/tools/r8/internal/qN;

    sget-object v4, Lcom/android/tools/r8/internal/oN;->b:Lcom/android/tools/r8/internal/oN;

    sget-object v5, Lcom/android/tools/r8/internal/eN;->b:Lcom/android/tools/r8/internal/eN;

    const/16 v6, 0x8

    new-array v6, v6, [Lcom/android/tools/r8/internal/rN;

    sget-object v7, Lcom/android/tools/r8/internal/fN;->b:Lcom/android/tools/r8/internal/fN;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Lcom/android/tools/r8/internal/lN;->b:Lcom/android/tools/r8/internal/lN;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Lcom/android/tools/r8/internal/mN;->b:Lcom/android/tools/r8/internal/mN;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    sget-object v7, Lcom/android/tools/r8/internal/gN;->b:Lcom/android/tools/r8/internal/gN;

    const/4 v8, 0x3

    aput-object v7, v6, v8

    sget-object v7, Lcom/android/tools/r8/internal/iN;->b:Lcom/android/tools/r8/internal/iN;

    const/4 v8, 0x4

    aput-object v7, v6, v8

    sget-object v7, Lcom/android/tools/r8/internal/hN;->b:Lcom/android/tools/r8/internal/hN;

    const/4 v8, 0x5

    aput-object v7, v6, v8

    sget-object v7, Lcom/android/tools/r8/internal/jN;->b:Lcom/android/tools/r8/internal/jN;

    const/4 v8, 0x6

    aput-object v7, v6, v8

    sget-object v7, Lcom/android/tools/r8/internal/dN;->c:Lcom/android/tools/r8/internal/dN;

    const/4 v8, 0x7

    aput-object v7, v6, v8

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/QC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/vN;->b:Lcom/android/tools/r8/internal/QC;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;Lcom/android/tools/r8/internal/rN;)V
    .locals 0

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/rN;->b()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;->addConstraints(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraint$Builder;)Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;

    return-void
.end method

.method public static synthetic a(Ljava/util/Set;Lcom/android/tools/r8/internal/rN;)V
    .locals 0

    .line 3
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/rN;->a(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/QC;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/vN;->b:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/cP;)Lcom/android/tools/r8/internal/cP;
    .locals 0

    .line 1
    sget-object p1, Lcom/android/tools/r8/internal/cP;->b:Lcom/android/tools/r8/internal/cP;

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints;->newBuilder()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;

    move-result-object p2

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/vN;->b:Lcom/android/tools/r8/internal/QC;

    new-instance v1, Lcom/android/tools/r8/internal/hw1;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/hw1;-><init>(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints$Builder;->build()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Ljava/util/Set;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/vN;->b:Lcom/android/tools/r8/internal/QC;

    new-instance v2, Lcom/android/tools/r8/internal/iw1;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/iw1;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "KeepConstraints.All{}"

    return-object v0
.end method
