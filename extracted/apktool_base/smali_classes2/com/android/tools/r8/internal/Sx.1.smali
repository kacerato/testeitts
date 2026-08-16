.class public final Lcom/android/tools/r8/internal/Sx;
.super Lcom/android/tools/r8/internal/Vx;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/sK;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/sK;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Sx;->b:Lcom/android/tools/r8/internal/sK;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Vx;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Sx;->b:Lcom/android/tools/r8/internal/sK;

    iget-object v1, v0, Lcom/android/tools/r8/internal/sK;->b:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v0, v0, Lcom/android/tools/r8/internal/sK;->c:Lcom/android/tools/r8/internal/Jy;

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/pW0;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/pW0;-><init>()V

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/JK;->a(Ljava/util/Iterator;Lcom/android/tools/r8/internal/Jy;)Lcom/android/tools/r8/internal/CK;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/GK;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/GK;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method
