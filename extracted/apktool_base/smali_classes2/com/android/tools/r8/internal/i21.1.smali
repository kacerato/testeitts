.class public final synthetic Lcom/android/tools/r8/internal/i21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Xh;

.field public final synthetic c:I

.field public final synthetic d:Lcom/android/tools/r8/internal/IH;

.field public final synthetic e:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Xh;ILcom/android/tools/r8/internal/IH;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/i21;->b:Lcom/android/tools/r8/internal/Xh;

    iput p2, p0, Lcom/android/tools/r8/internal/i21;->c:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/i21;->d:Lcom/android/tools/r8/internal/IH;

    iput-object p4, p0, Lcom/android/tools/r8/internal/i21;->e:[I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/i21;->b:Lcom/android/tools/r8/internal/Xh;

    iget v1, p0, Lcom/android/tools/r8/internal/i21;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/i21;->d:Lcom/android/tools/r8/internal/IH;

    iget-object v3, p0, Lcom/android/tools/r8/internal/i21;->e:[I

    check-cast p1, Lcom/android/tools/r8/internal/aB;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Xh;->a(ILcom/android/tools/r8/internal/IH;[ILcom/android/tools/r8/internal/aB;)Z

    move-result p1

    return p1
.end method
