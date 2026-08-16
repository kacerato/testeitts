.class public final synthetic Lcom/android/tools/r8/internal/He1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/android/tools/r8/internal/is0;


# direct methods
.method public synthetic constructor <init>(ILcom/android/tools/r8/internal/is0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/He1;->b:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/He1;->c:Lcom/android/tools/r8/internal/is0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/He1;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/He1;->c:Lcom/android/tools/r8/internal/is0;

    check-cast p1, Lcom/android/tools/r8/internal/is0;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/is0;->a(ILcom/android/tools/r8/internal/is0;Lcom/android/tools/r8/internal/is0;)V

    return-void
.end method
