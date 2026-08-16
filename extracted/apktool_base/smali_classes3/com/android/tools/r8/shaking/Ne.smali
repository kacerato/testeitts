.class public final synthetic Lcom/android/tools/r8/shaking/Ne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:C

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(ZCZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/tools/r8/shaking/Ne;->a:Z

    iput-char p2, p0, Lcom/android/tools/r8/shaking/Ne;->b:C

    iput-boolean p3, p0, Lcom/android/tools/r8/shaking/Ne;->c:Z

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/tools/r8/shaking/Ne;->a:Z

    iget-char v1, p0, Lcom/android/tools/r8/shaking/Ne;->b:C

    iget-boolean v2, p0, Lcom/android/tools/r8/shaking/Ne;->c:Z

    invoke-static {v0, v1, v2, p1}, Lcom/android/tools/r8/shaking/s3;->a(ZCZI)Z

    move-result p1

    return p1
.end method
