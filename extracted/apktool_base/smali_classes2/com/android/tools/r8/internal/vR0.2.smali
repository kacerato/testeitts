.class public final synthetic Lcom/android/tools/r8/internal/vR0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/Pj0;

.field public final synthetic c:Lcom/android/tools/r8/internal/Mj0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/Pj0;Lcom/android/tools/r8/internal/Mj0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/vR0;->b:Lcom/android/tools/r8/internal/Pj0;

    iput-object p2, p0, Lcom/android/tools/r8/internal/vR0;->c:Lcom/android/tools/r8/internal/Mj0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/vR0;->b:Lcom/android/tools/r8/internal/Pj0;

    iget-object v1, p0, Lcom/android/tools/r8/internal/vR0;->c:Lcom/android/tools/r8/internal/Mj0;

    check-cast p1, Lcom/android/tools/r8/naming/V;

    invoke-virtual {v0, v1, p1}, Lcom/android/tools/r8/internal/Pj0;->a(Lcom/android/tools/r8/internal/Mj0;Lcom/android/tools/r8/naming/V;)Lcom/android/tools/r8/internal/Oj0;

    move-result-object p1

    return-object p1
.end method
