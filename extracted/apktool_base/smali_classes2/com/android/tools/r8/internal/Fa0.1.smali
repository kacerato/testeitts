.class public final Lcom/android/tools/r8/internal/Fa0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/tools/r8/internal/oa0;

.field public final b:Lcom/android/tools/r8/internal/oa0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/oa0;Lcom/android/tools/r8/internal/oa0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fa0;->a:Lcom/android/tools/r8/internal/oa0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Fa0;->b:Lcom/android/tools/r8/internal/oa0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/Consumer;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fa0;->a:Lcom/android/tools/r8/internal/oa0;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fa0;->b:Lcom/android/tools/r8/internal/oa0;

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
