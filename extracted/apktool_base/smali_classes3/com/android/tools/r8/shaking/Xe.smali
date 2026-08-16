.class public final synthetic Lcom/android/tools/r8/shaking/Xe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/o3$a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/o3$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Xe;->b:Lcom/android/tools/r8/shaking/o3$a;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Xe;->b:Lcom/android/tools/r8/shaking/o3$a;

    check-cast p1, Lcom/android/tools/r8/shaking/c3;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/o3$a;->c(Lcom/android/tools/r8/shaking/c3;)V

    return-void
.end method
