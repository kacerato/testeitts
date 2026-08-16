.class public final synthetic Lcom/android/tools/r8/internal/L21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/U6;

.field public final synthetic c:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/U6;Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/L21;->b:Lcom/android/tools/r8/internal/U6;

    iput-object p2, p0, Lcom/android/tools/r8/internal/L21;->c:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/L21;->b:Lcom/android/tools/r8/internal/U6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/L21;->c:Ljava/util/function/Predicate;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Xx;->a(Lcom/android/tools/r8/internal/U6;Ljava/util/function/Predicate;Ljava/lang/Object;)V

    return-void
.end method
