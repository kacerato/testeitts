.class public final Lcom/android/tools/r8/internal/wP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/MM;

.field public b:Lcom/android/tools/r8/internal/zN;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/yN;->c:Lcom/android/tools/r8/internal/yN;

    iput-object v0, p0, Lcom/android/tools/r8/internal/wP;->b:Lcom/android/tools/r8/internal/zN;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/zN;)Lcom/android/tools/r8/internal/wP;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/android/tools/r8/internal/wP;->b:Lcom/android/tools/r8/internal/zN;

    return-object p0
.end method

.method public final a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Target;Lcom/android/tools/r8/internal/rP;)Lcom/android/tools/r8/internal/wP;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Target;->getItem()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/rP;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$BindingReference;)Lcom/android/tools/r8/internal/MM;

    move-result-object p2

    .line 2
    iput-object p2, p0, Lcom/android/tools/r8/internal/wP;->a:Lcom/android/tools/r8/internal/MM;

    .line 3
    sget-boolean p2, Lcom/android/tools/r8/internal/wP;->c:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/tools/r8/internal/wP;->b:Lcom/android/tools/r8/internal/zN;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    instance-of p2, p2, Lcom/android/tools/r8/internal/yN;

    if-eqz p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/wP;->b:Lcom/android/tools/r8/internal/zN;

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Target;->hasConstraints()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Target;->getConstraints()Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_1
    invoke-virtual {p1}, Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Target;->getConstraintAdditionsList()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/android/tools/r8/internal/Mx1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/Mx1;-><init>(Lcom/android/tools/r8/internal/wP;)V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p1, v1}, Lcom/android/tools/r8/internal/zN;->a(Lcom/android/tools/r8/relocated/keepanno/proto/KeepSpecProtos$Constraints;Ljava/util/List;Ljava/util/function/Consumer;)V

    return-object p0
.end method
