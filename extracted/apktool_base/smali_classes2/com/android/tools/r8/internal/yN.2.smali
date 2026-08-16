.class public final Lcom/android/tools/r8/internal/yN;
.super Lcom/android/tools/r8/internal/zN;
.source "SourceFile"


# static fields
.field public static final c:Lcom/android/tools/r8/internal/yN;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/QC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/yN;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/yN;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/android/tools/r8/internal/zN;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/kN;->b:Lcom/android/tools/r8/internal/kN;

    sget-object v1, Lcom/android/tools/r8/internal/nN;->b:Lcom/android/tools/r8/internal/nN;

    sget-object v2, Lcom/android/tools/r8/internal/eN;->b:Lcom/android/tools/r8/internal/eN;

    sget-object v3, Lcom/android/tools/r8/internal/lN;->b:Lcom/android/tools/r8/internal/lN;

    sget-object v4, Lcom/android/tools/r8/internal/gN;->b:Lcom/android/tools/r8/internal/gN;

    sget-object v5, Lcom/android/tools/r8/internal/iN;->b:Lcom/android/tools/r8/internal/iN;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/android/tools/r8/internal/rN;

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/QC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/yN;->b:Lcom/android/tools/r8/internal/QC;

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/QC;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/yN;->b:Lcom/android/tools/r8/internal/QC;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/cP;)Lcom/android/tools/r8/internal/cP;
    .locals 0

    .line 1
    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 0

    .line 2
    return-void
.end method

.method public final b()Ljava/util/Set;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "KeepConstraints.Defaults{}"

    return-object v0
.end method
