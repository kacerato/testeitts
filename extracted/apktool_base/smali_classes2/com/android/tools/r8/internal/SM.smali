.class public final Lcom/android/tools/r8/internal/SM;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:Z = true


# instance fields
.field public a:Lcom/android/tools/r8/internal/MN;

.field public b:I

.field public c:Lcom/android/tools/r8/internal/QM;

.field public d:Lcom/android/tools/r8/internal/MM;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/tools/r8/internal/MN;->d:Lcom/android/tools/r8/internal/MN;

    iput-object v0, p0, Lcom/android/tools/r8/internal/SM;->a:Lcom/android/tools/r8/internal/MN;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/tools/r8/internal/SM;->b:I

    sget-object v0, Lcom/android/tools/r8/internal/QM;->b:Lcom/android/tools/r8/internal/QM;

    iput-object v0, p0, Lcom/android/tools/r8/internal/SM;->c:Lcom/android/tools/r8/internal/QM;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/MM;Lcom/android/tools/r8/internal/MM;)Lcom/android/tools/r8/internal/MM;
    .locals 0

    .line 1
    return-object p0
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/TM;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/SM;->d:Lcom/android/tools/r8/internal/MM;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/SM;->c:Lcom/android/tools/r8/internal/QM;

    .line 4
    new-instance v1, Lcom/android/tools/r8/internal/RM;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/RM;-><init>(Lcom/android/tools/r8/internal/QM;)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/internal/SM;->d:Lcom/android/tools/r8/internal/MM;

    new-instance v2, Lcom/android/tools/r8/internal/dW0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/dW0;-><init>()V

    .line 6
    invoke-virtual {v1, v0, v0, v2}, Lcom/android/tools/r8/internal/RM;->a(Lcom/android/tools/r8/internal/MM;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/MM;

    iput-object v0, p0, Lcom/android/tools/r8/internal/SM;->d:Lcom/android/tools/r8/internal/MM;

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/TM;

    iget-object v2, p0, Lcom/android/tools/r8/internal/SM;->a:Lcom/android/tools/r8/internal/MN;

    iget v3, p0, Lcom/android/tools/r8/internal/SM;->b:I

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/RM;->a()Lcom/android/tools/r8/internal/QM;

    move-result-object v1

    iget-object v4, p0, Lcom/android/tools/r8/internal/SM;->d:Lcom/android/tools/r8/internal/MM;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/tools/r8/internal/TM;-><init>(Lcom/android/tools/r8/internal/MN;ILcom/android/tools/r8/internal/QM;Lcom/android/tools/r8/internal/MM;)V

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/FN;

    const-string v1, "KeepCheck must have an item pattern."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/FN;-><init>(Ljava/lang/String;)V

    throw v0
.end method
