.class public final synthetic Lv/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/ir/optimize/d0;

.field public final synthetic c:Lcom/android/tools/r8/internal/xw0;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/ir/optimize/d0;Lcom/android/tools/r8/internal/xw0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/m0;->b:Lcom/android/tools/r8/ir/optimize/d0;

    iput-object p2, p0, Lv/m0;->c:Lcom/android/tools/r8/internal/xw0;

    iput p3, p0, Lv/m0;->d:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lv/m0;->b:Lcom/android/tools/r8/ir/optimize/d0;

    iget-object v1, p0, Lv/m0;->c:Lcom/android/tools/r8/internal/xw0;

    iget v2, p0, Lv/m0;->d:I

    check-cast p1, Lcom/android/tools/r8/internal/aY;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/ir/optimize/d0;->a(Lcom/android/tools/r8/internal/xw0;ILcom/android/tools/r8/internal/aY;)Z

    move-result p1

    return p1
.end method
