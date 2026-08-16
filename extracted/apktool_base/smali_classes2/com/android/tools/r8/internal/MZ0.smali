.class public final synthetic Lcom/android/tools/r8/internal/MZ0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/tools/r8/internal/nI;

.field public final synthetic c:Lcom/android/tools/r8/internal/tI;


# direct methods
.method public synthetic constructor <init>(ILcom/android/tools/r8/internal/nI;Lcom/android/tools/r8/internal/tI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/MZ0;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/MZ0;->b:Lcom/android/tools/r8/internal/nI;

    iput-object p3, p0, Lcom/android/tools/r8/internal/MZ0;->c:Lcom/android/tools/r8/internal/tI;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/MZ0;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/MZ0;->b:Lcom/android/tools/r8/internal/nI;

    iget-object v2, p0, Lcom/android/tools/r8/internal/MZ0;->c:Lcom/android/tools/r8/internal/tI;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Vu;->a(ILcom/android/tools/r8/internal/nI;Lcom/android/tools/r8/internal/tI;I)Z

    move-result p1

    return p1
.end method
