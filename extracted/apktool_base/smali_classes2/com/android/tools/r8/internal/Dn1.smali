.class public final synthetic Lcom/android/tools/r8/internal/Dn1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/nm;

.field public final synthetic c:Lcom/android/tools/r8/graph/A2;

.field public final synthetic d:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/nm;Lcom/android/tools/r8/graph/A2;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Dn1;->b:Lcom/android/tools/r8/internal/nm;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Dn1;->c:Lcom/android/tools/r8/graph/A2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Dn1;->d:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Dn1;->b:Lcom/android/tools/r8/internal/nm;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Dn1;->c:Lcom/android/tools/r8/graph/A2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Dn1;->d:Ljava/util/function/BiFunction;

    check-cast p1, Lcom/android/tools/r8/synthesis/N;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/nm;->a(Lcom/android/tools/r8/graph/A2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/synthesis/N;)V

    return-void
.end method
