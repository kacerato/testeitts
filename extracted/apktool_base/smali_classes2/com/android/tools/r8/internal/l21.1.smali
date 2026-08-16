.class public final synthetic Lcom/android/tools/r8/internal/l21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Xh;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Xh;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/l21;->b:Lcom/android/tools/r8/internal/Xh;

    iput p2, p0, Lcom/android/tools/r8/internal/l21;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/l21;->b:Lcom/android/tools/r8/internal/Xh;

    iget v1, p0, Lcom/android/tools/r8/internal/l21;->c:I

    check-cast p1, Lcom/android/tools/r8/internal/aB;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Xh;->b(ILcom/android/tools/r8/internal/aB;)V

    return-void
.end method
