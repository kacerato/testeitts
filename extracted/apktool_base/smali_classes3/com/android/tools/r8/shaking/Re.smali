.class public final synthetic Lcom/android/tools/r8/shaking/Re;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:C


# direct methods
.method public synthetic constructor <init>(C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Lcom/android/tools/r8/shaking/Re;->a:C

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-char v0, p0, Lcom/android/tools/r8/shaking/Re;->a:C

    invoke-static {v0, p1}, Lcom/android/tools/r8/shaking/s3;->a(CI)Z

    move-result p1

    return p1
.end method
