.class public final synthetic Lcom/android/tools/r8/internal/Uy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ad;

.field public final synthetic c:Ljava/util/function/Consumer;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ad;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Uy0;->b:Lcom/android/tools/r8/internal/Ad;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Uy0;->c:Ljava/util/function/Consumer;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Uy0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Uy0;->b:Lcom/android/tools/r8/internal/Ad;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Uy0;->c:Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Uy0;->d:Ljava/lang/String;

    check-cast p1, Lcom/android/tools/r8/internal/DP;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Ad;->b(Ljava/util/function/Consumer;Ljava/lang/String;Lcom/android/tools/r8/internal/DP;)V

    return-void
.end method
