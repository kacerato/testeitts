.class public final synthetic Lcom/android/tools/r8/internal/EF0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/GS;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:[Lcom/android/tools/r8/graph/L2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/GS;Ljava/lang/Object;[Lcom/android/tools/r8/graph/L2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/EF0;->b:Lcom/android/tools/r8/internal/GS;

    iput-object p2, p0, Lcom/android/tools/r8/internal/EF0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/tools/r8/internal/EF0;->d:[Lcom/android/tools/r8/graph/L2;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/EF0;->b:Lcom/android/tools/r8/internal/GS;

    iget-object v1, p0, Lcom/android/tools/r8/internal/EF0;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/internal/EF0;->d:[Lcom/android/tools/r8/graph/L2;

    check-cast p1, [I

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/tools/r8/internal/GS;->a(Ljava/lang/Object;[Lcom/android/tools/r8/graph/L2;[ILjava/lang/Integer;)Lcom/android/tools/r8/internal/zE;

    move-result-object p1

    return-object p1
.end method
