.class public final synthetic Lu/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Np;

.field public final synthetic c:Lcom/android/tools/r8/internal/Np;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/c0;->b:Lcom/android/tools/r8/internal/Np;

    iput-object p2, p0, Lu/c0;->c:Lcom/android/tools/r8/internal/Np;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lu/c0;->b:Lcom/android/tools/r8/internal/Np;

    iget-object v1, p0, Lu/c0;->c:Lcom/android/tools/r8/internal/Np;

    check-cast p1, Lcom/android/tools/r8/internal/Np;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/dex/U;->a(Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/internal/Np;

    move-result-object p1

    return-object p1
.end method
