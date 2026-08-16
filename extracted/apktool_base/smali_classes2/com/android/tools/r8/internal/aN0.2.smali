.class public final synthetic Lcom/android/tools/r8/internal/aN0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Ljava/util/function/Supplier;

.field public final synthetic c:Lcom/android/tools/r8/internal/b2;

.field public final synthetic d:Lcom/android/tools/r8/internal/ns0;

.field public final synthetic e:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/b2;Lcom/android/tools/r8/internal/ns0;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/aN0;->b:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/tools/r8/internal/aN0;->c:Lcom/android/tools/r8/internal/b2;

    iput-object p3, p0, Lcom/android/tools/r8/internal/aN0;->d:Lcom/android/tools/r8/internal/ns0;

    iput-object p4, p0, Lcom/android/tools/r8/internal/aN0;->e:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/aN0;->b:Ljava/util/function/Supplier;

    iget-object v1, p0, Lcom/android/tools/r8/internal/aN0;->c:Lcom/android/tools/r8/internal/b2;

    iget-object v2, p0, Lcom/android/tools/r8/internal/aN0;->d:Lcom/android/tools/r8/internal/ns0;

    iget-object v3, p0, Lcom/android/tools/r8/internal/aN0;->e:Ljava/util/function/BiFunction;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/graph/F5;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/Q00;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/Mw;->a(Ljava/util/function/Supplier;Lcom/android/tools/r8/internal/b2;Lcom/android/tools/r8/internal/ns0;Ljava/util/function/BiFunction;Lcom/android/tools/r8/graph/F5;Lcom/android/tools/r8/internal/Q00;)Lcom/android/tools/r8/internal/Q00;

    move-result-object p1

    return-object p1
.end method
