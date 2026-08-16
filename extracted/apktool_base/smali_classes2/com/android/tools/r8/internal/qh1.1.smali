.class public final synthetic Lcom/android/tools/r8/internal/qh1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/kl0;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/android/tools/r8/internal/C7;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/kl0;IILcom/android/tools/r8/internal/C7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/qh1;->b:Lcom/android/tools/r8/internal/kl0;

    iput p2, p0, Lcom/android/tools/r8/internal/qh1;->c:I

    iput p3, p0, Lcom/android/tools/r8/internal/qh1;->d:I

    iput-object p4, p0, Lcom/android/tools/r8/internal/qh1;->e:Lcom/android/tools/r8/internal/C7;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/qh1;->b:Lcom/android/tools/r8/internal/kl0;

    iget v1, p0, Lcom/android/tools/r8/internal/qh1;->c:I

    iget v2, p0, Lcom/android/tools/r8/internal/qh1;->d:I

    iget-object v3, p0, Lcom/android/tools/r8/internal/qh1;->e:Lcom/android/tools/r8/internal/C7;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/kl0;->a(IILcom/android/tools/r8/internal/C7;Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
