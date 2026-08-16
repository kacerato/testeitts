.class public final synthetic Lcom/android/tools/r8/shaking/Le;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/V60;


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/shaking/s3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/tools/r8/shaking/s3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/shaking/Le;->b:Lcom/android/tools/r8/shaking/s3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/shaking/Le;->b:Lcom/android/tools/r8/shaking/s3;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/shaking/s3;->f(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
