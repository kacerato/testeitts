.class public final synthetic Lcom/android/tools/r8/internal/mh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/internal/d9;

.field public final synthetic d:Lcom/android/tools/r8/graph/M2;

.field public final synthetic e:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/d9;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/mh1;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/mh1;->c:Lcom/android/tools/r8/internal/d9;

    iput-object p3, p0, Lcom/android/tools/r8/internal/mh1;->d:Lcom/android/tools/r8/graph/M2;

    iput-object p4, p0, Lcom/android/tools/r8/internal/mh1;->e:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/mh1;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/mh1;->c:Lcom/android/tools/r8/internal/d9;

    iget-object v2, p0, Lcom/android/tools/r8/internal/mh1;->d:Lcom/android/tools/r8/graph/M2;

    iget-object v3, p0, Lcom/android/tools/r8/internal/mh1;->e:Ljava/util/function/BiFunction;

    move-object v4, p1

    check-cast v4, Lcom/android/tools/r8/internal/H9;

    move-object v5, p2

    check-cast v5, Lcom/android/tools/r8/internal/S60;

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/kg;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/d9;Lcom/android/tools/r8/graph/M2;Ljava/util/function/BiFunction;Lcom/android/tools/r8/internal/H9;Lcom/android/tools/r8/internal/S60;)Lcom/android/tools/r8/internal/H9;

    move-result-object p1

    return-object p1
.end method
