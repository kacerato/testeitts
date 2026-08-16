.class public final synthetic Lcom/android/tools/r8/internal/Gz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/wY;

.field public final synthetic c:Ljava/util/LinkedList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/wY;Ljava/util/LinkedList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Gz1;->b:Lcom/android/tools/r8/internal/wY;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Gz1;->c:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Gz1;->b:Lcom/android/tools/r8/internal/wY;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Gz1;->c:Ljava/util/LinkedList;

    check-cast p1, Lcom/android/tools/r8/internal/AA;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/yA;->a(Lcom/android/tools/r8/internal/wY;Ljava/util/LinkedList;Lcom/android/tools/r8/internal/AA;)V

    return-void
.end method
