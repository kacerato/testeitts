.class public final synthetic Lcom/android/tools/r8/shaking/s8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/es0;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/N;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/s8;->a:Lcom/android/tools/r8/shaking/N;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/s8;->a:Lcom/android/tools/r8/shaking/N;

    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N;->f()Lcom/android/tools/r8/graph/j;

    move-result-object v0

    return-object v0
.end method
