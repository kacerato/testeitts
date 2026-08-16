.class public final synthetic Lcom/android/tools/r8/shaking/wf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/gt0;


# instance fields
.field public final synthetic a:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/wf;->a:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/wf;->a:Ljava/util/function/Supplier;

    check-cast p2, Lcom/android/tools/r8/shaking/s1;

    check-cast p3, Lcom/android/tools/r8/shaking/s1;

    invoke-static {v0, p1, p2, p3}, Lcom/android/tools/r8/shaking/x1;->a(Ljava/util/function/Supplier;Ljava/lang/Object;Lcom/android/tools/r8/shaking/s1;Lcom/android/tools/r8/shaking/s1;)Lcom/android/tools/r8/shaking/s1;

    move-result-object p1

    return-object p1
.end method
