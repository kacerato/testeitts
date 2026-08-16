.class public final synthetic Lcom/android/tools/r8/internal/h21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:[I

.field public final synthetic d:Lcom/android/tools/r8/internal/IH;

.field public final synthetic e:[I


# direct methods
.method public synthetic constructor <init>(I[ILcom/android/tools/r8/internal/IH;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/h21;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/h21;->c:[I

    iput-object p3, p0, Lcom/android/tools/r8/internal/h21;->d:Lcom/android/tools/r8/internal/IH;

    iput-object p4, p0, Lcom/android/tools/r8/internal/h21;->e:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/h21;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/h21;->c:[I

    iget-object v2, p0, Lcom/android/tools/r8/internal/h21;->d:Lcom/android/tools/r8/internal/IH;

    iget-object v3, p0, Lcom/android/tools/r8/internal/h21;->e:[I

    check-cast p1, Lcom/android/tools/r8/internal/aB;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/tools/r8/internal/Xh;->a(I[ILcom/android/tools/r8/internal/IH;[ILcom/android/tools/r8/internal/aB;)V

    return-void
.end method
