.class public final synthetic Lcom/android/tools/r8/internal/hE0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/eC;

.field public final synthetic c:Lcom/android/tools/r8/internal/nJ;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/hE0;->b:Lcom/android/tools/r8/internal/eC;

    iput-object p2, p0, Lcom/android/tools/r8/internal/hE0;->c:Lcom/android/tools/r8/internal/nJ;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/hE0;->b:Lcom/android/tools/r8/internal/eC;

    iget-object v1, p0, Lcom/android/tools/r8/internal/hE0;->c:Lcom/android/tools/r8/internal/nJ;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/tools/r8/internal/F2;->a(Lcom/android/tools/r8/internal/eC;Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)V

    return-void
.end method
