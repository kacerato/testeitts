.class public final synthetic Lcom/android/tools/r8/shaking/Se;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lcom/android/tools/r8/shaking/s3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/s3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Se;->a:Lcom/android/tools/r8/shaking/s3;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Se;->a:Lcom/android/tools/r8/shaking/s3;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/s3;->a(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
