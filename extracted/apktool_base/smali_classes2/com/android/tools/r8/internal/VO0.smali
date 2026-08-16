.class public final synthetic Lcom/android/tools/r8/internal/VO0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/bI;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(ILjava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/VO0;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/VO0;->b:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/VO0;->a:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/VO0;->b:Ljava/util/function/BiFunction;

    check-cast p2, Lcom/android/tools/r8/internal/u50;

    invoke-static {v0, v1, p1, p2}, Lcom/android/tools/r8/internal/O00;->a(ILjava/util/function/BiFunction;ILcom/android/tools/r8/internal/u50;)Lcom/android/tools/r8/internal/u50;

    move-result-object p1

    return-object p1
.end method
