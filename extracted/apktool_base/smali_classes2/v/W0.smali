.class public final synthetic Lv/W0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/YV;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/YV;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/W0;->b:Lcom/android/tools/r8/internal/YV;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lv/W0;->b:Lcom/android/tools/r8/internal/YV;

    check-cast p1, Lcom/android/tools/r8/ir/optimize/j0;

    invoke-static {v0, p1}, Lcom/android/tools/r8/ir/optimize/m0;->a(Lcom/android/tools/r8/internal/YV;Lcom/android/tools/r8/ir/optimize/j0;)Z

    move-result p1

    return p1
.end method
