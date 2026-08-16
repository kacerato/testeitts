.class public final synthetic Lcom/android/tools/r8/graph/wg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/u1;

.field public final synthetic c:Lcom/android/tools/r8/graph/M2;

.field public final synthetic d:Lcom/android/tools/r8/graph/I2;

.field public final synthetic e:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/graph/wg;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/graph/wg;->c:Lcom/android/tools/r8/graph/M2;

    iput-object p3, p0, Lcom/android/tools/r8/graph/wg;->d:Lcom/android/tools/r8/graph/I2;

    iput-object p4, p0, Lcom/android/tools/r8/graph/wg;->e:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/graph/wg;->b:Lcom/android/tools/r8/graph/u1;

    iget-object v1, p0, Lcom/android/tools/r8/graph/wg;->c:Lcom/android/tools/r8/graph/M2;

    iget-object v2, p0, Lcom/android/tools/r8/graph/wg;->d:Lcom/android/tools/r8/graph/I2;

    iget-object v3, p0, Lcom/android/tools/r8/graph/wg;->e:Ljava/util/function/Predicate;

    check-cast p1, Lcom/android/tools/r8/graph/L2;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/L2;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method
