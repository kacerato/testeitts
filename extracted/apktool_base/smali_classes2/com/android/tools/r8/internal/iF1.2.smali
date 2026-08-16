.class public final synthetic Lcom/android/tools/r8/internal/iF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ei;

.field public final synthetic c:Lcom/android/tools/r8/internal/Ci;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ci;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/iF1;->b:Lcom/android/tools/r8/internal/Ei;

    iput-object p2, p0, Lcom/android/tools/r8/internal/iF1;->c:Lcom/android/tools/r8/internal/Ci;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/iF1;->b:Lcom/android/tools/r8/internal/Ei;

    iget-object v1, p0, Lcom/android/tools/r8/internal/iF1;->c:Lcom/android/tools/r8/internal/Ci;

    check-cast p1, Ljava/util/LinkedList;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/zi;->a(Lcom/android/tools/r8/internal/Ei;Lcom/android/tools/r8/internal/Ci;Ljava/util/LinkedList;)Z

    move-result p1

    return p1
.end method
