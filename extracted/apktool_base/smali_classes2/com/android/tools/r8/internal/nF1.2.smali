.class public final synthetic Lcom/android/tools/r8/internal/nF1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/IH;

.field public final synthetic c:I

.field public final synthetic d:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/internal/IH;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nF1;->b:Lcom/android/tools/r8/internal/IH;

    iput p2, p0, Lcom/android/tools/r8/internal/nF1;->c:I

    iput-object p3, p0, Lcom/android/tools/r8/internal/nF1;->d:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/nF1;->b:Lcom/android/tools/r8/internal/IH;

    iget v1, p0, Lcom/android/tools/r8/internal/nF1;->c:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/nF1;->d:[Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/internal/zq0;->a(Lcom/android/tools/r8/internal/IH;I[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
