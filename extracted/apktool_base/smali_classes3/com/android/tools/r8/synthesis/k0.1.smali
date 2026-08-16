.class public final synthetic Lcom/android/tools/r8/synthesis/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/synthesis/J;

.field public final synthetic c:Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/synthesis/J;Ljava/util/function/BiPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/synthesis/k0;->b:Lcom/android/tools/r8/synthesis/J;

    iput-object p2, p0, Lcom/android/tools/r8/synthesis/k0;->c:Ljava/util/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/synthesis/k0;->b:Lcom/android/tools/r8/synthesis/J;

    iget-object v1, p0, Lcom/android/tools/r8/synthesis/k0;->c:Ljava/util/function/BiPredicate;

    check-cast p1, Lcom/android/tools/r8/synthesis/S$b;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/synthesis/J;->a(Ljava/util/function/BiPredicate;Lcom/android/tools/r8/synthesis/S$b;)Z

    move-result p1

    return p1
.end method
