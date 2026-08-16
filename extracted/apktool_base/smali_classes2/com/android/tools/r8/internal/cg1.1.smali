.class public final synthetic Lcom/android/tools/r8/internal/cg1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/internal/js0;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/js0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/cg1;->a:Lcom/android/tools/r8/internal/js0;

    iput p2, p0, Lcom/android/tools/r8/internal/cg1;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/cg1;->a:Lcom/android/tools/r8/internal/js0;

    iget v1, p0, Lcom/android/tools/r8/internal/cg1;->b:I

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/tools/r8/internal/is0;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/js0;->b(ILjava/lang/String;Lcom/android/tools/r8/internal/is0;)V

    return-void
.end method
