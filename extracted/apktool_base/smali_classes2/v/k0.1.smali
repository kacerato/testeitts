.class public final synthetic Lv/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/y;

.field public final synthetic c:Lcom/android/tools/r8/graph/Z1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Z1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/k0;->b:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lv/k0;->c:Lcom/android/tools/r8/graph/Z1;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lv/k0;->b:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lv/k0;->c:Lcom/android/tools/r8/graph/Z1;

    check-cast p1, Lcom/android/tools/r8/graph/M2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/ir/optimize/c0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/Z1;Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    return p1
.end method
