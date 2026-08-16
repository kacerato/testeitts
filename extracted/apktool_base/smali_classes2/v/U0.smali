.class public final synthetic Lv/U0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/YV;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/YV;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/U0;->b:Lcom/android/tools/r8/internal/YV;

    iput p2, p0, Lv/U0;->c:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lv/U0;->b:Lcom/android/tools/r8/internal/YV;

    iget v1, p0, Lv/U0;->c:I

    check-cast p1, Lcom/android/tools/r8/ir/optimize/j0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/ir/optimize/m0;->a(Lcom/android/tools/r8/internal/YV;ILcom/android/tools/r8/ir/optimize/j0;)Z

    move-result p1

    return p1
.end method
