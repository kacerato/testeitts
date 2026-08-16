.class public final synthetic Lcom/android/tools/r8/internal/j21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/j21;->b:I

    iput p2, p0, Lcom/android/tools/r8/internal/j21;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/j21;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/j21;->c:I

    check-cast p1, Lcom/android/tools/r8/internal/aB;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Xh;->b(IILcom/android/tools/r8/internal/aB;)V

    return-void
.end method
