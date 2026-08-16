.class public final synthetic Lcom/android/tools/r8/internal/Fz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/xY;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/LinkedList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/xY;Ljava/lang/Object;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Fz1;->b:Lcom/android/tools/r8/internal/xY;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Fz1;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Fz1;->d:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/Fz1;->b:Lcom/android/tools/r8/internal/xY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Fz1;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/internal/Fz1;->d:Ljava/util/LinkedList;

    check-cast p1, Lcom/android/tools/r8/internal/AA;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/yA;->a(Lcom/android/tools/r8/internal/xY;Ljava/lang/Object;Ljava/util/LinkedList;Lcom/android/tools/r8/internal/AA;)V

    return-void
.end method
