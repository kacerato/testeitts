.class public final synthetic Lcom/android/tools/r8/shaking/a7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/R0;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/R0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/a7;->b:Lcom/android/tools/r8/shaking/R0;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/a7;->b:Lcom/android/tools/r8/shaking/R0;

    invoke-static {v0}, Lcom/android/tools/r8/shaking/N;->a(Lcom/android/tools/r8/shaking/R0;)Lcom/android/tools/r8/shaking/X1;

    move-result-object v0

    return-object v0
.end method
