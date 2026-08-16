.class public final synthetic Lcom/android/tools/r8/internal/lS0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/f6;

.field public final synthetic c:Lcom/android/tools/r8/internal/T1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/lS0;->b:Lcom/android/tools/r8/internal/f6;

    iput-object p2, p0, Lcom/android/tools/r8/internal/lS0;->c:Lcom/android/tools/r8/internal/T1;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lS0;->b:Lcom/android/tools/r8/internal/f6;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lS0;->c:Lcom/android/tools/r8/internal/T1;

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/Q1;->b(Lcom/android/tools/r8/internal/f6;Lcom/android/tools/r8/internal/T1;Lcom/android/tools/r8/graph/A2;)Z

    move-result p1

    return p1
.end method
