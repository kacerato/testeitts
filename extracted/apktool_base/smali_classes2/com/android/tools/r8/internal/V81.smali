.class public final synthetic Lcom/android/tools/r8/internal/V81;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/graph/M2;

.field public final synthetic c:Lcom/android/tools/r8/internal/p10;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/V81;->b:Lcom/android/tools/r8/graph/M2;

    iput-object p2, p0, Lcom/android/tools/r8/internal/V81;->c:Lcom/android/tools/r8/internal/p10;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/V81;->b:Lcom/android/tools/r8/graph/M2;

    iget-object v1, p0, Lcom/android/tools/r8/internal/V81;->c:Lcom/android/tools/r8/internal/p10;

    check-cast p1, Lcom/android/tools/r8/internal/q10;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/de;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/p10;Lcom/android/tools/r8/internal/q10;)Lcom/android/tools/r8/internal/de;

    move-result-object p1

    return-object p1
.end method
