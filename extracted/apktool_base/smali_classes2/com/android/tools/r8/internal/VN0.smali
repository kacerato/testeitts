.class public final synthetic Lcom/android/tools/r8/internal/VN0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Ne0;

.field public final synthetic c:Ljava/util/TreeSet;

.field public final synthetic d:Ljava/util/Deque;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Ne0;Ljava/util/TreeSet;Ljava/util/Deque;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/VN0;->b:Lcom/android/tools/r8/internal/Ne0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/VN0;->c:Ljava/util/TreeSet;

    iput-object p3, p0, Lcom/android/tools/r8/internal/VN0;->d:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/VN0;->b:Lcom/android/tools/r8/internal/Ne0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/VN0;->c:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/android/tools/r8/internal/VN0;->d:Ljava/util/Deque;

    check-cast p1, Lcom/android/tools/r8/internal/Ke0;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/Ne0;->a(Ljava/util/TreeSet;Ljava/util/Deque;Lcom/android/tools/r8/internal/Ke0;)Z

    move-result p1

    return p1
.end method
