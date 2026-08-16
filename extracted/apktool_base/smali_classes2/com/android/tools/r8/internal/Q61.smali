.class public final synthetic Lcom/android/tools/r8/internal/Q61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/q4;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/q4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Q61;->b:Lcom/android/tools/r8/internal/q4;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Q61;->b:Lcom/android/tools/r8/internal/q4;

    check-cast p1, Lcom/android/tools/r8/graph/J2;

    check-cast p2, Lcom/android/tools/r8/internal/z4;

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/c4$a;->a(Lcom/android/tools/r8/internal/q4;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/internal/z4;)Lcom/android/tools/r8/internal/z4;

    move-result-object p1

    return-object p1
.end method
