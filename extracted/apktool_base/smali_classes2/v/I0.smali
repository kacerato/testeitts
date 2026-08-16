.class public final synthetic Lv/I0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Je0;

.field public final synthetic c:Lcom/android/tools/r8/internal/W5;

.field public final synthetic d:Lcom/android/tools/r8/internal/zE;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv/I0;->b:Lcom/android/tools/r8/internal/Je0;

    iput-object p2, p0, Lv/I0;->c:Lcom/android/tools/r8/internal/W5;

    iput-object p3, p0, Lv/I0;->d:Lcom/android/tools/r8/internal/zE;

    iput p4, p0, Lv/I0;->e:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lv/I0;->b:Lcom/android/tools/r8/internal/Je0;

    iget-object v1, p0, Lv/I0;->c:Lcom/android/tools/r8/internal/W5;

    iget-object v2, p0, Lv/I0;->d:Lcom/android/tools/r8/internal/zE;

    iget v3, p0, Lv/I0;->e:I

    check-cast p1, Lcom/android/tools/r8/internal/xw0;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/ir/optimize/h0;->a(Lcom/android/tools/r8/internal/Je0;Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/zE;ILcom/android/tools/r8/internal/xw0;)Z

    move-result p1

    return p1
.end method
